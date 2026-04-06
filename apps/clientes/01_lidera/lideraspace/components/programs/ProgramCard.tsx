import Link from "next/link";
import { BookOpen, ChevronRight, Play } from "lucide-react";
import { Progress } from "@/components/ui/progress";
import { Badge } from "@/components/ui/badge";
import { cn } from "@/lib/utils";

export interface ProgramCardProps {
  id: string;
  title: string;
  description: string | null;
  cover_url: string | null;
  totalLessons: number;
  completedLessons: number;
  moduleCount: number;
}

export function ProgramCard({
  id,
  title,
  description,
  totalLessons,
  completedLessons,
  moduleCount,
}: ProgramCardProps) {
  const progress = totalLessons > 0 ? Math.round((completedLessons / totalLessons) * 100) : 0;
  const isNew = completedLessons === 0;
  const isComplete = progress === 100;

  return (
    <Link href={`/dashboard/programs/${id}`} className="group block">
      <article
        className={cn(
          "relative h-full rounded-xl border bg-navy-900 p-6 transition-all duration-200",
          "border-border hover:border-gold-400/40 hover:shadow-lg hover:shadow-gold-400/5",
          "hover:-translate-y-0.5"
        )}
      >
        {/* Cover gradient */}
        <div className="absolute inset-x-0 top-0 h-1 rounded-t-xl bg-gradient-to-r from-gold-600/50 via-gold-400 to-gold-600/50" />

        {/* Icon + badges */}
        <div className="flex items-start justify-between mb-4">
          <div className="flex h-11 w-11 items-center justify-center rounded-xl bg-gold-400/10 ring-1 ring-gold-400/20">
            <BookOpen className="h-5 w-5 text-gold-400" />
          </div>
          <div className="flex gap-1.5">
            {isNew && (
              <Badge variant="default">Novo</Badge>
            )}
            {isComplete && (
              <Badge variant="secondary" className="border-green-500/30 bg-green-500/10 text-green-400">
                Concluído
              </Badge>
            )}
          </div>
        </div>

        {/* Content */}
        <h3 className="mb-1.5 text-base font-semibold text-foreground group-hover:text-gold-300 transition-colors line-clamp-2">
          {title}
        </h3>
        {description && (
          <p className="mb-4 text-sm text-muted-foreground line-clamp-2">
            {description}
          </p>
        )}

        {/* Stats */}
        <div className="flex items-center gap-3 mb-4 text-xs text-muted-foreground">
          <span className="flex items-center gap-1">
            <Play className="h-3 w-3" />
            {totalLessons} aulas
          </span>
          <span>·</span>
          <span>{moduleCount} módulos</span>
        </div>

        {/* Progress */}
        <div className="space-y-1.5">
          <div className="flex justify-between text-xs">
            <span className="text-muted-foreground">Progresso</span>
            <span className={cn("font-medium", progress > 0 ? "text-gold-400" : "text-muted-foreground")}>
              {progress}%
            </span>
          </div>
          <Progress value={progress} />
        </div>

        {/* Arrow */}
        <ChevronRight className="absolute bottom-5 right-5 h-4 w-4 text-muted-foreground/40 group-hover:text-gold-400/60 transition-colors" />
      </article>
    </Link>
  );
}
