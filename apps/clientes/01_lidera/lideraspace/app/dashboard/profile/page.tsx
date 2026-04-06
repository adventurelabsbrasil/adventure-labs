import { createClient } from "@/lib/supabase/server";
import { Header } from "@/components/layout/Header";
import { User, Mail, Shield } from "lucide-react";

export default async function ProfilePage() {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  const email = user?.email ?? "";
  const name = email.split("@")[0];
  const initials = name.slice(0, 2).toUpperCase();
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

      <div className="flex-1 p-6 max-w-2xl">
        {/* Avatar card */}
        <div className="rounded-2xl border border-border bg-navy-900 p-6 mb-6">
          <div className="flex items-center gap-5">
            <div className="flex h-16 w-16 items-center justify-center rounded-2xl bg-gold-400/15 ring-2 ring-gold-400/30">
              <span className="text-2xl font-bold text-gold-400">{initials}</span>
            </div>
            <div>
              <h2 className="text-lg font-bold text-foreground capitalize">{name}</h2>
              <p className="text-sm text-muted-foreground">{email}</p>
              <div className="mt-1.5 inline-flex items-center gap-1.5 rounded-full bg-gold-400/10 border border-gold-400/20 px-2.5 py-0.5">
                <Shield className="h-3 w-3 text-gold-400" />
                <span className="text-xs font-medium text-gold-400">Membro</span>
              </div>
            </div>
          </div>
        </div>

        {/* Info */}
        <div className="rounded-2xl border border-border bg-navy-900 divide-y divide-border">
          <InfoRow icon={Mail} label="E-mail" value={email} />
          <InfoRow icon={User} label="Membro desde" value={memberSince} />
        </div>
      </div>
    </div>
  );
}

function InfoRow({
  icon: Icon,
  label,
  value,
}: {
  icon: React.ElementType;
  label: string;
  value: string;
}) {
  return (
    <div className="flex items-center gap-4 px-6 py-4">
      <div className="flex h-9 w-9 items-center justify-center rounded-lg bg-navy-800">
        <Icon className="h-4 w-4 text-muted-foreground" />
      </div>
      <div>
        <p className="text-xs text-muted-foreground">{label}</p>
        <p className="text-sm font-medium text-foreground">{value}</p>
      </div>
    </div>
  );
}
