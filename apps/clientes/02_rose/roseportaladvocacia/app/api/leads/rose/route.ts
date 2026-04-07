import { NextRequest, NextResponse } from "next/server";
import { createServerSupabase } from "@/lib/supabase/server";

interface LeadPayload {
  nome: string;
  telefone: string;
  cidade: string;
  utm_source?: string;
  utm_medium?: string;
  utm_campaign?: string;
  utm_content?: string;
  utm_term?: string;
  gclid?: string;
  fbclid?: string;
  page_referrer?: string;
  user_agent?: string;
}

export async function POST(request: NextRequest) {
  try {
    const body = (await request.json()) as LeadPayload;

    const { nome, telefone, cidade } = body;

    if (!nome?.trim() || !telefone?.trim() || !cidade?.trim()) {
      return NextResponse.json(
        { error: "nome, telefone e cidade são obrigatórios" },
        { status: 400 },
      );
    }

    const supabase = createServerSupabase();

    const { data, error } = await supabase
      .from("rose_leads")
      .insert({
        nome: nome.trim(),
        telefone: telefone.trim(),
        cidade: cidade.trim(),
        utm_source: body.utm_source || null,
        utm_medium: body.utm_medium || null,
        utm_campaign: body.utm_campaign || null,
        utm_content: body.utm_content || null,
        utm_term: body.utm_term || null,
        gclid: body.gclid || null,
        fbclid: body.fbclid || null,
        page_referrer: body.page_referrer || null,
        user_agent: body.user_agent || null,
      })
      .select("id")
      .single();

    if (error) {
      console.error("Erro ao salvar lead Rose:", error);
      return NextResponse.json(
        { error: "Erro ao salvar dados" },
        { status: 500 },
      );
    }

    return NextResponse.json({ success: true, id: data.id });
  } catch {
    console.error("Erro inesperado na API de leads Rose");
    return NextResponse.json(
      { error: "Erro interno do servidor" },
      { status: 500 },
    );
  }
}
