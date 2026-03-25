import { BendittaDashboard } from "@adventure-labs/benditta-meta-dashboard";

export default function HomePage() {
  return (
    <main className="mx-auto max-w-[1400px] px-4 py-8 sm:px-6 lg:px-8">
      <BendittaDashboard
        csvUrl="/BM-202603-MetaReport.csv"
        tableHref="/tabela"
      />
    </main>
  );
}
