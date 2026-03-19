import type { Metadata } from "next";
import { Space_Grotesk } from "next/font/google";
import "./globals.css";

const spaceGrotesk = Space_Grotesk({
  subsets: ["latin"],
  variable: "--font-sans",
});

export const metadata: Metadata = {
  title: "Benditta — Dashboard Meta",
  description: "Performance de campanhas — Benditta Marcenaria",
};

export default function RootLayout({
  children,
}: Readonly<{ children: React.ReactNode }>) {
  return (
    <html lang="pt-BR" className="dark">
      <body className={`${spaceGrotesk.variable} font-sans min-h-screen`}>
        {children}
      </body>
    </html>
  );
}
