"use client";

import { useState, useRef } from "react";
import { createBrowserClient } from "@supabase/ssr";
import { Upload, X, FileText, Loader2, Link as LinkIcon } from "lucide-react";
import { cn } from "@/lib/utils";

interface MaterialUploadProps {
  currentUrl?: string;
  inputName: string;
  lessonId: string;
}

export function MaterialUpload({
  currentUrl = "",
  inputName,
  lessonId,
}: MaterialUploadProps) {
  const [url, setUrl] = useState(currentUrl);
  const [uploading, setUploading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [mode, setMode] = useState<"url" | "file">(currentUrl ? "url" : "file");
  const fileRef = useRef<HTMLInputElement>(null);

  const supabase = createBrowserClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
  );

  async function handleFileChange(e: React.ChangeEvent<HTMLInputElement>) {
    const file = e.target.files?.[0];
    if (!file) return;

    setUploading(true);
    setError(null);

    try {
      const ext = file.name.split(".").pop();
      const path = `lessons/${lessonId}/${Date.now()}.${ext}`;

      const { data, error: uploadError } = await supabase.storage
        .from("lms-materials")
        .upload(path, file, { upsert: true });

      if (uploadError) throw uploadError;

      // Get public signed URL (1 year expiry)
      const { data: signedData } = await supabase.storage
        .from("lms-materials")
        .createSignedUrl(data.path, 60 * 60 * 24 * 365);

      if (signedData?.signedUrl) {
        setUrl(signedData.signedUrl);
      }
    } catch (err: any) {
      setError(err.message ?? "Erro ao fazer upload");
    } finally {
      setUploading(false);
    }
  }

  return (
    <div className="space-y-3">
      {/* Hidden input that carries the URL in the form */}
      <input type="hidden" name={inputName} value={url} />

      {/* Mode toggle */}
      <div className="flex rounded-lg border border-border overflow-hidden text-xs">
        <button
          type="button"
          onClick={() => setMode("file")}
          className={cn(
            "flex items-center gap-1.5 px-3 py-2 flex-1 justify-center transition-colors",
            mode === "file"
              ? "bg-gold-400/10 text-gold-400"
              : "text-muted-foreground hover:bg-navy-800"
          )}
        >
          <Upload className="h-3.5 w-3.5" />
          Upload de arquivo
        </button>
        <button
          type="button"
          onClick={() => setMode("url")}
          className={cn(
            "flex items-center gap-1.5 px-3 py-2 flex-1 justify-center transition-colors border-l border-border",
            mode === "url"
              ? "bg-gold-400/10 text-gold-400"
              : "text-muted-foreground hover:bg-navy-800"
          )}
        >
          <LinkIcon className="h-3.5 w-3.5" />
          Link externo
        </button>
      </div>

      {mode === "url" ? (
        <input
          type="url"
          placeholder="https://drive.google.com/..."
          value={url}
          onChange={(e) => setUrl(e.target.value)}
          className="flex h-10 w-full rounded-md border border-input bg-navy-900 px-3 py-2 text-sm text-foreground placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-gold-400/40 focus-visible:border-gold-400/50"
        />
      ) : (
        <div>
          <div
            onClick={() => fileRef.current?.click()}
            className={cn(
              "flex flex-col items-center justify-center gap-2 rounded-xl border-2 border-dashed border-border p-6 cursor-pointer transition-all",
              "hover:border-gold-400/40 hover:bg-navy-800/30",
              uploading && "opacity-60 cursor-wait"
            )}
          >
            {uploading ? (
              <>
                <Loader2 className="h-8 w-8 animate-spin text-muted-foreground" />
                <p className="text-sm text-muted-foreground">Enviando...</p>
              </>
            ) : (
              <>
                <Upload className="h-8 w-8 text-muted-foreground/50" />
                <div className="text-center">
                  <p className="text-sm font-medium text-foreground">
                    Clique para selecionar arquivo
                  </p>
                  <p className="text-xs text-muted-foreground mt-0.5">
                    PDF, Excel, Word, ZIP — máx. 50MB
                  </p>
                </div>
              </>
            )}
          </div>
          <input
            ref={fileRef}
            type="file"
            className="hidden"
            onChange={handleFileChange}
            accept=".pdf,.xlsx,.xls,.docx,.doc,.zip,.png,.jpg,.gif,.mp4"
            disabled={uploading}
          />
        </div>
      )}

      {/* Current file preview */}
      {url && (
        <div className="flex items-center gap-2.5 rounded-lg border border-border bg-navy-800/40 px-3 py-2.5">
          <FileText className="h-4 w-4 shrink-0 text-amber-400" />
          <a
            href={url}
            target="_blank"
            rel="noopener noreferrer"
            className="flex-1 text-xs text-muted-foreground hover:text-gold-400 truncate transition-colors"
          >
            {url.includes("lms-materials")
              ? "Arquivo enviado ✓"
              : url}
          </a>
          <button
            type="button"
            onClick={() => setUrl("")}
            className="shrink-0 text-muted-foreground/60 hover:text-destructive transition-colors"
          >
            <X className="h-3.5 w-3.5" />
          </button>
        </div>
      )}

      {error && (
        <p className="text-xs text-destructive">{error}</p>
      )}
    </div>
  );
}
