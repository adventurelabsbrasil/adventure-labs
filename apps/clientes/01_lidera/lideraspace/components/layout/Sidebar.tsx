"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";
import {
  Home,
  BookOpen,
  User,
  LogOut,
  Sparkles,
  LayoutDashboard,
} from "lucide-react";
import { cn } from "@/lib/utils";
import { logout } from "@/app/actions/auth";
import type { Tenant } from "@/lib/tenant";

const navItems = [
  { href: "/dashboard", label: "Início", icon: Home },
  { href: "/dashboard/programs", label: "Programas", icon: BookOpen },
  { href: "/dashboard/profile", label: "Meu Perfil", icon: User },
];

interface SidebarProps {
  tenant: Tenant;
}

export function Sidebar({ tenant }: SidebarProps) {
  const pathname = usePathname();

  return (
    <aside className="flex h-full w-64 flex-col bg-navy-900 border-r border-border">
      {/* Logo */}
      <div className="flex items-center gap-3 px-6 py-5 border-b border-border">
        <div className="flex h-9 w-9 items-center justify-center rounded-lg bg-gold-400/10 ring-1 ring-gold-400/30">
          <Sparkles className="h-5 w-5 text-gold-400" />
        </div>
        <div>
          <p className="text-sm font-bold text-gold-gradient leading-tight">
            {tenant.name}
          </p>
          <p className="text-xs text-muted-foreground">Área de Membros</p>
        </div>
      </div>

      {/* Navigation */}
      <nav className="flex-1 space-y-1 px-3 py-4">
        <p className="px-3 pb-2 text-xs font-semibold uppercase tracking-wider text-muted-foreground/60">
          Menu
        </p>
        {navItems.map(({ href, label, icon: Icon }) => {
          const isActive =
            href === "/dashboard"
              ? pathname === "/dashboard"
              : pathname.startsWith(href);
          return (
            <Link
              key={href}
              href={href}
              className={cn(
                "flex items-center gap-3 rounded-lg px-3 py-2.5 text-sm font-medium transition-all duration-150",
                isActive
                  ? "bg-gold-400/10 text-gold-300 ring-1 ring-gold-400/20"
                  : "text-muted-foreground hover:bg-navy-800 hover:text-foreground"
              )}
            >
              <Icon
                className={cn("h-4 w-4", isActive && "text-gold-400")}
              />
              {label}
              {isActive && (
                <span className="ml-auto h-1.5 w-1.5 rounded-full bg-gold-400" />
              )}
            </Link>
          );
        })}
      </nav>

      {/* Footer */}
      <div className="border-t border-border p-3">
        <form action={logout}>
          <button
            type="submit"
            className="flex w-full items-center gap-3 rounded-lg px-3 py-2.5 text-sm text-muted-foreground hover:bg-navy-800 hover:text-destructive transition-all duration-150"
          >
            <LogOut className="h-4 w-4" />
            Sair
          </button>
        </form>
      </div>
    </aside>
  );
}
