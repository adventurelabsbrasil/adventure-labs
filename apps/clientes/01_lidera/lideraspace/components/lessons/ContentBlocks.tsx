import { toEmbedUrl, detectEmbedType, embedLabels } from "@/lib/embed";
import { FileText, ExternalLink, Info, AlertTriangle, Lightbulb, Star, Download } from "lucide-react";

// ─── Block Types ──────────────────────────────────────────────────────────────

export type Block =
  | { type: "heading"; level: 1 | 2 | 3; text: string }
  | { type: "text"; content: string }
  | { type: "embed"; url: string; title?: string; height?: number }
  | { type: "link_card"; url: string; label: string; description?: string }
  | { type: "file"; url: string; label: string }
  | { type: "divider" }
  | { type: "callout"; content: string; icon?: string; color?: "blue" | "gold" | "green" | "red" }

// ─── Individual Renderers ────────────────────────────────────────────────────

function HeadingBlock({ level, text }: { level: 1 | 2 | 3; text: string }) {
  const classes = {
    1: "text-2xl font-bold text-foreground mt-8 mb-4 first:mt-0",
    2: "text-xl font-bold text-foreground mt-6 mb-3 first:mt-0",
    3: "text-base font-semibold text-foreground mt-5 mb-2 first:mt-0",
  }[level];
  if (level === 1) return <h1 className={classes}>{text}</h1>;
  if (level === 2) return <h2 className={classes}>{text}</h2>;
  return <h3 className={classes}>{text}</h3>;
}

function TextBlock({ content }: { content: string }) {
  return (
    <div className="space-y-1.5 mb-4">
      {content.split("\n").map((line, i) => {
        if (line.startsWith("- ") || line.startsWith("• ")) {
          return (
            <div key={i} className="flex items-start gap-2 text-sm text-muted-foreground">
              <span className="mt-2 h-1.5 w-1.5 shrink-0 rounded-full bg-gold-400/60" />
              {line.replace(/^[-•]\s/, "")}
            </div>
          );
        }
        if (!line.trim()) return <div key={i} className="h-2" />;
        return (
          <p key={i} className="text-sm text-muted-foreground leading-relaxed">
            {line}
          </p>
        );
      })}
    </div>
  );
}

function EmbedBlock({ url, title, height }: { url: string; title?: string; height?: number }) {
  const embedUrl = toEmbedUrl(url);
  const embedType = detectEmbedType(url);
  const label = title ?? embedLabels[embedType];
  const isYoutube = embedType === "youtube";
  const frameHeight = height ?? (isYoutube ? undefined : 580);

  if (!embedUrl) return null;

  return (
    <div className="my-5 rounded-2xl border border-border overflow-hidden shadow-lg">
      {label && (
        <div className="flex items-center gap-2.5 bg-navy-800/60 px-4 py-2.5 border-b border-border">
          <div className="h-2 w-2 rounded-full bg-gold-400/60" />
          <span className="text-xs font-medium text-muted-foreground">{label}</span>
          <a
            href={url}
            target="_blank"
            rel="noopener noreferrer"
            className="ml-auto text-xs text-muted-foreground/60 hover:text-gold-400 flex items-center gap-1 transition-colors"
          >
            <ExternalLink className="h-3 w-3" />
            Abrir original
          </a>
        </div>
      )}
      {isYoutube ? (
        <div className="relative w-full bg-black" style={{ paddingTop: "56.25%" }}>
          <iframe
            src={embedUrl}
            className="absolute inset-0 w-full h-full"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
            allowFullScreen
            title={label}
          />
        </div>
      ) : (
        <iframe
          src={embedUrl}
          className="w-full bg-white"
          height={frameHeight}
          allowFullScreen
          title={label}
          style={{ border: "none" }}
        />
      )}
    </div>
  );
}

function LinkCardBlock({ url, label, description }: { url: string; label: string; description?: string }) {
  return (
    <a
      href={url}
      target="_blank"
      rel="noopener noreferrer"
      className="group flex items-center gap-4 rounded-xl border border-border bg-navy-800/40 px-5 py-4 my-3 hover:border-gold-400/30 hover:bg-navy-800/70 transition-all"
    >
      <div className="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-gold-400/10 group-hover:bg-gold-400/20 transition-colors">
        <ExternalLink className="h-5 w-5 text-gold-400" />
      </div>
      <div className="flex-1 min-w-0">
        <p className="text-sm font-medium text-foreground group-hover:text-gold-300 transition-colors">
          {label}
        </p>
        {description && (
          <p className="text-xs text-muted-foreground truncate mt-0.5">{description}</p>
        )}
      </div>
      <ExternalLink className="h-4 w-4 text-muted-foreground/40 group-hover:text-gold-400 transition-colors shrink-0" />
    </a>
  );
}

function FileBlock({ url, label }: { url: string; label: string }) {
  return (
    <a
      href={url}
      target="_blank"
      rel="noopener noreferrer"
      download
      className="group flex items-center gap-4 rounded-xl border border-border bg-navy-800/40 px-5 py-4 my-3 hover:border-amber-400/30 hover:bg-navy-800/70 transition-all"
    >
      <div className="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-amber-400/10 group-hover:bg-amber-400/20 transition-colors">
        <FileText className="h-5 w-5 text-amber-400" />
      </div>
      <div className="flex-1 min-w-0">
        <p className="text-sm font-medium text-foreground group-hover:text-amber-300 transition-colors">
          {label}
        </p>
        <p className="text-xs text-muted-foreground mt-0.5">Clique para baixar</p>
      </div>
      <Download className="h-4 w-4 text-muted-foreground/40 group-hover:text-amber-400 transition-colors shrink-0" />
    </a>
  );
}

const calloutConfig = {
  blue: {
    bg: "bg-blue-500/8 border-blue-500/20",
    icon: <Info className="h-4 w-4 text-blue-400 shrink-0 mt-0.5" />,
  },
  gold: {
    bg: "bg-gold-400/8 border-gold-400/20",
    icon: <Star className="h-4 w-4 text-gold-400 shrink-0 mt-0.5" />,
  },
  green: {
    bg: "bg-green-500/8 border-green-500/20",
    icon: <Lightbulb className="h-4 w-4 text-green-400 shrink-0 mt-0.5" />,
  },
  red: {
    bg: "bg-red-500/8 border-red-500/20",
    icon: <AlertTriangle className="h-4 w-4 text-red-400 shrink-0 mt-0.5" />,
  },
};

function CalloutBlock({
  content,
  color = "blue",
}: {
  content: string;
  color?: "blue" | "gold" | "green" | "red";
}) {
  const cfg = calloutConfig[color];
  return (
    <div className={`flex gap-3 rounded-xl border px-4 py-3.5 my-4 ${cfg.bg}`}>
      {cfg.icon}
      <p className="text-sm text-foreground leading-relaxed">{content}</p>
    </div>
  );
}

// ─── Main Renderer ────────────────────────────────────────────────────────────

export function ContentBlocks({ blocks }: { blocks: Block[] }) {
  if (!blocks || blocks.length === 0) return null;

  return (
    <div className="space-y-1">
      {blocks.map((block, i) => {
        switch (block.type) {
          case "heading":
            return <HeadingBlock key={i} level={block.level} text={block.text} />;
          case "text":
            return <TextBlock key={i} content={block.content} />;
          case "embed":
            return <EmbedBlock key={i} url={block.url} title={block.title} height={block.height} />;
          case "link_card":
            return <LinkCardBlock key={i} url={block.url} label={block.label} description={block.description} />;
          case "file":
            return <FileBlock key={i} url={block.url} label={block.label} />;
          case "divider":
            return <hr key={i} className="border-border my-6" />;
          case "callout":
            return <CalloutBlock key={i} content={block.content} color={block.color} />;
          default:
            return null;
        }
      })}
    </div>
  );
}
