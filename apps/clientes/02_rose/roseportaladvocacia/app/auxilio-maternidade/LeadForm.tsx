"use client";

import {
  useState,
  useRef,
  useEffect,
  useCallback,
  type FormEvent,
} from "react";
import { useSearchParams } from "next/navigation";
import { CIDADES_RS } from "./cidades-rs";

const WHATSAPP_NUMBER = "5551997805367";

declare global {
  interface Window {
    dataLayer?: Record<string, unknown>[];
  }
}

function formatPhone(value: string): string {
  const digits = value.replace(/\D/g, "").slice(0, 11);
  if (digits.length <= 2) return digits;
  if (digits.length <= 7) return `(${digits.slice(0, 2)}) ${digits.slice(2)}`;
  return `(${digits.slice(0, 2)}) ${digits.slice(2, 7)}-${digits.slice(7)}`;
}

function buildWhatsAppUrl(nome: string, cidade: string): string {
  const msg = encodeURIComponent(
    `Olá! Meu nome é ${nome}, sou de ${cidade} e gostaria de falar com um especialista em Auxílio Maternidade.`,
  );
  return `https://api.whatsapp.com/send?phone=${WHATSAPP_NUMBER}&text=${msg}`;
}

interface LeadFormProps {
  open: boolean;
  onClose: () => void;
}

export default function LeadForm({ open, onClose }: LeadFormProps) {
  const searchParams = useSearchParams();

  const [nome, setNome] = useState("");
  const [telefone, setTelefone] = useState("");
  const [cidade, setCidade] = useState("");
  const [cidadeFilter, setCidadeFilter] = useState("");
  const [showCidades, setShowCidades] = useState(false);
  const [loading, setLoading] = useState(false);
  const [errors, setErrors] = useState<Record<string, string>>({});
  const [apiError, setApiError] = useState("");

  const listRef = useRef<HTMLDivElement>(null);
  const inputCidadeRef = useRef<HTMLInputElement>(null);

  const filteredCidades = cidadeFilter
    ? CIDADES_RS.filter((c) =>
        c.toLowerCase().includes(cidadeFilter.toLowerCase()),
      ).slice(0, 50)
    : CIDADES_RS.slice(0, 50);

  // Close dropdown on outside click
  useEffect(() => {
    function handleClick(e: MouseEvent) {
      if (listRef.current && !listRef.current.contains(e.target as Node)) {
        setShowCidades(false);
      }
    }
    document.addEventListener("mousedown", handleClick);
    return () => document.removeEventListener("mousedown", handleClick);
  }, []);

  // Lock body scroll when modal is open
  useEffect(() => {
    if (open) {
      document.body.style.overflow = "hidden";
    } else {
      document.body.style.overflow = "";
    }
    return () => {
      document.body.style.overflow = "";
    };
  }, [open]);

  const selectCidade = useCallback((c: string) => {
    setCidade(c);
    setCidadeFilter(c);
    setShowCidades(false);
    setErrors((prev) => ({ ...prev, cidade: "" }));
  }, []);

  const validate = (): boolean => {
    const e: Record<string, string> = {};
    if (!nome.trim()) e.nome = "Informe seu nome";
    const phoneDigits = telefone.replace(/\D/g, "");
    if (phoneDigits.length < 10) e.telefone = "Informe um telefone válido";
    if (!cidade.trim() || !CIDADES_RS.includes(cidade))
      e.cidade = "Selecione uma cidade do RS";
    setErrors(e);
    return Object.keys(e).length === 0;
  };

  const handleSubmit = async (ev: FormEvent) => {
    ev.preventDefault();
    setApiError("");
    if (!validate()) return;

    setLoading(true);
    try {
      const payload = {
        nome: nome.trim(),
        telefone: telefone.trim(),
        cidade: cidade.trim(),
        utm_source: searchParams.get("utm_source") || undefined,
        utm_medium: searchParams.get("utm_medium") || undefined,
        utm_campaign: searchParams.get("utm_campaign") || undefined,
        utm_content: searchParams.get("utm_content") || undefined,
        utm_term: searchParams.get("utm_term") || undefined,
        gclid: searchParams.get("gclid") || undefined,
        fbclid: searchParams.get("fbclid") || undefined,
        page_referrer: document.referrer || undefined,
        user_agent: navigator.userAgent || undefined,
      };

      const res = await fetch("/api/leads/rose", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(payload),
      });

      if (!res.ok) {
        const data = await res.json().catch(() => ({}));
        throw new Error(data.error || "Erro ao enviar");
      }

      // Push GTM dataLayer events
      window.dataLayer = window.dataLayer || [];
      window.dataLayer.push({
        event: "generate_lead",
        form_id: "form-lead-rose",
        form_name: "auxilio_maternidade_lead",
        lead_city: cidade,
        service: "auxilio_maternidade",
      });

      // Redirect to WhatsApp
      window.open(buildWhatsAppUrl(nome.trim(), cidade.trim()), "_blank");
      onClose();

      // Reset form
      setNome("");
      setTelefone("");
      setCidade("");
      setCidadeFilter("");
    } catch (err) {
      setApiError(
        err instanceof Error ? err.message : "Erro ao enviar. Tente novamente.",
      );
    } finally {
      setLoading(false);
    }
  };

  if (!open) return null;

  return (
    <div className="modal-overlay" onClick={onClose}>
      <div className="modal-card" onClick={(e) => e.stopPropagation()}>
        <button className="modal-close" onClick={onClose} aria-label="Fechar">
          &times;
        </button>

        <h2 className="modal-title">Fale com um especialista</h2>
        <p className="modal-subtitle">
          Preencha seus dados e fale diretamente com nossa equipe no WhatsApp.
        </p>

        {apiError && <div className="form-api-error">{apiError}</div>}

        <form id="form-lead-rose" onSubmit={handleSubmit} noValidate>
          {/* Nome */}
          <div className="form-group">
            <label className="form-label" htmlFor="field-nome">
              Nome
            </label>
            <input
              id="field-nome"
              className={`form-input ${errors.nome ? "form-input-error" : ""}`}
              type="text"
              placeholder="Seu nome completo"
              value={nome}
              onChange={(e) => {
                setNome(e.target.value);
                setErrors((prev) => ({ ...prev, nome: "" }));
              }}
              autoComplete="name"
            />
            {errors.nome && <p className="form-error-text">{errors.nome}</p>}
          </div>

          {/* Telefone */}
          <div className="form-group">
            <label className="form-label" htmlFor="field-telefone">
              Telefone
            </label>
            <input
              id="field-telefone"
              className={`form-input ${errors.telefone ? "form-input-error" : ""}`}
              type="tel"
              placeholder="(51) 99999-9999"
              value={telefone}
              onChange={(e) => {
                setTelefone(formatPhone(e.target.value));
                setErrors((prev) => ({ ...prev, telefone: "" }));
              }}
              autoComplete="tel"
            />
            {errors.telefone && (
              <p className="form-error-text">{errors.telefone}</p>
            )}
          </div>

          {/* Cidade */}
          <div className="form-group">
            <label className="form-label" htmlFor="field-cidade">
              Cidade
            </label>
            <div className="combobox-wrapper" ref={listRef}>
              <input
                id="field-cidade"
                ref={inputCidadeRef}
                className={`form-input combobox-input ${errors.cidade ? "form-input-error" : ""}`}
                type="text"
                placeholder="Digite sua cidade..."
                value={cidadeFilter}
                onChange={(e) => {
                  setCidadeFilter(e.target.value);
                  setCidade("");
                  setShowCidades(true);
                  setErrors((prev) => ({ ...prev, cidade: "" }));
                }}
                onFocus={() => setShowCidades(true)}
                autoComplete="off"
                role="combobox"
                aria-expanded={showCidades}
                aria-controls="cidade-listbox"
              />
              <button
                type="button"
                className="combobox-toggle"
                tabIndex={-1}
                onClick={() => {
                  setShowCidades(!showCidades);
                  inputCidadeRef.current?.focus();
                }}
                aria-label="Abrir lista de cidades"
              >
                &#9662;
              </button>

              {showCidades && (
                <div
                  id="cidade-listbox"
                  className="combobox-list"
                  role="listbox"
                >
                  {filteredCidades.length > 0 ? (
                    filteredCidades.map((c) => (
                      <div
                        key={c}
                        className="combobox-option"
                        role="option"
                        aria-selected={c === cidade}
                        data-active={c === cidade ? "true" : undefined}
                        onClick={() => selectCidade(c)}
                      >
                        {c}
                      </div>
                    ))
                  ) : (
                    <div className="combobox-empty">
                      Nenhuma cidade encontrada
                    </div>
                  )}
                </div>
              )}
            </div>
            {errors.cidade && (
              <p className="form-error-text">{errors.cidade}</p>
            )}
          </div>

          <button
            id="btn-submit-lead"
            type="submit"
            className="btn-submit"
            disabled={loading}
          >
            {loading ? "Enviando..." : "FALAR NO WHATSAPP"}
          </button>
        </form>
      </div>
    </div>
  );
}
