import { createClient } from "@/lib/supabase/server";
import { DEFAULT_TENANT } from "@/lib/tenant";
import { WelcomeHero } from "@/components/welcome/WelcomeHero";
import { Header } from "@/components/layout/Header";
import { BookOpen, CheckCircle2, Trophy } from "lucide-react";

async function getStats(userId: string) {
  const supabase = await createClient();

  const [{ count: enrolledCount }, { count: completedCount }] =
    await Promise.all([
      supabase
        .from("lms_enrollments")
        .select("*", { count: "exact", head: true })
        .eq("user_id", userId),
      supabase
        .from("lms_progress")
        .select("*", { count: "exact", head: true })
        .eq("user_id", userId)
        .eq("completed", true),
    ]);

  return {
    enrolled: enrolledCount ?? 0,
    completed: completedCount ?? 0,
  };
}

export default async function DashboardPage() {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  const tenant = DEFAULT_TENANT;
  const userName = user?.email?.split("@")[0] ?? "Membro";

  const stats = user ? await getStats(user.id) : { enrolled: 0, completed: 0 };

  return (
    <div className="flex flex-col">
      <Header title="Início" />

      <div className="flex-1 space-y-6 p-6">
        {/* Welcome Hero */}
        <WelcomeHero
          videoUrl={tenant.welcome_video_url}
          userName={userName}
          tenantName={tenant.name}
        />

        {/* Stats */}
        <div className="grid grid-cols-1 gap-4 sm:grid-cols-3">
          <StatCard
            icon={BookOpen}
            label="Programas disponíveis"
            value={stats.enrolled}
            color="text-blue-400"
            bg="bg-blue-400/10"
          />
          <StatCard
            icon={CheckCircle2}
            label="Aulas concluídas"
            value={stats.completed}
            color="text-gold-400"
            bg="bg-gold-400/10"
          />
          <StatCard
            icon={Trophy}
            label="Sua sequência"
            value="🔥 Continue assim!"
            isText
            color="text-orange-400"
            bg="bg-orange-400/10"
          />
        </div>
      </div>
    </div>
  );
}

function StatCard({
  icon: Icon,
  label,
  value,
  color,
  bg,
  isText = false,
}: {
  icon: React.ElementType;
  label: string;
  value: number | string;
  color: string;
  bg: string;
  isText?: boolean;
}) {
  return (
    <div className="rounded-xl border border-border bg-navy-900 p-5 ring-1 ring-white/5">
      <div className="flex items-center gap-3 mb-3">
        <div className={`flex h-9 w-9 items-center justify-center rounded-lg ${bg}`}>
          <Icon className={`h-4 w-4 ${color}`} />
        </div>
        <p className="text-sm text-muted-foreground">{label}</p>
      </div>
      {isText ? (
        <p className="text-base font-semibold text-foreground">{value}</p>
      ) : (
        <p className="text-3xl font-bold text-foreground">{value}</p>
      )}
    </div>
  );
}
