/**
 * Executa 1 ciclo completo (Zazu → Ogilvy → X) usando apps/xpostr/.env.local
 * Uso: cd apps/xpostr && pnpm run cycle:once
 */
import { config } from "dotenv";
import { resolve } from "path";

config({ path: resolve(process.cwd(), ".env.local") });

async function main() {
  const { createServerSupabase } = await import("../src/lib/supabase/server");
  const { runPipelineCycle } = await import("../src/lib/orchestrator");

  const unlock = process.argv.includes("--unlock");
  const supabase = createServerSupabase();
  if (unlock) {
    await supabase
      .from("adv_xpostr_run_state")
      .update({ cycle_in_progress: false, updated_at: new Date().toISOString() })
      .eq("id", "default");
    console.log("cycle_in_progress resetado.");
  }

  console.log("Iniciando ciclo (force intervalo)…");
  const r = await runPipelineCycle(supabase, {
    fromCron: false,
    forceIntervalBypass: true,
  });
  console.log(JSON.stringify(r, null, 2));

  if (r.ok && !r.skipped && "tweetId" in r && r.tweetId) {
    console.log("\nOK — tweet:", r.tweetId);
  } else if (r.ok && r.skipped) {
    console.log("\nPulado:", r.reason);
    process.exitCode = 1;
  } else if (!r.ok) {
    console.error("\nErro:", r.error);
    process.exitCode = 1;
  }
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
