export type EmbedType = "sheets" | "docs" | "slides" | "youtube" | "drive" | "generic";

export function detectEmbedType(url: string): EmbedType {
  if (!url) return "generic";
  if (url.includes("spreadsheets")) return "sheets";
  if (url.includes("docs.google.com/document")) return "docs";
  if (url.includes("presentation")) return "slides";
  if (url.includes("drive.google.com")) return "drive";
  if (url.includes("youtube.com") || url.includes("youtu.be")) return "youtube";
  return "generic";
}

export function toEmbedUrl(url: string): string | null {
  if (!url) return null;

  // Google Sheets
  const sheetsMatch = url.match(/docs\.google\.com\/spreadsheets\/d\/([^/\s?#]+)/);
  if (sheetsMatch)
    return `https://docs.google.com/spreadsheets/d/${sheetsMatch[1]}/embed?headers=0&rm=minimal`;

  // Google Docs
  const docsMatch = url.match(/docs\.google\.com\/document\/d\/([^/\s?#]+)/);
  if (docsMatch)
    return `https://docs.google.com/document/d/${docsMatch[1]}/preview`;

  // Google Slides
  const slidesMatch = url.match(/docs\.google\.com\/presentation\/d\/([^/\s?#]+)/);
  if (slidesMatch)
    return `https://docs.google.com/presentation/d/${slidesMatch[1]}/embed?start=false&loop=false&delayms=3000`;

  // YouTube
  const ytShort = url.match(/youtu\.be\/([^?&\s]+)/);
  if (ytShort) return `https://www.youtube.com/embed/${ytShort[1]}?rel=0`;
  const ytFull = url.match(/[?&]v=([^&\s]+)/);
  if (ytFull) return `https://www.youtube.com/embed/${ytFull[1]}?rel=0`;
  if (url.includes("youtube.com/embed/")) return url;

  // Already an embed URL or generic
  return url;
}

export const embedLabels: Record<EmbedType, string> = {
  sheets: "Planilha Google",
  docs: "Documento Google",
  slides: "Apresentação Google",
  youtube: "Vídeo YouTube",
  drive: "Google Drive",
  generic: "Conteúdo incorporado",
};

export const embedHeights: Record<EmbedType, number> = {
  sheets: 600,
  docs: 700,
  slides: 500,
  youtube: 0, // 16:9 ratio
  drive: 600,
  generic: 600,
};
