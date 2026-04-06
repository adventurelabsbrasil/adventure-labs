import { createClient } from "@/lib/supabase/server";

export type UserRole = "admin" | "member";

export async function getUserRole(): Promise<UserRole | null> {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) return null;

  const { data } = await supabase
    .from("lms_users")
    .select("role")
    .eq("id", user.id)
    .single();

  return (data?.role as UserRole) ?? "member";
}

export async function requireAdmin() {
  const role = await getUserRole();
  if (role !== "admin") {
    const { redirect } = await import("next/navigation");
    redirect("/dashboard");
  }
}
