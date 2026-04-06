"use client";

import { useState } from "react";
import Link from "next/link";
import {
  CheckCircle2,
  Circle,
  Play,
  FileText,
  FileEdit,
  ExternalLink,
  ChevronDown,
  ChevronRight,
  PanelLeftClose,
  PanelLeftOpen,
  BookOpen,
} from "lucide-react";
import { cn } from "@/lib/utils";

const typeIcons: Record<string, React.ElementType> = {
  video: Play,
  doc: FileText,
  page: FileEdit,
  embed: ExternalLink,
  link: ExternalLink,
};

const typeColors: Record<string, string> = {
  video: "text-blue-400",
  doc: "text-amber-400",
  page: "text-purple-400",
  embed: "text-teal-400",
  link: "text-teal-400",
};

interface LessonItem {
  id: string;
  title: string;
  type: string;
  order: number;
  completed: boolean;
}

interface ModuleItem {
  id: string;
  title: string;
  order: number;
  lessons: LessonItem[];
}

interface LessonSidebarProps {
  programId: string;
  programTitle: string;
  modules: ModuleItem[];
  currentLessonId: string;
}

export function LessonSidebar({
  programId,
  programTitle,
  modules,
  currentLessonId,
}: LessonSidebarProps) {
  const [collapsed, setCollapsed] = useState(false);
  const [openModules, setOpenModules] = useState<Set<string>>(() => {
    // Open the module that contains the current lesson
    const set = new Set<string>();
    for (const mod of modules) {
      if (mod.lessons.some((l) => l.id === currentLessonId)) {
        set.add(mod.id);
      }
    }
    // If none found, open first module
    if (set.size === 0 && modules.length > 0) set.add(modules[0].id);
    return set;
  });

  const totalLessons = modules.reduce((a, m) => a + m.lessons.length, 0);
  const completedLessons = modules.reduce(
    (a, m) => a + m.lessons.filter((l) => l.completed).length,
    0
  );
  const progress = totalLessons > 0 ? Math.round((completedLessons / totalLessons) * 100) : 0;

  function toggleModule(id: string) {
    setOpenModules((prev) => {
      const next = new Set(prev);
      if (next.has(id)) next.delete(id);
      else next.add(id);
      return next;
    });
  }

  return (
    <aside
      className={cn(
        "flex flex-col h-full border-r border-border bg-navy-900 transition-all duration-200 shrink-0",
        collapsed ? "w-12" : "w-72"
      )}
    >
      {/* Header */}
      <div
        className={cn(
          "flex items-center border-b border-border py-3 px-3 gap-2 min-h-[56px]",
          collapsed ? "justify-center" : "justify-between"
        )}
      >
        {!collapsed && (
          <div className="flex-1 min-w-0">
            <Link
              href={`/dashboard/programs/${programId}`}
              className="flex items-center gap-1.5 text-xs text-muted-foreground hover:text-gold-400 transition-colors mb-0.5"
            >
              <BookOpen className="h-3 w-3" />
              Voltar ao programa
            </Link>
            <p className="text-xs font-medium text-foreground truncate">{programTitle}</p>
          </div>
        )}
        <button
          onClick={() => setCollapsed((v) => !v)}
          className="flex h-7 w-7 shrink-0 items-center justify-center rounded-lg text-muted-foreground hover:bg-navy-800 hover:text-foreground transition-colors"
          title={collapsed ? "Expandir" : "Recolher"}
        >
          {collapsed ? (
            <PanelLeftOpen className="h-4 w-4" />
          ) : (
            <PanelLeftClose className="h-4 w-4" />
          )}
        </button>
      </div>

      {/* Progress bar (hidden when collapsed) */}
      {!collapsed && (
        <div className="px-4 py-2.5 border-b border-border bg-navy-950/30">
          <div className="flex justify-between text-xs mb-1.5">
            <span className="text-muted-foreground">{completedLessons}/{totalLessons} aulas</span>
            <span className="font-semibold text-gold-400">{progress}%</span>
          </div>
          <div className="h-1.5 rounded-full bg-navy-800 overflow-hidden">
            <div
              className="h-full rounded-full bg-gradient-to-r from-gold-500 to-gold-400 transition-all duration-500"
              style={{ width: `${progress}%` }}
            />
          </div>
        </div>
      )}

      {/* Modules + Lessons */}
      <nav className="flex-1 overflow-y-auto py-2">
        {modules.map((mod) => {
          const isOpen = openModules.has(mod.id);
          const hasCurrentLesson = mod.lessons.some((l) => l.id === currentLessonId);
          const completedInModule = mod.lessons.filter((l) => l.completed).length;
          const allDone = completedInModule === mod.lessons.length && mod.lessons.length > 0;

          return (
            <div key={mod.id}>
              {/* Module header */}
              <button
                onClick={() => toggleModule(mod.id)}
                className={cn(
                  "w-full flex items-center gap-2 px-3 py-2.5 text-left hover:bg-navy-800/40 transition-colors",
                  collapsed && "justify-center px-2"
                )}
              >
                {collapsed ? (
                  <div
                    className={cn(
                      "flex h-6 w-6 items-center justify-center rounded text-xs font-bold",
                      allDone ? "bg-gold-400/20 text-gold-400" : "bg-navy-800 text-muted-foreground"
                    )}
                  >
                    {mod.order + 1}
                  </div>
                ) : (
                  <>
                    <div
                      className={cn(
                        "flex h-5 w-5 shrink-0 items-center justify-center rounded text-xs font-bold",
                        allDone
                          ? "bg-gold-400/20 text-gold-400"
                          : hasCurrentLesson
                          ? "bg-gold-400/10 text-gold-300"
                          : "bg-navy-800 text-muted-foreground"
                      )}
                    >
                      {mod.order + 1}
                    </div>
                    <span
                      className={cn(
                        "flex-1 text-xs font-medium truncate",
                        hasCurrentLesson ? "text-foreground" : "text-muted-foreground"
                      )}
                    >
                      {mod.title}
                    </span>
                    <span className="text-xs text-muted-foreground/60 shrink-0">
                      {completedInModule}/{mod.lessons.length}
                    </span>
                    {isOpen ? (
                      <ChevronDown className="h-3 w-3 text-muted-foreground shrink-0" />
                    ) : (
                      <ChevronRight className="h-3 w-3 text-muted-foreground shrink-0" />
                    )}
                  </>
                )}
              </button>

              {/* Lessons */}
              {isOpen && !collapsed && (
                <div className="pb-1">
                  {mod.lessons.map((lesson) => {
                    const isCurrent = lesson.id === currentLessonId;
                    const Icon = typeIcons[lesson.type] ?? FileEdit;
                    const color = typeColors[lesson.type] ?? "text-muted-foreground";

                    return (
                      <Link
                        key={lesson.id}
                        href={`/dashboard/programs/${programId}/lessons/${lesson.id}`}
                        className={cn(
                          "flex items-center gap-2.5 pl-8 pr-3 py-2 text-xs transition-all",
                          isCurrent
                            ? "bg-gold-400/10 text-gold-300 border-r-2 border-gold-400"
                            : "text-muted-foreground hover:bg-navy-800/40 hover:text-foreground"
                        )}
                      >
                        {lesson.completed ? (
                          <CheckCircle2 className="h-3.5 w-3.5 shrink-0 text-gold-400" />
                        ) : (
                          <Circle
                            className={cn(
                              "h-3.5 w-3.5 shrink-0",
                              isCurrent ? "text-gold-400/60" : "text-muted-foreground/30"
                            )}
                          />
                        )}
                        <Icon className={cn("h-3 w-3 shrink-0", isCurrent ? "text-gold-400" : color)} />
                        <span className={cn("truncate", lesson.completed && !isCurrent && "line-through opacity-60")}>
                          {lesson.title}
                        </span>
                      </Link>
                    );
                  })}
                </div>
              )}
            </div>
          );
        })}
      </nav>
    </aside>
  );
}
