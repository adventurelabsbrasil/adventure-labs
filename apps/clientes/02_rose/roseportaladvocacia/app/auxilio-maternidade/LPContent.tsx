"use client";

import { useState } from "react";
import LeadForm from "./LeadForm";

/* eslint-disable @next/next/no-img-element */

export default function LPContent() {
  const [formOpen, setFormOpen] = useState(false);

  const openForm = () => setFormOpen(true);

  return (
    <>
      <header className="header">
        <img
          src="/images/logo.png"
          alt="Rose Portal Advocacia"
          className="logo-img"
          width={118}
          height={64}
        />
      </header>

      <main>
        {/* 1. Hero */}
        <section className="hero">
          <div className="hero-bg" aria-hidden="true" />
          <div className="container hero-content">
            <div className="hero-frame">
              <div className="hero-text">
                <h1 className="hero-title">
                  Garanta seu{" "}
                  <span className="hero-title-highlight">
                    Auxílio-Maternidade
                  </span>{" "}
                  com quem entende o valor da sua jornada.
                </h1>
                <p className="hero-subtitle">
                  Especialistas em Direito Previdenciário dedicados a assegurar
                  o benefício de mães desempregadas, autônomas, MEIs e rurais.
                </p>
                <button
                  type="button"
                  className="cta cta-primary"
                  onClick={openForm}
                >
                  QUERO FALAR COM UM ESPECIALISTA AGORA
                </button>
              </div>
              <div className="hero-photo-wrap">
                <img
                  src="/images/foto-dra.png"
                  alt="Dra. Roselaine Portal"
                  className="hero-photo"
                  width={340}
                  height={453}
                />
              </div>
            </div>
          </div>
        </section>

        {/* 2. Nossos Serviços */}
        <section className="section section-services section-dark">
          <div className="container">
            <h2 className="section-title section-title-light">
              Nossos Serviços
            </h2>
            <div className="services-grid">
              <article className="service-card">
                <span className="service-icon" aria-hidden="true">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    width="48"
                    height="48"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    strokeWidth="1.5"
                  >
                    <path d="M12 2v4M12 18v4M4.93 4.93l2.83 2.83M16.24 16.24l2.83 2.83M2 12h4M18 12h4M4.93 19.07l2.83-2.83M16.24 7.76l2.83-2.83" />
                    <circle cx="12" cy="12" r="3" />
                  </svg>
                </span>
                <h3 className="service-card-title">Mães Desempregadas</h3>
                <p className="service-card-desc">
                  Recuperamos o benefício mesmo para quem parou de contribuir há
                  algum tempo.
                </p>
              </article>
              <article className="service-card">
                <span className="service-icon" aria-hidden="true">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    width="48"
                    height="48"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    strokeWidth="1.5"
                  >
                    <rect x="2" y="4" width="20" height="16" rx="2" />
                    <path d="M2 10h20M8 2v4M16 2v4" />
                  </svg>
                </span>
                <h3 className="service-card-title">MEI e Autônomas</h3>
                <p className="service-card-desc">
                  Orientação precisa sobre carência e pagamentos para garantir o
                  valor máximo.
                </p>
              </article>
              <article className="service-card">
                <span className="service-icon" aria-hidden="true">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    width="48"
                    height="48"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    strokeWidth="1.5"
                  >
                    <path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z" />
                    <polyline points="9 22 9 12 15 12 15 22" />
                  </svg>
                </span>
                <h3 className="service-card-title">
                  Mães Rurais / Seguradas Especiais
                </h3>
                <p className="service-card-desc">
                  Comprovação de atividade rural para garantir o direito sem
                  contribuição direta.
                </p>
              </article>
              <article className="service-card">
                <span className="service-icon" aria-hidden="true">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    width="48"
                    height="48"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    strokeWidth="1.5"
                  >
                    <path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2" />
                    <circle cx="9" cy="7" r="4" />
                    <path d="M23 21v-2a4 4 0 0 0-3-3.87M16 3.13a4 4 0 0 1 0 7.75" />
                  </svg>
                </span>
                <h3 className="service-card-title">Adoção e Guarda Judicial</h3>
                <p className="service-card-desc">
                  Suporte jurídico completo para garantir o afastamento
                  remunerado em casos de adoção.
                </p>
              </article>
              <article className="service-card">
                <span className="service-icon" aria-hidden="true">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    width="48"
                    height="48"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    strokeWidth="1.5"
                  >
                    <path d="M12 2v20M17 5H9.5a3.5 3.5 0 0 0 0 7h5a3.5 3.5 0 0 1 0 7H6" />
                  </svg>
                </span>
                <h3 className="service-card-title">Revisão de Valor</h3>
                <p className="service-card-desc">
                  Se o seu benefício veio menor do que o esperado, nós
                  recalculamos e contestamos.
                </p>
              </article>
              <article className="service-card">
                <span className="service-icon" aria-hidden="true">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    width="48"
                    height="48"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    strokeWidth="1.5"
                  >
                    <path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z" />
                    <polyline points="14 2 14 8 20 8" />
                    <line x1="16" y1="13" x2="8" y2="13" />
                    <line x1="16" y1="17" x2="8" y2="17" />
                    <polyline points="10 9 9 9 8 9" />
                  </svg>
                </span>
                <h3 className="service-card-title">Indeferimentos do INSS</h3>
                <p className="service-card-desc">
                  Atuação imediata para reverter negativas injustas do órgão
                  previdenciário.
                </p>
              </article>
            </div>
            <p className="section-cta-wrap">
              <button
                type="button"
                className="cta cta-primary"
                onClick={openForm}
              >
                TIRAR MINHAS DÚVIDAS
              </button>
            </p>
          </div>
        </section>

        {/* 3. Sobre o Escritório */}
        <section className="section section-about section-dark">
          <div className="container">
            <div className="about-box">
              <div className="about-content">
                <h2 className="section-title section-title-light">
                  Rose Portal Advocacia: Experiência que gera resultados.
                </h2>
                <p className="about-text">
                  Com foco exclusivo em Direito Previdenciário, unimos
                  tecnologia e atendimento personalizado para desburocratizar o
                  INSS. Entendemos que o auxílio-maternidade é essencial para o
                  bem-estar da família, e tratamos cada processo com a urgência
                  que a maternidade exige.
                </p>
                <button
                  type="button"
                  className="cta cta-primary"
                  onClick={openForm}
                >
                  CONHEÇA NOSSA TRAJETÓRIA
                </button>
              </div>
              <div className="about-image-wrap">
                <img
                  src="/images/roseportal-auxilio-maternidade.webp"
                  alt="Rose Portal Advocacia - Auxílio maternidade"
                  className="about-image"
                  width={600}
                  height={400}
                />
              </div>
            </div>
          </div>
        </section>

        {/* 4. Por que nos escolher */}
        <section className="section section-why section-light">
          <div className="container container-why">
            <h2 className="section-title why-title">
              Por que confiar no nosso escritório?
            </h2>
            <ul className="why-list">
              <li className="why-item">
                <span className="why-icon" aria-hidden="true">
                  &#10003;
                </span>
                <div>
                  <h3 className="why-item-title">
                    Atendimento 100% Digital
                  </h3>
                  <p className="why-item-desc">
                    Resolvemos tudo de onde você estiver, sem precisar sair de
                    casa com o bebê.
                  </p>
                </div>
              </li>
              <li className="why-item">
                <span className="why-icon" aria-hidden="true">
                  &#10003;
                </span>
                <div>
                  <h3 className="why-item-title">Análise Prévia Gratuita</h3>
                  <p className="why-item-desc">
                    Verificamos suas chances de sucesso antes de iniciar
                    qualquer procedimento.
                  </p>
                </div>
              </li>
              <li className="why-item">
                <span className="why-icon" aria-hidden="true">
                  &#10003;
                </span>
                <div>
                  <h3 className="why-item-title">Agilidade no Processo</h3>
                  <p className="why-item-desc">
                    Protocolos imediatos para reduzir o tempo de espera pela
                    primeira parcela.
                  </p>
                </div>
              </li>
              <li className="why-item">
                <span className="why-icon" aria-hidden="true">
                  &#10003;
                </span>
                <div>
                  <h3 className="why-item-title">Honorários Justos</h3>
                  <p className="why-item-desc">
                    Você só paga uma porcentagem do benefício quando ele for
                    efetivamente aprovado.
                  </p>
                </div>
              </li>
            </ul>
            <p className="section-cta-wrap">
              <button
                type="button"
                className="cta cta-primary"
                onClick={openForm}
              >
                FALAR COM UM ESPECIALISTA
              </button>
            </p>
          </div>
        </section>

        {/* 5. Prova Social */}
        <section className="section section-testimonial section-dark">
          <div className="container">
            <blockquote className="testimonial-card">
              <span className="testimonial-quote" aria-hidden="true">
                &ldquo;
              </span>
              <p className="testimonial-text">
                Estava desempregada e achei que não tinha direito a nada. A
                equipe da Rose Portal foi incrível, cuidaram de tudo e meu
                benefício saiu em tempo recorde. Foi o alívio que eu precisava!
              </p>
              <footer className="testimonial-author">
                Mariana S., Mãe do pequeno Lucas.
              </footer>
            </blockquote>
            <p className="section-cta-wrap">
              <button
                type="button"
                className="cta cta-primary"
                onClick={openForm}
              >
                QUERO MEU BENEFÍCIO
              </button>
            </p>
          </div>
        </section>

        {/* 6. Outras especialidades */}
        <section className="section section-other section-light">
          <div className="container">
            <h2 className="section-title">Outras especialidades</h2>
            <p className="other-caption">
              O escritório também atua em Direito Bancário e demais áreas
              previdenciárias.
            </p>
            <ul className="other-list">
              <li>Empréstimo Consignado</li>
              <li>Fraudes de Pix</li>
              <li>Fraude em Transações Bancárias</li>
              <li>Taxas e Tarifas Indevidas</li>
              <li>Negativação Indevida</li>
              <li>Venda Casada de Produtos e Serviços</li>
              <li>Fraude em Seguros</li>
              <li>Lei do Superendividamento</li>
            </ul>
            <p className="section-cta-wrap">
              <button
                type="button"
                className="cta cta-primary"
                onClick={openForm}
              >
                ENTRAR EM CONTATO
              </button>
            </p>
          </div>
        </section>

        {/* 7. Rodapé */}
        <footer className="footer section-dark">
          <div className="container footer-inner">
            <div className="footer-contact">
              <h2 className="footer-title">Contato</h2>
              <p className="footer-address">Porto Alegre, RS</p>
              <p>
                <a href="tel:+5551997805367" className="footer-link">
                  +55 51 99780-5367
                </a>
              </p>
              <p>
                <a href="mailto:rosetportal@hotmail.com" className="footer-link">
                  rosetportal@hotmail.com
                </a>
              </p>
              <div className="footer-social" aria-label="Redes sociais">
                <a href="#" className="footer-social-link" aria-label="Facebook">
                  FB
                </a>
                <a
                  href="#"
                  className="footer-social-link"
                  aria-label="Instagram"
                >
                  IG
                </a>
                <a href="#" className="footer-social-link" aria-label="LinkedIn">
                  IN
                </a>
              </div>
            </div>
            <p className="footer-cta-wrap">
              <button
                type="button"
                className="cta cta-primary cta-full"
                onClick={openForm}
              >
                CHAMAR AGORA
              </button>
            </p>
          </div>
          <div className="footer-legal">
            <p>
              Roselaine Portal Advocacia – OAB/RS 86.340 - Página institucional
              mantida em observância ao Código de Ética da OAB
            </p>
          </div>
        </footer>
      </main>

      {/* Botão flutuante WhatsApp */}
      <button
        type="button"
        className="float-whatsapp"
        onClick={openForm}
        aria-label="Falar no WhatsApp"
      >
        <svg
          className="float-whatsapp-icon"
          viewBox="0 0 24 24"
          fill="currentColor"
          aria-hidden="true"
        >
          <path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51-.173-.008-.371-.01-.57-.01-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.709.306 1.262.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347m-5.421 7.403h-.004a9.87 9.87 0 01-5.031-1.378l-.361-.214-3.741.982.998-3.648-.235-.374a9.86 9.86 0 01-1.51-5.26c.001-5.45 4.436-9.884 9.888-9.884 2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 012.893 6.994c-.003 5.45-4.437 9.884-9.885 9.884m8.413-18.297A11.815 11.815 0 0012.05 0C5.495 0 .16 5.335.157 11.892c0 2.096.547 4.142 1.588 5.945L.057 24l6.305-1.654a11.882 11.882 0 005.683 1.448h.005c6.554 0 11.89-5.335 11.893-11.893a11.821 11.821 0 00-3.48-8.413z" />
        </svg>
        <span className="float-whatsapp-label">Falar no WhatsApp</span>
      </button>

      {/* Lead Form Modal */}
      <LeadForm open={formOpen} onClose={() => setFormOpen(false)} />
    </>
  );
}
