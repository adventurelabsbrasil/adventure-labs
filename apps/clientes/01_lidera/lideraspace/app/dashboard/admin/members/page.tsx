import { createClient } from "@/lib/supabase/server";
import { Header } from "@/components/layout/Header";
import { Badge } from "@/components/ui/badge";
import { enrollMember, unenrollMember } from "@/app/actions/admin";
import { Users, CheckCircle2, Circle } from "lucide-react";
import { DEFAULT_TENANT } from "@/lib/tenant";

async function getData() {
  const supabase = await createClient();

  // Get all members
  const { data: members } = await supabase
    .from("lms_users")
    .select("id, email, name, role, avatar_url")
    .order("role")
    .order("email");

  // Get all programs
  const { data: programs } = await supabase
    .from("lms_programs")
    .select("id, title, published")
    .eq("tenant_id", DEFAULT_TENANT.id)
    .order("order");

  // Get all enrollments
  const { data: enrollments } = await supabase
    .from("lms_enrollments")
    .select("user_id, program_id");

  const enrollmentSet = new Set(
    (enrollments ?? []).map((e) => `${e.user_id}:${e.program_id}`)
  );

  return {
    members: members ?? [],
    programs: programs ?? [],
    isEnrolled: (userId: string, programId: string) =>
      enrollmentSet.has(`${userId}:${programId}`),
  };
}

export default async function AdminMembersPage() {
  const { members, programs, isEnrolled } = await getData();

  const regularMembers = members.filter((m) => m.role === "member");
  const admins = members.filter((m) => m.role === "admin");

  return (
    <div className="flex flex-col">
      <Header title="Admin — Membros" />

      <div className="flex-1 p-6 space-y-6">
        {/* Stats */}
        <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
          <div className="rounded-xl border border-border bg-navy-900 p-4">
            <p className="text-xs text-muted-foreground mb-1">Total de membros</p>
            <p className="text-2xl font-bold text-foreground">{regularMembers.length}</p>
          </div>
          <div className="rounded-xl border border-border bg-navy-900 p-4">
            <p className="text-xs text-muted-foreground mb-1">Administradores</p>
            <p className="text-2xl font-bold text-foreground">{admins.length}</p>
          </div>
          <div className="rounded-xl border border-border bg-navy-900 p-4">
            <p className="text-xs text-muted-foreground mb-1">Programas ativos</p>
            <p className="text-2xl font-bold text-foreground">
              {programs.filter((p) => p.published).length}
            </p>
          </div>
          <div className="rounded-xl border border-border bg-navy-900 p-4">
            <p className="text-xs text-muted-foreground mb-1">Total de usuários</p>
            <p className="text-2xl font-bold text-foreground">{members.length}</p>
          </div>
        </div>

        {/* Members table */}
        <div className="rounded-xl border border-border overflow-hidden">
          <div className="bg-navy-900/60 px-4 py-3 border-b border-border flex items-center gap-2">
            <Users className="h-4 w-4 text-muted-foreground" />
            <h2 className="text-sm font-semibold text-foreground">
              Membros e Inscrições
            </h2>
          </div>

          {members.length === 0 ? (
            <div className="bg-navy-900 p-8 text-center">
              <p className="text-sm text-muted-foreground">
                Nenhum membro cadastrado ainda.
              </p>
            </div>
          ) : (
            <div className="overflow-x-auto">
              <table className="w-full">
                <thead>
                  <tr className="border-b border-border bg-navy-900/40">
                    <th className="px-4 py-3 text-left text-xs font-semibold uppercase tracking-wider text-muted-foreground">
                      Membro
                    </th>
                    <th className="px-4 py-3 text-center text-xs font-semibold uppercase tracking-wider text-muted-foreground">
                      Tipo
                    </th>
                    {programs.map((program) => (
                      <th
                        key={program.id}
                        className="px-3 py-3 text-center text-xs font-semibold uppercase tracking-wider text-muted-foreground max-w-[120px]"
                      >
                        <span className="block truncate max-w-[100px] mx-auto" title={program.title}>
                          {program.title}
                        </span>
                      </th>
                    ))}
                  </tr>
                </thead>
                <tbody className="divide-y divide-border">
                  {members.map((member) => (
                    <tr
                      key={member.id}
                      className="bg-navy-900 hover:bg-navy-800/40 transition-colors"
                    >
                      <td className="px-4 py-3">
                        <div className="flex items-center gap-3">
                          <div className="flex h-8 w-8 shrink-0 items-center justify-center rounded-full bg-navy-800 text-xs font-bold text-muted-foreground ring-1 ring-border">
                            {member.email?.charAt(0).toUpperCase()}
                          </div>
                          <div className="min-w-0">
                            <p className="text-sm font-medium text-foreground truncate">
                              {member.name ?? member.email?.split("@")[0]}
                            </p>
                            <p className="text-xs text-muted-foreground truncate">
                              {member.email}
                            </p>
                          </div>
                        </div>
                      </td>
                      <td className="px-4 py-3 text-center">
                        {member.role === "admin" ? (
                          <Badge className="border-gold-400/30 bg-gold-400/10 text-gold-400 text-xs">
                            Admin
                          </Badge>
                        ) : (
                          <Badge variant="secondary" className="text-xs">
                            Membro
                          </Badge>
                        )}
                      </td>
                      {programs.map((program) => {
                        const enrolled = isEnrolled(member.id, program.id);
                        return (
                          <td key={program.id} className="px-3 py-3 text-center">
                            <form
                              action={
                                enrolled
                                  ? unenrollMember.bind(null, member.id, program.id)
                                  : enrollMember.bind(null, member.id, program.id)
                              }
                            >
                              <button
                                type="submit"
                                className="mx-auto flex h-7 w-7 items-center justify-center rounded-lg transition-all hover:scale-110"
                                title={
                                  enrolled
                                    ? `Remover acesso a "${program.title}"`
                                    : `Dar acesso a "${program.title}"`
                                }
                              >
                                {enrolled ? (
                                  <CheckCircle2 className="h-5 w-5 text-gold-400" />
                                ) : (
                                  <Circle className="h-5 w-5 text-muted-foreground/30 hover:text-muted-foreground" />
                                )}
                              </button>
                            </form>
                          </td>
                        );
                      })}
                    </tr>
                  ))}
                </tbody>
              </table>
            </div>
          )}
        </div>

        <p className="text-xs text-muted-foreground">
          Clique no ícone de círculo para conceder ou revogar acesso de um membro a um programa.
          Novos usuários são criados automaticamente no primeiro login.
        </p>
      </div>
    </div>
  );
}
