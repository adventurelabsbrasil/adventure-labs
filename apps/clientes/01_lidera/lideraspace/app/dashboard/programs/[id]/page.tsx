import { notFound } from "next/navigation";
import { createClient } from "@/lib/supabase/server";
import { Header } from "@/components/layout/Header";
import { ModuleList } from "@/components/programs/ModuleList";
import type { Module } from "@/components/programs/ModuleList";
import { Progress } from "@/components/ui/progress";
import { Badge } from "@/components/ui/badge";
import { ArrowLeft, BookOpen, Play, Users } from "lucide-react";
import Link from "next/link";

async function getProgram(programId: string, userId: string) {
  const supabase = await createClient();

  // Check enrollment
  const { data: enrollment } = await supabase
    .from("lms_enrollments")
    .select("id")
    .eq("user_id", userId)
    .eq("program_id", programId)
    .single();

  if (!enrollment) return null;

  // Get program with modules and lessons
  const { data: program } = await supabase
    .from("lms_programs")
    .select(`
      id, title, description, cover_url,
      lms_modules (
        id, title, description, "order",
        lms_lessons (
          id, title, type, "order"
        )
      )
    `)
    .eq("id", programId)
    .single();

  if (!program) return null;

  // Get user progress
  const { data: progress } = await supabase
    .from("lms_progress")
    .select("lesson_id, completed")
    .eq("user_id", userId)
    .eq("completed", true);

  const completedIds = new Set(progress?.map((p) => p.lesson_id) ?? []);

  const modules: Module[] = ((program as any).lms_modules ?? [])
    .sort((a: any, b: any) => a.order - b.order)
    .map((mod: any) => ({
      id: mod.id,
      title: mod.title,
      description: mod.description,
      order: mod.order,
      lessons: ((mod.lms_lessons ?? []) as any[])
        .sort((a, b) => a.order - b.order)
        .map((lesson) => ({
          id: lesson.id,
          title: lesson.title,
          type: lesson.type as "video" | "doc" | "page",
          order: lesson.order,
          completed: completedIds.has(lesson.id),
        })),
    }));

  const allLessons = modules.flatMap((m) => m.lessons);
  const totalLessons = allLessons.length;
  const completedLessons = allLessons.filter((l) => l.completed).length;

  return {
    id: (program as any).id as string,
    title: (program as any).title as string,
    description: (program as any).description as string | null,
    cover_url: (program as any).cover_url as string | null,
    modules,
    totalLessons,
    completedLessons,
  };
}

export default async function ProgramDetailPage({
  params,
}: {
  params: Promise<{ id: string }>;
}) {
  const { id } = await params;
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) notFound();

  const program = await getProgram(id, user.id);
  if (!program) notFound();

  const progress =
    program.totalLessons > 0
      ? Math.round((program.completedLessons / program.totalLessons) * 100)
      : 0;

  return (
    <div className="flex flex-col">
      <Header />

      <div className="flex-1 p-6 space-y-6">
        {/* Back link */}
        <Link
          href="/dashboard/programs"
          className="inline-flex items-center gap-1.5 text-sm text-muted-foreground hover:text-gold-400 transition-colors"
        >
          <ArrowLeft className="h-4 w-4" />
          Todos os programas
        </Link>

        {/* Program header */}
        <div className="rounded-2xl border border-border bg-navy-900 p-6 relative overflow-hidden">
          <div className="absolute inset-0 bg-gradient-to-br from-gold-400/5 to-transparent pointer-events-none" />
          <div className="absolute top-0 inset-x-0 h-0.5 bg-gradient-to-r from-transparent via-gold-400/50 to-transparent" />

          <div className="relative">
            <div className="flex flex-wrap items-start gap-4 mb-4">
              <div className="flex h-14 w-14 shrink-0 items-center justify-center rounded-xl bg-gold-400/10 ring-1 ring-gold-400/20">
                <BookOpen className="h-7 w-7 text-gold-400" />
              </div>
              <div className="flex-1 min-w-0">
                <h1 className="text-xl font-bold text-foreground">{program.title}</h1>
                {program.description && (
                  <p className="text-sm text-muted-foreground mt-1">{program.description}</p>
                )}
              </div>
            </div>

            {/* Stats row */}
            <div className="flex flex-wrap items-center gap-4 mb-5">
              <div className="flex items-center gap-1.5 text-sm text-muted-foreground">
                <Play className="h-3.5 w-3.5" />
                {program.totalLessons} aulas
              </div>
              <div className="flex items-center gap-1.5 text-sm text-muted-foreground">
                <BookOpen className="h-3.5 w-3.5" />
                {program.modules.length} módulos
              </div>
              {progress === 100 && (
                <Badge variant="secondary" className="border-green-500/30 bg-green-500/10 text-green-400">
                  Concluído
                </Badge>
              )}
            </div>

            {/* Progress bar */}
            <div className="space-y-2">
              <div className="flex justify-between text-sm">
                <span className="text-muted-foreground">Seu progresso</span>
                <span className="font-semibold text-gold-400">{progress}%</span>
              </div>
              <Progress value={progress} className="h-2.5" />
              <p className="text-xs text-muted-foreground">
                {program.completedLessons} de {program.totalLessons} aulas concluídas
              </p>
            </div>
          </div>
        </div>

        {/* Modules */}
        <div>
          <h2 className="text-base font-semibold text-foreground mb-4">
            Conteúdo do programa
          </h2>
          <ModuleList modules={program.modules} />
        </div>
      </div>
    </div>
  );
}
