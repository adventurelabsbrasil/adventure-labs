"use client";

import { useTransition } from "react";
import { CheckCircle2, Circle, Loader2 } from "lucide-react";
import { toggleLessonComplete } from "@/app/actions/progress";
import { cn } from "@/lib/utils";

interface LessonCompleteButtonProps {
  lessonId: string;
  programId: string;
  completed: boolean;
}

export function LessonCompleteButton({
  lessonId,
  programId,
  completed,
}: LessonCompleteButtonProps) {
  const [isPending, startTransition] = useTransition();

  function handleToggle() {
    startTransition(async () => {
      await toggleLessonComplete(lessonId, programId, !completed);
    });
  }

  return (
    <button
      onClick={handleToggle}
      disabled={isPending}
      className={cn(
        "flex items-center gap-2.5 rounded-xl px-5 py-2.5 text-sm font-semibold transition-all duration-150",
        completed
          ? "bg-gold-400/15 text-gold-300 ring-1 ring-gold-400/30 hover:bg-gold-400/10"
          : "bg-gold-400 text-navy-950 hover:bg-gold-500 shadow-lg shadow-gold-400/20",
        isPending && "opacity-70 cursor-wait"
      )}
    >
      {isPending ? (
        <Loader2 className="h-4 w-4 animate-spin" />
      ) : completed ? (
        <CheckCircle2 className="h-4 w-4" />
      ) : (
        <Circle className="h-4 w-4" />
      )}
      {completed ? "Concluída" : "Marcar como concluída"}
    </button>
  );
}
