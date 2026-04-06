import { notFound } from "next/navigation";
import Link from "next/link";
import { createClient } from "@/lib/supabase/server";
import { Header } from "@/components/layout/Header";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Textarea } from "@/components/ui/textarea";
import { Select } from "@/components/ui/select";
import { MaterialUpload } from "@/components/admin/MaterialUpload";
import { BlockBuilder } from "@/components/admin/BlockBuilder";
import { updateLesson } from "@/app/actions/admin";
import { ArrowLeft } from "lucide-react";

async function getLesson(lessonId: string) {
  const supabase = await createClient();
  const { data } = await supabase
    .from("lms_lessons")
    .select("id, title, type, video_url, embed_url, content_md, content_blocks, material_url")
    .eq("id", lessonId)
    .single();
  return data;
}

export default async function EditLessonPage({
  params,
}: {
  params: Promise<{ id: string; lessonId: string }>;
}) {
  const { id: programId, lessonId } = await params;
  const lesson = await getLesson(lessonId);
  if (!lesson) notFound();

  const action = updateLesson.bind(null, lessonId, programId);
  const blocks = (lesson as any).content_blocks ?? [];

  return (
    <div className="flex flex-col">
      <Header title="Editar Aula" />

      <div className="flex-1 p-6 max-w-3xl space-y-6">
        <Link
          href={`/dashboard/admin/programs/${programId}`}
          className="inline-flex items-center gap-1.5 text-sm text-muted-foreground hover:text-gold-400 transition-colors"
        >
          <ArrowLeft className="h-4 w-4" />
          Voltar para o programa
        </Link>

        <form action={action} className="space-y-6">
          {/* Basic info */}
          <div className="rounded-2xl border border-border bg-navy-900 p-6 space-y-4">
            <h2 className="text-sm font-semibold text-foreground">Informações básicas</h2>

            <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
              <div className="space-y-1.5 sm:col-span-2">
                <Label htmlFor="title">Título *</Label>
                <Input id="title" name="title" defaultValue={lesson.title} required autoFocus />
              </div>

              <div className="space-y-1.5">
                <Label htmlFor="type">Tipo *</Label>
                <Select id="type" name="type" defaultValue={lesson.type ?? "video"}>
                  <option value="video">🎥 Vídeo (YouTube)</option>
                  <option value="embed">📊 Planilha / Embed</option>
                  <option value="page">📝 Página de conteúdo</option>
                  <option value="doc">📄 Documento</option>
                  <option value="link">🔗 Link externo</option>
                </Select>
              </div>

              <div className="space-y-1.5">
                <Label htmlFor="video_url">URL do vídeo (YouTube)</Label>
                <Input
                  id="video_url"
                  name="video_url"
                  type="url"
                  defaultValue={(lesson as any).video_url ?? ""}
                  placeholder="https://youtube.com/watch?v=..."
                />
              </div>
            </div>

            <div className="space-y-1.5">
              <Label htmlFor="embed_url">URL para incorporar (Google Sheets, Docs, Slides)</Label>
              <Input
                id="embed_url"
                name="embed_url"
                type="url"
                defaultValue={(lesson as any).embed_url ?? ""}
                placeholder="https://docs.google.com/spreadsheets/d/..."
              />
              <p className="text-xs text-muted-foreground">
                Cole o link de compartilhamento do Google Sheets, Docs ou Slides. Será convertido automaticamente para embed.
              </p>
            </div>
          </div>

          {/* Content Blocks */}
          <div className="rounded-2xl border border-border bg-navy-900 p-6 space-y-4">
            <div>
              <h2 className="text-sm font-semibold text-foreground">Blocos de conteúdo</h2>
              <p className="text-xs text-muted-foreground mt-0.5">
                Construa a página com blocos de texto, títulos, embeds, links e destaques — estilo Notion.
              </p>
            </div>
            <BlockBuilder initialBlocks={blocks} inputName="content_blocks" />
          </div>

          {/* Markdown fallback */}
          <div className="rounded-2xl border border-border bg-navy-900 p-6 space-y-4">
            <div>
              <h2 className="text-sm font-semibold text-foreground">Texto em markdown</h2>
              <p className="text-xs text-muted-foreground mt-0.5">
                Alternativa aos blocos. Suporta # Títulos, - Listas, parágrafos.
              </p>
            </div>
            <Textarea
              id="content_md"
              name="content_md"
              defaultValue={(lesson as any).content_md ?? ""}
              placeholder={"# Título\n\nEscreva o conteúdo aqui..."}
              rows={8}
              className="font-mono text-sm"
            />
          </div>

          {/* Material */}
          <div className="rounded-2xl border border-border bg-navy-900 p-6 space-y-4">
            <h2 className="text-sm font-semibold text-foreground">Material complementar</h2>
            <MaterialUpload
              currentUrl={(lesson as any).material_url ?? ""}
              inputName="material_url"
              lessonId={lessonId}
            />
          </div>

          <div className="flex gap-3">
            <Button type="submit">Salvar aula</Button>
            <Link href={`/dashboard/admin/programs/${programId}`}>
              <Button variant="outline" type="button">Cancelar</Button>
            </Link>
          </div>
        </form>
      </div>
    </div>
  );
}
