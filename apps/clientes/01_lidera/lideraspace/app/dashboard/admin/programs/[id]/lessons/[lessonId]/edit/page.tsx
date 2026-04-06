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
import { updateLesson } from "@/app/actions/admin";
import { ArrowLeft } from "lucide-react";

async function getLesson(lessonId: string) {
  const supabase = await createClient();
  const { data } = await supabase
    .from("lms_lessons")
    .select("id, title, type, video_url, content_md, material_url, module_id")
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

  return (
    <div className="flex flex-col">
      <Header title="Editar Aula" />

      <div className="flex-1 p-6 max-w-2xl space-y-6">
        <Link
          href={`/dashboard/admin/programs/${programId}`}
          className="inline-flex items-center gap-1.5 text-sm text-muted-foreground hover:text-gold-400 transition-colors"
        >
          <ArrowLeft className="h-4 w-4" />
          Voltar para o programa
        </Link>

        <div className="rounded-2xl border border-border bg-navy-900 p-6">
          <h2 className="text-base font-semibold text-foreground mb-5">
            Editar aula
          </h2>

          <form action={action} className="space-y-5">
            <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
              <div className="space-y-1.5 sm:col-span-2">
                <Label htmlFor="title">Título *</Label>
                <Input
                  id="title"
                  name="title"
                  defaultValue={lesson.title}
                  required
                  autoFocus
                />
              </div>

              <div className="space-y-1.5">
                <Label htmlFor="type">Tipo *</Label>
                <Select
                  id="type"
                  name="type"
                  defaultValue={lesson.type ?? "video"}
                >
                  <option value="video">🎥 Vídeo</option>
                  <option value="doc">📄 Documento</option>
                  <option value="page">📝 Conteúdo</option>
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

            {/* Material upload */}
            <div className="space-y-1.5">
              <Label>Material complementar (PDF, planilha, etc.)</Label>
              <MaterialUpload
                currentUrl={(lesson as any).material_url ?? ""}
                inputName="material_url"
                lessonId={lessonId}
              />
            </div>

            <div className="space-y-1.5">
              <Label htmlFor="content_md">Conteúdo em texto (markdown)</Label>
              <Textarea
                id="content_md"
                name="content_md"
                defaultValue={(lesson as any).content_md ?? ""}
                placeholder={"# Título\n\nEscreva o conteúdo da aula aqui..."}
                rows={10}
                className="font-mono text-sm"
              />
              <p className="text-xs text-muted-foreground">
                Suporta markdown básico: # Títulos, - Listas, parágrafos separados por linha em branco.
              </p>
            </div>

            <div className="flex gap-3 pt-2 border-t border-border">
              <Button type="submit">Salvar aula</Button>
              <Link href={`/dashboard/admin/programs/${programId}`}>
                <Button variant="outline" type="button">
                  Cancelar
                </Button>
              </Link>
            </div>
          </form>
        </div>
      </div>
    </div>
  );
}
