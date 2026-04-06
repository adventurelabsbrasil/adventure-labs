import { createClient } from "@/lib/supabase/server";
import { Bell } from "lucide-react";

interface HeaderProps {
  title?: string;
}

export async function Header({ title }: HeaderProps) {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  const email = user?.email ?? "";
  const initials = email
    .split("@")[0]
    .slice(0, 2)
    .toUpperCase();

  return (
    <header className="flex h-16 items-center justify-between border-b border-border bg-navy-900/60 px-6 backdrop-blur-sm">
      <div>
        {title && (
          <h1 className="text-base font-semibold text-foreground">{title}</h1>
        )}
      </div>

      <div className="flex items-center gap-3">
        {/* Notification bell */}
        <button className="flex h-9 w-9 items-center justify-center rounded-lg text-muted-foreground hover:bg-navy-800 hover:text-gold-400 transition-colors">
          <Bell className="h-4 w-4" />
        </button>

        {/* Avatar */}
        <div className="flex items-center gap-2.5">
          <div className="flex h-9 w-9 items-center justify-center rounded-full bg-gold-400/15 ring-1 ring-gold-400/30">
            <span className="text-xs font-bold text-gold-400">{initials}</span>
          </div>
          <div className="hidden sm:block">
            <p className="text-xs font-medium text-foreground leading-tight">
              {email.split("@")[0]}
            </p>
            <p className="text-xs text-muted-foreground">Membro</p>
          </div>
        </div>
      </div>
    </header>
  );
}
