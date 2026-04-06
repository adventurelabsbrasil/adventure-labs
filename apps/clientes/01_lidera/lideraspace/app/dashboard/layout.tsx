import { DEFAULT_TENANT } from "@/lib/tenant";
import { Sidebar } from "@/components/layout/Sidebar";
import { getUserRole } from "@/lib/auth";

export default async function DashboardLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  const tenant = DEFAULT_TENANT;
  const role = await getUserRole();

  return (
    <div className="flex h-screen overflow-hidden bg-navy-950">
      <Sidebar tenant={tenant} role={role ?? "member"} />
      <div className="flex flex-1 flex-col overflow-hidden">
        <main className="flex-1 overflow-y-auto">{children}</main>
      </div>
    </div>
  );
}
