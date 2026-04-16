#!/usr/bin/env python3
"""
HYDRA Venture Studio Engine — Entry Point.

Uso:
  python project_hydra/main_hydra.py --phase full          # Pipeline completo
  python project_hydra/main_hydra.py --phase scout         # Só Scout
  python project_hydra/main_hydra.py --phase full --dry-run # Sem API calls

O pipeline completo roda:
  Scout → Strategist → Auditor(strategy) → Builder → Auditor(build) → Report
"""

from __future__ import annotations

import argparse
import json
import os
import sys
from datetime import datetime
from pathlib import Path
from string import Template

# ─── Parse --dry-run ANTES de importar config (import-time env read) ──────────
_pre_parser = argparse.ArgumentParser(add_help=False)
_pre_parser.add_argument("--dry-run", action="store_true", default=False)
_pre_args, _ = _pre_parser.parse_known_args()
if _pre_args.dry_run:
    os.environ["HYDRA_DRY_RUN"] = "true"

# Agora importa o HYDRA (config lê HYDRA_DRY_RUN no import)
from project_hydra.core import config
from project_hydra.core.logger import get_logger, session_logger
from project_hydra.core.llm_client import get_session_cost
from project_hydra.core.budget_tracker import get_tracker
from project_hydra.core.models import AuditVerdict, HydraPhase, HydraState
from project_hydra.core import telegram

from project_hydra.agents.scout import ScoutAgent
from project_hydra.agents.strategist import StrategistAgent
from project_hydra.agents.builder import BuilderAgent
from project_hydra.agents.auditor import AuditorAgent

logger = get_logger("main")

BANNER = """
╔═══════════════════════════════════════════════════════════════╗
║   ██╗  ██╗██╗   ██╗██████╗ ██████╗  █████╗                  ║
║   ██║  ██║╚██╗ ██╔╝██╔══██╗██╔══██╗██╔══██╗                 ║
║   ███████║ ╚████╔╝ ██║  ██║██████╔╝███████║                  ║
║   ██╔══██║  ╚██╔╝  ██║  ██║██╔══██╗██╔══██║                  ║
║   ██║  ██║   ██║   ██████╔╝██║  ██║██║  ██║                  ║
║   ╚═╝  ╚═╝   ╚═╝   ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝                  ║
║                                                               ║
║   Hybrid Revenue Development and Automation                   ║
║   Adventure Labs Venture Studio Engine v0.1.0                 ║
╚═══════════════════════════════════════════════════════════════╝
"""


# ─── CLI Args ──────────────────────────────────────────────────────────────────

def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="HYDRA Venture Studio Engine — Pipeline de decisão estratégica",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="Exemplo: python project_hydra/main_hydra.py --phase full --dry-run",
    )
    parser.add_argument(
        "--phase",
        choices=["scout", "strategist", "builder", "audit", "full", "report"],
        default="full",
        help="Fase do pipeline para executar (default: full)",
    )
    parser.add_argument("--dry-run", action="store_true", help="Simular sem API calls")
    parser.add_argument("--session-id", type=str, help="ID de sessão existente para retomar")
    parser.add_argument("--budget", type=float, help="Override do orçamento MVP em BRL")
    parser.add_argument("--verbose", action="store_true", help="Log detalhado (DEBUG)")
    return parser.parse_args()


# ─── Pipeline ──────────────────────────────────────────────────────────────────

def run_pipeline(args: argparse.Namespace) -> HydraState:
    """Executa o pipeline HYDRA conforme a fase solicitada."""
    print(BANNER)
    config.print_config_status()

    warnings = config.validate_config()
    for w in warnings:
        logger.warning(w)

    # Init state
    state = HydraState()
    if args.session_id:
        state.session_id = args.session_id
    if args.budget:
        state.capital_budget_brl = args.budget
        get_tracker().budget_brl = args.budget

    logger.info(f"Session: {state.session_id}")
    logger.info(f"Phase: {args.phase}")
    logger.info(f"Budget: R$ {state.capital_budget_brl:.2f}")

    try:
        if args.phase in ("scout", "strategist", "builder", "audit", "full"):
            # ── 1. Scout ───────────────────────────────────────────────────────
            state.phase = HydraPhase.SCOUTING
            print("\n── 🔭 Fase 1: Scout (Olheiro) ──────────────────────────────")
            scout = ScoutAgent(state)
            scout_report = scout.run()
            state.scout_report = scout_report
            print(f"   Sinais coletados: {len(scout_report.signals)}")
            print(f"   Fontes: {', '.join(scout_report.data_sources_used)}")

            if args.phase == "scout":
                _save_outputs(state)
                return state

        if args.phase in ("strategist", "builder", "audit", "full"):
            # ── 2. Strategist ──────────────────────────────────────────────────
            state.phase = HydraPhase.STRATEGIZING
            print("\n── 🧠 Fase 2: Strategist (O Cérebro) ──────────────────────")
            strategist = StrategistAgent(state, state.scout_report)
            strategy_report = strategist.run()
            state.strategy_report = strategy_report
            print(f"   Modelo vencedor: {strategy_report.winner.model_name}")
            print(f"   Score MCDA: {strategy_report.winner.weighted_score}/10")
            print(f"   MRR projetado (90d): R$ {strategy_report.winner.monthly_revenue_potential_day90_brl:,.0f}")

            if args.phase == "strategist":
                _save_outputs(state)
                return state

        if args.phase in ("builder", "audit", "full"):
            # ── 3. Audit da estratégia ─────────────────────────────────────────
            if args.phase in ("audit", "full"):
                state.phase = HydraPhase.AUDITING
                print("\n── 🛡️ Fase 3a: Auditor (Revisão da Estratégia) ────────")
                auditor_strat = AuditorAgent(
                    state,
                    action_type="strategy_review",
                    content_to_audit=strategy_report.model_dump(mode="json"),
                )
                audit_strat = auditor_strat.run()
                print(f"   Veredicto: {audit_strat.verdict.value}")
                print(f"   Risco: {audit_strat.risk_score}/10")

                if audit_strat.verdict == AuditVerdict.VETOED:
                    state.phase = HydraPhase.ABORTED
                    print("\n   ⛔ ESTRATÉGIA VETADA PELO AUDITOR")
                    print(f"   Motivo: {audit_strat.reasoning}")
                    telegram.send(
                        f"⛔ <b>HYDRA ABORTED</b>\n\n"
                        f"Estratégia vetada pelo Auditor.\n"
                        f"Motivo: {audit_strat.reasoning}",
                        urgency="critical",
                    )
                    _save_outputs(state)
                    return state

            # ── 4. Builder ─────────────────────────────────────────────────────
            state.phase = HydraPhase.BUILDING
            print("\n── 🏗️ Fase 4: Builder (O Construtor) ──────────────────────")
            builder = BuilderAgent(state, strategy_report)
            build_report = builder.run()
            state.build_report = build_report
            print(f"   Artefatos gerados: {len(build_report.artifacts)}")
            print(f"   Custo estimado: R$ {build_report.total_estimated_cost_brl:.2f}")
            print(f"   Automação: {build_report.automated_steps_pct}%")

            if args.phase == "builder":
                _save_outputs(state)
                return state

        if args.phase in ("audit", "full"):
            # ── 5. Audit do build ──────────────────────────────────────────────
            state.phase = HydraPhase.AUDITING
            print("\n── 🛡️ Fase 5: Auditor (Revisão do Build) ─────────────────")
            auditor_build = AuditorAgent(
                state,
                action_type="build_review",
                content_to_audit=build_report.model_dump(mode="json"),
            )
            audit_build = auditor_build.run()
            print(f"   Veredicto: {audit_build.verdict.value}")
            print(f"   Risco: {audit_build.risk_score}/10")

            if audit_build.verdict == AuditVerdict.VETOED:
                state.phase = HydraPhase.ABORTED
                print("\n   ⛔ BUILD VETADO PELO AUDITOR")
                print(f"   Motivo: {audit_build.reasoning}")
                _save_outputs(state)
                return state

        # ── 6. Complete ────────────────────────────────────────────────────────
        state.phase = HydraPhase.COMPLETE
        state.completed_at = datetime.utcnow()

        print("\n══════════════════════════════════════════════════════════════")
        print("   ✅ HYDRA Pipeline Completo!")
        print("══════════════════════════════════════════════════════════════")

        _save_outputs(state)
        _print_summary(state)

        return state

    except Exception as e:
        state.phase = HydraPhase.ABORTED
        state.errors.append(str(e))
        logger.error(f"Pipeline abortado: {e}", exc_info=True)
        telegram.send(
            f"🚨 <b>HYDRA Pipeline Falhou</b>\n\n"
            f"Session: <code>{state.session_id}</code>\n"
            f"Erro: {str(e)[:200]}",
            urgency="critical",
        )
        _save_outputs(state)
        raise


# ─── Output Generation ─────────────────────────────────────────────────────────

def _save_outputs(state: HydraState) -> None:
    """Salva estado e relatório nos outputs."""
    config.OUTPUTS_DIR.mkdir(parents=True, exist_ok=True)

    # Salva estado completo JSON
    state_file = config.OUTPUTS_DIR / f"{state.session_id}_state.json"
    state_data = state.model_dump(mode="json")
    state_file.write_text(
        json.dumps(state_data, ensure_ascii=False, indent=2, default=str),
        encoding="utf-8",
    )
    logger.info(f"Estado salvo: {state_file}")

    # Gera relatório markdown se tiver strategy
    if state.strategy_report:
        _generate_report(state)


def _generate_report(state: HydraState) -> None:
    """Gera relatório markdown a partir do template."""
    template_path = config.PROMPTS_DIR / "report_template.md"
    if not template_path.exists():
        logger.warning("Template de relatório não encontrado, pulando geração")
        return

    sr = state.strategy_report
    cost_info = get_session_cost()

    # MCDA ranking table
    ranking_lines = ["| # | Modelo | Score | Custo | MRR 90d |",
                     "|---|--------|-------|-------|---------|"]
    for s in sr.all_scores:
        ranking_lines.append(
            f"| {s.rank} | {'**' if s.rank == 1 else ''}{s.model_name}"
            f"{'**' if s.rank == 1 else ''} | {s.weighted_score:.2f} | "
            f"R$ {s.launch_cost_brl:.0f} | R$ {s.monthly_revenue_potential_day90_brl:,.0f} |"
        )

    # Plan 90 days detail
    plan_lines = []
    for phase in sr.plan_90_days:
        plan_lines.append(f"### {phase.phase_name} ({phase.duration})")
        plan_lines.append(f"**Meta:** {phase.goal}")
        plan_lines.append(f"**MRR Alvo:** R$ {phase.target_mrr_brl:,.0f}")
        for action in phase.actions:
            plan_lines.append(f"- {action}")
        plan_lines.append("")

    # Artifacts summary
    artifact_lines = []
    if state.build_report:
        for a in state.build_report.artifacts:
            artifact_lines.append(f"- **{a.name}** ({a.artifact_type}) — {a.description}")

    # Infra checklist
    checklist_lines = ["| # | Ação | Ferramenta | Custo | Auto |",
                       "|---|------|-----------|-------|------|"]
    if state.build_report:
        for item in state.build_report.infra_checklist:
            auto = "✅" if item.is_automated else "🔧"
            checklist_lines.append(
                f"| {item.step} | {item.action} | {item.tool} | "
                f"R$ {item.estimated_cost_brl:.0f} | {auto} |"
            )

    # Audit summary
    audit_lines = []
    for ar in state.audit_results:
        emoji = {"approved": "✅", "approved_with_conditions": "⚠️", "vetoed": "🚫"}
        audit_lines.append(
            f"- {emoji.get(ar.verdict.value, '❓')} **{ar.action_type}**: "
            f"{ar.verdict.value} (risco: {ar.risk_score}/10) — {ar.reasoning}"
        )

    # Redlines and pivot triggers
    redline_lines = [f"- {r}" for r in sr.redlines]
    pivot_lines = [f"- {p}" for p in sr.pivot_triggers]

    # Fill template
    template_text = template_path.read_text(encoding="utf-8")
    # Use simple string replacement (avoid Template conflicts with markdown)
    replacements = {
        "{project_name}": sr.project_name,
        "{session_id}": state.session_id,
        "{generated_at}": datetime.utcnow().strftime("%Y-%m-%d %H:%M UTC"),
        "{central_thesis}": sr.central_thesis,
        "{value_proposition}": sr.value_proposition,
        "{target_customer}": sr.target_customer,
        "{mcda_ranking_table}": "\n".join(ranking_lines),
        "{winner_name}": sr.winner.model_name,
        "{winner_score}": f"{sr.winner.weighted_score:.2f}",
        "{revenue_path_7_days}": sr.revenue_path_7_days,
        "{plan_90_days_detail}": "\n".join(plan_lines),
        "{artifacts_summary}": "\n".join(artifact_lines) or "Nenhum artefato gerado.",
        "{artifacts_count}": str(len(state.build_report.artifacts) if state.build_report else 0),
        "{total_launch_cost}": f"{state.build_report.total_estimated_cost_brl:.2f}" if state.build_report else "N/A",
        "{infra_checklist}": "\n".join(checklist_lines),
        "{automated_pct}": f"{state.build_report.automated_steps_pct:.0f}" if state.build_report else "N/A",
        "{audit_summary}": "\n".join(audit_lines) or "Nenhuma auditoria realizada.",
        "{pivot_protocol}": state.build_report.pivot_protocol if state.build_report else "N/A",
        "{pivot_triggers}": "\n".join(pivot_lines),
        "{redlines}": "\n".join(redline_lines),
        "{seed_capital}": f"{config.SEED_CAPITAL_BRL:,.2f}",
        "{mvp_budget}": f"{config.MVP_BUDGET_BRL:,.2f}",
        "{capital_spent}": f"{state.capital_spent_brl:.2f}",
        "{capital_remaining}": f"{state.capital_remaining_brl:.2f}",
        "{llm_cost_usd}": f"{cost_info['cost_usd']:.4f}",
        "{llm_cost_brl}": f"{cost_info['estimated_brl']:.2f}",
        "{version}": "0.1.0",
    }

    report_text = template_text
    for key, value in replacements.items():
        report_text = report_text.replace(key, value)

    report_file = config.OUTPUTS_DIR / f"{state.session_id}_report.md"
    report_file.write_text(report_text, encoding="utf-8")
    logger.info(f"Relatório salvo: {report_file}")
    print(f"\n📄 Relatório: {report_file}")


def _print_summary(state: HydraState) -> None:
    """Imprime resumo final no terminal."""
    sr = state.strategy_report
    cost = get_session_cost()
    tracker = get_tracker()

    print(f"""
┌─────────────────────────────────────────────────┐
│  HYDRA — Resumo da Sessão                       │
├─────────────────────────────────────────────────┤
│  Session:    {state.session_id:<35} │
│  Fase:       {state.phase.value:<35} │
│  Modelo:     {sr.winner.model_name[:35]:<35} │
│  Score:      {sr.winner.weighted_score}/10{' ' * 28}│
│  MRR 90d:    R$ {sr.winner.monthly_revenue_potential_day90_brl:>10,.0f}{' ' * 17}│
│  Budget:     R$ {tracker.spent_brl:>6.2f} / R$ {tracker.budget_brl:.2f}{' ' * 12}│
│  LLM Cost:   ${cost['cost_usd']:.4f} (~R$ {cost['estimated_brl']:.2f}){' ' * 13}│
│  Audits:     {len(state.audit_results)} realizadas{' ' * 23}│
│  Artefatos:  {len(state.build_report.artifacts) if state.build_report else 0} gerados{' ' * 25}│
│  Erros:      {len(state.errors)}{' ' * 33}│
└─────────────────────────────────────────────────┘
""")

    # Notify Telegram
    telegram.send(
        f"✅ <b>HYDRA Pipeline Completo</b>\n\n"
        f"<b>Modelo:</b> {sr.winner.model_name}\n"
        f"<b>Score:</b> {sr.winner.weighted_score}/10\n"
        f"<b>MRR projetado:</b> R$ {sr.winner.monthly_revenue_potential_day90_brl:,.0f}\n"
        f"<b>Custo LLM:</b> ${cost['cost_usd']:.4f}\n\n"
        f"Relatório salvo em outputs/.",
        urgency="normal",
    )


# ─── Entry Point ───────────────────────────────────────────────────────────────

def main() -> None:
    args = parse_args()
    try:
        state = run_pipeline(args)
        sys.exit(0 if state.phase == HydraPhase.COMPLETE else 1)
    except KeyboardInterrupt:
        print("\n[HYDRA] Interrompido pelo usuário.")
        sys.exit(130)
    except Exception as e:
        print(f"\n[HYDRA] Erro fatal: {e}")
        sys.exit(1)


if __name__ == "__main__":
    main()
