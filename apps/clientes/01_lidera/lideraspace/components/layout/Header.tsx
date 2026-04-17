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

  // Fetch name and role from lms_users
  const { data: lmsUser } = user
    ? await supabase
        .from("lms_users")
        .select("name, role, avatar_url")
        .eq("id", user.id)
        .single()
    : { data: null };

  const displayName = lmsUser?.name ?? email.split("@")[0];
  const role = lmsUser?.role ?? "member";
  const initials = displayName.slice(0, 2).toUpperCase();
  const roleLabel = role === "admin" ? "Admin" : "Membro";

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
          {lmsUser?.avatar_url ? (
            <img
              src={lmsUser.avatar_url}
              alt={displayName}
              className="h-9 w-9 rounded-full object-cover ring-1 ring-gold-400/30"
            />
          ) : (
            <div className="flex h-9 w-9 items-center justify-center rounded-full bg-gold-400/15 ring-1 ring-gold-400/30">
              <span className="text-xs font-bold text-gold-400">{initials}</span>
            </div>
          )}
          <div className="hidden sm:block">
            <p className="text-xs font-medium text-foreground leading-tight">
              {displayName}
            </p>
            <p className={`text-xs leading-tight ${role === "admin" ? "text-gold-400" : "text-muted-foreground"}`}>
              {roleLabel}
            </p>
          </div>
        </div>
      </div>
    </header>
  );
}
