interface WelcomeHeroProps {
  videoUrl: string | null;
  userName: string;
  tenantName: string;
}

function getYouTubeEmbedUrl(url: string | null): string | null {
  if (!url) return null;
  // Already an embed URL
  if (url.includes("youtube.com/embed/")) return url;
  // Watch URL: https://www.youtube.com/watch?v=ID
  const watchMatch = url.match(/[?&]v=([^&]+)/);
  if (watchMatch) return `https://www.youtube.com/embed/${watchMatch[1]}`;
  // Short URL: https://youtu.be/ID
  const shortMatch = url.match(/youtu\.be\/([^?]+)/);
  if (shortMatch) return `https://www.youtube.com/embed/${shortMatch[1]}`;
  return url;
}

export function WelcomeHero({ videoUrl, userName, tenantName }: WelcomeHeroProps) {
  const embedUrl = getYouTubeEmbedUrl(videoUrl);

  return (
    <section className="relative overflow-hidden rounded-2xl border border-border bg-navy-900">
      {/* Background glow */}
      <div className="absolute inset-0 bg-gradient-to-br from-gold-400/5 via-transparent to-transparent pointer-events-none" />
      <div className="absolute top-0 right-0 h-64 w-64 rounded-full bg-gold-400/5 blur-3xl pointer-events-none" />

      <div className="relative p-6 lg:p-8">
        {/* Welcome text */}
        <div className="mb-6">
          <div className="inline-flex items-center gap-2 rounded-full border border-gold-400/20 bg-gold-400/5 px-3 py-1 mb-3">
            <span className="h-1.5 w-1.5 rounded-full bg-gold-400 animate-pulse" />
            <span className="text-xs font-medium text-gold-400">Bem-vindo(a) ao {tenantName}</span>
          </div>
          <h2 className="text-2xl lg:text-3xl font-bold text-foreground mb-2">
            Olá, <span className="text-gold-gradient">{userName}</span>! 👋
          </h2>
          <p className="text-muted-foreground max-w-xl">
            Sua jornada começa aqui. Assista ao vídeo de boas-vindas e explore os
            programas disponíveis para você.
          </p>
        </div>

        {/* Video */}
        {embedUrl ? (
          <div className="relative w-full overflow-hidden rounded-xl ring-1 ring-gold-400/20 bg-navy-800 aspect-video max-w-3xl">
            <iframe
              src={`${embedUrl}?rel=0&modestbranding=1`}
              title="Vídeo de boas-vindas"
              allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
              allowFullScreen
              className="absolute inset-0 h-full w-full"
            />
          </div>
        ) : (
          <div className="flex items-center justify-center w-full max-w-3xl aspect-video rounded-xl ring-1 ring-border bg-navy-800/50">
            <p className="text-muted-foreground text-sm">Vídeo em breve</p>
          </div>
        )}
      </div>
    </section>
  );
}
