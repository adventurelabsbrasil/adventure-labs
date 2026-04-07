"use client";

import { useEffect, useState, useRef } from "react";

/* ──────────────────────────────────────────────
   CONFIG — edite facilmente aqui
   ────────────────────────────────────────────── */
const WHATSAPP_NUMBER = "5551999999999"; // substituir pelo número real da Benditta
const WHATSAPP_MSG = encodeURIComponent(
  "Olá! Vim pelo site e gostaria de um orçamento inteligente para a Linha Essencial."
);
const WHATSAPP_URL = `https://wa.me/${WHATSAPP_NUMBER}?text=${WHATSAPP_MSG}`;

/* ──────────────────────────────────────────────
   ICONS
   ────────────────────────────────────────────── */
function WhatsAppIcon({ className = "w-6 h-6" }: { className?: string }) {
  return (
    <svg className={className} viewBox="0 0 24 24" fill="currentColor">
      <path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51-.173-.008-.371-.01-.57-.01-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.709.306 1.262.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347m-5.421 7.403h-.004a9.87 9.87 0 01-5.031-1.378l-.361-.214-3.741.982.998-3.648-.235-.374a9.86 9.86 0 01-1.51-5.26c.001-5.45 4.436-9.884 9.888-9.884 2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 012.893 6.994c-.003 5.45-4.437 9.884-9.885 9.884m8.413-18.297A11.815 11.815 0 0012.05 0C5.495 0 .16 5.335.157 11.892c0 2.096.547 4.142 1.588 5.945L.057 24l6.305-1.654a11.882 11.882 0 005.683 1.448h.005c6.554 0 11.89-5.335 11.893-11.893a11.821 11.821 0 00-3.48-8.413z" />
    </svg>
  );
}

function ArrowDown({ className = "w-5 h-5" }: { className?: string }) {
  return (
    <svg className={className} fill="none" stroke="currentColor" viewBox="0 0 24 24">
      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M19 9l-7 7-7-7" />
    </svg>
  );
}

function CheckIcon({ className = "w-5 h-5" }: { className?: string }) {
  return (
    <svg className={className} fill="none" stroke="currentColor" viewBox="0 0 24 24">
      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M5 13l4 4L19 7" />
    </svg>
  );
}

/* ──────────────────────────────────────────────
   CARROSSEL INFINITO — projetos reais
   ────────────────────────────────────────────── */
const CAROUSEL_ITEMS = [
  { label: "Cozinha Sob Medida", gradient: "from-[#3a342c] to-[#2a2520]" },
  { label: "Dormitório Planejado", gradient: "from-[#2a2520] to-[#1a1714]" },
  { label: "Home Office", gradient: "from-[#33302a] to-[#242018]" },
  { label: "Closet", gradient: "from-[#2a2520] to-[#33302a]" },
  { label: "Área Gourmet", gradient: "from-[#1a1714] to-[#2a2520]" },
  { label: "Lavanderia", gradient: "from-[#242018] to-[#1a1714]" },
];

function InfiniteCarousel() {
  const scrollRef = useRef<HTMLDivElement>(null);

  useEffect(() => {
    const el = scrollRef.current;
    if (!el) return;
    let raf: number;
    let pos = 0;
    const speed = 0.5; // px per frame

    function step() {
      pos += speed;
      if (pos >= el!.scrollWidth / 2) pos = 0;
      el!.scrollLeft = pos;
      raf = requestAnimationFrame(step);
    }
    raf = requestAnimationFrame(step);
    return () => cancelAnimationFrame(raf);
  }, []);

  const items = [...CAROUSEL_ITEMS, ...CAROUSEL_ITEMS]; // duplicate for loop

  return (
    <div className="relative w-full overflow-hidden">
      {/* fade edges */}
      <div className="pointer-events-none absolute inset-y-0 left-0 w-20 z-10 bg-gradient-to-r from-[#1a1714] to-transparent" />
      <div className="pointer-events-none absolute inset-y-0 right-0 w-20 z-10 bg-gradient-to-l from-[#1a1714] to-transparent" />

      <div
        ref={scrollRef}
        className="flex gap-5 overflow-hidden"
        style={{ scrollBehavior: "auto" }}
      >
        {items.map((item, i) => (
          <div
            key={i}
            className="flex-shrink-0 w-[280px] sm:w-[340px] aspect-[4/3] rounded-2xl overflow-hidden relative group"
          >
            {/* Placeholder gradient — substituir por <img> com fotos reais */}
            <div className={`absolute inset-0 bg-gradient-to-br ${item.gradient} transition-transform duration-500 group-hover:scale-105`}>
              <div className="absolute inset-0 flex items-center justify-center text-[#c9a96e]/15">
                <svg className="w-16 h-16" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1} d="M4 16l4.586-4.586a2 2 0 012.828 0L16 16m-2-2l1.586-1.586a2 2 0 012.828 0L20 14m-6-6h.01M6 20h12a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v12a2 2 0 002 2z" />
                </svg>
              </div>
            </div>
            <div className="absolute inset-0 bg-gradient-to-t from-black/70 via-transparent to-transparent" />
            <div className="absolute bottom-4 left-5 right-5">
              <p className="text-white font-display text-lg">{item.label}</p>
              <p className="text-white/60 text-xs mt-0.5">Linha Essencial</p>
            </div>
          </div>
        ))}
      </div>
    </div>
  );
}

/* ──────────────────────────────────────────────
   HERO — Dobra 1 (conforme estratégia)
   ────────────────────────────────────────────── */
function Hero() {
  return (
    <section className="relative min-h-[100vh] flex items-center overflow-hidden bg-[#1a1714]">
      {/* Background */}
      <div className="absolute inset-0 z-0">
        <div className="w-full h-full bg-gradient-to-br from-[#1a1714] via-[#2a2520] to-[#1a1714]" />
        {/* Substituir por imagem real: */}
        {/* <Image src="/lp/hero-essencial.jpg" alt="" fill className="object-cover opacity-30" priority /> */}
        <div className="absolute inset-0 bg-gradient-to-r from-[#1a1714]/95 via-[#1a1714]/80 to-[#1a1714]/40" />
      </div>

      {/* Subtle grid pattern */}
      <div className="absolute inset-0 z-[1] opacity-[0.03]" style={{
        backgroundImage: "linear-gradient(#c9a96e 1px, transparent 1px), linear-gradient(90deg, #c9a96e 1px, transparent 1px)",
        backgroundSize: "60px 60px",
      }} />

      <div className="relative z-10 mx-auto max-w-7xl px-5 py-24 sm:px-8 lg:px-12 w-full">
        <div className="max-w-2xl">
          {/* Badge */}
          <span className="inline-block mb-8 px-4 py-1.5 border border-[#c9a96e]/30 text-[#c9a96e] text-[11px] tracking-[0.25em] uppercase font-body">
            Linha Essencial
          </span>

          <h1 className="font-display text-[2.5rem] sm:text-5xl lg:text-[3.5rem] leading-[1.08] text-white mb-6 tracking-[-0.01em]">
            Diferentes necessidades.
            <br />
            <span className="text-[#c9a96e]">O mesmo padrão.</span>
          </h1>

          <p className="text-lg sm:text-xl text-[#b8b0a4] leading-relaxed mb-10 max-w-xl font-light">
            A forma mais inteligente de ter móveis sob medida com a qualidade
            Benditta. Processo leve, investimento claro e entrega previsível.
          </p>

          <div className="flex flex-col sm:flex-row gap-4">
            <a
              href={WHATSAPP_URL}
              target="_blank"
              rel="noopener noreferrer"
              className="group inline-flex items-center justify-center gap-3 bg-[#c9a96e] hover:bg-[#b89a5e] text-[#1a1714] font-semibold px-8 py-4 rounded-none text-base transition-all duration-300 hover:-translate-y-0.5"
            >
              Quero um orçamento inteligente
              <svg className="w-4 h-4 transition-transform group-hover:translate-x-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M17 8l4 4m0 0l-4 4m4-4H3" />
              </svg>
            </a>
            <a
              href="#para-quem"
              className="inline-flex items-center justify-center gap-2 border border-white/20 text-white/80 hover:text-white hover:border-white/40 px-8 py-4 rounded-none text-base transition-all duration-300"
            >
              Saiba Mais
              <ArrowDown className="w-4 h-4" />
            </a>
          </div>

          {/* Trust signals */}
          <div className="mt-14 flex flex-wrap items-center gap-x-8 gap-y-3 text-[#8a8279] text-sm">
            <div className="flex items-center gap-2">
              <CheckIcon className="w-4 h-4 text-[#c9a96e]" />
              Entrega Previsível
            </div>
            <div className="flex items-center gap-2">
              <CheckIcon className="w-4 h-4 text-[#c9a96e]" />
              Qualidade Técnica Validada
            </div>
            <div className="flex items-center gap-2">
              <CheckIcon className="w-4 h-4 text-[#c9a96e]" />
              5 Anos de Assistência
            </div>
          </div>
        </div>
      </div>

      {/* Scroll indicator */}
      <div className="absolute bottom-8 left-1/2 -translate-x-1/2 z-10 animate-bounce">
        <ArrowDown className="w-5 h-5 text-[#c9a96e]/50" />
      </div>
    </section>
  );
}

/* ──────────────────────────────────────────────
   CARROSSEL SECTION
   ────────────────────────────────────────────── */
function CarouselSection() {
  return (
    <section className="py-16 bg-[#1a1714] border-t border-[#2a2520]">
      <div className="mx-auto max-w-7xl px-5 sm:px-8 lg:px-12 mb-10">
        <p className="text-[#c9a96e] text-sm tracking-[0.15em] uppercase font-semibold text-center">
          Projetos executados com materiais da Linha Essencial
        </p>
      </div>
      <InfiniteCarousel />
    </section>
  );
}

/* ──────────────────────────────────────────────
   PARA QUEM É
   ────────────────────────────────────────────── */
function ForWho() {
  return (
    <section id="para-quem" className="py-20 sm:py-28 bg-[#f8f5f0]">
      <div className="mx-auto max-w-7xl px-5 sm:px-8 lg:px-12">
        <div className="grid lg:grid-cols-2 gap-16 items-center">
          <div>
            <span className="inline-block mb-4 text-[#c9a96e] text-sm tracking-[0.15em] uppercase font-semibold">
              Para quem é
            </span>
            <h2 className="font-display text-3xl sm:text-4xl text-[#1a1714] leading-tight mb-8">
              A Linha Essencial é para quem{" "}
              <span className="text-[#c9a96e]">não aceita menos</span>.
            </h2>

            <div className="space-y-6">
              {[
                {
                  title: "Quer reduzir complexidade sem abrir mão do resultado",
                  desc: "Processo direto, sem etapas desnecessárias. Do entendimento à instalação, cada passo é claro e objetivo.",
                },
                {
                  title: "Busca o melhor custo-benefício dentro do padrão de qualidade",
                  desc: "Materiais selecionados estrategicamente — internos em Berneck branco liso, ferragens homologadas, acabamento impecável.",
                },
                {
                  title: "Valoriza clareza no investimento desde o início",
                  desc: "Sem surpresas no orçamento. Você sabe exatamente o que está contratando e quanto vai investir.",
                },
              ].map((item, i) => (
                <div key={i} className="flex gap-4">
                  <div className="flex-shrink-0 mt-1">
                    <div className="w-8 h-8 rounded-full bg-[#c9a96e]/10 flex items-center justify-center">
                      <CheckIcon className="w-4 h-4 text-[#c9a96e]" />
                    </div>
                  </div>
                  <div>
                    <h3 className="font-semibold text-[#1a1714] mb-1">{item.title}</h3>
                    <p className="text-[#6b6259] text-sm leading-relaxed">{item.desc}</p>
                  </div>
                </div>
              ))}
            </div>
          </div>

          {/* Image placeholder */}
          <div className="aspect-[4/5] rounded-2xl overflow-hidden bg-gradient-to-br from-[#3a342c] to-[#2a2520] relative">
            <div className="absolute inset-0 flex items-center justify-center text-[#c9a96e]/15">
              <svg className="w-24 h-24" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1} d="M4 16l4.586-4.586a2 2 0 012.828 0L16 16m-2-2l1.586-1.586a2 2 0 012.828 0L20 14m-6-6h.01M6 20h12a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v12a2 2 0 002 2z" />
              </svg>
            </div>
            {/* Substituir por foto real de ambiente */}
          </div>
        </div>
      </div>
    </section>
  );
}

/* ──────────────────────────────────────────────
   POR QUE ESCOLHER
   ────────────────────────────────────────────── */
const BENEFITS = [
  {
    icon: (
      <svg className="w-7 h-7" fill="none" stroke="currentColor" viewBox="0 0 24 24">
        <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z" />
      </svg>
    ),
    title: "Processo Leve e Direto",
    desc: "Sem excessos. Do briefing à instalação, cada etapa é planejada para ser simples e transparente.",
  },
  {
    icon: (
      <svg className="w-7 h-7" fill="none" stroke="currentColor" viewBox="0 0 24 24">
        <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M12 8c-1.657 0-3 .895-3 2s1.343 2 3 2 3 .895 3 2-1.343 2-3 2m0-8c1.11 0 2.08.402 2.599 1M12 8V7m0 1v8m0 0v1m0-1c-1.11 0-2.08-.402-2.599-1M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
      </svg>
    ),
    title: "Clareza no Investimento",
    desc: "Orçamento transparente desde o início. Sem surpresas, sem custos ocultos. Você sabe exatamente o que está contratando.",
  },
  {
    icon: (
      <svg className="w-7 h-7" fill="none" stroke="currentColor" viewBox="0 0 24 24">
        <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M19.428 15.428a2 2 0 00-1.022-.547l-2.387-.477a6 6 0 00-3.86.517l-.318.158a6 6 0 01-3.86.517L6.05 15.21a2 2 0 00-1.806.547M8 4h8l-1 1v5.172a2 2 0 00.586 1.414l5 5c1.26 1.26.367 3.414-1.415 3.414H4.828c-1.782 0-2.674-2.154-1.414-3.414l5-5A2 2 0 009 10.172V5L8 4z" />
      </svg>
    ),
    title: "Materialidade Validada",
    desc: "Internos em branco liso Berneck. Corrediças telescópicas e dobradiças de rolamento homologadas. Iluminação LED com perfis de sobrepor.",
  },
  {
    icon: (
      <svg className="w-7 h-7" fill="none" stroke="currentColor" viewBox="0 0 24 24">
        <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
      </svg>
    ),
    title: "Entrega Previsível",
    desc: "Cronograma real e cumprido. Processo encurtado com controle de qualidade rigoroso em cada etapa da produção.",
  },
];

function WhyChoose() {
  return (
    <section id="beneficios" className="py-20 sm:py-28 bg-white">
      <div className="mx-auto max-w-7xl px-5 sm:px-8 lg:px-12">
        <div className="text-center mb-16">
          <span className="inline-block mb-4 text-[#c9a96e] text-sm tracking-[0.15em] uppercase font-semibold">
            Diferenciais
          </span>
          <h2 className="font-display text-3xl sm:text-4xl lg:text-[2.75rem] text-[#1a1714] leading-tight">
            Por que escolher a{" "}
            <span className="text-[#c9a96e]">Linha Essencial</span>?
          </h2>
        </div>

        <div className="grid sm:grid-cols-2 gap-6 lg:gap-8">
          {BENEFITS.map((b, i) => (
            <div
              key={i}
              className="group p-8 sm:p-10 border border-[#e8e2d9] hover:border-[#c9a96e]/40 transition-all duration-300 hover:-translate-y-0.5"
            >
              <div className="mb-6 inline-flex items-center justify-center w-12 h-12 text-[#c9a96e]">
                {b.icon}
              </div>
              <h3 className="font-display text-xl text-[#1a1714] mb-3">
                {b.title}
              </h3>
              <p className="text-[#6b6259] leading-relaxed text-[15px]">
                {b.desc}
              </p>
            </div>
          ))}
        </div>
      </div>
    </section>
  );
}

/* ──────────────────────────────────────────────
   O PROCESSO — 4 etapas (conforme estratégia)
   ────────────────────────────────────────────── */
const STEPS = [
  {
    num: "01",
    title: "Entendimento do Espaço",
    desc: "Conte seu projeto pelo WhatsApp. Entendemos suas necessidades, estilo e orçamento de forma prática.",
  },
  {
    num: "02",
    title: "Definição do Padrão",
    desc: "Escolhas técnicas já definidas e validadas. Selecionamos os materiais ideais para seu projeto.",
  },
  {
    num: "03",
    title: "Medição Técnica",
    desc: "Equipe técnica realiza a medição presencial com precisão milimétrica no seu espaço.",
  },
  {
    num: "04",
    title: "Instalação Benditta",
    desc: "Fabricação com controle rigoroso e instalação impecável, no prazo combinado.",
  },
];

function Process() {
  return (
    <section className="py-20 sm:py-28 bg-[#1a1714]">
      <div className="mx-auto max-w-7xl px-5 sm:px-8 lg:px-12">
        <div className="text-center mb-16">
          <span className="inline-block mb-4 text-[#c9a96e] text-sm tracking-[0.15em] uppercase font-semibold">
            Processo
          </span>
          <h2 className="font-display text-3xl sm:text-4xl text-white">
            Simples como deve ser.
          </h2>
          <p className="mt-4 text-[#8a8279] text-lg max-w-lg mx-auto">
            Da primeira conversa à instalação final, cada etapa é pensada para
            ser descomplicada.
          </p>
        </div>

        <div className="grid sm:grid-cols-2 lg:grid-cols-4 gap-8">
          {STEPS.map((s, i) => (
            <div key={i} className="relative">
              <span className="font-display text-5xl text-[#c9a96e]/10 leading-none">
                {s.num}
              </span>
              <div className="mt-3">
                <div className="w-10 h-[2px] bg-[#c9a96e]/40 mb-5" />
                <h3 className="font-display text-lg text-white mb-3">
                  {s.title}
                </h3>
                <p className="text-[#8a8279] leading-relaxed text-sm">{s.desc}</p>
              </div>
            </div>
          ))}
        </div>

        <div className="mt-16 text-center">
          <a
            href={WHATSAPP_URL}
            target="_blank"
            rel="noopener noreferrer"
            className="inline-flex items-center gap-3 bg-[#c9a96e] hover:bg-[#b89a5e] text-[#1a1714] font-semibold px-8 py-4 rounded-none text-base transition-all duration-300"
          >
            <WhatsAppIcon className="w-5 h-5" />
            Começar Meu Projeto
          </a>
        </div>
      </div>
    </section>
  );
}

/* ──────────────────────────────────────────────
   GALERIA — 3 fotos validadas (placeholders)
   ────────────────────────────────────────────── */
function Gallery() {
  const projects = [
    {
      gradient: "from-[#3a342c] to-[#2a2520]",
      title: "Cozinha Completa",
      desc: "Projeto com ilha e torre de eletros",
    },
    {
      gradient: "from-[#2a2520] to-[#1a1714]",
      title: "Dormitório Planejado",
      desc: "Cabeceira, armário e bancada integrados",
    },
    {
      gradient: "from-[#33302a] to-[#1a1714]",
      title: "Home Office",
      desc: "Funcionalidade e design linear",
    },
  ];

  return (
    <section className="py-20 sm:py-28 bg-[#f8f5f0]">
      <div className="mx-auto max-w-7xl px-5 sm:px-8 lg:px-12">
        <div className="text-center mb-14">
          <span className="inline-block mb-4 text-[#c9a96e] text-sm tracking-[0.15em] uppercase font-semibold">
            Portfólio
          </span>
          <h2 className="font-display text-3xl sm:text-4xl text-[#1a1714]">
            Projetos <span className="text-[#c9a96e]">reais</span>, acabamento{" "}
            <span className="text-[#c9a96e]">impecável</span>.
          </h2>
        </div>

        <div className="grid md:grid-cols-3 gap-5">
          {projects.map((p, i) => (
            <div
              key={i}
              className="group relative overflow-hidden aspect-[3/4] cursor-pointer"
            >
              {/* Placeholder — substituir por <Image /> com fotos reais */}
              <div className={`absolute inset-0 bg-gradient-to-br ${p.gradient} transition-transform duration-700 group-hover:scale-105`}>
                <div className="absolute inset-0 flex items-center justify-center text-[#c9a96e]/15">
                  <svg className="w-20 h-20" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1} d="M4 16l4.586-4.586a2 2 0 012.828 0L16 16m-2-2l1.586-1.586a2 2 0 012.828 0L20 14m-6-6h.01M6 20h12a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v12a2 2 0 002 2z" />
                  </svg>
                </div>
              </div>
              <div className="absolute inset-0 bg-gradient-to-t from-[#1a1714]/80 via-transparent to-transparent" />
              <div className="absolute bottom-0 left-0 right-0 p-6">
                <h3 className="font-display text-xl text-white mb-1">{p.title}</h3>
                <p className="text-white/60 text-sm">{p.desc}</p>
              </div>
            </div>
          ))}
        </div>
      </div>
    </section>
  );
}

/* ──────────────────────────────────────────────
   SELO 5 ANOS + GARANTIA
   ────────────────────────────────────────────── */
function Guarantee() {
  return (
    <section className="py-16 sm:py-20 bg-white border-y border-[#e8e2d9]">
      <div className="mx-auto max-w-4xl px-5 sm:px-8 lg:px-12 text-center">
        <div className="inline-flex items-center justify-center w-20 h-20 rounded-full border-2 border-[#c9a96e] mb-6">
          <span className="font-display text-2xl text-[#c9a96e]">5</span>
        </div>
        <h3 className="font-display text-2xl sm:text-3xl text-[#1a1714] mb-4">
          Anos de Assistência Pós-Entrega
        </h3>
        <p className="text-[#6b6259] text-lg max-w-2xl mx-auto leading-relaxed">
          Confiança que vai além da instalação. Sua marcenaria Benditta conta
          com 5 anos de assistência técnica incluída, porque qualidade de
          verdade se mantém no tempo.
        </p>
      </div>
    </section>
  );
}

/* ──────────────────────────────────────────────
   DEPOIMENTOS
   ────────────────────────────────────────────── */
const TESTIMONIALS = [
  {
    name: "Mariana S.",
    role: "Arquiteta — Porto Alegre",
    text: "A Linha Essencial me surpreendeu. Consegui indicar para clientes com orçamento mais controlado sem abrir mão da qualidade que eu exijo nos meus projetos.",
  },
  {
    name: "Ricardo & Ana",
    role: "Apartamento 85m² — Gravataí",
    text: "Fizemos a cozinha e os armários do quarto. O acabamento é idêntico ao de marcenarias muito mais caras. Superou nossas expectativas!",
  },
  {
    name: "Fernanda L.",
    role: "Designer de Interiores — Novo Hamburgo",
    text: "Prazo cumprido, comunicação transparente e resultado impecável. A Benditta entendeu perfeitamente o que minha cliente precisava.",
  },
];

function Testimonials() {
  return (
    <section className="py-20 sm:py-28 bg-[#1a1714]">
      <div className="mx-auto max-w-7xl px-5 sm:px-8 lg:px-12">
        <div className="text-center mb-16">
          <span className="inline-block mb-4 text-[#c9a96e] text-sm tracking-[0.15em] uppercase font-semibold">
            Depoimentos
          </span>
          <h2 className="font-display text-3xl sm:text-4xl text-white">
            Quem escolheu, <span className="text-[#c9a96e]">aprova</span>.
          </h2>
        </div>

        <div className="grid md:grid-cols-3 gap-6">
          {TESTIMONIALS.map((t, i) => (
            <div
              key={i}
              className="border border-[#2a2520] p-8 sm:p-10"
            >
              {/* Stars */}
              <div className="flex gap-1 mb-6 text-[#c9a96e]">
                {[...Array(5)].map((_, j) => (
                  <svg key={j} className="w-4 h-4" fill="currentColor" viewBox="0 0 20 20">
                    <path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z" />
                  </svg>
                ))}
              </div>

              <p className="text-[#b8b0a4] leading-relaxed mb-8 text-[15px]">
                &ldquo;{t.text}&rdquo;
              </p>

              <div className="border-t border-[#2a2520] pt-5">
                <p className="text-white font-semibold text-sm">{t.name}</p>
                <p className="text-[#6b6259] text-xs mt-0.5">{t.role}</p>
              </div>
            </div>
          ))}
        </div>
      </div>
    </section>
  );
}

/* ──────────────────────────────────────────────
   CTA FINAL
   ────────────────────────────────────────────── */
function FinalCTA() {
  return (
    <section className="py-20 sm:py-28 bg-[#c9a96e] relative overflow-hidden">
      {/* Subtle line pattern */}
      <div className="absolute inset-0 opacity-[0.06]" style={{
        backgroundImage: "linear-gradient(90deg, #1a1714 1px, transparent 1px)",
        backgroundSize: "80px 80px",
      }} />

      <div className="relative mx-auto max-w-3xl px-5 sm:px-8 lg:px-12 text-center">
        <h2 className="font-display text-3xl sm:text-4xl lg:text-5xl text-[#1a1714] leading-tight mb-6">
          Seu projeto merece<br />
          o padrão Benditta.
        </h2>
        <p className="text-xl text-[#1a1714]/70 mb-10 max-w-xl mx-auto font-light">
          Fale com um especialista e descubra como a Linha Essencial
          pode transformar seu espaço.
        </p>
        <a
          href={WHATSAPP_URL}
          target="_blank"
          rel="noopener noreferrer"
          className="inline-flex items-center gap-3 bg-[#1a1714] hover:bg-[#2a2520] text-white font-semibold px-10 py-5 rounded-none text-lg transition-all duration-300 hover:-translate-y-0.5"
        >
          <WhatsAppIcon className="w-6 h-6" />
          Falar com Especialista
        </a>
        <p className="mt-6 text-[#1a1714]/50 text-sm">
          Resposta em até 2 horas &middot; Seg a Sex, 8h às 18h
        </p>
      </div>
    </section>
  );
}

/* ──────────────────────────────────────────────
   FOOTER
   ────────────────────────────────────────────── */
function Footer() {
  return (
    <footer className="bg-[#111010] py-12">
      <div className="mx-auto max-w-7xl px-5 sm:px-8 lg:px-12">
        <div className="flex flex-col md:flex-row items-center justify-between gap-6">
          <div>
            <p className="font-display text-2xl text-white tracking-[0.15em]">
              BENDITTA
            </p>
            <p className="text-[#6b6259] text-sm mt-1">
              Marcenaria de Alto Padrão &middot; Santo Antônio da Patrulha, RS
            </p>
          </div>
          <div className="flex items-center gap-6">
            <a
              href={WHATSAPP_URL}
              target="_blank"
              rel="noopener noreferrer"
              className="flex items-center gap-2 text-[#8a8279] hover:text-[#c9a96e] transition-colors text-sm"
            >
              <WhatsAppIcon className="w-4 h-4" />
              WhatsApp
            </a>
            <span className="text-[#2a2520]">|</span>
            <p className="text-[#6b6259] text-sm">
              &copy; {new Date().getFullYear()} Benditta Marcenaria
            </p>
          </div>
        </div>
      </div>
    </footer>
  );
}

/* ──────────────────────────────────────────────
   FLOATING WHATSAPP
   ────────────────────────────────────────────── */
function WhatsAppFloat() {
  const [visible, setVisible] = useState(false);

  useEffect(() => {
    const handleScroll = () => setVisible(window.scrollY > 500);
    window.addEventListener("scroll", handleScroll, { passive: true });
    return () => window.removeEventListener("scroll", handleScroll);
  }, []);

  return (
    <a
      href={WHATSAPP_URL}
      target="_blank"
      rel="noopener noreferrer"
      aria-label="Fale conosco pelo WhatsApp"
      className={`fixed bottom-6 right-6 z-50 flex items-center gap-3 bg-[#25D366] text-white pl-4 pr-5 py-3 shadow-2xl shadow-black/20 transition-all duration-500 hover:bg-[#20bd5a] ${
        visible
          ? "translate-y-0 opacity-100"
          : "translate-y-20 opacity-0 pointer-events-none"
      }`}
    >
      <WhatsAppIcon className="w-5 h-5" />
      <span className="font-semibold text-sm hidden sm:inline">
        Orçamento Inteligente
      </span>
    </a>
  );
}

/* ──────────────────────────────────────────────
   PAGE
   ────────────────────────────────────────────── */
export default function LinhaEssencialLP() {
  return (
    <>
      <Hero />
      <CarouselSection />
      <ForWho />
      <WhyChoose />
      <Process />
      <Gallery />
      <Guarantee />
      <Testimonials />
      <FinalCTA />
      <Footer />
      <WhatsAppFloat />
    </>
  );
}
