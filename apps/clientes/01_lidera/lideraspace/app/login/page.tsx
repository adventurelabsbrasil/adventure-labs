import { Sparkles, Mail, Lock } from "lucide-react";
import { login } from "@/app/actions/auth";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";

export default async function LoginPage({
  searchParams,
}: {
  searchParams: Promise<{ error?: string }>;
}) {
  const params = await searchParams;
  const hasError = !!params?.error;
  return (
    <div className="flex min-h-screen flex-col items-center justify-center bg-navy-950 p-4">
      {/* Ambient glow */}
      <div className="pointer-events-none fixed inset-0 overflow-hidden">
        <div className="absolute left-1/2 top-1/4 h-[600px] w-[600px] -translate-x-1/2 -translate-y-1/2 rounded-full bg-gold-400/5 blur-[120px]" />
        <div className="absolute right-0 bottom-0 h-[400px] w-[400px] rounded-full bg-navy-700/30 blur-[100px]" />
      </div>

      <div className="relative w-full max-w-[400px] space-y-6">
        {/* Logo */}
        <div className="flex flex-col items-center gap-3 text-center">
          <div className="flex h-14 w-14 items-center justify-center rounded-2xl bg-gold-400/10 ring-2 ring-gold-400/30 shadow-xl shadow-gold-400/10">
            <Sparkles className="h-7 w-7 text-gold-400" />
          </div>
          <div>
            <h1 className="text-2xl font-bold text-gold-gradient">Lidera Space</h1>
            <p className="text-sm text-muted-foreground mt-1">Área exclusiva de membros</p>
          </div>
        </div>

        {/* Card */}
        <div className="rounded-2xl border border-border bg-navy-900 p-6 shadow-2xl ring-1 ring-gold-400/10">
          <div className="mb-5">
            <h2 className="text-lg font-semibold text-foreground">Acessar plataforma</h2>
            <p className="text-sm text-muted-foreground mt-1">
              Entre com seu e-mail e senha para continuar.
            </p>
          </div>

          {hasError && (
            <div className="mb-4 rounded-lg border border-destructive/30 bg-destructive/10 px-3 py-2.5 text-sm text-red-400">
              E-mail ou senha inválidos. Tente novamente.
            </div>
          )}
          <LoginForm />
        </div>

        <p className="text-center text-xs text-muted-foreground">
          Problemas para acessar? Fale com o suporte.
        </p>
      </div>
    </div>
  );
}

function LoginForm() {
  return (
    <form className="space-y-4">
      <div className="space-y-1.5">
        <Label htmlFor="email">E-mail</Label>
        <div className="relative">
          <Mail className="absolute left-3 top-1/2 -translate-y-1/2 h-4 w-4 text-muted-foreground pointer-events-none" />
          <Input
            id="email"
            name="email"
            type="email"
            placeholder="seu@email.com"
            autoComplete="email"
            required
            className="pl-9"
          />
        </div>
      </div>

      <div className="space-y-1.5">
        <Label htmlFor="password">Senha</Label>
        <div className="relative">
          <Lock className="absolute left-3 top-1/2 -translate-y-1/2 h-4 w-4 text-muted-foreground pointer-events-none" />
          <Input
            id="password"
            name="password"
            type="password"
            placeholder="••••••••"
            autoComplete="current-password"
            required
            className="pl-9"
          />
        </div>
      </div>

      <Button
        formAction={login}
        type="submit"
        size="lg"
        className="w-full mt-2"
      >
        Entrar na plataforma
      </Button>
    </form>
  );
}
