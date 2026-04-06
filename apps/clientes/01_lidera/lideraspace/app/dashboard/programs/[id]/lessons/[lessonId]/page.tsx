import { notFound } from "next/navigation";
import Link from "next/link";
import { createClient } from "@/lib/supabase/server";
import { Header } from "@/components/layout/Header";
import { LessonCompleteButton } from "@/components/programs/LessonCompleteButton";
import { Badge } from "@/components/ui/badge";
import {
  ArrowLeft,
  ArrowRight,
  Play,
  FileText,
  FileEdit,
  Download,
  BookOpen,
} from "lucide-react";

// ─── Helpers ─────────────────────────────────────────────────────────────────

function getYouTubeEmbedUrl(url: string | null): string | null {
  if (!url) return null;
  const shortMatch = url.match(/youtu\.be\/([^?&]+)/);
  if (shortMatch) return `https://www.youtube.com/embed/${shortMatch[1]}?rel=0`;
  const watchMatch = url.match(/[?&]v=([^&]+)/);
  if (watchMatch) return `https://www.youtube.com/embed/${watchMatch[1]}?rel=0`;
  if (url.includes("youtube.com/embed/")) return url;
  if (/^[a-zA-Z0-9_-]{11}$/.test(url))
    return `https://www.youtube.com/embed/${url}?rel=0`;
  return null;
}

const typeConfig = {
  video: { icon: Play, label: "Vídeo", color: "text-blue-400" },
  doc: { icon: FileText, label: "Documento", color: "text-amber-400" },
  page: { icon: FileEdit, label: "Conteúdo", color: "text-purple-400" },
};

// ─── Data fetching ────────────────────────────────────────────────────────────

async function getLesson(lessonId: string, programId: string, userId: string) {
  const supabase = await createClient();

  // Check enrollment
  const { data: enrollment } = await supabase
    .from("lms_enrollments")
    .select("id")
    .eq("user_id", userId)
    .eq("program_id", programId)
    .single();

  if (!enrollment) return null;

  // Get lesson with module info
  const { data: lesson } = await supabase
    .from("lms_lessons")
    .select(
      `id, title, type, video_url, content_md, material_url, "order",
       lms_modules!inner ( id, title, program_id )`
    )
    .eq("id", lessonId)
    .single();

  if (!lesson) return null;

  const module = (lesson as any).lms_modules;
  if (module.program_id !== programId) return null;

  // Check if completed
  const { data: progress } = await supabase
    .from("lms_progress")
    .select("completed")
    .eq("user_id", userId)
    .eq("lesson_id", lessonId)
    .single();

  // Get all lessons in the module for prev/next navigation
  const { data: siblings } = await supabase
    .from("lms_lessons")
    .select(`id, title, "order"`)
    .eq("module_id", module.id)
    .order("order");

  const currentIndex = (siblings ?? []).findIndex((s) => s.id === lessonId);
  const prevLesson =
    currentIndex > 0 ? (siblings ?? [])[currentIndex - 1] : null;
  const nextLesson =
    currentIndex < (siblings?.length ?? 0) - 1
      ? (siblings ?? [])[currentIndex + 1]
      : null;

  return {
    id: lesson.id,
    title: lesson.title,
    type: lesson.type as "video" | "doc" | "page",
    video_url: (lesson as any).video_url as string | null,
    content_md: (lesson as any).content_md as string | null,
    material_url: (lesson as any).material_url as string | null,
    completed: progress?.completed ?? false,
    moduleTitle: module.title as string,
    prevLesson,
    nextLesson,
  };
}

// ─── Page ─────────────────────────────────────────────────────────────────────

export default async function LessonPage({
  params,
}: {
  params: Promise<{ id: string; lessonId: string }>;
}) {
  const { id: programId, lessonId } = await params;
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) notFound();

  const lesson = await getLesson(lessonId, programId, user.id);
  if (!lesson) notFound();

  const embedUrl = getYouTubeEmbedUrl(lesson.video_url);
  const config = typeConfig[lesson.type];
  const Icon = config.icon;

  return (
    <div className="flex flex-col min-h-full">
      <Header />

      <div className="flex-1 p-4 md:p-6 space-y-5 max-w-5xl mx-auto w-full">
        {/* Breadcrumb */}
        <nav className="flex items-center gap-2 text-sm text-muted-foreground">
          <Link
            href={`/dashboard/programs/${programId}`}
            className="flex items-center gap-1.5 hover:text-gold-400 transition-colors"
          >
            <ArrowLeft className="h-3.5 w-3.5" />
            <BookOpen className="h-3.5 w-3.5" />
            Voltar ao programa
          </Link>
          <span>/</span>
          <span className="text-muted-foreground/60 truncate">
            {lesson.moduleTitle}
          </span>
        </nav>

        {/* Lesson header */}
        <div className="flex flex-wrap items-start justify-between gap-4">
          <div className="flex items-center gap-3">
            <div
              className={`flex h-10 w-10 shrink-0 items-center justify-center rounded-xl bg-navy-800 ring-1 ring-border ${config.color}`}
            >
              <Icon className="h-5 w-5" />
            </div>
            <div>
              <div className="flex items-center gap-2 mb-0.5">
                <Badge variant="secondary" className="text-xs px-1.5 py-0">
                  {config.label}
                </Badge>
              </div>
              <h1 className="text-lg md:text-xl font-bold text-foreground leading-tight">
                {lesson.title}
              </h1>
            </div>
          </div>

          <LessonCompleteButton
            lessonId={lessonId}
            programId={programId}
            completed={lesson.completed}
          />
        </div>

        {/* Video player */}
        {lesson.type === "video" && embedUrl && (
          <div className="rounded-2xl overflow-hidden border border-border bg-black shadow-2xl">
            <div className="relative w-full" style={{ paddingTop: "56.25%" }}>
              <iframe
                src={embedUrl}
                className="absolute inset-0 w-full h-full"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                allowFullScreen
                title={lesson.title}
              />
            </div>
          </div>
        )}

        {/* Video with no valid URL fallback */}
        {lesson.type === "video" && !embedUrl && lesson.video_url && (
          <div className="rounded-2xl border border-border bg-navy-900 p-8 text-center">
            <Play className="h-12 w-12 text-muted-foreground/30 mx-auto mb-3" />
            <p className="text-muted-foreground text-sm">
              Vídeo disponível em:{" "}
              <a
                href={lesson.video_url}
                target="_blank"
                rel="noopener noreferrer"
                className="text-gold-400 underline underline-offset-4 hover:text-gold-300"
              >
                {lesson.video_url}
              </a>
            </p>
          </div>
        )}

        {/* Material download */}
        {lesson.material_url && (
          <div className="flex items-center justify-between rounded-xl border border-border bg-navy-900 px-4 py-3">
            <div className="flex items-center gap-3">
              <div className="flex h-9 w-9 items-center justify-center rounded-lg bg-amber-400/10">
                <FileText className="h-4 w-4 text-amber-400" />
              </div>
              <div>
                <p className="text-sm font-medium text-foreground">
                  Material complementar
                </p>
                <p className="text-xs text-muted-foreground">
                  Faça o download do arquivo desta aula
                </p>
              </div>
            </div>
            <a
              href={lesson.material_url}
              target="_blank"
              rel="noopener noreferrer"
              download
              className="flex items-center gap-2 rounded-lg bg-navy-800 px-3.5 py-2 text-sm font-medium text-foreground hover:bg-navy-700 hover:text-gold-400 transition-colors ring-1 ring-border"
            >
              <Download className="h-3.5 w-3.5" />
              Baixar
            </a>
          </div>
        )}

        {/* Markdown / text content */}
        {lesson.content_md && (
          <div className="rounded-2xl border border-border bg-navy-900 p-6">
            <h2 className="text-sm font-semibold uppercase tracking-wider text-muted-foreground mb-4">
              Conteúdo da aula
            </h2>
            <div className="prose-lesson">
              {lesson.content_md.split("\n\n").map((block, i) => {
                if (block.startsWith("## ")) {
                  return (
                    <h2
                      key={i}
                      className="text-lg font-bold text-foreground mb-3 mt-5 first:mt-0"
                    >
                      {block.replace("## ", "")}
                    </h2>
                  );
                }
                if (block.startsWith("# ")) {
                  return (
                    <h1
                      key={i}
                      className="text-xl font-bold text-foreground mb-3 mt-5 first:mt-0"
                    >
                      {block.replace("# ", "")}
                    </h1>
                  );
                }
                if (block.startsWith("- ") || block.startsWith("* ")) {
                  const items = block
                    .split("\n")
                    .filter((l) => l.startsWith("- ") || l.startsWith("* "));
                  return (
                    <ul key={i} className="space-y-1.5 mb-4 pl-1">
                      {items.map((item, j) => (
                        <li
                          key={j}
                          className="flex items-start gap-2 text-sm text-muted-foreground"
                        >
                          <span className="mt-2 h-1.5 w-1.5 shrink-0 rounded-full bg-gold-400/60" />
                          {item.replace(/^[-*]\s/, "")}
                        </li>
                      ))}
                    </ul>
                  );
                }
                return (
                  <p
                    key={i}
                    className="text-sm text-muted-foreground leading-relaxed mb-4 last:mb-0"
                  >
                    {block}
                  </p>
                );
              })}
            </div>
          </div>
        )}

        {/* Empty state if no content */}
        {!embedUrl && !lesson.content_md && !lesson.material_url && (
          <div className="rounded-2xl border border-dashed border-border bg-navy-900/50 p-12 text-center">
            <Icon className="h-12 w-12 text-muted-foreground/20 mx-auto mb-3" />
            <p className="text-muted-foreground text-sm">
              O conteúdo desta aula estará disponível em breve.
            </p>
          </div>
        )}

        {/* Prev / Next navigation */}
        <div className="flex items-center justify-between gap-4 border-t border-border pt-5">
          {lesson.prevLesson ? (
            <Link
              href={`/dashboard/programs/${programId}/lessons/${lesson.prevLesson.id}`}
              className="group flex items-center gap-2.5 rounded-xl border border-border bg-navy-900 px-4 py-3 text-sm font-medium text-muted-foreground hover:border-gold-400/30 hover:text-foreground transition-all max-w-[45%]"
            >
              <ArrowLeft className="h-4 w-4 shrink-0 group-hover:text-gold-400 transition-colors" />
              <span className="truncate">{lesson.prevLesson.title}</span>
            </Link>
          ) : (
            <div />
          )}

          {lesson.nextLesson ? (
            <Link
              href={`/dashboard/programs/${programId}/lessons/${lesson.nextLesson.id}`}
              className="group flex items-center gap-2.5 rounded-xl border border-border bg-navy-900 px-4 py-3 text-sm font-medium text-muted-foreground hover:border-gold-400/30 hover:text-foreground transition-all max-w-[45%] ml-auto"
            >
              <span className="truncate">{lesson.nextLesson.title}</span>
              <ArrowRight className="h-4 w-4 shrink-0 group-hover:text-gold-400 transition-colors" />
            </Link>
          ) : (
            <Link
              href={`/dashboard/programs/${programId}`}
              className="group flex items-center gap-2.5 rounded-xl border border-gold-400/20 bg-gold-400/5 px-4 py-3 text-sm font-medium text-gold-400 hover:bg-gold-400/10 transition-all ml-auto"
            >
              Concluir programa
              <ArrowRight className="h-4 w-4 shrink-0" />
            </Link>
          )}
        </div>
      </div>
    </div>
  );
}
