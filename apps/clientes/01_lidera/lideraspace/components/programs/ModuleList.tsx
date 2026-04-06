"use client";

import { useState } from "react";
import { Play, FileText, FileEdit, CheckCircle2, Circle, Lock } from "lucide-react";
import {
  Accordion,
  AccordionContent,
  AccordionItem,
  AccordionTrigger,
} from "@/components/ui/accordion";
import { Badge } from "@/components/ui/badge";
import { cn } from "@/lib/utils";

export type LessonType = "video" | "doc" | "page";

export interface Lesson {
  id: string;
  title: string;
  type: LessonType;
  order: number;
  completed: boolean;
}

export interface Module {
  id: string;
  title: string;
  description: string | null;
  order: number;
  lessons: Lesson[];
}

interface ModuleListProps {
  modules: Module[];
  onToggleLesson?: (lessonId: string, completed: boolean) => void;
}

const lessonTypeConfig: Record<LessonType, { icon: React.ElementType; label: string; color: string }> = {
  video: { icon: Play, label: "Vídeo", color: "text-blue-400" },
  doc: { icon: FileText, label: "Documento", color: "text-amber-400" },
  page: { icon: FileEdit, label: "Conteúdo", color: "text-purple-400" },
};

function LessonItem({
  lesson,
  onToggle,
}: {
  lesson: Lesson;
  onToggle?: (id: string, completed: boolean) => void;
}) {
  const config = lessonTypeConfig[lesson.type];
  const Icon = config.icon;

  return (
    <div
      className={cn(
        "group flex items-center gap-3 rounded-lg px-3 py-2.5 transition-all duration-150",
        "hover:bg-navy-800/60 cursor-pointer",
        lesson.completed && "opacity-70"
      )}
      onClick={() => onToggle?.(lesson.id, !lesson.completed)}
    >
      {/* Completion indicator */}
      <button
        className="shrink-0 transition-colors"
        aria-label={lesson.completed ? "Marcar como não concluída" : "Marcar como concluída"}
        onClick={(e) => {
          e.stopPropagation();
          onToggle?.(lesson.id, !lesson.completed);
        }}
      >
        {lesson.completed ? (
          <CheckCircle2 className="h-4 w-4 text-gold-400" />
        ) : (
          <Circle className="h-4 w-4 text-muted-foreground/40 group-hover:text-muted-foreground" />
        )}
      </button>

      {/* Type icon */}
      <div className={cn("shrink-0", config.color)}>
        <Icon className="h-3.5 w-3.5" />
      </div>

      {/* Title */}
      <span
        className={cn(
          "flex-1 text-sm",
          lesson.completed ? "line-through text-muted-foreground" : "text-foreground"
        )}
      >
        {lesson.title}
      </span>

      {/* Type badge */}
      <Badge variant="secondary" className="hidden sm:inline-flex text-xs px-1.5 py-0">
        {config.label}
      </Badge>
    </div>
  );
}

export function ModuleList({ modules, onToggleLesson }: ModuleListProps) {
  const defaultOpen = modules.length > 0 ? [modules[0].id] : [];

  return (
    <Accordion type="multiple" defaultValue={defaultOpen} className="space-y-2">
      {modules.map((module) => {
        const completedCount = module.lessons.filter((l) => l.completed).length;
        const totalCount = module.lessons.length;
        const allDone = completedCount === totalCount && totalCount > 0;

        return (
          <AccordionItem
            key={module.id}
            value={module.id}
            className="rounded-xl border border-border bg-navy-900 px-4 [&[data-state=open]]:border-gold-400/20"
          >
            <AccordionTrigger className="hover:no-underline">
              <div className="flex flex-1 items-center gap-3 text-left">
                <div
                  className={cn(
                    "flex h-7 w-7 shrink-0 items-center justify-center rounded-lg text-xs font-bold",
                    allDone
                      ? "bg-gold-400/20 text-gold-400"
                      : "bg-navy-800 text-muted-foreground"
                  )}
                >
                  {module.order + 1}
                </div>
                <div>
                  <p className="text-sm font-medium text-foreground">{module.title}</p>
                  <p className="text-xs text-muted-foreground mt-0.5">
                    {completedCount}/{totalCount} aulas concluídas
                  </p>
                </div>
              </div>
            </AccordionTrigger>
            <AccordionContent>
              <div className="space-y-0.5 pb-2">
                {module.lessons.length === 0 ? (
                  <p className="px-3 py-2 text-sm text-muted-foreground">
                    Nenhuma aula disponível ainda.
                  </p>
                ) : (
                  module.lessons.map((lesson) => (
                    <LessonItem
                      key={lesson.id}
                      lesson={lesson}
                      onToggle={onToggleLesson}
                    />
                  ))
                )}
              </div>
            </AccordionContent>
          </AccordionItem>
        );
      })}
    </Accordion>
  );
}
