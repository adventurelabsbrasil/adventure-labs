import Link from "next/link";
import { createClient } from "@/lib/supabase/server";
import { Header } from "@/components/layout/Header";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import { deleteProgram } from "@/app/actions/admin";
import { BookOpen, Plus, Pencil, Trash2, Eye, EyeOff } from "lucide-react";

async function getPrograms() {
  const supabase = await createClient();

  const { data: programs } = await supabase
    .from("lms_programs")
    .select(`
      id, title, description, published, cover_url, "order",
      lms_modules ( id, lms_lessons ( id ) )
    `)
    .order("order");

  return (programs ?? []).map((p: any) => {
    const modules = p.lms_modules ?? [];
    const totalLessons = modules.reduce(
      (acc: number, m: any) => acc + (m.lms_lessons?.length ?? 0),
      0
    );
    return {
      id: p.id as string,
      title: p.title as string,
      description: p.description as string | null,
      published: p.published as boolean,
      moduleCount: modules.length as number,
      lessonCount: totalLessons as number,
    };
  });
}

export default async function AdminProgramsPage() {
  const programs = await getPrograms();

  return (
    <div className="flex flex-col">
      <Header title="Admin — Programas" />

      <div className="flex-1 p-6 space-y-6">
        {/* Page header */}
        <div className="flex items-center justify-between">
          <div>
            <h2 className="text-xl font-bold text-foreground">Programas</h2>
            <p className="text-sm text-muted-foreground mt-0.5">
              {programs.length} programa{programs.length !== 1 ? "s" : ""} cadastrado
              {programs.length !== 1 ? "s" : ""}
            </p>
          </div>
          <Link href="/dashboard/admin/programs/new">
            <Button className="gap-2">
              <Plus className="h-4 w-4" />
              Novo programa
            </Button>
          </Link>
        </div>

        {/* Programs list */}
        {programs.length === 0 ? (
          <div className="flex flex-col items-center justify-center rounded-2xl border border-dashed border-border bg-navy-900/50 py-16 text-center">
            <div className="mb-4 flex h-14 w-14 items-center justify-center rounded-2xl bg-navy-800">
              <BookOpen className="h-7 w-7 text-muted-foreground/50" />
            </div>
            <h3 className="text-base font-semibold text-foreground mb-2">
              Nenhum programa ainda
            </h3>
            <p className="text-sm text-muted-foreground mb-5 max-w-xs">
              Crie seu primeiro programa para começar a organizar o conteúdo.
            </p>
            <Link href="/dashboard/admin/programs/new">
              <Button variant="outline" className="gap-2">
                <Plus className="h-4 w-4" />
                Criar primeiro programa
              </Button>
            </Link>
          </div>
        ) : (
          <div className="rounded-xl border border-border overflow-hidden">
            <table className="w-full">
              <thead>
                <tr className="border-b border-border bg-navy-900/60">
                  <th className="px-4 py-3 text-left text-xs font-semibold uppercase tracking-wider text-muted-foreground">
                    Programa
                  </th>
                  <th className="hidden md:table-cell px-4 py-3 text-center text-xs font-semibold uppercase tracking-wider text-muted-foreground">
                    Módulos
                  </th>
                  <th className="hidden md:table-cell px-4 py-3 text-center text-xs font-semibold uppercase tracking-wider text-muted-foreground">
                    Aulas
                  </th>
                  <th className="px-4 py-3 text-center text-xs font-semibold uppercase tracking-wider text-muted-foreground">
                    Status
                  </th>
                  <th className="px-4 py-3 text-right text-xs font-semibold uppercase tracking-wider text-muted-foreground">
                    Ações
                  </th>
                </tr>
              </thead>
              <tbody className="divide-y divide-border">
                {programs.map((program) => (
                  <tr
                    key={program.id}
                    className="bg-navy-900 hover:bg-navy-800/50 transition-colors"
                  >
                    <td className="px-4 py-4">
                      <div className="flex items-center gap-3">
                        <div className="flex h-9 w-9 shrink-0 items-center justify-center rounded-lg bg-gold-400/10">
                          <BookOpen className="h-4 w-4 text-gold-400" />
                        </div>
                        <div className="min-w-0">
                          <p className="text-sm font-medium text-foreground truncate">
                            {program.title}
                          </p>
                          {program.description && (
                            <p className="text-xs text-muted-foreground truncate max-w-xs">
                              {program.description}
                            </p>
                          )}
                        </div>
                      </div>
                    </td>
                    <td className="hidden md:table-cell px-4 py-4 text-center">
                      <span className="text-sm text-muted-foreground">
                        {program.moduleCount}
                      </span>
                    </td>
                    <td className="hidden md:table-cell px-4 py-4 text-center">
                      <span className="text-sm text-muted-foreground">
                        {program.lessonCount}
                      </span>
                    </td>
                    <td className="px-4 py-4 text-center">
                      {program.published ? (
                        <Badge className="border-green-500/30 bg-green-500/10 text-green-400">
                          <Eye className="h-3 w-3 mr-1" />
                          Publicado
                        </Badge>
                      ) : (
                        <Badge variant="secondary" className="text-muted-foreground">
                          <EyeOff className="h-3 w-3 mr-1" />
                          Rascunho
                        </Badge>
                      )}
                    </td>
                    <td className="px-4 py-4">
                      <div className="flex items-center justify-end gap-2">
                        <Link href={`/dashboard/admin/programs/${program.id}`}>
                          <Button variant="ghost" size="sm" className="gap-1.5 text-muted-foreground hover:text-foreground">
                            <Pencil className="h-3.5 w-3.5" />
                            <span className="hidden sm:inline">Editar</span>
                          </Button>
                        </Link>
                        <form
                          action={deleteProgram.bind(null, program.id)}
                        >
                          <Button
                            variant="ghost"
                            size="sm"
                            type="submit"
                            className="gap-1.5 text-muted-foreground hover:text-destructive"
                            onClick={(e) => {
                              if (!confirm(`Deletar "${program.title}"? Isso não pode ser desfeito.`)) {
                                e.preventDefault();
                              }
                            }}
                          >
                            <Trash2 className="h-3.5 w-3.5" />
                            <span className="hidden sm:inline">Deletar</span>
                          </Button>
                        </form>
                      </div>
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        )}
      </div>
    </div>
  );
}
