"use client";

import { useState, useRef, useTransition, useEffect } from "react";
import { saveNote } from "@/app/actions/notes";
import { PenLine, CheckCircle2, Loader2 } from "lucide-react";
import { cn } from "@/lib/utils";

interface LessonNotesProps {
  lessonId: string;
  initialContent: string;
}

export function LessonNotes({ lessonId, initialContent }: LessonNotesProps) {
  const [content, setContent] = useState(initialContent);
  const [saved, setSaved] = useState(false);
  const [isPending, startTransition] = useTransition();
  const [open, setOpen] = useState(!!initialContent);
  const timerRef = useRef<ReturnType<typeof setTimeout>>();

  function handleChange(value: string) {
    setContent(value);
    setSaved(false);
    clearTimeout(timerRef.current);
    timerRef.current = setTimeout(() => {
      startTransition(async () => {
        await saveNote(lessonId, value);
        setSaved(true);
        setTimeout(() => setSaved(false), 2500);
      });
    }, 1200);
  }

  // Cleanup timer on unmount
  useEffect(() => () => clearTimeout(timerRef.current), []);

  return (
    <div className="rounded-2xl border border-border bg-navy-900 overflow-hidden">
      <button
        type="button"
        onClick={() => setOpen((v) => !v)}
        className="w-full flex items-center gap-3 px-5 py-4 hover:bg-navy-800/40 transition-colors"
      >
        <div className="flex h-8 w-8 items-center justify-center rounded-lg bg-purple-500/10">
          <PenLine className="h-4 w-4 text-purple-400" />
        </div>
        <div className="flex-1 text-left">
          <p className="text-sm font-medium text-foreground">Minhas anotações</p>
          <p className="text-xs text-muted-foreground">
            {open ? "Suas notas são privadas e salvas automaticamente" : "Clique para abrir"}
          </p>
        </div>
        {isPending && <Loader2 className="h-3.5 w-3.5 animate-spin text-muted-foreground" />}
        {saved && !isPending && (
          <span className="flex items-center gap-1 text-xs text-green-400">
            <CheckCircle2 className="h-3.5 w-3.5" />
            Salvo
          </span>
        )}
      </button>

      {open && (
        <div className="border-t border-border px-5 pb-5 pt-3">
          <textarea
            value={content}
            onChange={(e) => handleChange(e.target.value)}
            placeholder="Escreva suas anotações sobre esta aula... Suas notas são salvas automaticamente."
            className={cn(
              "w-full min-h-[140px] resize-y bg-navy-950/60 rounded-xl border border-border px-4 py-3",
              "text-sm text-foreground placeholder:text-muted-foreground/50",
              "focus:outline-none focus:ring-2 focus:ring-gold-400/30 focus:border-gold-400/30",
              "transition-all"
            )}
          />
        </div>
      )}
    </div>
  );
}
