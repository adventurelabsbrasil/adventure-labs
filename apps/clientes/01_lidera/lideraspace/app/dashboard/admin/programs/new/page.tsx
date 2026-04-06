import Link from "next/link";
import { Header } from "@/components/layout/Header";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Textarea } from "@/components/ui/textarea";
import { createProgram } from "@/app/actions/admin";
import { ArrowLeft } from "lucide-react";

export default function NewProgramPage() {
  return (
    <div className="flex flex-col">
      <Header title="Novo Programa" />

      <div className="flex-1 p-6 max-w-2xl">
        <Link
          href="/dashboard/admin/programs"
          className="inline-flex items-center gap-1.5 text-sm text-muted-foreground hover:text-gold-400 transition-colors mb-6"
        >
          <ArrowLeft className="h-4 w-4" />
          Voltar para programas
        </Link>

        <div className="rounded-2xl border border-border bg-navy-900 p-6">
          <h2 className="text-lg font-semibold text-foreground mb-5">
            Criar novo programa
          </h2>

          <form action={createProgram} className="space-y-5">
            <div className="space-y-1.5">
              <Label htmlFor="title">Título *</Label>
              <Input
                id="title"
                name="title"
                placeholder="Ex: Liderança Transformacional"
                required
                autoFocus
              />
            </div>

            <div className="space-y-1.5">
              <Label htmlFor="description">Descrição</Label>
              <Textarea
                id="description"
                name="description"
                placeholder="Descreva o objetivo e conteúdo deste programa..."
                rows={4}
              />
            </div>

            <div className="space-y-1.5">
              <Label htmlFor="cover_url">URL da imagem de capa</Label>
              <Input
                id="cover_url"
                name="cover_url"
                type="url"
                placeholder="https://..."
              />
              <p className="text-xs text-muted-foreground">
                URL de uma imagem para o card do programa (opcional)
              </p>
            </div>

            <div className="flex gap-3 pt-2">
              <Button type="submit" className="flex-1 sm:flex-none">
                Criar programa
              </Button>
              <Link href="/dashboard/admin/programs">
                <Button variant="outline" type="button">
                  Cancelar
                </Button>
              </Link>
            </div>
          </form>
        </div>
      </div>
    </div>
  );
}
