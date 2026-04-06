import { Sparkles, Mail, Lock } from "lucide-react";
import { login, loginWithGoogle } from "@/app/actions/auth";
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
              Entre com sua conta para continuar.
            </p>
          </div>

          {hasError && (
            <div className="mb-4 rounded-lg border border-destructive/30 bg-destructive/10 px-3 py-2.5 text-sm text-red-400">
              E-mail ou senha inválidos. Tente novamente.
            </div>
          )}

          {/* Google OAuth */}
          <form className="mb-4">
            <Button
              formAction={loginWithGoogle}
              type="submit"
              variant="outline"
              size="lg"
              className="w-full gap-2.5 border-border hover:border-gold-400/40 hover:bg-navy-800"
            >
              <svg className="h-4 w-4 shrink-0" viewBox="0 0 24 24" aria-hidden="true">
                <path
                  d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z"
                  fill="#4285F4"
                />
                <path
                  d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z"
                  fill="#34A853"
                />
                <path
                  d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l2.85-2.22.81-.62z"
                  fill="#FBBC05"
                />
                <path
                  d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z"
                  fill="#EA4335"
                />
              </svg>
              Continuar com Google
            </Button>
          </form>

          {/* Divider */}
          <div className="relative mb-4">
            <div className="absolute inset-0 flex items-center">
              <div className="w-full border-t border-border" />
            </div>
            <div className="relative flex justify-center text-xs">
              <span className="bg-navy-900 px-2 text-muted-foreground">ou entre com e-mail</span>
            </div>
          </div>

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
