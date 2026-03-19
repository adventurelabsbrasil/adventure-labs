import Link from "next/link";
import { auth } from "@clerk/nextjs/server";

export default async function Home() {
  const { userId } = auth();
  return (
    <main className="min-h-screen flex flex-col items-center justify-center px-6 bg-gradient-to-b from-[#0a1628] to-[#0d1f3a]">
      <p className="text-[#da0028] text-sm font-semibold tracking-widest uppercase mb-2">
        Adventure Labs
      </p>
      <h1 className="text-3xl md:text-4xl font-bold text-center text-white mb-2">
        Xpostr
      </h1>
      <p className="text-slate-400 text-center max-w-md mb-8">
        Voz pública — Grove, Zazu e Ogilvy em pipeline para{" "}
        <span className="text-white">@adventurelabsbr</span>
      </p>
      {userId ? (
        <Link
          href="/dashboard"
          className="rounded-lg bg-[#da0028] hover:bg-[#b80022] text-white px-8 py-3 font-medium transition-colors"
        >
          Abrir painel
        </Link>
      ) : (
        <Link
          href="/sign-in"
          className="rounded-lg bg-[#da0028] hover:bg-[#b80022] text-white px-8 py-3 font-medium transition-colors"
        >
          Entrar
        </Link>
      )}
    </main>
  );
}
