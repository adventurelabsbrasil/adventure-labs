import type { Metadata } from "next";
import { Playfair_Display, Inter } from "next/font/google";
import "../../globals.css";

const playfair = Playfair_Display({
  subsets: ["latin"],
  variable: "--font-display",
  display: "swap",
});

const inter = Inter({
  subsets: ["latin"],
  variable: "--font-body",
  display: "swap",
});

export const metadata: Metadata = {
  title: "Linha Essencial | Benditta Marcenaria — Qualidade de Alto Padrão",
  description:
    "Marcenaria sob medida com qualidade de alto padrão e o melhor custo-benefício. Conheça a Linha Essencial da Benditta Marcenaria.",
  openGraph: {
    title: "Linha Essencial | Benditta Marcenaria",
    description:
      "Qualidade de alto padrão com custo-benefício inteligente. Solicite seu orçamento.",
    type: "website",
  },
};

export default function LPLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="pt-BR">
      <body
        className={`${playfair.variable} ${inter.variable} font-body antialiased`}
      >
        {children}
      </body>
    </html>
  );
}
