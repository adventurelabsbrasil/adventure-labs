"use client";

import { useTransition, useState } from "react";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Button } from "@/components/ui/button";
import { updateProfile } from "@/app/actions/profile";
import { CheckCircle2, Loader2, Mail } from "lucide-react";

interface ProfileFormProps {
  currentName: string;
  email: string;
}

export function ProfileForm({ currentName, email }: ProfileFormProps) {
  const [isPending, startTransition] = useTransition();
  const [success, setSuccess] = useState(false);
  const [error, setError] = useState<string | null>(null);

  async function handleSubmit(formData: FormData) {
    setError(null);
    setSuccess(false);
    startTransition(async () => {
      const result = await updateProfile(formData);
      if (result.error) {
        setError(result.error);
      } else {
        setSuccess(true);
        setTimeout(() => setSuccess(false), 3000);
      }
    });
  }

  return (
    <form action={handleSubmit} className="space-y-4">
      <div className="space-y-1.5">
        <Label htmlFor="name">Nome completo</Label>
        <Input
          id="name"
          name="name"
          defaultValue={currentName}
          placeholder="Seu nome"
        />
      </div>

      <div className="space-y-1.5">
        <Label className="text-muted-foreground">E-mail</Label>
        <div className="flex items-center gap-2 h-10 rounded-md border border-input bg-navy-800/50 px-3 py-2 text-sm text-muted-foreground">
          <Mail className="h-3.5 w-3.5 shrink-0" />
          {email}
        </div>
        <p className="text-xs text-muted-foreground">
          O e-mail não pode ser alterado por aqui.
        </p>
      </div>

      <div className="flex items-center gap-3">
        <Button type="submit" disabled={isPending} size="sm">
          {isPending && <Loader2 className="h-3.5 w-3.5 animate-spin mr-2" />}
          Salvar nome
        </Button>
        {success && (
          <span className="flex items-center gap-1.5 text-sm text-green-400">
            <CheckCircle2 className="h-4 w-4" />
            Salvo com sucesso
          </span>
        )}
        {error && <span className="text-sm text-destructive">{error}</span>}
      </div>
    </form>
  );
}
