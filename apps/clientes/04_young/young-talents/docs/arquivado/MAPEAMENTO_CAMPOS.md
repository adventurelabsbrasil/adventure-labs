# Mapeamento de Campos: Forms → Firebase → Frontend

Este documento descreve o mapeamento entre os campos do **Google Forms**, do **AppScript** (Firebase) e do **Frontend** (`CANDIDATE_FIELDS` em `src/constants.js`).

## Convenções de timestamps

| Campo | Significado | Origem |
|-------|-------------|--------|
| `original_timestamp` | Data/hora em que a pessoa **se inscreveu no formulário** | Campo "Carimbo de data/hora" do Forms |
| `createdAt` | Data/hora em que o registro foi **criado/importado no Firebase** | Gerado no AppScript (agora) ou no frontend |

**No frontend:** para exibir "Data de cadastro" sempre se prioriza `original_timestamp`; `createdAt` é usado apenas como fallback.

---

## Mapeamento Forms → Firebase (AppScript)

O AppScript usa os **rótulos exatos** das perguntas do Forms em `e.namedValues`. O nome no Forms deve coincidir com a chave à esquerda.

| Rótulo do Forms (e.namedValues) | Campo Firebase | Observações |
|---------------------------------|----------------|-------------|
| Carimbo de data/hora | `original_timestamp` | Timestamp. Não confundir com `createdAt`. |
| Nome completo: | `fullName` | Obrigatório |
| E-mail principal: | `email` | Obrigatório; usado para duplicatas |
| Endereço de e-mail | `email_secondary` | |
| Nº telefone celular / Whatsapp: | `phone` | |
| Data de Nascimento: | `birthDate` | Formatado YYYY-MM-DD |
| Idade | `age` | Inteiro |
| Nos envie uma foto atual que você goste: | `photoUrl` | URL |
| Estado civil: | `maritalStatus` | |
| Se tem filhos, quantos? | `childrenCount` | Número 0–5: 0 = "Não tenho filhos", 1–4 = quantidade, 5 = "5 ou mais". Na exibição use `formatChildrenForDisplay` (compatível com dados legados em texto). |
| Você possui CNH tipo B? | `hasLicense` | |
| Cidade onde reside: | `city` | Normalizada (ex.: Porto Alegre/RS) |
| Formação: | `education` | |
| Nível de escolaridade: | `schoolingLevel` | |
| Instituição de ensino: | `institution` | |
| Data de formatura: | `graduationDate` | YYYY-MM-DD |
| Em caso de curso superior, está cursando neste momento? | `isStudying` | |
| Experiências anteriores: | `experience` | |
| Cursos e certificações profissionais. | `courses` | |
| Certificações profissionais: | `certifications` | |
| Áreas de interesse profissional | `interestAreas` | String normalizada |
| Anexar currículo: | `cvUrl` | URL |
| Portfólio de trabalho: | `portfolioUrl` | URL |
| Onde você nos encontrou? | `source` | Normalizado (LinkedIn, Instagram, etc.) |
| Você foi indicado por algum colaborador da Young? Se sim, quem? | `referral` | |
| Qual seria sua expectativa salarial? | `salaryExpectation` | |
| Teria disponibilidade para mudança de cidade? | `canRelocate` | |
| Referências profissionais: | `references` | |
| Você está se candidatando a uma vaga específica...? | `typeOfApp` | Nome alternativo também aceito |
| Você está se candidatando a uma vaga específica ou apenas quer se inscrever no banco de talentos? | `typeOfApp` | Nome encontrado no formulário atual |
| Campo Livre, SEJA VOCÊ! | `freeField` | |

### Campos definidos apenas no AppScript (não vêm do Forms)

| Campo Firebase | Valor | Descrição |
|----------------|-------|-----------|
| `createdAt` | `agora` no momento da gravação | Data de criação/importação no Firebase |
| `origin` | `"forms_automation"` ou `"batch_script"` | Origem do registro |
| `createdBy` | `"Google Forms Automation"` ou `"Batch Import Script"` | |
| `status` | `"Inscrito"` | Status inicial no pipeline |
| `tags` | `["Novo Inscrito"]` ou `["Importado CSV"]` | |

---

## Mapeamento Planilha (importação em lote) → Firebase

Na função `rowToCandidateObject`, os **cabeçalhos da planilha** devem coincidir com a coluna "Forms" abaixo. O script também usa o cabeçalho `COD` para `external_id`.

- Os mesmos rótulos da tabela "Forms → Firebase" são usados nos cabeçalhos da planilha, quando a planilha for a exportação de respostas do Forms.
- Para planilhas com nomenclatura diferente, ajuste `rowToCandidateObject` (e `headers`) para refletir os nomes das colunas.

---

## Frontend: `CANDIDATE_FIELDS` (constants.js)

O frontend usa `CANDIDATE_FIELDS` para:

- `key`: nome do campo no Firebase / no documento do candidato
- `csvLabel`: nome da coluna no CSV/Sheets/Forms (importação e validação)
- `displayName`: rótulo na interface

A correspondência `csvLabel` ↔ rótulo do Forms deve ser a mesma da tabela acima para evitar perda de dados na importação CSV e na validação.

---

## Campos obrigatórios

Para o fluxo de envio do Forms e para o AppScript:

- **Obrigatórios para envio:** `fullName`. O script não envia se `fullName` estiver vazio.
- **Recomendados:** `email` (usado para verificação de duplicatas). Sem email, o envio ocorre mas a checagem de duplicata é pulada.

No `CANDIDATE_FIELDS`, os campos com `required: true` são: `fullName`, `email`, `phone`.

---

## Observações importantes

### Campos automáticos do Forms
- **"Carimbo de data/hora"**: Campo automático gerado pelo Google Forms. Sempre presente em `e.namedValues`, mas não aparece como item do formulário. Mapeado para `original_timestamp`.

### Campos opcionais que podem não existir
Alguns campos podem não estar presentes no formulário:
- `Endereço de e-mail` → `email_secondary` (se só houver "E-mail principal:", este campo não existe)
- `Idade` → `age` (pode ser calculado ou não estar no formulário)
- `Certificações profissionais:` → `certifications` (pode ter nome diferente ou não existir)
- `Anexar currículo:` → `cvUrl` (pode ter nome diferente ou não existir)

### Títulos de seção
O Google Forms permite criar títulos de seção (SectionHeaderItem) para organizar o formulário. Esses títulos **não são campos de dados** e são automaticamente ignorados pela função `validarMapeamentoCampos()`. Exemplos:
- "Formação e escolaridade"
- "Informações profissionais"
- "Outras informações"

Esses títulos não precisam ser mapeados, pois não contêm dados do candidato.

### Nomes alternativos
Alguns campos podem ter nomes ligeiramente diferentes no formulário. O script tenta ambos:
- `typeOfApp`: Aceita tanto "Você está se candidatando a uma vaga específica...?" quanto "Você está se candidatando a uma vaga específica ou apenas quer se inscrever no banco de talentos?"

- **No AppScript:** execute `validarMapeamentoCampos()` para comparar os itens do formulário ativo com o mapeamento `FORM_TO_FIREBASE` e listar discrepâncias.
- **No frontend:** a página **Diagnóstico** exibe estatísticas de `original_timestamp` vs `createdAt` e avisos sobre campos obrigatórios ausentes nos dados.

---

### childrenCount (Filhos)
- **Valor armazenado:** 0 | 1 | 2 | 3 | 4 | 5 (5 = "5 ou mais").
- **Exibição:** usar `formatChildrenForDisplay` de `src/utils/childrenNormalizer.js` para compatibilidade com dados legados (ex.: "Não tenho filhos.", strings).

---

*Última atualização: conforme implementação do plano de melhoria ATS (diagnóstico, timestamps, mapeamento e childrenNormalizer).*
