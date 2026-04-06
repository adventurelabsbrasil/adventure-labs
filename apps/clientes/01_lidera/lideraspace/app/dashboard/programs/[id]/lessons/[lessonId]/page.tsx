import { notFound } from "next/navigation";
import { createClient } from "@/lib/supabase/server";
import { LessonSidebar } from "@/components/lessons/LessonSidebar";
import { LessonCompleteButton } from "@/components/programs/LessonCompleteButton";
import { LessonNotes } from "@/components/lessons/LessonNotes";
import { ContentBlocks } from "@/components/lessons/ContentBlocks";
import type { Block } from "@/components/lessons/ContentBlocks";
import { getNote } from "@/app/actions/notes";
import { toEmbedUrl, detectEmbedType, embedLabels } from "@/lib/embed";
import { Badge } from "@/components/ui/badge";
import {
  Play,
  FileText,
  FileEdit,
  ExternalLink,
  Download,
  ArrowLeft,
  ArrowRight,
  ChevronRight,
} from "lucide-react";

// ─── Helpers ─────────────────────────────────────────────────────────────────

const typeConfig: Record<string, { icon: React.ElementType; label: string; color: string }> = {
  video: { icon: Play, label: "Vídeo", color: "text-blue-400" },
  doc: { icon: FileText, label: "Documento", color: "text-amber-400" },
  page: { icon: FileEdit, label: "Conteúdo", color: "text-purple-400" },
  embed: { icon: ExternalLink, label: "Planilha / Embed", color: "text-teal-400" },
  link: { icon: ExternalLink, label: "Link", color: "text-teal-400" },
};

function getYouTubeEmbedUrl(url: string | null): string | null {
  if (!url) return null;
  const shortMatch = url.match(/youtu\.be\/([^?&]+)/);
  if (shortMatch) return `https://www.youtube.com/embed/${shortMatch[1]}?rel=0`;
  const watchMatch = url.match(/[?&]v=([^&]+)/);
  if (watchMatch) return `https://www.youtube.com/embed/${watchMatch[1]}?rel=0`;
  if (url.includes("youtube.com/embed/")) return url;
  return null;
}

// ─── Data fetching ────────────────────────────────────────────────────────────

async function getPageData(lessonId: string, programId: string, userId: string) {
  const supabase = await createClient();

  // Check enrollment
  const { data: enrollment } = await supabase
    .from("lms_enrollments")
    .select("id")
    .eq("user_id", userId)
    .eq("program_id", programId)
    .single();

  if (!enrollment) return null;

  // Get lesson
  const { data: lesson } = await supabase
    .from("lms_lessons")
    .select(`
      id, title, type, video_url, content_md, content_blocks, embed_url, material_url, "order",
      lms_modules!inner ( id, title, "order", program_id )
    `)
    .eq("id", lessonId)
    .single();

  if (!lesson) return null;
  const module = (lesson as any).lms_modules;
  if (module.program_id !== programId) return null;

  // Get program with full nav tree
  const { data: program } = await supabase
    .from("lms_programs")
    .select(`
      id, title,
      lms_modules (
        id, title, "order",
        lms_lessons ( id, title, type, "order" )
      )
    `)
    .eq("id", programId)
    .single();

  // Get user progress
  const { data: progress } = await supabase
    .from("lms_progress")
    .select("lesson_id")
    .eq("user_id", userId)
    .eq("completed", true);

  const completedIds = new Set(progress?.map((p) => p.lesson_id) ?? []);

  // Build nav tree
  const modules = ((program as any)?.lms_modules ?? [])
    .sort((a: any, b: any) => a.order - b.order)
    .map((mod: any) => ({
      id: mod.id,
      title: mod.title,
      order: mod.order,
      lessons: ((mod.lms_lessons ?? []) as any[])
        .sort((a, b) => a.order - b.order)
        .map((l) => ({
          id: l.id,
          title: l.title,
          type: l.type,
          order: l.order,
          completed: completedIds.has(l.id),
        })),
    }));

  // Sibling lessons for prev/next
  const siblings = ((module.id
    ? modules.find((m: any) => m.id === module.id)?.lessons
    : []) ?? []) as any[];
  const idx = siblings.findIndex((s) => s.id === lessonId);

  return {
    lesson: {
      id: lesson.id,
      title: lesson.title,
      type: (lesson.type as string) ?? "page",
      video_url: (lesson as any).video_url as string | null,
      content_md: (lesson as any).content_md as string | null,
      content_blocks: ((lesson as any).content_blocks ?? []) as Block[],
      embed_url: (lesson as any).embed_url as string | null,
      material_url: (lesson as any).material_url as string | null,
      completed: completedIds.has(lesson.id),
    },
    moduleTitle: module.title as string,
    programTitle: (program as any)?.title as string,
    modules,
    prevLesson: idx > 0 ? siblings[idx - 1] : null,
    nextLesson: idx < siblings.length - 1 ? siblings[idx + 1] : null,
  };
}

// ─── Markdown renderer ────────────────────────────────────────────────────────

function SimpleMarkdown({ content }: { content: string }) {
  return (
    <div className="space-y-1">
      {content.split("\n\n").map((block, i) => {
        if (block.startsWith("# "))
          return <h1 key={i} className="text-2xl font-bold text-foreground mt-6 mb-3 first:mt-0">{block.replace(/^# /, "")}</h1>;
        if (block.startsWith("## "))
          return <h2 key={i} className="text-lg font-bold text-foreground mt-5 mb-2 first:mt-0">{block.replace(/^## /, "")}</h2>;
        if (block.startsWith("### "))
          return <h3 key={i} className="text-base font-semibold text-foreground mt-4 mb-1.5 first:mt-0">{block.replace(/^### /, "")}</h3>;

        const lines = block.split("\n");
        const isList = lines.every((l) => l.startsWith("- ") || l.startsWith("• ") || l.trim() === "");
        if (isList) {
          return (
            <ul key={i} className="space-y-1.5 my-3 pl-1">
              {lines.filter((l) => l.trim()).map((item, j) => (
                <li key={j} className="flex items-start gap-2 text-sm text-muted-foreground">
                  <span className="mt-2 h-1.5 w-1.5 shrink-0 rounded-full bg-gold-400/60" />
                  {item.replace(/^[-•]\s/, "")}
                </li>
              ))}
            </ul>
          );
        }
        return (
          <p key={i} className="text-sm text-muted-foreground leading-relaxed my-2">
            {block}
          </p>
        );
      })}
    </div>
  );
}

// ─── Page ─────────────────────────────────────────────────────────────────────

export default async function LessonPage({
  params,
}: {
  params: Promise<{ id: string; lessonId: string }>;
}) {
  const { id: programId, lessonId } = await params;
  const supabase = await createClient();
  const { data: { user } } = await supabase.auth.getUser();
  if (!user) notFound();

  const data = await getPageData(lessonId, programId, user.id);
  if (!data) notFound();

  const { lesson, moduleTitle, programTitle, modules, prevLesson, nextLesson } = data;
  const note = await getNote(lessonId);
  const cfg = typeConfig[lesson.type] ?? typeConfig.page;
  const Icon = cfg.icon;

  // Determine what content to show
  const youtubeEmbed = lesson.type === "video" ? getYouTubeEmbedUrl(lesson.video_url) : null;
  const generalEmbedUrl = lesson.embed_url ? toEmbedUrl(lesson.embed_url) : null;
  const embedType = lesson.embed_url ? detectEmbedType(lesson.embed_url) : null;
  const hasBlocks = lesson.content_blocks && lesson.content_blocks.length > 0;
  const hasMarkdown = !!lesson.content_md;
  const hasAnyContent = youtubeEmbed || generalEmbedUrl || hasBlocks || hasMarkdown || lesson.material_url;

  return (
    <div className="flex h-full overflow-hidden">
      {/* Program navigation sidebar */}
      <LessonSidebar
        programId={programId}
        programTitle={programTitle}
        modules={modules}
        currentLessonId={lessonId}
      />

      {/* Main content area */}
      <div className="flex-1 overflow-y-auto">
        <div className="max-w-4xl mx-auto px-4 md:px-8 py-6 space-y-6">

          {/* Breadcrumb */}
          <nav className="flex items-center gap-1.5 text-xs text-muted-foreground">
            <span className="truncate max-w-[120px]">{programTitle}</span>
            <ChevronRight className="h-3 w-3 shrink-0" />
            <span className="truncate max-w-[120px]">{moduleTitle}</span>
            <ChevronRight className="h-3 w-3 shrink-0" />
            <span className="text-foreground truncate">{lesson.title}</span>
          </nav>

          {/* Lesson header */}
          <div className="flex flex-wrap items-start justify-between gap-4">
            <div className="flex items-center gap-3">
              <div className={`flex h-10 w-10 shrink-0 items-center justify-center rounded-xl bg-navy-800 ring-1 ring-border ${cfg.color}`}>
                <Icon className="h-5 w-5" />
              </div>
              <div>
                <Badge variant="secondary" className="text-xs px-1.5 py-0 mb-1">
                  {cfg.label}
                </Badge>
                <h1 className="text-xl font-bold text-foreground leading-tight">{lesson.title}</h1>
              </div>
            </div>
            <LessonCompleteButton
              lessonId={lessonId}
              programId={programId}
              completed={lesson.completed}
            />
          </div>

          {/* ── YouTube Video ── */}
          {youtubeEmbed && (
            <div className="rounded-2xl overflow-hidden border border-border bg-black shadow-2xl">
              <div className="relative w-full" style={{ paddingTop: "56.25%" }}>
                <iframe
                  src={youtubeEmbed}
                  className="absolute inset-0 w-full h-full"
                  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                  allowFullScreen
                  title={lesson.title}
                />
              </div>
            </div>
          )}

          {/* ── General Embed (Google Sheets, Docs, Slides, etc.) ── */}
          {generalEmbedUrl && (
            <div className="rounded-2xl border border-border overflow-hidden shadow-lg">
              <div className="flex items-center gap-2.5 bg-navy-800/60 px-4 py-2.5 border-b border-border">
                <div className="h-2 w-2 rounded-full bg-teal-400/60" />
                <span className="text-xs font-medium text-muted-foreground">
                  {embedType ? embedLabels[embedType] : "Conteúdo incorporado"}
                </span>
                <a
                  href={lesson.embed_url!}
                  target="_blank"
                  rel="noopener noreferrer"
                  className="ml-auto text-xs text-muted-foreground/60 hover:text-gold-400 flex items-center gap-1 transition-colors"
                >
                  <ExternalLink className="h-3 w-3" />
                  Abrir original
                </a>
              </div>
              <iframe
                src={generalEmbedUrl}
                className="w-full bg-white"
                height={600}
                allowFullScreen
                title={lesson.title}
                style={{ border: "none" }}
              />
            </div>
          )}

          {/* ── Material download ── */}
          {lesson.material_url && (
            <div className="flex items-center justify-between rounded-xl border border-border bg-navy-900 px-4 py-3">
              <div className="flex items-center gap-3">
                <div className="flex h-9 w-9 items-center justify-center rounded-lg bg-amber-400/10">
                  <FileText className="h-4 w-4 text-amber-400" />
                </div>
                <div>
                  <p className="text-sm font-medium text-foreground">Material complementar</p>
                  <p className="text-xs text-muted-foreground">Faça o download do arquivo</p>
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

          {/* ── Content Blocks (Notion-style) ── */}
          {hasBlocks && (
            <div className="rounded-2xl border border-border bg-navy-900 px-6 py-6">
              <ContentBlocks blocks={lesson.content_blocks} />
            </div>
          )}

          {/* ── Markdown content ── */}
          {hasMarkdown && (
            <div className="rounded-2xl border border-border bg-navy-900 px-6 py-6">
              {!hasBlocks && (
                <h2 className="text-xs font-semibold uppercase tracking-wider text-muted-foreground mb-4">
                  Conteúdo da aula
                </h2>
              )}
              <SimpleMarkdown content={lesson.content_md!} />
            </div>
          )}

          {/* ── Empty state ── */}
          {!hasAnyContent && (
            <div className="rounded-2xl border border-dashed border-border bg-navy-900/50 p-14 text-center">
              <Icon className="h-12 w-12 text-muted-foreground/20 mx-auto mb-3" />
              <p className="text-muted-foreground text-sm">
                O conteúdo desta aula estará disponível em breve.
              </p>
            </div>
          )}

          {/* ── Lesson Notes ── */}
          <LessonNotes lessonId={lessonId} initialContent={note ?? ""} />

          {/* ── Prev / Next navigation ── */}
          <div className="flex items-center justify-between gap-4 border-t border-border pt-5 pb-4">
            {prevLesson ? (
              <a
                href={`/dashboard/programs/${programId}/lessons/${prevLesson.id}`}
                className="group flex items-center gap-2.5 rounded-xl border border-border bg-navy-900 px-4 py-3 text-sm font-medium text-muted-foreground hover:border-gold-400/30 hover:text-foreground transition-all max-w-[45%]"
              >
                <ArrowLeft className="h-4 w-4 shrink-0 group-hover:text-gold-400 transition-colors" />
                <span className="truncate">{prevLesson.title}</span>
              </a>
            ) : <div />}

            {nextLesson ? (
              <a
                href={`/dashboard/programs/${programId}/lessons/${nextLesson.id}`}
                className="group flex items-center gap-2.5 rounded-xl border border-border bg-navy-900 px-4 py-3 text-sm font-medium text-muted-foreground hover:border-gold-400/30 hover:text-foreground transition-all max-w-[45%] ml-auto"
              >
                <span className="truncate">{nextLesson.title}</span>
                <ArrowRight className="h-4 w-4 shrink-0 group-hover:text-gold-400 transition-colors" />
              </a>
            ) : (
              <a
                href={`/dashboard/programs/${programId}`}
                className="group flex items-center gap-2.5 rounded-xl border border-gold-400/20 bg-gold-400/5 px-4 py-3 text-sm font-medium text-gold-400 hover:bg-gold-400/10 transition-all ml-auto"
              >
                Concluir programa
                <ArrowRight className="h-4 w-4 shrink-0" />
              </a>
            )}
          </div>
        </div>
      </div>
    </div>
  );
}
