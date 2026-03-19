import type { Metadata } from "next";
import { ClerkProvider } from "@clerk/nextjs";
import "./globals.css";

export const metadata: Metadata = {
  title: "Xpostr — Voz pública Adventure Labs",
  description: "Pipeline Grove · Zazu · Ogilvy — @adventurelabsbr",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <ClerkProvider>
      <html lang="pt-BR">
        <body className="font-sans">{children}</body>
      </html>
    </ClerkProvider>
  );
}
