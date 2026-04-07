import type { Metadata } from "next";
import Script from "next/script";
import "./lp.css";

export const metadata: Metadata = {
  title: "Auxílio-Maternidade | Rose Portal Advocacia – Direito Previdenciário",
  description:
    "Garanta seu Auxílio-Maternidade com quem entende o valor da sua jornada. Rose Portal Advocacia – Especialistas em Direito Previdenciário.",
  icons: { icon: "/images/favicon.png", apple: "/images/logo.png" },
};

export default function AuxilioMaternidadeLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <>
      {/* Google Tag Manager */}
      <Script id="gtm" strategy="afterInteractive">
        {`(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
        new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
        j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
        'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
        })(window,document,'script','dataLayer','GTM-M7M8J3WB');`}
      </Script>

      {/* GTM noscript fallback */}
      <noscript>
        <iframe
          src="https://www.googletagmanager.com/ns.html?id=GTM-M7M8J3WB"
          height="0"
          width="0"
          style={{ display: "none", visibility: "hidden" }}
        />
      </noscript>

      {/* Google Fonts */}
      <link rel="preconnect" href="https://fonts.googleapis.com" />
      <link
        rel="preconnect"
        href="https://fonts.gstatic.com"
        crossOrigin="anonymous"
      />
      <link
        href="https://fonts.googleapis.com/css2?family=Jura:wght@400;500;600;700&family=Prosto+One&display=swap"
        rel="stylesheet"
      />

      {children}
    </>
  );
}
