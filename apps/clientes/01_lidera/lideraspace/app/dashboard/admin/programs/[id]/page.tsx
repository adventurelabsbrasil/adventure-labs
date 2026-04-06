import { notFound } from "next/navigation";
import Link from "next/link";
import { createClient } from "@/lib/supabase/server";
import { Header } from "@/components/layout/Header";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Textarea } from "@/components/ui/textarea";
import { Select } from "@/components/ui/select";
import { Badge } from "@/components/ui/badge";
import {
  updateProgram,
  createModule,
  deleteModule,
  createLesson,
  deleteLesson,
} from "@/app/actions/admin";
import {
  ArrowLeft,
  Plus,
  Trash2,
  Play,
  FileText,
  FileEdit,
  ChevronDown,
} from "lucide-react";

const lessonIcons = {
  video: Play,
  doc: FileText,
  page: FileEdit,
};

const lessonColors = {
  video: "text-blue-400",
  doc: "text-amber-400",
  page: "text-purple-400",
};

async function getProgram(programId: string) {
  const supabase = await createClient();

  const { data: program } = await supabase
    .from("lms_programs")
    .select(`
      id, title, description, published, cover_url,
      lms_modules (
        id, title, description, "order",
        lms_lessons ( id, title, type, video_url, "order" )
      )
    `)
    .eq("id", programId)
    .single();

  return program;
}

export default async function AdminProgramDetailPage({
  params,
}: {
  params: Promise<{ id: string }>;
}) {
  const { id: programId } = await params;
  const program = await getProgram(programId);

  if (!program) notFound();

  const modules = ((program as any).lms_modules ?? []).sort(
    (a: any, b: any) => a.order - b.order
  );

  const updateAction = updateProgram.bind(null, programId);

  return (
    <div className="flex flex-col">
      <Header title="Editar Programa" />

      <div className="flex-1 p-6 space-y-6 max-w-3xl">
        <Link
          href="/dashboard/admin/programs"
          className="inline-flex items-center gap-1.5 text-sm text-muted-foreground hover:text-gold-400 transition-colors"
        >
          <ArrowLeft className="h-4 w-4" />
          Voltar para programas
        </Link>

        {/* Program info */}
        <div className="rounded-2xl border border-border bg-navy-900 p-6">
          <h2 className="text-base font-semibold text-foreground mb-5">
            Informações do programa
          </h2>

          <form action={updateAction} className="space-y-4">
            <div className="space-y-1.5">
              <Label htmlFor="title">Título *</Label>
              <Input
                id="title"
                name="title"
                defaultValue={(program as any).title}
                required
              />
            </div>

            <div className="space-y-1.5">
              <Label htmlFor="description">Descrição</Label>
              <Textarea
                id="description"
                name="description"
                defaultValue={(program as any).description ?? ""}
                rows={3}
              />
            </div>

            <div className="space-y-1.5">
              <Label htmlFor="cover_url">URL da capa</Label>
              <Input
                id="cover_url"
                name="cover_url"
                type="url"
                defaultValue={(program as any).cover_url ?? ""}
                placeholder="https://..."
              />
            </div>

            <div className="flex items-center gap-3">
              <input
                type="hidden"
                name="published"
                value={(program as any).published ? "true" : "false"}
              />
              <label className="flex items-center gap-2.5 cursor-pointer">
                <input
                  type="checkbox"
                  name="published"
                  value="true"
                  defaultChecked={(program as any).published}
                  onChange={(e) => {
                    const hidden = e.target
                      .closest("form")
                      ?.querySelector('input[type="hidden"][name="published"]') as HTMLInputElement;
                    if (hidden) hidden.value = e.target.checked ? "true" : "false";
                  }}
                  className="h-4 w-4 rounded border-border accent-gold-400"
                />
                <span className="text-sm text-foreground">Publicado (visível para membros)</span>
              </label>
            </div>

            <Button type="submit" size="sm">
              Salvar alterações
            </Button>
          </form>
        </div>

        {/* Modules & Lessons */}
        <div className="rounded-2xl border border-border bg-navy-900 p-6">
          <div className="flex items-center justify-between mb-5">
            <h2 className="text-base font-semibold text-foreground">
              Módulos e Aulas
            </h2>
            <form action={createModule.bind(null, programId)}>
              <input type="hidden" name="title" value="Novo Módulo" />
              <Button type="submit" variant="outline" size="sm" className="gap-2">
                <Plus className="h-3.5 w-3.5" />
                Adicionar módulo
              </Button>
            </form>
          </div>

          {modules.length === 0 ? (
            <div className="rounded-xl border border-dashed border-border p-8 text-center">
              <p className="text-sm text-muted-foreground">
                Nenhum módulo ainda. Adicione o primeiro módulo acima.
              </p>
            </div>
          ) : (
            <div className="space-y-4">
              {modules.map((mod: any) => {
                const lessons = ((mod.lms_lessons ?? []) as any[]).sort(
                  (a, b) => a.order - b.order
                );

                return (
                  <div
                    key={mod.id}
                    className="rounded-xl border border-border overflow-hidden"
                  >
                    {/* Module header */}
                    <div className="flex items-center gap-3 bg-navy-800/60 px-4 py-3">
                      <div className="flex h-6 w-6 shrink-0 items-center justify-center rounded bg-gold-400/10 text-xs font-bold text-gold-400">
                        {mod.order + 1}
                      </div>
                      <span className="flex-1 text-sm font-medium text-foreground">
                        {mod.title}
                      </span>
                      <Badge variant="secondary" className="text-xs">
                        {lessons.length} aula{lessons.length !== 1 ? "s" : ""}
                      </Badge>
                      <form action={deleteModule.bind(null, mod.id, programId)}>
                        <button
                          type="submit"
                          className="flex h-7 w-7 items-center justify-center rounded-lg text-muted-foreground hover:text-destructive hover:bg-destructive/10 transition-colors"
                          title="Deletar módulo"
                          onClick={(e) => {
                            if (!confirm(`Deletar módulo "${mod.title}" e todas suas aulas?`))
                              e.preventDefault();
                          }}
                        >
                          <Trash2 className="h-3.5 w-3.5" />
                        </button>
                      </form>
                    </div>

                    {/* Lessons */}
                    <div className="divide-y divide-border/50">
                      {lessons.map((lesson: any) => {
                        const Icon = lessonIcons[lesson.type as keyof typeof lessonIcons] ?? FileEdit;
                        const color = lessonColors[lesson.type as keyof typeof lessonColors] ?? "text-muted-foreground";

                        return (
                          <div
                            key={lesson.id}
                            className="flex items-center gap-3 px-4 py-2.5"
                          >
                            <div className={`shrink-0 ${color}`}>
                              <Icon className="h-3.5 w-3.5" />
                            </div>
                            <span className="flex-1 text-sm text-foreground truncate">
                              {lesson.title}
                            </span>
                            <Badge variant="secondary" className="text-xs px-1.5 py-0 capitalize">
                              {lesson.type}
                            </Badge>
                            <form action={deleteLesson.bind(null, lesson.id, programId)}>
                              <button
                                type="submit"
                                className="flex h-6 w-6 items-center justify-center rounded text-muted-foreground/60 hover:text-destructive hover:bg-destructive/10 transition-colors"
                                title="Deletar aula"
                                onClick={(e) => {
                                  if (!confirm(`Deletar aula "${lesson.title}"?`))
                                    e.preventDefault();
                                }}
                              >
                                <Trash2 className="h-3 w-3" />
                              </button>
                            </form>
                          </div>
                        );
                      })}

                      {/* Add lesson form */}
                      <details className="group">
                        <summary className="flex cursor-pointer list-none items-center gap-2 px-4 py-2.5 text-sm text-muted-foreground hover:text-gold-400 hover:bg-navy-800/40 transition-colors select-none">
                          <Plus className="h-3.5 w-3.5" />
                          Adicionar aula
                          <ChevronDown className="ml-auto h-3.5 w-3.5 transition-transform group-open:rotate-180" />
                        </summary>
                        <div className="border-t border-border/50 bg-navy-950/30 px-4 py-4">
                          <form
                            action={createLesson.bind(null, mod.id, programId)}
                            className="space-y-3"
                          >
                            <div className="grid grid-cols-1 sm:grid-cols-2 gap-3">
                              <div className="space-y-1">
                                <Label htmlFor={`title-${mod.id}`} className="text-xs">
                                  Título *
                                </Label>
                                <Input
                                  id={`title-${mod.id}`}
                                  name="title"
                                  placeholder="Título da aula"
                                  required
                                  className="h-8 text-sm"
                                />
                              </div>
                              <div className="space-y-1">
                                <Label htmlFor={`type-${mod.id}`} className="text-xs">
                                  Tipo *
                                </Label>
                                <Select
                                  id={`type-${mod.id}`}
                                  name="type"
                                  defaultValue="video"
                                  className="h-8 text-sm"
                                >
                                  <option value="video">🎥 Vídeo</option>
                                  <option value="doc">📄 Documento</option>
                                  <option value="page">📝 Conteúdo</option>
                                </Select>
                              </div>
                            </div>
                            <div className="space-y-1">
                              <Label htmlFor={`video_url-${mod.id}`} className="text-xs">
                                URL do vídeo (YouTube)
                              </Label>
                              <Input
                                id={`video_url-${mod.id}`}
                                name="video_url"
                                type="url"
                                placeholder="https://youtube.com/watch?v=..."
                                className="h-8 text-sm"
                              />
                            </div>
                            <div className="space-y-1">
                              <Label htmlFor={`material_url-${mod.id}`} className="text-xs">
                                URL do material (PDF, planilha, etc.)
                              </Label>
                              <Input
                                id={`material_url-${mod.id}`}
                                name="material_url"
                                type="url"
                                placeholder="https://..."
                                className="h-8 text-sm"
                              />
                            </div>
                            <div className="space-y-1">
                              <Label htmlFor={`content_md-${mod.id}`} className="text-xs">
                                Conteúdo em texto (markdown)
                              </Label>
                              <Textarea
                                id={`content_md-${mod.id}`}
                                name="content_md"
                                placeholder="# Título&#10;&#10;Escreva o conteúdo da aula aqui..."
                                rows={4}
                                className="text-sm"
                              />
                            </div>
                            <Button type="submit" size="sm" className="gap-2">
                              <Plus className="h-3.5 w-3.5" />
                              Criar aula
                            </Button>
                          </form>
                        </div>
                      </details>
                    </div>
                  </div>
                );
              })}
            </div>
          )}
        </div>
      </div>
    </div>
  );
}
