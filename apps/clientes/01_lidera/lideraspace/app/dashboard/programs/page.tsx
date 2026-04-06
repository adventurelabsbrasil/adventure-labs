import { createClient } from "@/lib/supabase/server";
import { DEFAULT_TENANT } from "@/lib/tenant";
import { Header } from "@/components/layout/Header";
import { ProgramCard } from "@/components/programs/ProgramCard";
import { BookOpen } from "lucide-react";

async function getPrograms(userId: string, tenantId: string) {
  const supabase = await createClient();

  // Get enrolled programs for this user
  const { data: enrollments } = await supabase
    .from("lms_enrollments")
    .select(`
      program_id,
      lms_programs (
        id,
        title,
        description,
        cover_url,
        lms_modules (
          id,
          lms_lessons ( id )
        )
      )
    `)
    .eq("user_id", userId);

  if (!enrollments?.length) return [];

  // Get completed lessons for progress
  const { data: progress } = await supabase
    .from("lms_progress")
    .select("lesson_id")
    .eq("user_id", userId)
    .eq("completed", true);

  const completedIds = new Set(progress?.map((p) => p.lesson_id) ?? []);

  return enrollments.map(({ lms_programs: program }) => {
    if (!program) return null;
    const modules = (program as any).lms_modules ?? [];
    const allLessons = modules.flatMap((m: any) => m.lms_lessons ?? []);
    const totalLessons = allLessons.length;
    const completedLessons = allLessons.filter((l: any) =>
      completedIds.has(l.id)
    ).length;

    return {
      id: (program as any).id as string,
      title: (program as any).title as string,
      description: (program as any).description as string | null,
      cover_url: (program as any).cover_url as string | null,
      totalLessons,
      completedLessons,
      moduleCount: modules.length,
    };
  }).filter(Boolean);
}

export default async function ProgramsPage() {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  const tenant = DEFAULT_TENANT;
  const programs = user ? await getPrograms(user.id, tenant.id) : [];

  return (
    <div className="flex flex-col">
      <Header title="Programas" />

      <div className="flex-1 p-6">
        <div className="mb-6">
          <h2 className="text-xl font-bold text-foreground">Meus Programas</h2>
          <p className="text-sm text-muted-foreground mt-1">
            {programs.length > 0
              ? `${programs.length} programa${programs.length > 1 ? "s" : ""} disponível${programs.length > 1 ? "s" : ""} para você.`
              : "Nenhum programa disponível ainda."}
          </p>
        </div>

        {programs.length === 0 ? (
          <EmptyState />
        ) : (
          <div className="grid grid-cols-1 gap-4 sm:grid-cols-2 xl:grid-cols-3">
            {programs.map((program) =>
              program ? <ProgramCard key={program.id} {...program} /> : null
            )}
          </div>
        )}
      </div>
    </div>
  );
}

function EmptyState() {
  return (
    <div className="flex flex-col items-center justify-center rounded-2xl border border-dashed border-border bg-navy-900/50 py-16 text-center">
      <div className="mb-4 flex h-14 w-14 items-center justify-center rounded-2xl bg-navy-800">
        <BookOpen className="h-7 w-7 text-muted-foreground/50" />
      </div>
      <h3 className="text-base font-semibold text-foreground mb-1">
        Sem programas por enquanto
      </h3>
      <p className="text-sm text-muted-foreground max-w-xs">
        Quando seu acesso for configurado, os programas aparecerão aqui.
      </p>
    </div>
  );
}
