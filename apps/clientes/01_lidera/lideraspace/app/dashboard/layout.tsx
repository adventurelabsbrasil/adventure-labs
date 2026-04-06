import { DEFAULT_TENANT } from "@/lib/tenant";
import { Sidebar } from "@/components/layout/Sidebar";

export default function DashboardLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  // Phase 1: use default tenant. Phase 2: resolve from headers/DB.
  const tenant = DEFAULT_TENANT;

  return (
    <div className="flex h-screen overflow-hidden bg-navy-950">
      <Sidebar tenant={tenant} />
      <div className="flex flex-1 flex-col overflow-hidden">
        <main className="flex-1 overflow-y-auto">
          {children}
        </main>
      </div>
    </div>
  );
}
