# Agendamento mensal (macOS)

O **Cursor não executa cron** nem jobs agendados. Este diretório configura o **launchd** do macOS para rodar o inventário **no dia 1 de cada mês às 08:30**.

## Pré-requisitos

1. Já ter rodado o CLI **uma vez manualmente** (OAuth + `token.json` + `credentials.json` na pasta do tool).
2. `venv` em `tools/drive-sheets-inventory/.venv` com dependências instaladas.
3. Mac **ligado** na janela do agendamento (ou ajustar horário).

## Passos

1. `cp schedule/.env.schedule.example schedule/.env.schedule`
2. **Abra `schedule/.env.schedule` no editor** e preencha **sem `#` na frente**:
   `DRIVE_SHEETS_INVENTORY_SPREADSHEET_ID=...`  
   (Comentários `# ...` no **terminal** geram `command not found: #` se você colar errado.)
3. Teste e instale:

```bash
cd tools/drive-sheets-inventory
bash schedule/run-monthly.sh
bash schedule/install-launchd.sh
```

Se `install-launchd.sh` sair com erro pedindo o ID, o passo 2 ainda está incompleto.

## Alterar dia/hora

Edite `schedule/launchd.plist.template` (`Day`, `Hour`, `Minute`), depois rode de novo `./schedule/install-launchd.sh`.

## Desinstalar

```bash
./schedule/uninstall-launchd.sh
```

Sem `USE_GEMINI=1`, o job mensal **atualiza a lista** e **mantém o texto da coluna Descrição** para planilhas que já existiam (por ID). Planilhas novas ficam com Descrição vazia até você rodar com Gemini manualmente ou `USE_GEMINI=1`.

## Crontab (alternativa)

Se preferir cron em vez de launchd:

```cron
30 8 1 * * /bin/bash /CAMINHO/ABSOLUTO/tools/drive-sheets-inventory/schedule/run-monthly.sh
```

(`crontab -e` — mesmo requisito: Mac ligado.)
