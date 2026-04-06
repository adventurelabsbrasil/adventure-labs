import { createClient } from "@/lib/supabase/server";
import { Header } from "@/components/layout/Header";
import { ProfileForm } from "@/components/profile/ProfileForm";
import { PasswordForm } from "@/components/profile/PasswordForm";
import { Mail, Shield, Calendar } from "lucide-react";
import { Badge } from "@/components/ui/badge";

export default async function ProfilePage() {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  // Get lms_users data (name, role)
  const { data: lmsUser } = user
    ? await supabase
        .from("lms_users")
        .select("name, role, avatar_url")
        .eq("id", user.id)
        .single()
    : { data: null };

  const email = user?.email ?? "";
  const name = lmsUser?.name ?? email.split("@")[0];
  const role = lmsUser?.role ?? "member";
  const avatarUrl = lmsUser?.avatar_url ?? null;

  // Check if user is OAuth-only (no password set)
  const identities = user?.identities ?? [];
  const hasGoogleIdentity = identities.some((i) => i.provider === "google");
  const hasEmailIdentity = identities.some((i) => i.provider === "email");
  const isOAuthOnly = hasGoogleIdentity && !hasEmailIdentity;

  const initials = name
    .split(" ")
    .slice(0, 2)
    .map((w: string) => w[0])
    .join("")
    .toUpperCase();

  const memberSince = user?.created_at
    ? new Date(user.created_at).toLocaleDateString("pt-BR", {
        day: "2-digit",
        month: "long",
        year: "numeric",
      })
    : "—";

  return (
    <div className="flex flex-col">
      <Header title="Meu Perfil" />

      <div className="flex-1 p-6 max-w-2xl space-y-5">
        {/* Avatar + identity card */}
        <div className="rounded-2xl border border-border bg-navy-900 p-6">
          <div className="flex items-center gap-5">
            {avatarUrl ? (
              <img
                src={avatarUrl}
                alt={name}
                className="h-16 w-16 rounded-2xl ring-2 ring-gold-400/30 object-cover"
              />
            ) : (
              <div className="flex h-16 w-16 items-center justify-center rounded-2xl bg-gold-400/15 ring-2 ring-gold-400/30 shrink-0">
                <span className="text-2xl font-bold text-gold-400">{initials}</span>
              </div>
            )}

            <div className="min-w-0">
              <h2 className="text-lg font-bold text-foreground">{name}</h2>
              <p className="text-sm text-muted-foreground truncate">{email}</p>
              <div className="flex items-center gap-2 mt-2">
                <Badge
                  className={
                    role === "admin"
                      ? "border-gold-400/30 bg-gold-400/10 text-gold-400"
                      : "border-border bg-navy-800 text-muted-foreground"
                  }
                >
                  <Shield className="h-3 w-3 mr-1" />
                  {role === "admin" ? "Administrador" : "Membro"}
                </Badge>
                {hasGoogleIdentity && (
                  <Badge className="border-blue-500/30 bg-blue-500/10 text-blue-400">
                    Google
                  </Badge>
                )}
              </div>
            </div>
          </div>

          <div className="mt-5 flex items-center gap-2 text-xs text-muted-foreground border-t border-border pt-4">
            <Calendar className="h-3.5 w-3.5" />
            Membro desde {memberSince}
          </div>
        </div>

        {/* Edit name */}
        <div className="rounded-2xl border border-border bg-navy-900 p-6">
          <h3 className="text-sm font-semibold text-foreground mb-4">
            Informações pessoais
          </h3>
          <ProfileForm currentName={name} email={email} />
        </div>

        {/* Change password */}
        {!isOAuthOnly && (
          <div className="rounded-2xl border border-border bg-navy-900 p-6">
            <h3 className="text-sm font-semibold text-foreground mb-1">
              Alterar senha
            </h3>
            <p className="text-xs text-muted-foreground mb-4">
              Sua senha deve ter no mínimo 8 caracteres.
            </p>
            <PasswordForm />
          </div>
        )}

        {isOAuthOnly && (
          <div className="rounded-xl border border-blue-500/20 bg-blue-500/5 px-4 py-3">
            <p className="text-xs text-blue-400">
              Sua conta usa login pelo Google. Não é possível definir uma senha separada.
            </p>
          </div>
        )}
      </div>
    </div>
  );
}
