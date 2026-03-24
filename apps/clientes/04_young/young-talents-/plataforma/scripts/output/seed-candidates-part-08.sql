-- Parte 8 de 9 (até 300 linhas por arquivo para caber no SQL Editor)
-- Cole no SQL Editor do Supabase → Run. Depois execute a próxima parte.
-- Tabela permite múltiplos envios por email (cada linha = um envio com timestamp).

INSERT INTO young_talents.candidates (full_name, email, email_secondary, phone, birth_date, age, marital_status, children_count, has_license, city, photo_url, education, schooling_level, institution, graduation_date, is_studying, experience, courses, certifications, interest_areas, cv_url, portfolio_url, source, referral, salary_expectation, can_relocate, professional_references, type_of_app, free_field, status, tags, origin, created_by, original_timestamp)
VALUES
  ('Eloísa Peixoto Gil','elopeixotogil@gmail.com',NULL,'51996045895','2005-01-19',21,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1CKPR-CXDB7CmNjAQkiV8dXBk3BjwCTmW','Arquitetura','Ensino Médio Completo','Cesuca Centro Universitário',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Iniciei em março de 2023 na empresa Dacolonia como auxiliar de produção, logo no mesmo ano, em setembro, recebi a oportunidade de trabalhar na recepção onde trabalho atualmente. 
Tenho com função fazer e receber ligações , internas e externas, atendimento ao público em geral, desde clientes de varejo como atacado também, além do setor estar dentro da loja de fábrica, onde também trabalho. Agendamento de reuniões e contato direto com a diretoria.','Atendimento ao público;
Informática básica;
Além de cursar arquitetura e urbanismo, e já obter conhecimentos em autocad, sketchup e archicad.',NULL,'Arquitetura, Engenharia',NULL,NULL,'Instagram','Não tenho indicação.','R$3.400,00','Não',NULL,'Auxiliar de projetos','Atualmente estudante do quinto semestre de arquitetura e urbanismo, sempre gostei de esbanjar criatividade, me sinto abraçada pelo meu curso. 
Já realizei cursos de atendimento ao público e informática básica.
Tenho conhecimento em autocad, sketchup e archicad, onde gosto e me identifico muito para trabalhar. Não tenho experiência com trabalho na área que estou cursando, busco a primeira oportunidade na Young, sendo prática , criativa, eficiente e compromissada.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-28T23:50:00.000Z'::timestamptz),
  ('Jeferson Barbosa bicca','jeferson.barbosa9337@gmail.com',NULL,'5553997063946','1991-11-30',34,'Casado(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1iqEKBH4R58NNvgagSimJyc915GqjCJuf',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Operador de caixa peruzzo supermercado 
Estoquista perozzo supermercado 
Vendedor lojao total',NULL,NULL,'Comercial',NULL,NULL,'Watts Escola','Nao','1800','Não',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-29T02:39:00.000Z'::timestamptz),
  ('Leticiaveigaschmidt13@gmail.com','Leticiaveigaschmidt13@gmail.com',NULL,'51980142061','1981-04-13',44,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1vPVeRo6bHlQybrkxszTC03Vs9BpIlgsz',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Experiência em contas a pagar, receber, emissão de notas fiscais, emissão de boletos, conciliação, cobrança.',NULL,NULL,'Administrativa',NULL,NULL,'Agência de Empregos','Não','2000','Sim',NULL,'Administrativo','Gosto pela área administrativa, competência e disponibilidade.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-29T15:38:00.000Z'::timestamptz),
  ('Brenda Gisele Mattos Machado','brendamattosmachado@gmail.com',NULL,'51989952841','2005-05-12',20,'Solteiro(a)','0','Não','Alvorada/rs','https://drive.google.com/uc?export=view&id=1KbtuIGynv91q02uOm1d5cEm5q6lzHPk9','Administração de empresas','Ensino Superior Incompleto','Anhanguera','2027-12-28','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Barbara ferreira da Silva 
De 01/2025 até 07/2025 
Auxiliar de RH- controle de ponto, atestado, cálculo dos benefícios, pagamento de contas e recebimento de contas. Contato com fornecedores para orçamentos e pedidos. Auxilo na folha de pagamento, admissão, demissão e férias.

Internet o Sul 
De 08/2024 a 01/2025 
Auxiliar administrativo- atendimento aos clientes no setor administrativo/ financeiro em geral. Envio de boletos, descontos, planilhas de controles de inadimplentes, retenção de cancelamento, atendimento presencial e online ao cliente','Tenho cursos de Excel, fotografia, comunicação, entre outros e estou no 4 semestre na faculdade',NULL,'Administrativa, Comercial, Financeiro, Marketing',NULL,NULL,'Instagram','Não','R$1.700,00','Não',NULL,'Assistente administrativo','Sou Brenda Mattos, tenho 20 anos, sou estudante de Administração e já possuo experiência prática nas áreas administrativa e de recursos humanos. Atuei em empresas como a PricewaterhouseCoopers, SOS Solução em Gestão, Internet O Sul Serviços e, mais recentemente, como auxiliar de RH, o que me proporcionou uma base sólida em rotinas administrativas, organização de documentos, atendimento interno e suporte a processos do setor de pessoal.Ao longo dessas experiências, desenvolvi habilidades como responsabilidade, agilidade, bom relacionamento interpessoal e comunicação não violenta algo que considero essencial para o ambiente corporativo.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-29T15:52:00.000Z'::timestamptz),
  ('Fabio Marcelo Walber','fmwalber@hotmail.com',NULL,'994811300','1976-09-14',49,'Solteiro(a)','0','Sim','Taquara/rs','https://drive.google.com/uc?export=view&id=1wgApmb8DtxEsMl8RuDPte70vhwBp_3Ia','Administração de empresas','Ensino Superior Completo','Anhanguera Unopar','2021-09-30','Sou formado','Atuar nas áreas Comercial e Administrativa como Consultor de Negócios,
Gerente de Relacionamento ou Supervisor Comercial, aplicando minha
experiência em vendas de produtos e serviços, atendimento ao cliente,
prospecção e gestão de equipes para gerar resultados expressivos e promover a
satisfação dos clientes.','Gestor Comercial',NULL,'Administrativa, Comercial, Novos Negócios',NULL,NULL,'Instagram','Não','5.000,00','Sim',NULL,'Comercial','Tenho experiência, conhecimento e habilidades na área comercial e administrativa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-29T17:23:00.000Z'::timestamptz),
  ('William César Perassolo da Paixão','williamcesar855@gmail.com',NULL,'55991520709','1996-06-24',29,'Solteiro(a)','0','Sim','Ijuí/rs','https://drive.google.com/uc?export=view&id=1-y0Yjxh-m_yCKf5YV7uND5JXkHXw9O05','Recursos humanos','Ensino Superior Completo','Unopar','2021-07-15','Sou formado','1) Farias e Cavalheiro - Logística 
2) Lider administrativo 
3) 10/09/2023 - 13/07/2025
4) Estava sempre em contato com as indústrias, o fechamento e
acompanhamento de processos ligados as indústrias, controle de divergências, apoio aos
funcionamentos administrativos da equipe, elaboração de relatórios, apoio a gerência,
organização dos fluxos internos de funcionamento, envio de relatórios de performance da
área, mapeamento e auditoria das atividades com eficiência e assertividade, criação de
relatórios para medir performance das áreas internas e externas. Apresentação de
melhorias, roteirização de entregas, apoio aos motoristas, validação de acertos de viagens,
In-Full, On-time, Leadtime, movimentação de frota diária, controle de pessoal, estrutura,
aplicação de clima organizacional, treinamentos e demais atribuições.','Sou formado em RH, tenho cursos voltados a área, cursos de perícia, falo inglês, espanhol.',NULL,'Administrativa, Financeiro, Novos Negócios',NULL,NULL,'Instagram','Não','À combinar','Sim','Marcelo - (55) 99118-1141','Vaga dentro do setor administrativo','Sou um profissional bastante dinâmico, responsável, atencioso e dedicado. Estou aberto
para novos aprendizados, preparado para o desafio de exercer novas funções e
atividades com flexibilidade. Procuro estar sempre atualizado, tendo como intuito o
aprimoramento pessoal e profissional. Possuo bom relacionamento interpessoal e
sempre viso respeitar as normas e diretrizes da empresa.
Colaborar em um ambiente de trabalho onde possa colocar em prática meus
conhecimentos em favor da instituição na qual viso integrar, objetivando sempre o
benefício e o crescimento da organização e o aprimoramento profissional.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-29T20:56:00.000Z'::timestamptz),
  ('Martin Maciel Gil','martinmaciel99@gmail.com',NULL,'55981470553','1999-03-24',26,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1mXPI-DkcWln3j5FRphzZq9bXiAzkAqfx','Engenharia Civil','Pós-graduação Completa','URCAMP (Centro Universitário da Região da Campanha)','2021-03-16','Sou formado','19ª CROP (Coordenadoria Regional de Obras Públicas - RS)

Cargo: Analista de Engenharia 
Período: de março a novembro de 2021
Atividades desempenhadas: Responsável pela elaboração de laudos de vistoria, relatórios técnicos fotográficos, memoriais descritivos e projetos executivos de prédios públicos (escolas, prédios administrativos, entre outros). Participação na orçamentação de obras públicas, através do levantamento de custos e cronograma de execução. Realização de vistorias periódicas para acompanhar a execução das obras, assegurando a qualidade e o cumprimento do cronograma físico-financeiro.

Cargo: Estagiário em Engenharia Civil
Período: de janeiro de 2019 a fevereiro de 2020
Atividades realizadas: Auxílio na elaboração de laudos técnicos, memoriais descritivos, relatórios técnicos fotográficos e projetos técnicos para edificações públicas, como reformas, ampliações e recuperações estruturais. Colaboração no planejamento, orçamentação, vistoria, medição e acompanhamento técnico de obras em prédios públicos, garantindo a execução conforme os projetos e cronogramas estabelecidos.
______________________________________________________________________________
Ampliação do Centro Hospitalar Santanense

Cargo: Estagiário em Engenharia Civil
Período: junho de 2020 a dezembro de 2020
Atividades desempenhadas: Acompanhamento técnico da obra de ampliação do hospital, assegurando o cumprimento dos prazos e qualidade. Realização periódica de medições para o controle de execução, conforme o cronograma estabelecido pela equipe. Suporte à equipe em demandas diárias do canteiro de obras. Elaboração de relatórios técnicos detalhando o andamento da obra e eventuais ajustes necessários.','Engenheiro Civil com Mestrado em Sistemas Estruturais e Construtivos, experiência em obras públicas, projetos executivos e acompanhamento técnico de edificações. Atuei na elaboração de laudos, memoriais descritivos, orçamentos e projetos executivos, com foco em soluções técnicas eficientes e sustentáveis. Fluente em espanhol e com inglês avançado,  destaco-me pela facilidade no trabalho em equipe e pelo compromisso com o aperfeiçoamento profissional contínuo.',NULL,'Arquitetura, Comercial, Engenharia',NULL,'https://drive.google.com/open?id=1hvK6AjRDJsUKch-q6JCnBtO5ul92kLaK','Instagram','Não','4000','Sim','19ª CROP - 55 3242-1603','Engenheiro Civil','Algumas da habilidades que destaco:
Domínio do pacote office (Excel, Power Point, Word);
Domínio dos softwares Autocad e Eberick;
Familiaridade com os softwares Revit e SketchUp;
Inglês avançado e espanhol fluente;
Gosto pela prática de esportes.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-29T21:10:00.000Z'::timestamptz),
  ('Erika Tone','erika.tone@hotmail.com',NULL,'51983227382','1988-08-11',37,'União estável','2','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=18F_d95PJyyHeoGQGPOS0U8sWtX7wwDQk','Administração de empresas','Pós-graduação Completa','Uniasselvi','2024-08-01','Sou formado','Geap Autogestão em Saúde - Assistente Técnico -  desde 08/2017 - atual 
Faturamento: Atuação nos Processos de Auditoria Administrativa pré e pós, com revisão de contas e análise e recurso de Glosas; cobrança e revisão de honorários médicos; faturamento e processos hospitalares de convênios; 
Conhecimento das revistas SIMPRO e BRASÍNDICE; tabelas Unidas, CBHPM, AMB (92, 96 e 99);
análise de arquivos XML;
recebimento, conferência, protocolo e distribuição de guias para auditoria, faturamento dos prestadores de serviço nas regionais, mediante conferência de documentação e/ou faturamento enviado pelo prestador; separação e encaminhamento das guias ao setor de Auditoria; registro de dados no sistema, separação e envio de documentação para arquivo. Atuar nas demais rotinas correlatas ao cargo e setor.
Coordenadoria de Relacionamento: atendimento direto ao cliente, análise e ajustes de contrato, negociação de valores, inclusões de serviços, reajustes e renovações de contrato, cadastro de novos prestadores na rede, reuniões de alinhamentos e treinamentos do sistema próprio da Geap.

Walmart do Brasil - assistente de processos I e  II - 03/2015 a 08/17  - realizei toda análise quantitativa via sistema de inventários das lojas, análise de números e apoio direto da gerência estadual no Backoffice.','Formada em Administração de Empresas, pós graduada em Gestão Hospitalar e cursando uma nova Pós Graduação em Gestão Estratégica.',NULL,'Administrativa, Financeiro, Novos Negócios',NULL,NULL,'Instagram','Não','7000','Não','Tais Shmidke - ex chefe na Geap Saúde','Quero inscrever-me no banco de talentos da Young!','Sou filha de pai japonês e mãe uruguaia, o japonês sei o básico mas o espanhol é avançado.
Fiz trabalho voluntário na ONG 101 vira latas
Fiquei 3 meses em Barcelona em 2014 
Já morei no Japão quando criança','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-29T21:40:00.000Z'::timestamptz),
  ('Gabrielli Marques','gabriellialmeida15@gmail.com',NULL,'51984786054','2001-12-23',24,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1nscVb5iC5226I5lT5zL-Kc3xSy6PICVr','Administração de empresas','Ensino Superior Incompleto','Uniasselvi','2027-02-10','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Empresa: avis e promoções Ltda 
Data: 24/08/2021 a 12/11/2021

Empresa Plaza São Rafael 
Data: 29/11/2021- atualmente','Curso senac jovem aprendiz, curso mercados e trabalho educx,  cursos complementares uniasselvi e cursando curso de Excel Santander, atualmente trabalho clt no plaza São Rafael na área administrativa.  Estou a procura de trabalho para complementar a renda que seja a noite após as 17 ou finais de semana',NULL,'Administrativa',NULL,NULL,'Instagram','Não','Depende do horário de trabalho e dias.. então não tenho como definir nesse momento','Não','Daniela gestora plaza São Rafael do meu setor 
Número: 51986233554','Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa dedicada, que está sempre disposta a aprender. Tenho pontualidade, assiduidade e acredito que posso contribuir de forma positiva para a empresa','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-30T15:51:00.000Z'::timestamptz),
  ('Camila Oliveira de Castro Perego','camilacastro1195@gmail.com',NULL,'51995438880','1995-05-11',30,'Casado(a)','0','Não','Viamão/rs','https://drive.google.com/uc?export=view&id=1eStpLfqPocM-fd97lpTSw4_qLc5w8mDY','Análise e Desenvolvimento de Sistemas','Ensino Superior Completo','Centro Universitário Ritter dos Reis/UNIRITTER','2023-12-20','Sou formado','Tribunal de Justiça do Rio Grande do Sul, Estágio, 10/2021 até 04/2023, Criação de conteúdo e alterações do site do TJRS.',NULL,NULL,'Administrativa, Engenharia',NULL,NULL,'Instagram','Não.','1500','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Estou em busca de uma oportunidade para me desenvolver como profissional. Sou uma pessoa muito empenhada no que me disponibilizo para fazer e gostaria muito de mostrar o quanto posso agregar ao time de vocês.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-30T16:14:00.000Z'::timestamptz),
  ('Júlia Martins Soares','juliamsoares1@gmail.com',NULL,'51997570971','2003-08-20',22,'União estável','0','Não','Rio Grande/rs','https://drive.google.com/uc?export=view&id=1J1SMWvaGt6Hd6uB5sd64K8YkusVy22DN','Análise e Desenvolvimento de Sistemas','Ensino Superior Incompleto','Instituto Federal do Rio Grande do Sul - Campus Rio Grande','2027-12-27','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Prefeitura Municipal de Osório
  Estágio no setor da Procuradoria do Município de Osório - 30h semanais
  Funções: Atendimento ao público, atender telefone, redigir memorandos, ofícios e
  realizar tarefas no sistema próprio.
  Início: 16/03/2020   Fim: 14/09/2021

  11ª Coordenadoria Regional do Estado do Rio Grande do Sul - Osório
  Estágio no setor de Núcleo de Tecnologia Educacional - 30h semanais
  Funções: Atendimento ao público, atender telefone e realizar tarefas de suporte de Software e Hardware.
  Início: 01/08/2022   Fim: 28/11/2022

  Prefeitura Municipal de Osório
  Estágio no setor de Patrimônio - 30h semanais
  Funções: Atendimento ao público, atender telefone e realizar tarefas no sistema próprio, levantamento de bens para o inventário anual, etiquetamento de bens, escrever e analisar relatórios,  além de dar suporte em Hardware e Software.   
  Início: 29/11/2022    Fim: 11/04/2024

Bolsista CNPq no Projeto de Pesquisa: “A dobradura de matemática potencializa o pensamento computacional.” - 16h semanais
Modelo: Home Office - Início: Janeiro/2024 Fim: Julho/2024
Orientadora: Profª. Drª. Aline Silva De Bona

  Polícia Civil de Osório
  Estágio no setor de Cartório Distribuidor - 25h semanais
  Funções: Redigir ofícios, realizar tarefas no sistema próprio, atender telefone, suporte de hardware e  software.
  Início: 11/05/2024    Fim: 08/08/2024

Escola Estadual de Educação Básica Prudente de Morais e Escola Estadual de Ensino Fundamental Prof Milton Pacheco
Contrato Temporária de Secretária de Escola (Cargo: Assistente Educacional - Administração Escolar) - 40h semanais (20h em cada Escola)
ID Funcional: 5012325/01
Funções: Organizar, sistematizar, registrar e documentar todos os processos que ocorrem nas instituições de ensino.
Início: 09/08/2024   Fim: 10/02/2025','Estou me graduando em Análise e Desenvolvimento de Sistemas pelo Instituto Federal do Rio Grande do Sul - Campus Rio Grande e também faço curso Técnico em Multimeios Didáticos EaD, também pelo Instituto Federal do Rio Grande do Sul - Campus Osório. Possuo vários cursos na área administrativa e de tecnologia, além de experiências comprovadas em estágios, tanto na área administrativa, quanto de TI. Meu último emprego foi como Assistente Educacional - Administração Escolar, pelo Governo do Estado do Rio Grande do Sul, onde atuei por 6 meses. Tive que pedir demissão pois me mudei para Rio Grande porque meu noivo foi nomeado em concurso público. Desde então, venho me qualificando e procurando novas oportunidades.',NULL,'Administrativa, Estágio, Engenharia',NULL,'https://drive.google.com/open?id=1sT021XNNaFcxLb0F0NQ4LYb6V7LK8kkn, https://drive.google.com/open?id=14d0IrXI0CS_OjQhJP6Zvn3BU-6tWv4Rp, https://drive.google.com/open?id=1rxI2frgaJ4rfAGVc_BJ5MG3OP6kc5eHv','Instagram','Não','3.500,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Possuo domínio do Canva, meu inglês para leitura é intermediário, já fiz trabalho voluntário para o Rotaract e tenho um artigo científico publicado e outro que está indo para publicação.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-31T22:45:00.000Z'::timestamptz),
  ('Elaine Priscila Leopoldo Silva','prinivi242017@gmail.com',NULL,'51998960455','1990-06-24',35,'Solteiro(a)','2','Não','Viamão/rs','https://drive.google.com/uc?export=view&id=1ozoSwbuMTw9j7jxlm9bRPvPgl8dy8KO8','Recursos Humanos','Ensino Superior Incompleto','Universidade Cesumar- Unicesumar','2025-11-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','FNX SOLUÇÕES DE SEGURANÇA- estagiária no período de 17/02/25 a 02/05/25 ( contrato não concluído por problema na contratação com a faculdade), auxiliar no abastecimento de veículos no TicketLog, cadastro de notas fiscais no Service e cadastro de novos funcionários no Metadados.','Curso técnico de Gestão Financeira concluído',NULL,'Administrativa',NULL,NULL,'Instagram','Não','R$1.800,00','Não',NULL,'Auxiliar administrativo ou recursos humanos',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-01T09:56:00.000Z'::timestamptz),
  ('Lisiane Tentardini Garrido','lisigeronto@yahoo.com.br',NULL,'51981281725','1974-01-04',52,'Casado(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1UIU4pt8Bgtq8L7NiLsd0NwMAddnSkL9N','Gestão comercial','Ensino Superior Completo','Unisinos','2025-09-01','Sou formado','Predial Redoma, administradora, desde 1/2023, cargo de assistente administrativo/comercial, tudo que diz respeito à rotinas administrativas, e backoffice comercial, até o momento.','Treinamento de desenvolvimento pessoal',NULL,'Administrativa, Comercial, Novos Negócios',NULL,NULL,'Instagram','Ainda não conheço meus futuros colegas.','2.500,00','Sim','Consultiss- Ivanildo- 51984163192','Vaga administrativa','Organização, disciplina e mãe de pet me definem.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-01T14:23:00.000Z'::timestamptz),
  ('Júlia Cardoso Würdig','juliaawurdig@gmail.com',NULL,'53999467546','1994-08-24',31,'Casado(a)','0','Sim','Pelotas/rs','https://drive.google.com/uc?export=view&id=1IUy0z08vUIxVhH-6mU2koPuXZ41q9b8a','Direito e técnico em edificações.','Pós-graduação Completa','Universidade Federal de Pelotas','2019-01-19','Sou formado','Porto5 Investimentos Imobiliários – junho de 2022/maio 2024.
Cargo: Analista jurídico de Licenciamento e Aprovações.
Principais funções: elaboração e acompanhamento de processos administrativos de unificações, desmembramentos e retificações de imóveis. Atuação em órgãos públicos, Tabelionatos e Registros de Imóveis. Due diligence, elaboração e revisão minutas de escrituras públicas e de contratos de permuta, compra e venda, prestação de serviços e sociais. Organização, protocolo e acompanhamento de incorporações. Participação em processos de integralização de capital, geração de guias de ITBI e questões relacionadas a bens públicos da União – SPU. Acompanhamento de títulos na plataforma SIENGE e solicitação e protocolo na plataforma SAEC. Protocolo de abertura de inscrições municipais, cancelamento de registro INCRA e autorizações junto ao COMAER.

Mário Filho e Advogados Associados – janeiro de 2019/ em junho de 2023.
Cargo: Advogada associada.
Principais funções: Atendimento de clientes, elaboração de petições iniciais e acompanhamento de processos em curso. Recursos ao Tribunal de Justiça e aos Tribunais Superiores. Realização de audiências, assembleias de condomínio e reuniões diversas. Elaboração de contratos de prestação de serviços, locação e comodato. Participação em tomadas de decisão da empresa e período com estagiários sob supervisão. Atuação concentrada na esfera cível, com foco em direito condominial, municipal, tributário e familiar. Utilização e domínio de plataformas de processos eletrônicos (EPROC, PPE e PJE), de cálculos (Abbacus) e de controle interno (LegalOne).','Sou advogada e técnica em edificações, formada pelo UFPel e pelo IFSul. Tenho especialização em Direito Imobiliário, trabalhei durante 2 anos em uma grande construtora e incorporadora da região sul do RS. Atuei em diversas incorporações no RS e em SC. Tenho cursos de curta e média duração focados em contratos, direito imobiliário, gestão e LGPD.',NULL,'Licenciamentos, Novos Negócios',NULL,NULL,'Instagram','Não','R$4.000,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Meu nome é Júlia, tenho experiência com Autocad, Sienge e Abbacus, possuo inglês intermediário, consigo ler, ouvir e falar bem, mas tenho dificuldade na escrita. Adoro cozinhar, o que me levou a fazer o curso de cozinheiro profissional do SENAC, tenho uma cachorra e uma gata e uma das coisas que mais gosto de fazer é tomar mate e assistir jogos de vôlei. Em um ambiente de trabalho gosto de manter as coisas organizadas e prezo muito pela boa relação com os colegas. Trabalhar em equipe pra mim é ótimo, mas também gosto de ter um espaço para elaborar sobre as minhas responsabilidades individuais.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-01T16:43:00.000Z'::timestamptz),
  ('Rodrigo Cecconello Preto','rcpreto1@gmail.com',NULL,'51999359258','1990-04-24',35,'Casado(a)','1','Não','Capão Da Canoa/rs','https://drive.google.com/uc?export=view&id=1_BZDdWtknVpRmzMRNx9OjHGCUo-WScNR','Administração de empresas','Ensino Superior Completo','PUCRS','2017-08-01','Sou formado','Já atuei em diversas empresas, de vários ramos, em todas elas na área comercial. 
Atualmente sou corretor de imóveis em Capão da Canoa e Xangri lá','Intercâmbios para Irlanda e Itália',NULL,'Administrativa, Comercial, Marketing, Novos Negócios',NULL,'https://drive.google.com/open?id=1HJiHgQ8K7nahAORrOClVyaOW0agY9UZd','Instagram','Não','Fixo 3.000,00 mais variáveis e benefícios','Sim',NULL,'Comercial','Sou o Rodrigo Preto, natural de Capão da Canoa. 
Morei em Porto Alegre de 2005 a 2018 e trabalhei em diversas empresas dos mais variados ramos, atuando em sua grande maioria na área comercial. 
Fiz intercâmbio para a Irlanda e também para a Itália. 
Acabei voltando da Itália em função da pandemia e retornei a Capão da Canoa. Atualmente sou corretor de imóveis, gosto muito dessa área, tudo que envolve a construção civil. 
Me coloco a disposição para uma possível vaga, nas áreas, comercial, vendas, MKT. 
Acredito que com minhas experiências e meus relacionamentos posso ajudar a Young a atingir seus resultados. Estou disposto a aprender e a encarar novos desafios. Busco crescimento pessoal e profissional. 
Obrigado','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-01T19:58:00.000Z'::timestamptz),
  ('Natali Silveira dos Santos','natalisilveiradossantos@yahoo.com.br',NULL,'51999550876','1991-07-27',34,'Solteiro(a)','0','Não','Alvorada/rs','https://drive.google.com/uc?export=view&id=1YuuvTT5IZe1aRh9wtfPTvPJcsoz9_zAK','Administração de empresas','Ensino Superior Completo','Iergs','2021-10-23','Sou formado','Casa das Meias Natália Ltda 
Gerente administrativa 
01/01/2017  até 13/06/2025
Gerenciamento de equipe, rotinas administrativas , financeiras e fiscais.
Mais de 8 anos de experiência na área administrativa.','Noções Contábeis
Rotina de Pessoal
Gestão de Pessoas',NULL,'Administrativa, Financeiro',NULL,NULL,'Instagram','Não','2500','Sim','Casa das Meias Natália Ltda 
Fone: 30443795','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-01T20:23:00.000Z'::timestamptz),
  ('Glauber Marques silva','mglauber39@gmail.com',NULL,'38992510921','1997-09-21',28,'Solteiro(a)','0','Sim','Pirapora-mg','https://drive.google.com/uc?export=view&id=1kFFpS8NDeK90efE649E0fWxJ0vAC0lyU','Arquitetura','Ensino Superior Completo','UNIFIPMoc','2025-07-30','Sou formado','Flávia Giordana, Silvana Soares trabalhei com desenvolvimentos de projetos arquitetônico, estudos de lugar.','1 simpósio brasileiro território, cidade e arquitetura. Empreendedorismo e inovação.',NULL,'Arquitetura',NULL,NULL,'Agência de Empregos','Não','Acima de 3.000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Gosto de cozinha, estudando espanhol, gosto de fazer trabalhos missionário e voluntário.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-01T21:58:00.000Z'::timestamptz),
  ('eduarda roberta dos santos braga','eduarda.braga2@icloud.com',NULL,'51992062137','2004-04-29',21,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1YF-MvFBPcoFSgpUbjvUJqJ5sVnJIsNRU',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Fundação tênis, atuei como jovem aprendiz na área da tecnologia, iniciei no ano de 2023 e sai no ano de 2024 por conta da enchente. Logo em seguida no ainda de 2024 fiz alguns dias de treinamento em uma imobiliária, não continuei pois não tinha salário fixo. este ano tive uma breve experiência no telemarketing na empresa Audac, entrei em maio e saí no mês seguinte por motivos pessoais.','Curso Marketing digital, informática básica',NULL,'Administrativa, Marketing',NULL,NULL,'Instagram','não','até 1900','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Me chamo eduarda, tenho 21 ano e atualmente me encontro desempregada, estou a procura de uma oportunidade para voltar ao mercado de trabalho pois nos últimos tempos não estou conseguindo nada! sou bastante comunicativa, proativa e com vontade de aprender e crescer, hoje em dia não está sendo fácil arrumar emprego e gostaria de ter a oportunidade para trabalhar na empresa, sou bastante dedicada naquilo que eu faço e prometo não decepcionar. Futuramente quero iniciar na área Administrativa para poder oportunidades, espero muito ter esta oportunidade na empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-02T00:16:00.000Z'::timestamptz),
  ('Nathiele Eduarda de Oliveira Teixeira','nathiele.edu.teixeira@gmail.com',NULL,'51981666205','2000-11-04',25,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=19sDZwxXOJxh-jvhc0WvokgXvsCe3qaSA','Administração de empresas','Ensino Superior Incompleto','Unisselvi',NULL,'Não, no momento pausei/parei por um período.','Hospital Sao lucas da Puc - Auxiliar administrativo I, gerenciar equipe, análise de indicadores, pedido de compras, Auxiliar nas demandas do setor, conferência de documentação, digitalizao, armazenamento de guarda externa.','Técnico em Administração completo',NULL,'Administrativa',NULL,NULL,'Instagram','Nao','2300, mas aberto a propostas','Sim',NULL,'Administrativo ou RH',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-02T01:51:00.000Z'::timestamptz),
  ('Hildara Moraes Bitencourt cezimbra','darabitencourt2@gmail.com',NULL,'51984914742','1996-10-30',29,'Solteiro(a)','2','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1fGNCQ2U0vDwmJ3z0EpEtZG3DQKdivQFO',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Técnico em administração',NULL,NULL,'Administrativa, Financeiro, Novos Negócios',NULL,NULL,'Instagram','Não','2000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-02T03:54:00.000Z'::timestamptz),
  ('Natali Silveira dos Santos','natalisilveiradossantos@yahoo.com.br',NULL,'51999550876','1991-07-27',34,'Solteiro(a)','0','Não','Alvorada/rs','https://drive.google.com/uc?export=view&id=1VAaEGqnFMGXAmgF6ejTbJNx4V717gAle','Administração de empresas','Ensino Superior Completo','Iergs','2021-10-23','Sou formado','Casa das Meias Natália Ltda 
Gerente administrativa 
De: 01/01/2017 a 13/06/2025
Gerenciamento de equipe, contas á pagar , Recursos Humanos (admissão/demissão),férias, contracheques,
Elaboração de relatórios fiscais junto ao Sefaz.','Rotinas de Pessoal 
Gestão de Pessoas',NULL,'Administrativa, Financeiro',NULL,NULL,'Instagram','Nao','2500','Sim','Casa das Meias Natália Ltda','Recursos Humanos','Sou formada em Administração de empresas,  tenho mais de 8 anos de experiência na área administrativa e processos burocráticos.Busco uma nova oportunidade nas administrativas e afins ,pois preencho os requisitos da vaga.Sou comunicativa, organizada, pontual e responsável! Desejo muito uma oportunidade.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-02T15:26:00.000Z'::timestamptz),
  ('Junior Wilian da Silva Silveira','juniorwiliansilveira19651@gmail.com',NULL,'51999594819','1988-05-30',37,'Casado(a)','2','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1VQZcevgMQyLOqafKfWlmKr-DBhoX9P4n','Mecânica industrial, Gestão de Pessoas','Ensino Médio Completo','CIMOL, Taquara - 2024','2024-09-06','Sou formado','BC2 Construtora S.A. – GRUPO GPS – 12/2024 a 08/2025
A BC2 Construtora é uma empresa especializada na prestação de serviços de manutenção, conservação, 
obras e ITS em rodovias, aeroportos e ferrovias. 
Supervisor Operacional: Liderança e gestão de equipes; Controle e acompanhamento de gastos 
operacionais/contratuais; Supervisionar a evolução das atividades diárias executadas pelas equipes na frente 
de serviço; gerenciamento de riscos e qualidade; processos administrativos, gestão do contrato; Orçamento e 
cronograma; foco em estratégias de redução de custos; 

Magna Cosma International – 03/2018 a 03/2024 
Empresa Cosma fornece uma gama abrangente de soluções de carroceria, chassis e engenharia para clientes 
globais automotivo. 
Operador Líder: Gestão de produção planejada pelo PPCPM, conduzir reuniões diárias; desenvolvimento de 
pessoas e treinamentos operacionais; distribuição de MO de acordo com a necessidade; manter ordem e 
limpeza do local de trabalho; informar condições inseguras a superior; alertar riscos de segurança a equipe; 
ser um bom exemplo a equipe; execução do trabalho padronizado; cultura 5S e visão de melhorias 
constantes; 

Brasil Recursos Humanos (temporário na Magna) – 12/2017 a 02/2018 
Operador de Produção: Alimentador de linha de Produção, montagem de peças na linha de produção; 
organização conforme 5S; seguimento de procedimentos de segurança, qualidade e produtividade.','Gestão de Pessoas e Liderança, PUSA, 07/2025 
Tean Leader Concepta, Magna Cosma SAP, 2023 
Brigada de Incêndio, Marconi Soluções em SST, 2023 
Brigada de Incêndio, TransVias, 2021 
NR12 CIPA atuante durante 2 anos consecutivos.',NULL,'Administrativa',NULL,NULL,'Agência de Empregos','Não','R$4.830,00','Sim',NULL,'Supervisor Administrativo (Vaga 8569625)','Então...

Sou casado, Cristão, pai de duas meninas, uma de 11 anos e outra no de 51 dias.
Moro em Santo Antônio desde o nascimento, frequentei escolas locais e sempre trabalhei na região na parte operacional.

A 8 anos comecei uma caminhada em busca de conhecer a Cristo, que entre tantos outros exemplos ao meu ver, ELE é o maior exemplo de liderança, onde busquei transformação e compreensão de como reescrever minha vida com base naquilo que acredito até os dias de hoje.
E isso me levou a buscar ler muito sobre a Escritura e livros que são coerentes sobre.
Minha família e eu congregamos em uma igreja local onde também possuímos o privilégio de servir.
Amo ter todos os dia um tempo de leitura junto com meu chimarrão pela manhã e elevar meus pensamentos para aquilo que aprendi.

Em 2019 fui instigado a retomar os estudos para me aperfeiçoar e desenvolver uma carreira na área de Liderança.
Atuei na multinacional Magna em Santo Antônio por mais de 6 anos, após precisei me ausentar por problemas de saúde.

Em seguida iniciei na Escola Técnica Plenarius como Diretor de Execuções dos cursos, onde atuei por 9 meses, e precisei sair devido excesso de viagens.

Após trabalhei na BC2 onde supervisionava a operação de manutenções das rodovias BR101, BR 290 e BR448.
Minha saída da BC2 ocorreu devido a alteração total do time de gestão da execução do contrato, ou seja, a BC2 encerrou o contrato disponibilizando para outra empresa, conforme divulgado na RBS.

Vivo com base na verdade e transparência, estou a disposição pra esclarecer qualquer duvida.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-02T16:25:00.000Z'::timestamptz),
  ('Enrique Leal da Silva','enriqueleal94@gmail.com',NULL,'55996617670','1994-08-03',31,'Casado(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1zKsVe9_17yyTX8PjNZU873HNkk7deMpk','Engenharia Mecânica','Pós-graduação Completa','UNIPAMPA','2019-08-10','Sou formado','1) CFC Alegrete 2) Auxiliar Administrativo 3) início 16/02/2022 - atual 4) Responsável por atender clientes, orientar sobre o funcionamento dos processos de carteiras de habilitação. Organização, controle e arquivamento de documentos administrativos em geral. Atuando no setor financeiro e agendamento de aulas, fazendo a gestão dos horários dos instrutores de trânsito.

1) Instituto Mix de Profissões 2) Monitor Lab. de Informática 3) 3/11/2020 até 12/02/2022 4) Responsável por atender os alunos dos cursos interativos, orientar sobre o funcionamento do sistema de cursos e sanar dúvidas. Garantir o suporte e a organização do laboratório de informática, manutenção dos computadores
e do sistema de aulas. Controle da listagem de todos os alunos dos cursos interativos, acompanhamento das atividades de forma remota (EAD) e de aulas presenciais.

1) Bola cheia Society 2) Atendente Comercial 3) 08/12/2018 até 01/11/2020 4) Responsável por atender clientes com horário reservado da quadra esportiva, para a venda de bebidas. Garantir o
suporte necessário aos clientes, esclarecendo dúvidas e registrando reclamações. Captação e retenção de clientes, identificação de melhorias e controle de fluxo de caixa. Principais Resultados Obtidos: Implantação de um novo sistema de fluxo de caixa e aumento de clientes através de
campanhas de marketing e mídias sociais inovadoras.


1) CAAL 2) Estagiário de Engenharia 3) 20/08/2018 até 22/11/2018 4) Atuação na elaboração de projetos mecânicos,
acompanhamento do setor de Manutenção Industrial, adequação da indústria a NR 12 e auxílio na elaboração de laudos técnicos. Leitura e interpretação de desenhos técnicos, esboços, ilustrações técnicas, modelos e especificações. Organização, controle e arquivamento de documentos técnicos e/ou mecânicos em geral.
Principais Resultados Obtidos: Adequação de um projeto de 4 silos pequenos conectados para o depósito de matéria-prima da fábrica; Colaboração em laudos técnicos sobre as adequações da NR 12 já realizadas no setor de arroz; Projeto de uma nova entrada para a fábrica de rações com guarda corpo adequado a NR 12; Criação do projeto de esteira transportadora com proteções adequadas a NR 12.','Sou formado mestre em engenharia, pela Unipampa e graduação em engenharia mecânica também pela Unipampa. Hoje atuo como auxiliar administrativo no CFC alegrete, no setor financeiro e de agendamento de aulas teóricas e práticas, atuo também na gestão de trabalho dos 20 instrutores.',NULL,'Administrativa, Financeiro, Engenharia',NULL,NULL,'Facebook','Não','R$4.500,00','Sim',NULL,'Coordenador Administrativo','Capacidade de produzir e relatar
dados administrativos, conhecimento
de metodologias produtivas nas
indústrias. Competência de
comunicar-se de forma eficaz com os
stakeholders e superiores, a fim de
facilitar uma tomada de decisão ideal.
• Formação Green Belt Six Sigma
com foco na melhoria contínua
dos processos produtivos a partir de
ferramentas de qualidade.
• Habilidades de comunicação
interpessoal, gestão de pessoas e da
produção, administração de
conflitos e resolução de problemas.
Percepção crítica e analítica para
análise de melhoria de
procedimentos comerciais.
• Vencedor em 2 anos do Desafio
Modelo de Negócio,
proporcionado pelo Pampatec.
• Realização de intercâmbio
cultural e estudo para a Argentina
(2014).','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-02T16:51:00.000Z'::timestamptz),
  ('Meriane Chiodelli','merianechiodelli@gmail.com',NULL,'51997723732','1988-05-09',37,'Casado(a)','1','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1KiiwSpUvIvt_WGBXhDL6dN_tBKJlwYlO','Administração de empresas','Pós-graduação Completa','IPA METODISTA','2015-12-18','Sou formado','Stateimob
Contrato PJ
Gerente administrativo/ locação 
Início 2024
Estamos vendendo a carteira e vamos encerrar as atividades.','Pós graduada em:
Projetos
Gestão estratégica de pessoas
Gestão financeira estrategica',NULL,'Administrativa, Financeiro',NULL,'https://drive.google.com/open?id=1yEV-sd9TePP6tEoT49L2ORBs3IRHuLsx','Google','Nao','5800','Sim','Gerson Bratkowiski - sócio','Quero inscrever-me no banco de talentos da Young!','Participo de muitos trabalhos voluntários, sou Umbandista, amo passear com a familia, estar ao ar livre. Sou responsável, gentil, comprometida e as pessoas costumam dizer que estou sempre bem humorada e tranquila. Eu acredito que em evolução continua, assim como a busca pelo conhecimento.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-02T16:52:00.000Z'::timestamptz),
  ('Lohaine Midiã Besson Batista','lohaine.besson@gmail.com',NULL,'41988811045','1999-08-10',26,'Solteiro(a)','0','Sim','Pelotas/rs','https://drive.google.com/uc?export=view&id=1xhojo2aGzzmArEp6tSFotWEKPDQpJwXZ','Expressão Gráfica','Pós-graduação Completa','Universidade Federal do Paraná','2022-09-10','Sou formado','1 - (2020) Nerdstore: Trabalhei inicialmente com a  área de criação e social media, mas desenvolvi meu trabalho pra minha área de interesse em modelagem 3D utilizando sketchup e renderizações, na criação de cenários.

2 - (2021 - 2024) Desmobilia: Encarregada no setor de projetos de interiores, trabalhando com modelagem de mobiliários, peças 3D e suporte a fábrica no desenvolvimento de produtos. 

3 - (2025) Funcional: Colaboradora no setor de projetos, no desenvolvimento de projetos de interiores, suporte a arquitetos, utilizando softwares específicos para o desenvolvimento de produtos e mobiliários.','Sou Projetista, formada em Expressão Gráfica pela Universidade Federal do Paraná, um curso que une conceitos de Geometria, Modelagem 3D com a Arquitetura, Engenharia e áreas de projeto. Realizei a especialização em Arquitetura de Interiores em 2024 e atualmente sou mestranda em Arquitetura e Urbanismo pela Universidade Federal de Pelotas, onde trabalho com habitações de interesse social.',NULL,'Arquitetura, Marketing, Engenharia',NULL,NULL,'Instagram','Nao','2500','Não',NULL,'Estágio Engenharia e/ou Arquitetura','Sou a Lohaine, nascida em Curitiba, onde realizei toda a minha dinâmica acadêmica e profissional. Sou engajada na minha conexão com o campo das ciências, principalmente na Arquitetura e Urbanismo, onde atualmente sou mestranda. Minha personalidade tem grande tendência a dar tudo de si pelas coisas em que acredito, sou empenhada naquilo que busco e quero, o que me levou q mudar de cidade, inclusive. Nesse momento busco uma oportunidade em uma empresa que me abra oportunidades para desenvolver meu estado permanente de criatividade e facilidade  na resolução de problemas. Creio que seria uma parceria útil e interessante. Atualmente não tenho flexibilidade geográfica, porém meus horários são bem possíveis de conciliar trabalho e vida acadêmica, onde uma coisa com certeza complementará a outra.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-02T19:34:00.000Z'::timestamptz),
  ('Ingrid Rocha Becker','ingridrbecker@gmail.com',NULL,'51995307799','2001-04-05',24,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1XMNJ4y7tP5HzNCHZ1p14a2lL9t7Ms3_Y','Arquitetura','Pós-graduação Incompleta','Atitus Educação','2024-08-03','Sou formado','Big Office - Arquiteta 
Desenvolvimento de layouts de interiores para lojas de móveis corporativos.
Modelagem e renderização 3D de ambientes.
Criação de detalhamentos técnicos de mobiliário.
Acompanhamento de clientes e fornecedores.

Happy arquitetura - estagiária de arquitetura 
Colaboração em projetos de interiores residenciais e comerciais.
Desenvolvimento de projetos executivos completos.
Compatibilização e renderização fotorrealista.
Apoio em reunião com clientes','Sou formada em Arquitetura e Urbanismo e estou cursando atualmente pós graduação na PUCRS em Design de Interiores',NULL,'Arquitetura',NULL,'https://drive.google.com/open?id=1qZ91CYLSgw8BQwrhoaXvvQ755z_Uq129','Instagram','Não','R$3.800,00','Não',NULL,'Arquiteta','Olá, sou a Ingrid Becker, arquiteta e urbanista. Minha paixão pela área começou lá atrás, na época do The Sims 2, quando descobri o quanto a criação de espaços pode transformar a vida das pessoas. Atualmente, curso pós-graduação em Arquitetura de Interiores, sempre em busca de ampliar meu repertório e aprofundar meus conhecimentos. Sou curiosa por natureza, e essa característica me motiva a explorar novas ideias e soluções, trazendo inovação e cuidado em cada projeto.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-02T20:25:00.000Z'::timestamptz),
  ('Giovana Menezes da Silva','gikmenezes@gmail.com',NULL,'55999393336','2002-12-05',23,'Solteiro(a)','0','Não','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=19ovEU2c8T6KFX6DmTr-4Y8Zb8LLyidW-',NULL,'Ensino Superior Incompleto','UFPEL',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','●	Sesc – Jovem Aprendiz 
Santana do Livramento / RS – Maio/2021 – Abril/2022 
Responsável pela organização de arquivos, catalogação de livros e materiais diversos, atendimento e orientação aos usuários da biblioteca, além de apoio às demandas administrativas do setor. 

●	Delivery Much – Assistente Comercial 
Santana do Livramento / RS – Maio/2022 – Dezembro/2022 
Atuação na área comercial, com prospecção de clientes, negociação, cadastramento no sistema, acompanhamento de processos e suporte às operações. 
 
●	Instituto Mix de Profissões – Orientadora Educacional 
Santana do Livramento / RS – Junho/2023 – Março/2025 
Atuação na área comercial com foco na venda de cursos, prestando atendimento consultivo aos alunos, esclarecendo dúvidas sobre os programas, modalidades e benefícios, além de realizar acompanhamento pós-venda e suporte durante o processo de matrícula. 
 
●	Polo Educacional Anhanguera – Assistente Pedagógica 
Santana do Livramento / RS – Março/2025 – Agosto/2025 
Apoio às atividades de gestão escolar em nível superior, incluindo atendimento a alunos e professores, organização de documentos acadêmicos e suporte na elaboração de ações pedagógicas.','Sou estudante de História - Licenciatura. Atualmente estou no 4 semestre.',NULL,'Administrativa, Comercial, Financeiro, Marketing',NULL,NULL,'Instagram','Não','Em torno de R$2.300,00','Sim',NULL,'Comercial','Tenho domínio avançado em Inglês e Espanhol, o que amplia minha capacidade de comunicação em diferentes contextos. Ao longo da minha trajetória, desenvolvi competências como boa comunicação, habilidade em vendas e negociação, além de experiência em apoio administrativo e pedagógico, com conhecimento em rotinas acadêmicas e escolares. Também possuo vivência em prospecção de clientes e suporte comercial, facilidade no uso de sistemas e ferramentas digitais e grande capacidade de adaptação e aprendizado contínuo. Valorizo o trabalho em equipe e a colaboração entre diferentes áreas, sempre com proatividade na resolução de demandas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-02T21:51:00.000Z'::timestamptz),
  ('Silvia Pires','letypy.rs@gmail.com',NULL,'51993436975','1983-01-28',43,'Solteiro(a)','1','Não','Viamão/rs','https://drive.google.com/uc?export=view&id=1bQc2Is_X40hcsOTToYeuwlHvMiUjUAgs','Tecnologia em Gestão comercial','Ensino Superior Incompleto','Faculdade CENSUPEG','2026-12-10','Não, no momento pausei/parei por um período.','Experiências Profissionais

Consultora de Vendas e Gerente Comercial (Híbrido – PJ)
Yasmin Cardoso Laser – 06/2023 a 01/2024 e 07/2024 até o momento
• Planejamento e execução de estratégias de vendas e metas comerciais.
• Criação de vídeos explicativos e envio de orçamentos personalizados.
• Coordenação de equipe de atendimento remoto e alinhamento com o marketing.
• Treinamento de equipe SDR e atendimento humanizado via WhatsApp.

Consultora de Vendas Ativas
Origem Telecomunicações – 04/2024 a 08/2024
• Atendimento e vendas por telefone, WhatsApp e e-mail.
• Gestão de carteira de clientes e prospecção ativa.
• Pós-venda, elaboração de planilhas de controle e atendimento B2B e B2C.

Consultora de Vendas
Embracon Consórcios – 02/2023 a 05/2024
• Venda de consórcios presenciais e online.
• Agendamento de reuniões, apresentações comerciais e suporte pré e pós-venda.
• Atendimento remoto e presencial, cadastro de clientes e análise de perfil.

Auxiliar Administrativo e Financeiro
Progecon Assessoria Contábil – 04/2021 a 07/2022
• Rotinas financeiras e administrativas (folha de pagamento, contas a pagar, emissão de NFs).
• Atendimento ao cliente, controle de e-mails e documentos.

(Experiências anteriores disponíveis sob demanda – foco atual em vendas e atendimento)','Tenho cursos de informática intermediário, pacote Office, CIPA, Gestão de conflitos, 5s no escritório, técnicas de vendas entre outros pertinentes as funções já desempenhadas anteriormente.',NULL,'Administrativa, Comercial',NULL,NULL,'Instagram','Não','2.200 a 2.800','Sim',NULL,'Auxiliar administrativo','Sou uma profissional com mais de 8 anos de experiência nas áreas de atendimento, vendas consultivas e prospecção ativa, com forte atuação em modelos home office / presencial ou híbrido (PJ ou CLT). Atuando como SDR, closer e
gestora comercial, desenvolvi estratégias personalizadas de captação, nutrição de leads e fidelização de clientes. Habilidade em atendimento multicanal (WhatsApp, telefone e e-mail), negociação B2C e B2B, treinamento de equipes, além de planejamento de metas e rotinas comerciais com foco em resultados.

Proativa, comunicativa e com excelente adaptação ao ambiente remoto, busco oportunidades que
me permitam aplicar minhas competências comerciais e de relacionamento, contribuindo com o crescimento da empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-02T22:59:00.000Z'::timestamptz),
  ('Bianca Silocchi','bianca@silmat.com.br',NULL,'51992248388','1979-08-28',46,'Casado(a)','2','Sim','Arroio do Sal/RS','https://drive.google.com/uc?export=view&id=1xpzCuDlGWVaucdz8BS71ogHHj7A9gcfE','Administração de empresas','Pós-graduação Completa','Faculdade da Serra Gaúcha','2008-08-16','Sou formado','Sou uma profissional com ampla experiência nas áreas: Administrativa, de Recursos Humanos,
 Marketing e Vendas, nas quais desenvolvi atividades em nível operacional, estratégico e de gestão.
Atuei em diversos segmentos de mercado, tais como: indústria, comércio e prestação 
 de serviços. Também trabalhei como voluntária nos grupos de trabalho de Diagnóstico e de 
Marketing do Polo de Informática de Caxias do Sul, onde adquiri e compartilhei
conhecimentos em desenvolvimento e análise de pesquisas.
Atualmente sou sócia-administradora da empresa SILMAT Representação, 
Treinamento e Desenvolvimento, na qual atuo em vendas e também em treinamentos com 
foco nos produtos comercializados.
Uma das empresas com a qual mantínhamos contrato, optou por trabalhar apenas com equipe CLT e por essa razão rompeu contrato, assim sendo, busco.uma recolocação no mercado de trabalho, com foco maior em Administração e RH.','Administração com Habilitação em Marketing, Pós-graduação em Gestão de Pessoas e Coaching, Analista Comportamental Disc e atualmente cursando 2° semestre de Psicologia na Ulbra.',NULL,'Administrativa',NULL,NULL,'Instagram','Não','6.000,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-03T03:01:00.000Z'::timestamptz),
  ('José Augusto de Fraga Gil','j.fraga@live.com',NULL,'51995983382','1996-10-30',29,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1NzPA1-X1_qFFJs9HDYycxztLRF25TR9V','Ciências Contábeis','Ensino Superior Incompleto','Uniasselvi',NULL,'Não, no momento pausei/parei por um período.','Experiência Profissional

MDDOS SANTOS OLIVEIRA EIRELI – Santo Antônio da Patrulha
📅 Janeiro 2019 — Agosto 2025
📌 Cargo: Administrativo - Financeiro
Principais atividades:

Conciliação de pagamento entre boletos e contas bancárias.

Emissão de notas fiscais, laudos e orçamentos.

Gestão de estoque e compras de material.

Implementação e gestão de software de automação de ordens de serviço via internet e celular.

Atendimento ao público.

Vendas.

PVS INDÚSTRIA DE ARTEFATOS DE PVC EIRELI – Santo Antônio da Patrulha
📅 Fevereiro 2014 — Abril 2018
📌 Cargo: Auxiliar de Escritório em Geral
Principais atividades:

Emissão de pedidos, notas fiscais e boletos.

Planejamento de entrega e compra de materiais.

Projetos de esquadrias de PVC.

Santos Melo Comércio e Rede de Ensino LTDA – Santo Antônio da Patrulha
📅 Novembro 2012 — Junho 2013
📌 Cargo: Instrutor de Informática
Principais atividades:

Instrutor de informática básica (Windows, pacote Office).

Instrutor de informática avançada (CorelDraw, Photoshop).

Instrutor de manutenção de computadores.',NULL,NULL,'Administrativa, Financeiro',NULL,NULL,'Instagram','Nao','R$2.500,00','Sim',NULL,'Estágio Financeiro','Sou um profissional com sólida experiência nas áreas administrativa, financeira e de compras, atuando no suporte a processos operacionais e estratégicos das empresas em que trabalhei. Tenho vivência na gestão de pagamentos, conciliações bancárias, emissão de notas fiscais, orçamentos e relatórios, além de forte atuação na gestão de estoque e aquisição de materiais, sempre buscando eficiência e redução de custos.

Ao longo da minha trajetória, também desenvolvi habilidades em implantação de sistemas de automação, contribuindo para a modernização e melhoria de processos internos. Minha experiência inclui ainda o atendimento ao público, vendas e suporte interno, o que reforçou minha capacidade de comunicação, organização e relacionamento interpessoal.

Minha carreira iniciou na área de informática e treinamentos, atuando como instrutor em cursos básicos e avançados, o que me proporcionou desenvolver didática, paciência e capacidade de transmitir conhecimento. Esse histórico me tornou um profissional versátil, capaz de aprender rapidamente e de me adaptar a diferentes funções dentro do ambiente corporativo.

Sou movido por desafios que me permitam contribuir com organização, eficiência e resultados, sempre com ética, responsabilidade e foco em melhorias contínuas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-03T12:03:00.000Z'::timestamptz),
  ('Alessandra Mylena Camargo Couto','alessandracouto001@gmail.com',NULL,'51993566790','1998-11-30',27,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1w46Yhch0sjXWydpLncqpUA2C8LGgt5iJ','Administração de empresas','Ensino Superior Incompleto','Anhanguera','2027-08-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','By aura, assistente administrativo, fiquei 3 meses, o outro eu fiz uma consultoria para uma ótica ( otica porto alegre), onde fiquei 4 meses, zaffari, caixa operadora fiquei 2 anos','Tenho curso de Excel, também tenho curso de Assistente administrativo',NULL,'Administrativa, Estágio',NULL,NULL,'Instragran','Não','1500','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho inglês básico, tenho curso de Excel intermediário, curso de oratória e também de assistente administrativo, todos pela fundação Bradesco','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-03T15:55:00.000Z'::timestamptz),
  ('Bruna Alves Perucio','brunapa7@gmail.com',NULL,'55991600089','2000-08-22',25,'Solteiro(a)','0','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1-UW3haA0QI-SnP0zDeGsUE8Lt-AQPko0',NULL,'Ensino Médio Completo',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Meu último trabalho foi na CCGL- Cooperativa Central Gaúcha, na qual trabalhava na área de laboratório, fazendo todas as análises de laticínios, fiquei na empresa por 1 ano e 2 meses. Antes disso trabalhava como motorista de aplicativo, no qual fiquei por dois anos, antes disse tive experiência comercial com vendas e atendimento ao público.','Técnico de segurança do trabalho/ Curso completo de Informática/ Curso de Inteligência Emocional/ Curso de Brigadista/ Faculdade em andamento de Análise e desenvolvimento de sistemas',NULL,'Administrativa, Comercial, Financeiro, Marketing',NULL,NULL,'Instagram','nao','2.300','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-03T18:43:00.000Z'::timestamptz),
  ('Israeli Andrade S. Leiria','isileiria@gmail.com',NULL,'51995392943','1990-05-14',35,'Casado(a)','0','Sim','Gravataí/rs','https://drive.google.com/uc?export=view&id=1l1A3mHFiwxNZQgsrEEnwyJU2JF7J3lTf','Administração de empresas','Ensino Superior Incompleto','Uniasselvi','2027-03-07','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Trabalhei na Farmácia Preço Popular como Atendente de Farmácia (2012 – 2014), realizando atendimento ao público, orientação sobre medicamentos, emissão de notas fiscais, controle de estoque e organização do ambiente. Em seguida, atuei na Farmácia de Manipulação Essência como Atendente de Farmácia e Auxiliar Administrativo (2014 – 2016), onde além do atendimento direto ao cliente, fui responsável pela emissão de documentos fiscais, abertura e fechamento de caixa, controle de estoque e gestão de entradas e saídas no sistema ERP (TOTVS e PharmaLink). Mais recentemente, trabalhei na ECEI Criança Esperança como Professora de Séries Iniciais (2022 – 2025), planejando e executando aulas para o ensino fundamental, organizando atividades pedagógicas e atuando em parceria com a equipe e comunidade escolar. Essas experiências me proporcionaram sólida vivência em atendimento ao público, rotinas administrativas, controle de processos e trabalho em equipe.','Tenho formação em Magistério e Informática pela UCS, além de estar cursando Administração na Uniasselvi, o que me proporciona uma base sólida em gestão, tecnologia e educação. Buscando constante atualização, concluí certificações em instituições de destaque mundial, como MIT Professional Education, The University of Chicago, ESADE, Católica Lisbon School of Business and Economics e IE University, com foco em áreas como e-commerce, negociação, gestão de projetos e metodologia ágil, transformação digital, sustentabilidade corporativa, storytelling para marketing digital e ferramentas organizacionais como SharePoint. Esse conjunto de formações e especializações me confere um perfil versátil, atualizado e alinhado às demandas do mercado, unindo visão estratégica, inovação e capacidade de adaptação.',NULL,'Administrativa',NULL,NULL,'Instagram','Não.','R$1.800,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma profissional organizada e comunicativa, com facilidade em aprender novas ferramentas e adaptar-me a diferentes cenários. Tenho domínio do Pacote Office avançado, experiência com sistemas ERP (TOTVS e PharmaLink) e utilizo essas habilidades para otimizar rotinas administrativas. Além da formação e certificações, valorizo o contato humano: já atuei como professora de séries iniciais e também participo de ações sociais da minha comunidade, ajudando em campanhas de doação de alimentos, roupas e brinquedos. Gosto muito de estar com a família e amigos, e acredito que essa vivência me torna ainda mais empática e capaz de construir boas relações no ambiente de trabalho.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-03T18:45:00.000Z'::timestamptz),
  ('Josiane da Silveira Sodré','josianesodre1234@gmail.com',NULL,'51997417818','2006-06-10',19,'Casado(a)','0','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1ElNEFfcObFl52nIM5c11OzQoHW5ek3L2','Direito','Ensino Superior Incompleto','Urcamp','2030-05-15','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','-Babá Infantil, autônoma, 20/02/2024 a 10/02/2025.
- Escola de Idiomas Yázigi, consultor de vendas, 09/06/2024 á 04/08/2025.','Formada em Técnico em Administração pelo o Senac, inglês básico pela escola de idiomas Yázigi, cursando Direito pela a Urcamp.',NULL,'Administrativa, Estágio, Financeiro, Marketing',NULL,'https://drive.google.com/open?id=11FJjMsyC6F6a_mKo8pMVcZjnXgI-VpTU','Instagram','Não.','800','Não','Muriel - +55 53 99971-3968
Era babá da filha dela.','Estágio Financeiro','Gosto de cantar, fazer aulas de teclado no meu tempo livre, gosto de estudar, ler, treinar meu inglês as vezes. E procuro uma oportunidade para me desenvolver e crescer profissionalmente.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-04T14:17:00.000Z'::timestamptz),
  ('Wesley Lima','wesleyiepsen@gmail.com',NULL,'53984591992','1999-07-28',26,'União estável','0','Sim','Pelotas/rs','https://drive.google.com/uc?export=view&id=1HFITfPTrqo8Ee7n4uVMn8Mi44xoK1x9f','Formado em Ciências Contábeis(2020) e Graduando em Ciências Econômicas','Ensino Superior Completo','Ciências Contábeis (UCPel) - Ciências Econômicas[EAD] (Faculdade Anhanguera)','2029-07-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','anexei meu currículo no "Portfólio de trabalho"','CPA-20 (Em andamento)',NULL,'Administrativa, Financeiro',NULL,'https://drive.google.com/open?id=1XybDo9929Ad8jwkKNIIWkOluqyIh5sIT','Instagram','Não','R$6.000,00','Sim',NULL,'Coordenador Administrativo',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-04T14:46:00.000Z'::timestamptz),
  ('Táttyla Pereira de Souza','tattylapereira@hotmail.com',NULL,'33998025435','1989-11-06',36,'União estável','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1ZjDoqKxTl9nLscY0-uFzb_fIvM7ildTV','Comunicação Social- Jornalismo','Pós-graduação Completa','Universidade Vale do Rio Doce- UNIVALE','2018-06-04','Sou formado','Empresa: Ekobrazil Inteligência Ecológica 
Função: Analista de Mídias Sociais
Período: 01/2025 - Atualmente
Atividades:
•	Produção, gravação e edição de conteúdo para as redes sociais, gerenciamento de mídias e planejamento estratégico como social media, Copywriter. 

Empresa: Univale TV – TV Universitária e Educativa
Função: Editora Vídeo Repórter
Período: 07/2018 a 09/2024
Atividades:
•	Apresentação de programas, produção de conteúdo jornalístico, institucional, gravação de vídeo, edição de texto, edição de vídeo e vídeo reportagem.

Empresa: Zion Marketing Digital
Função: Social Media
Período: 07/2023 a 11/2024
Atividades:
•	Gestora de planejamento estratégico para as redes sociais, social media, produção de conteúdo.

Empresa: TV Kefas – (Rede Católica da cidade, afiliada da Rede Século 21-SP)
Função: Repórter 
Período: 04/2019 a 07/2023
Atividades:
•	Repórter, apresentadora, produtora, editora de vídeo e texto.

Empresa: TV Rio Doce 
Função: Estagiária de Jornalismo
Período: 02/2017 a 06/2018
Atividades:
•	Repórter, apresentadora, produtora de conteúdo para telejornal.','Sou formada em Comunicação Social - Habilitação em Jornalismo e Pós-Graduação em Gestão da Comunicação e Mídias Sociais. Atualmente estou como Analista de Mídias Sociais em uma empresa de produtos de limpeza ecológicos, mas já atuei em TV''s e agência de publicidade e marketing. Tenho experiência com:	Produção de conteúdos institucionais, apresentação frente à câmera, gravação e edição de conteúdo para as redes sociais, gerenciamento de mídias e planejamento estratégico como social media, Copywriter. Possuo habilidades com as ferramentas: Canva, CapCut e Adobe Premiere. 
Certificados de cursos: Reload Evento de Marketing Digital. – SEBRAE – 2024/2023/2022.
Marketing Digital para o Empreendedor – Sebrae – 2022.
Marketing Digital para sua Empresa: Equipe Comercial – SEBRAE – 2022.
45ª Edição Imprensa na ESPM - Eleições e Mídias Digitais: Desafios e Oportunidades – 2022.
6° Seminário Internacional de jornalismo - ESPM/ Columbia University – 2022.
Contribuição nas realizações das edições: 15°,16°,17°,18°,19°,20° e 21° do Simpósio de Pesquisa e Iniciação Científica da Univale, na divulgação e cobertura jornalística.
Trabalhos científicos escritos e apresentados no 13° e 20° Simpósio de Pesquisa e Iniciação Cientifica da Univale.
Publicação de artigos científicos em revista nacional e internacional: Qualis B2 e B4.
Portfólio de alguns trabalhos realizados em vídeo: https://youtube.com/playlist?list=PLVslfe2kRC_cfkcaaHSmCZKnRbqSHhCfv&si=T_lN7ucd2xyGsy7',NULL,'Marketing',NULL,NULL,'Instagram','Não','3.500','Sim','Camila Bazotti - Gerente Geral Ekobrazil - 51 98426-1650','Assistente de Marketing','Sou apaixonada por bichos, louca por cachorros. Mamãe da Lory (in memória) e do Dunga! Jogadora de vôlei, curiosa, bem humorada, mineira de Gov. Valadares, praiana... amo o verão. Estive na Espanha por 9 meses onde pude aprender o idioma de forma intermediária. Gosto de aprender de tudo um pouco e estou sempre aberta à sugestões e novos desafios.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-04T14:59:00.000Z'::timestamptz),
  ('Douglas Lucas Moreira','douglaslucasm@gmail.com',NULL,'51992399161','2000-10-06',25,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1VPBHCbTks7SFBQhTE7YkNvDkRifnP-CS','Marketing','Pós-graduação Incompleta','Centro Universitário Leonardo da Vinci - Uniasselvi','2024-08-15','Sou formado','09/2024 - 02/2025
Imobiliária Sperinde
Função: Auxiliar Financeiro
Processamento de boleto e emissão de notas fiscais.
Contratação de seguros obrigatórios e conferência de taxas.
Importação de arquivos e atualização de planilhas.

02/2024 - 07/2024
Cerepal - Centro de Reabilitação de POA
Função: Auxiliar de Compras e Faturamento
Cotação e negociação com fornecedores.
Emissão dos pedidos de matérias e acompanhamento de entregas.
Conferência documental de consultas para registro financeiro.

11/2022 - 02/2024
Leindecker Imóveis
Função: Auxiliar Financeiro
Gestão de condomínios e locação.
Contas a pagar e receber, boletos, notas fiscais e movimentações bancárias.
Contato com fornecedores, cobranças e inadimplências','Sou um profissional formado em Técnico de Administração, formado em superior de Marketing e estou realizando pós-graduação MBA em Controladoria e Finanças Corporativas. Possuo alguns cursos profissionalizantes de: Gestão Empresarial, Inglês, Hotelaria e Turismo.',NULL,'Administrativa, Financeiro',NULL,NULL,'Instagram','Não.','R$2.000,00','Sim','Martha Gabriel - Instagram: @marthagabriel - Referência em marketing digital, inovação e transformação digital.','Quero inscrever-me no banco de talentos da Young!','Possuo conhecimentos em Excel e Power BI, inglês em nível intermediário e estou sempre em busca de novos aprendizados. Já participei de trabalho voluntário em ações comunitárias e gosto de praticar esportes, o que me ajuda a desenvolver disciplina, resiliência e trabalho em equipe.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-04T15:45:00.000Z'::timestamptz),
  ('Pâmela Costa dos Santos','pamyandreotti0@gmail.com',NULL,'51986286531','2000-01-23',26,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1otss7x1PxHiOS9opzPL-JS-lqKYDtc8b','Técnico em administração','Ensino Médio Completo','Instituto federal - ifrs','2023-12-15','Sou formado','Teiga Advogados Associados
Auxiliar Administrativo - Agosto/2024 a Agosto/2025
Solicitação de PPP e elaboração de planilha
Envio de AR e cartas para novos clientes
Elaboração de cálculo jurídico
Compras de materiais
D’Avila Fachinetto Escritório de Advocacia e Associados
Auxiliar de Escritório – Abril/2024 a Agosto/2024
Emissão de notas fiscais, boletos e lançamento de
pagamentos.
Elaboração de planilhas e controle de agenda dos
advogados.
Atendimento ao cliente presencial e por telefone.
Hospital Nossa Senhora da Conceição
Estagiaria – Dezembro/2021 a Dezembro/2023
Atendimento ao público, organização de arquivos e
emendas parlamentares.
Apoio no projeto Jovem Aprendiz e controle de
folhas ponto.
Criação de planilhas e artes (Canva) e organização
de eventos.
Controle de mensagens eletrônicas da gerência.
Jovem Aprendiz – Dezembro/2020 a Outubro/2021
Atividades administrativas e atendimento ao
público externo e interno.
Central de Consultas
Estagiária – Outubro/2021
Apoio nas atividades administrativas e atendimento
ao cliente.','Técnico em administração',NULL,'Administrativa, Financeiro',NULL,'https://drive.google.com/open?id=1qLfjqmoqpnijs_yE_Dfx3L8vfG_rBxiI','Instagram','Não','2500','Não',NULL,'Auxiliar administrativo',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-04T18:09:00.000Z'::timestamptz),
  ('VINÍCIUS VIEIRA VAZ','vini.v.v@hotmail.com',NULL,'53991043298','1997-12-09',28,'Casado(a)','0','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1zrbgBEjP6Zzrpuv6m84b6-rfN2ML82yK','Gestão Publica e Direito','Ensino Superior Completo','UFPEL E ANHANGUERA','2027-09-04','Não, no momento pausei/parei por um período.','Graduado em Gestão Pública pela Universidade Federal de Pelotas e atualmente cursando Direito na Anhanguera. Minha formação combina visão administrativa e jurídica, permitindo atuar de forma estratégica e organizada diante de diferentes desafios.

Atuei como recepcionista no Hospital Universitário da FURG, onde adquiri sólida experiência em atendimento ao público, organização de rotinas, comunicação clara e resolução de demandas em ambientes de alta complexidade. Essa vivência me ensinou a lidar com grande fluxo de pessoas, sempre priorizando a eficiência e a cordialidade.

Acredito que minha trajetória acadêmica e profissional me capacita a contribuir de maneira efetiva para os desafios propostos pela vaga, oferecendo comprometimento, profissionalismo e dedicação para alcançar resultados consistentes junto à equipe.',NULL,NULL,'Administrativa, Comercial, Financeiro',NULL,NULL,'Instagram','Não','1800','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-04T23:04:00.000Z'::timestamptz),
  ('Christyan Leonardo Januário Pereira','christyan.januario@gmail.com',NULL,'51981568229','2002-03-17',23,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1GOkLqVQEFAK7CY1YEZTSytNtQyrg7-oQ','Marketing','Ensino Superior Incompleto','UniRitter Campus FAPA','2025-12-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Comecei a trabalhar na concessionária CarHouse Toyota em dezembro de 2019 como Jovem aprendiz e continuo na empresa hoje como Preparador de veículos na área administrativa. Além de atividades administrativas, como lançamento de notas fiscais e abertura de ordens de serviços, dou auxílio operacional com a movimentação dos veículos dentro da empresa e apoio aos vendedores.','UniRitter Curso Superior de Tecnologia (CST), Marketing · (fevereiro de 2024 - dezembro de 2025) 
Espro Formação Profissional para o Mundo do Trabalho, Serviços Administrativos Diversos · (outubro de 2017 - dezembro de 2017) 
QI Faculdade & Escola Técnica Curso, Inglês · (janeiro de 2014)

Certifications: Marketing, branding e prospecção de mercados, Tomada de decisão, Estruturas e ambientes das organizações',NULL,'Marketing',NULL,'https://drive.google.com/open?id=1NvPfsatBCpMSIIt8PsSiH5-im0xQ_xXA','Instagram','Não','2500','Sim',NULL,'Assistente de Marketing','Trabalho como voluntário em uma empresa de Shows de Luta Livre, atuando na operação dos equipamentos de som e video.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-05T10:35:00.000Z'::timestamptz),
  ('VANESSA GOMES BORGES','vanessagborges40@gmail.com',NULL,'51996090751','1980-08-17',45,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1wzoeP3P3CkywJDp6Wpi05XrYSBlm2PUm','Administração de empresas','Ensino Superior Incompleto','Faccat','2014-12-20','Sou formado','ARGOS GUINDASTES , 2008 - 2010-  ANALISTA FINANCEIRO , CONTAS A PAGAR , CONTAS A RECEBER. 
AGS IND DE CILINDROS LTDA  , ANALISTA FINANCEIRO , 2010 A 2023 , CONTAS A PAGAR , CONTAS A RECEBER , CONTROLE DE FLUXO DE CAIXA , COBRANÇA 
V.B. OLIVEIRA LTDA , ANALISTA FINANCEIRO , 2024 ATÉ O MOMENTO , FINANCEIRO , DPTO PESSOAL , COMPRAS',NULL,NULL,'Administrativa, Financeiro',NULL,NULL,'Agência de Empregos','NÃO','6.000,00','Sim','CLAUDIOMIRO - 51- 99914-8605, ROCHELI - 51- 99811-3190, MARCOS LENTZ- 51-99299-7810','COORDENADOR ADMINISTRATIVO (VAGA ABERTA NO SINE )','Utilização de sistema TOTVS , nas duas empresas , Argos e Ags, gosto muito desta área financeira trabalhei por 18 anos nela,  é a área que me identifico com toda a certeza.   
Ficaria imensamente grata por uma oportunidade de entrevista em vossa empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-05T19:36:00.000Z'::timestamptz),
  ('Vagner da Silveira Rosa','vagneranalista23@gmail.com',NULL,'5991174675','1984-09-08',41,'União estável','2','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=10G2jm8xKDPJNMYE6lZkXCMDtzQgpVNGl','tecnologia da informação','Ensino Superior Completo','IFSUL','2026-12-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Atualmente trabalho na FJP Gomes e Cia Ltda, empresa do ramo de distribuição de produtos e equipamentos para higienização profissional. Estou à 14 anos trabalhando na mesma empresa, onde iniciei em janeiro 2011 como auxiliar logístico e fiquei até dezembro do mesmo ano. Nessa função organiza o estoque recebendo mercadorias e inserindo informações no sistema. Também formulava rotas de entregas e realizava instalações de equipamentos para os clientes. Inicio de 2012 até o dezembro de 2017, atuei como executivo de vendas externas atendendo a região da campanha fronteira oeste do Rio Grande do Sul. Nessa atividade prospectava clientes, elaborava propostas fechava negociações e ministrava capacitações aos clientes. A partir de 2018 até os dias de hoje atuo como coordenador da equipe de vendas, treinando novos colaboradores, apoiando equipe de vendas para alcançarem as metas e administrando cartilha de clientes.','Sou formado no curso Tecnólogo em Analise e desenvolvimentos de sistemas. Possuo certificação na área de dados, analise, exploração e entendimento de negócios. Também possuo certificação em gestão de projetos e modelos de projeto.',NULL,'Comercial, Estágio, Engenharia',NULL,NULL,'Facebook','não','2800','Sim',NULL,'Comercial','Sou entusiasta da tecnologia e estou em busca de uma oportunidade para adentrar na área. Possuo muita vivencia com a cultura Uruguaia. Não sou fluente na língua espanhola, mas por viver nessa região praticamente a vida toda e ser estudante da UTEC/Rivera posso dizer que possuo conhecimento avançado de fala e escrita em espanhol. Tenho muita experiência na área comercial, atendimento e vendas. tenho a certeza que posso contribuir e crescer junto ao time da Young.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-05T20:17:00.000Z'::timestamptz),
  ('Juan Santos Oliveira','juan.juanomelhor@gmail.com',NULL,'51999567153','2000-04-06',25,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=176GzC3ZoHluRG1hfHHQTIRwrBNvd3wjw','Administração de empresas','Ensino Superior Completo','UNIASSELVI','2022-12-06','Sou formado','Empresa: Tribunal de Justiça do Rio Grande do Sul  
Cargo: Estagiário  
Datas: 08/2019 - 05/2021  
Responsabilidades: Eu organizava pastas, recebia mandados, usava o E-themis e o 
Themis e outras tarefas administrativas. 
 
Empresa: Banrisul  
Cargo: Estagiário  
Datas: 06/2021 - 06/2022  
Responsabilidades: Analisava propostas financeiras, ajustava planilhas, 
cancelava transações, estornava valores e prestava suporte via e-mail e 
chat no Banrisul.
  
Empresa: Klassmatt  
Cargo: Auxiliar Administrativo 
Datas: 08/2023 - 09/2024  
Responsabilidades: Catalogava itens da empresa, dividindo a produção entre saneamento 
(prazo de meses) e governança (prazo de até 7 dias).
  
Empresa: TIVIT  
Cargo: Analista de Suporte JR  
Datas: 01/2025 - 02/2025  
Responsabilidades: Prestava suporte a produtos bancários no Sicredi, focando na 
experiência do cartão e garantindo excelência no atendimento. 

Gestor de Tráfego Pago (Autônomo)  
Remoto | Set/2023 – Dez/2023 (4 meses)  - Gestão de campanhas para produtos encapsulados e infoprodutos nas plataformas Meta 
Ads, Google Ads e TikTok Ads.  
Gestor de Tráfego (Temporário) - Ceisc  
Remoto | Abr/2025 – Mai/2025 (2 meses)  - Publicação e otimização de campanhas no Meta Ads e Google Ads com foco em geração 
de leads e conversões.  - Análise contínua de dados para otimização e melhoria de KPIs como CPA, CPL e ROAS. - Decisões baseadas em análise de dados para melhorar o desempenho das campanhas. - Colaboração com equipes criativas para desenvolvimento de materiais visuais e 
conteúdos para anúncios.  

Gestor de Tráfego (Freelance) - SPX Academy 
Remoto | Agosto/2025 – Atualmente 
Criação e otimização de campanhas pagas nas plataformas Meta Ads e Google Ads. 
Monitoramento contínuo das campanhas com ajustes baseados em dados de 
desempenho. 
Apoio na análise de KPIs essenciais como custo por aquisição, custo por lead e retorno 
sobre investimento em anúncios.','Vou deixar meu linkedin com todos os certificados:

https://www.linkedin.com/in/juan-s-oliveira/',NULL,'Marketing',NULL,NULL,'Agência de Empregos','.','3200','Não',NULL,'Marketing',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-05T21:11:00.000Z'::timestamptz),
  ('Lilian Sulavan Cavalheiro Gularte','liliansulavan305@gmail.com',NULL,'55996950356','1990-07-03',35,'Casado(a)','3','Não','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=18LA90in542CzF9S4cxYkF5HIADvAw4Tl','Técnico em segurança do trabalho','Ensino Médio Completo','Exattus','2027-12-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Mafra Formação Profissional 
Consultora de vendas
02/ 2024 até 04/ 2025
Prospectar e atender clientes, entendendo suas necessidades
Apresentar produtos e serviços de forma clara e atrativa
Negociar preços, prazos e condições de pagamento.','O curso está me proporcionando conhecimentos importantes sobre a prevenção de acidentes e aplicação das Normas Regulamentadoras. Prevenção de riscos, elaboração de relatórios e orientar colaboradores para manter um ambiente seguro e saudável. Acho importante porque a segurança protege os trabalhadores, reduz afastamentos e ajuda a empresa a estar dentro da lei.',NULL,'Comercial',NULL,NULL,'Instagram','Não','Referênte ao cargo','Não','Bruno Martins 
47 991906968
Diretor da Escola Mafra Formação Profissional','Comercial','Profissional motivada e adaptável, com experiência em atendimento ao público, vendas e suporte operacional. Busco oportunidades para o desenvolver minha carreira, oferecendo dedicação e responsabilidade.  Trabalho bem em equipe, aprendo rápido e tenho foco em resultados.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-06T15:39:00.000Z'::timestamptz),
  ('Tomas Antonio Sanchez Rodriguez','ar0807929@gmail.com',NULL,'51982574489','1997-10-04',28,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1XkDTYTe49R_39I48PU8kX3jD3KK5WEI9','Cursando 1 semestre em técnico de administração','Ensino Superior Incompleto','COOL ESTADUAL RODRIGUES ALVES','2025-12-18','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Comfort Lux, Alimentador de linha de produção, 16/11/2020-atualmente, leitor de projetos feito pelo engenheiro para fazer as peças em materiais de aço em diferentes tamanhos para passar para meus colegas fazer a demais funções, recebimento de materiais de compras e saída de coleta.','Arrecadação de mais conhecimentos em técnico de administração para ser um responsável de administração de empresas e levar para frente em crescimento.',NULL,'Engenharia',NULL,NULL,'Facebook','Não fui indicado.','2.300,00','Não','Tiago Da Silva Plax 51985185918','Auxiliar administrativo','Sou uma pessoa q aprendo e me adapto no tipos de trabalho na área comercial, não tenho um não para agregar e aprender mais conhecimentos, gosto de trabalhar com computadores sempre tive habilidade para isso um pouco de conhecimento com computadores, falo português fluente e espanhol nativo, já trabalhei em trabalho voluntário como na parte de alimentos e atendimento ao público, tenho curso de recepcionista de saude e nas minhas férias de inverno faço free-lancer.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-07T12:05:00.000Z'::timestamptz),
  ('Raiuri Eloy dos Santos','eloyraiuri@gmail.com',NULL,'51999689198','2001-05-02',24,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1D0pN4Xi0-K-6LJgnVeLDceAXhqZvFbBH','Arquitetura','Ensino Superior Incompleto','Unisinos','2026-12-15','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Benditta Marcenaria - Projetista - 2023-2025 - utilizava softwares como SketchUp e dinabox para passar projetos de interiores para corte, pensando em como fazer tudo se encaixar e na sustentação dos móveis.
Mult Móveis - Projetista - 2025 - Atual - Trabalho desenvolvendo projeto de interiores residenciais','Estou no oitavo semestre de Arquitetura e Urbanismo',NULL,'Arquitetura, Engenharia',NULL,NULL,'Instagram','Não','3.800,00','Não',NULL,'Vaga para estudante de Arquitetura','Tenho experiência em AutoCAD, SketchUp, Vray, Revit e um pouco de Archicad.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-07T15:35:00.000Z'::timestamptz),
  ('Camilli Corrêa Dos Santos','mylic31@gmail.com',NULL,'55996313342','2005-12-21',20,'Solteiro(a)','0','Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=13yckeWygVnWpIr4ZJE0yz34BUwjBzZAn','Administração','Ensino Médio Completo','Uniasselvi',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Stok Center- Jovem aprendiz 
Prefeitura de Alegrete- Administrativo 
Financeira Cauter- Especialista em Crédito(Administrativo)','Administrativo, auxiliar administrativo',NULL,'Administrativa, Marketing, Engenharia',NULL,NULL,'Instagram','Não não','R$2.000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-07T16:19:00.000Z'::timestamptz),
  ('Larissa de Oliveira Rodrigues','larissabsm2005@gmail.com',NULL,'51991310277','2005-11-20',20,'Solteiro(a)','0','Não','Alvorada/rs','https://drive.google.com/uc?export=view&id=1Km1VruUFkEr_ra4QKnMrhtb7afAcPNLy',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Auxiliar administrativo na 1° delegacia de polícia civil de alvorada, duração de 3 meses, atuava auxiliando em documentações e arquivos. Vendedora na Multinacional Chillibeans, não permaneci pois a franquia fechou, duração de 3 meses. Responsável pelo setor de locação da Imobiliária FR IMÓVEIS, atuava com divulgação de imóveis, relacionamento com clientes e proprietarios, cobranças e entre outras demandas administrativas de uma imobiliária.','Curso de administração com ênfase em informática, duração de 1 ano e meio.
Experiência vasta em imobiliária, gerenciadora de setor de locação.',NULL,'Administrativa',NULL,NULL,'Instagram','Não','Mínimo 1.850,00','Sim','Fr IMÓVEIS','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-08T04:31:00.000Z'::timestamptz),
  ('Bruna da Silva morche','brunasmorche95@gmail.com',NULL,'55992093394','1995-03-13',30,'Solteiro(a)','3','Não','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1nc2BRsDpk6pRAbF3DVwnaWgqVhplka9n',NULL,'Ensino Médio Completo','Escola estadual de ensino médio Olivia de Paula falcão',NULL,'Não, no momento pausei/parei por um período.','Paulinho pfluguer costureira 
Joamar uniformes costureira 
Mercado stok frente de caixa
Shanaduu vendedora',NULL,NULL,'Administrativa, Comercial, Financeiro, Marketing',NULL,NULL,'Facebook','Nenhum','2000','Sim','Costureira','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-08T12:41:00.000Z'::timestamptz),
  ('Davi Fiorenzano','davif3662@gmail.com',NULL,'51998759004','2001-11-04',24,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1oGgf2Yq5PSAm-FbyoAHMLW8tYaIfrVzb',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Janeiro de 2018 a Junho de 2018 - Estágio - DocService IT Solutions.
Cargo: Auxiliar Administrativo
Atividades desenvolvidas: Desenvolvimento de sites para empresas, atendimento ao cliente, cadastro de clientes. 

Novembro de 2018 a Julho de 2019– Estágio - Vero SA.
Cargo: Auxiliar de Almoxarifado
Atividades desenvolvidas: teste de equipamentos, cadastro de equipamentos, conferência de material em estoque, transporte de materiais, recebimento de mercadorias, emissão de NFs.

Julho de 2019 – Julho de 2025 – Vero SA.
Cargo: Auxiliar de Almoxarifado
Atividades desenvolvidas: Teste de equipamentos, cadastro de equipamentos no sistema, conferência de material 
em estoque, transporte de materiais, recebimento de mercadorias, emissão de NFs.

Julho de 2025 - Presente - Vero SA.
Cargo: Assistente Administrativo - Frotas
Atividades desenvolvidas: controle de combustivel, controle de manutenções, agendamentos de manutenções, negociação com fornecedores, controle de multas, investigação de perda ou roubo de materiais, investigação de sinistros.','Curso de Auxíliar de Administração - de Junho a Agosto de 2016;
Curso de Informática Básica – de Setembro a Novembro de 2018;
Curso de Excel Básico – de Julho a Outubro de 2021;
Curso de Lógica de Programação – de Janeiro a Fevereiro de 2018;
Curso de HTML5 – de Fevereiro a Maio de 2018;
Open Inovationn - Cubo Itaú',NULL,'Administrativa, Comercial, Marketing, Novos Negócios',NULL,NULL,'Indicação','Nao','2500','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Me chamo Davi e estou aqui em busca de uma vaga para que eu possa me desenvolver profissionalmente e humanamente, tenho muita disposição pra aprender coisas novas, e o novo me fascina, tenho facilidade em aprender, gosto de escutar e aprender com quem tem mais experiência, tenho conhecimento basico em pacote office, tenho conhecimento no software SAP que era utilizado na gestão de estoque, conhecimento médio em tecnologia e sempre em busca de mais, gosto do trabalho em equipe e dos desafios, pronto pra qualquer coisa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-08T17:31:00.000Z'::timestamptz),
  ('Andreza da Silveira Gomes','andrezagoms94@gmail.com',NULL,'51992543399','1994-09-02',31,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=12EjvHD1Am61o8IFKH5O3I9DLYdIAqKAe',NULL,'Ensino Superior Incompleto','Unisinos','2026-07-10','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Possuo mais de 9 anos de experiência na área administrativa. Atuei como recepcionista em um consultório odontológico e atualmente trabalho na Universidade Unisinos.','Sou estudante de Marketing e recentemente concluí um curso de Desenvolvimento Web.',NULL,'Administrativa',NULL,NULL,'Instagram','Não','3.000,00','Sim',NULL,'Administrativo',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-08T21:46:00.000Z'::timestamptz),
  ('Kauany de Souza Oliveira','kauanydesouzaoliveira90@gmail.com',NULL,'51980463268','2005-10-25',20,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1tKrlGXrI_gbQiSD8gVIpJImW5__REy1e',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','1) Explorer Call Center
2) Operador de Call Center
3) inicio:09/10/2024 fim:22/05/2025
4) Atendimento ao cidadão fazendo solicitações e abrindo reclamações de serviços prestados pela prefeitura',NULL,NULL,'Administrativa, Comercial',NULL,NULL,'Instagram','não','1500+','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa dedicada e com vontade de aprender coisas novas para sair da zona de conforto, me dedico até o fim para crescer junto com a emperesa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-08T22:18:00.000Z'::timestamptz),
  ('Priscila Maciel Freitas','priscila8848@gmail.com',NULL,'51995909495','1992-07-03',33,'Solteiro(a)','0','Sim','Caçapava Do Sul/rs','https://drive.google.com/uc?export=view&id=1yvBiAWGdtUraOo7odfGygCCz7GX_J7yk','Publicidade e Propaganda','Ensino Superior Completo','Universidade Estácio de Sá','2023-07-15','Sou formado','Atualmente atuo na Agência Faro, onde iniciei em fev/2020 como Analista de Suporte e, em fev/2023, fui promovida a Gestora de Projetos. Como analista, trabalhei com Google, mídias sociais, sites e e-commerces, adquirindo experiência em e-mail marketing, landing pages, integrações e linguagens como HTML, CSS, PHP e JavaScript. Já como gestora, sou responsável pelo contato com clientes, equipe e freelancers, acompanhando todas as etapas de projetos de sites e landing pages, além de atuar diretamente em processos criativos, SEO, DNS e configurações técnicas. Essa função aprimorou minhas habilidades de comunicação, relacionamento, organização, gestão de imprevistos, visão estratégica e criação de conteúdo.

Em 2020, trabalhei na Agência Triomidia como Estagiária de Criação (Design Gráfico), entre setembro e dezembro. Minhas atividades incluíram a criação de campanhas e conteúdos para redes sociais, desenvolvimento de conceitos e design de peças gráficas para impressão, utilizando Adobe Photoshop e Illustrator.

Entre jul/2019 e nov/2019, atuei na Bread and Company como Assistente Comercial de Catering Corporativo, sendo responsável por elaborar propostas orçamentárias, negociar com clientes, planejar cardápios personalizados, emitir ordens de serviço e manter o relacionamento com diferentes áreas da empresa. Essa experiência reforçou minhas habilidades de gestão de tempo, imprevistos, planejamento estratégico e comunicação.

Antes disso, trabalhei em funções de atendimento e vendas, incluindo Recepcionista, Assistente de Recrutamento e Seleção, Auxiliar de Expedição, Vendedora Interna e Representante de Vendas Externas. Destaco minha experiência como Representante de Vendas na Gráfica Jacuí, onde desenvolvi habilidades de criação de artes no CorelDraw, conhecimento em impressão off-set, representação em eventos do setor gráfico e participação em auditorias de qualidade (selos FSC e ISO 9001:2008).','Possuo cursos complementares voltados para marketing digital e ferramentas, design gráfico, ecommerce e sites',NULL,'Estágio, Marketing, Engenharia',NULL,'https://drive.google.com/open?id=19hcAJobUuW7Xrpio1kSyVTZBASRKXGx9','Instagram','não','depende, não gostaria de ser desconsiderada no processo por conta desta pergunta, minha pretensão varia de acordo com o cargo/funções e relação entre salário/benefícios','Sim',NULL,'Vagas na área de marketing e banco de talentos','Gostaria de compartilhar meu perfil no LinkedIn: https://www.linkedin.com/in/priscilamacielfreitas/

Sempre estive envolvida no meio criativo, mesmo quando não atuante na área. Gosto muito de escrever e tenho facilidade em criar textos. Gosto de desenhar (apesar de estar enferrujada rsrs), amo viajar e conhecer cafeterias, também amo um passeio mais na natureza, como visitar cascatas, fazer trilhas e a aventura que meu coração permitir ^^Sou um pouco tímida, mas consigo me expressar bem e gosto de falar em público, ensinar e apresentar, inclusive já fui professora. Tenho paixão pelos animais, e já atuei em trabalhos voluntários da causa animal. Gosto de cozinhar e sou fã do MasterChef! 

Minhas habilidades envolvem mais software de criação (design), automações e IAs, mas também já integrei muita plataforma a sites e ecommerces. Sou curiosa e não há o que eu não saiba, porque quando não sei, eu dou um jeito e aprendo rapidinho.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-08T22:40:00.000Z'::timestamptz),
  ('Taylane Oliveira de Araújo','taylaneoliveira@hotmail.com',NULL,'51996529056','1989-05-07',36,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1IlNuOpykPDVDFpSxxt_jW0o_Z8S0PLUE','Gestão de recursos humanos','Ensino Superior Completo','Unisinos','2022-06-01','Sou formado','Gráfica gaúcha, representante comercial, vendas externas e on-line',NULL,NULL,'Administrativa, Marketing',NULL,NULL,'Instagram','Não','2500','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Olá, venho por meio deste formulário me inscrever no banco de talentos pois estou a procura de novos conhecimentos e de uma nova oportunidade no mercado, me vejo uma pessoa disposta a aprender e aceitar novos desafios, organizada, pontual, de bom convívio com colegas!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-09T02:01:00.000Z'::timestamptz),
  ('Nathaly Rodrigues Sanches','nmoraes2810@gmail.com',NULL,'51980277939','1999-10-28',26,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1qa8dFmlejZVTLH9JQbF22p1_6M0bzJV9',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Segue as informações no currículo em anexo',NULL,NULL,'Administrativa',NULL,'https://drive.google.com/open?id=1W5nQou4uUnUk8W-HTiXh1BxzVMcWWqXw','Facebook','Não','2300','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-09T08:32:00.000Z'::timestamptz),
  ('Lucas Moita','lucasmoitta1@gmail.com',NULL,'981062202','2001-01-10',25,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1M0OC6ahIn7Glwy8kgkeFK79kV58_fVX9','Design de Produto','Ensino Superior Incompleto','Uniritter','2024-07-15','Não, no momento pausei/parei por um período.','Possuo experiência de 2 anos na área do Design Gráfico/Marketing Digital. 7 Meses de experiência num escritório de Arquitetura especializado em Regularização fundiária. Lá, atuava como assistente de um pequeno time de marketing. Atuava em todo processo de comunicação da empresa, desde a ideação das campanhas até a execução das ideias, produzindo peças gráficas físicas de uso externo e interno, como também peças gráficas digitais para o site e redes sociais da empresa. Além disso, também atuava na edição de vídeos para as redes socias e de faixas de áudio que tocavam em carros com alto falante que passavam nos bairros que eram atendidos pela empresa, anunciando datas de assembleias e convidando os moradores a ingressarem nos projetos de regularização de seus terrenos. A empresa se chama Realize Projetos de Vida, alguns das peças que produzi na época se encontram no meu portfólio, apesar de não representarem meu nível atual de design, fazem parte da minha jornada e evolução na área. Ingressei primeiramente como estagiário, depois sendo efetivado CLT. De Julho de 2023 até fevereiro de 2024. 

O resto das minhas experiências profissionais na área vêm de diferentes  freelances, alguns exemplos desses trabalhos se encontram em meu portfólio.','Possuo cursos online que me ensinaram técnicas de design junto com insights sobre como criar artes estáticas e motions designs que impactam e chamam atenção das pessoas. Além de um tecnólogo em Design de Produto que fiquei a 1 semestre de Finalizar, tive que trancar ele por motivos pessoais na época. Pretendo voltar e terminar a graduação.',NULL,'Marketing',NULL,NULL,'Instagram','não','R$2.750 + Benefícios.','Sim','Vou mandar meu link do portfólio por aqui pois na parte do formulário destinada ao portfólio não me deixa por a URL do behance. 

https://www.behance.net/lucasmoitac','Assistente de Marketing.','Sou uma pessoa extremamente eclética. Tenho experiência profissional com Pintura domiciliar, como Auxiliar de cozinha, como assistente administrativo e como Designer. Possuo fascínio por diferentes áreas do conhecimento, indo da Matemática até Artes e Filosofia. Também gosto de praticar diferentes esportes, desde jogar futebol até andar de skate e treinar musculação. Sou amante e estudante da natureza, especialmente do corpo humano. Falo inglês fluentemente, consumindo bastante referências internacionais sobre todos assuntos de meu interesse. 

Recentemente, dei início a um sonho antigo de criar conteúdo nas redes sociais sobre o jogo que é um hobby mas que também ja fora uma experiência profissional em minha carreira. Se trata do jogo de futebol digital EA FC, antigo FIFA. Sou um ex jogador profissional que segue competindo no mais alto nível do jogo. Compartilho dicas e curiosidades sobre o jogo no meu perfil que criei para produzir e postar estes conteúdos. Pretendo lançar um produto digital onde ensinarei pessoas interessadas a evoluir dentro do jogo. (@moitax747 no TikTok.) PS: estou bem no comecinho do perfil, é um sonho meu bem antigo que finalmente saiu do papel, a menos de uma semana. Postei o primeiro vídeo dia 6 de setembro.

PS 2:
Softwares que trabalho: 
Adobe Photoshop, nível avançado.

Adobe Illustrator, nível avançado. 

Adobe After Effects, nível intermediário.

CapCut, nível avançado. 

Figma, nível intermediário.

Muito obrigado pela atenção!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-09T11:46:00.000Z'::timestamptz),
  ('Robert Rondan','robertrondan@gmail.com',NULL,'53991372222','1989-02-15',37,'Divorciado(a)','2','Sim','Pelotas/rs','https://drive.google.com/uc?export=view&id=1XiPT4Uhtw14cps0XkvzWb6WefW2NNs53','Técnico em Transações Imobiliárias','Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Imobiliária Proper - Corretor de Imóveis - Agosto de 24 até Julho de 25
SevenGroup 360 - Gestor Comercial - Agosto 25 - Treinamento e gestão de imobiliárias parceiras, estudo do mercado, fechamento de negócios, estratégia de novos projetos.',NULL,NULL,'Administrativa, Comercial, Financeiro, Marketing',NULL,NULL,'Google','Não','R$4.500,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-09T14:20:00.000Z'::timestamptz),
  ('Elisangela Diehl da Silva','elisadiehl.design@gmail.com',NULL,'51995274282','1989-11-29',36,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1axa9D3ciqhYIhK8YOVpX0oYxwx71puKx','Design Bacharelado','Pós-graduação Completa','Universidade Luterana do Brasil - ULBRA','2021-06-26','Sou formado','Vinhos do Mundo
-Auxiliar de Marketing
De 11/03/2024 à 01/04/2025
• Produção de e mail marketing
• Peças para redes sociais
• Layout e impressão de carta de vinhos, displays, cartões de visitas, crachás, banners e materiais de comunicação em geral.
• Edições de vídeos simples (Cap Cut e Canva) 

Agência Escape
Ui Designer 
De 28/10/ 2022  à 15/08/2023  
• Criação de Wireframes
• Criação de Landing Page
• Layout para Sites Institucionais
• Protótipos navegáveis no Figma

Vtex Brasil
Analista de Design Gráfico
De 15/12/2021 à  01/07/2022

• Peças gráficas para Blog
• Criação de Landing Page
• Peças para campanha ADS
• Peças para Social Media
• Diagramação de Ebooks

Bebidas do Sul 
Auxiliar de marketing 
De 08/04/2019 à 03/12/2021 
• Layout e disparo de e-mail marketing via Mail Chimp
• Auxílio nas campanhas de promoções 
• Peças para redes sociais
• Layout de crachás e cartões de visita 
• Banners e edições de imagens para o site e para o app
• Envio de pushes

Portfólio : https://elisadiehldesign.myportfolio.com/','A faculdade de Design Bacharelado é voltada para o design de produto (físico e digital). Fiz curso profissionalizante em Design Gráfico pelo Senac-RS e iniciei minha experiência profissional na área no setor de marketing. Desde então, fiz cursos e participei de workshops online na área de design digital ( Arquitetura de Informação, UI Design, Princípios de UX). Recentemente, concluí um MBA em Design Digital e Branding e uma pós graduação em Gestão de Mídias Sociais pela Uninter.',NULL,'Marketing',NULL,NULL,'Puc Carreiras','Não','3.000,00','Não',NULL,'Assistente de Marketing','Sou voluntária no Grupo Escoteiro Souza Lobo em Porto Alegre desde fevereiro de 2025. Além de ajudar na limpeza e organização da sede, cuido das redes sociais do grupo, faço materiais gráficos e materiais de sinalização, captação e edição de vídeos simples, captação de fotos, participo da organização de eventos e faço layout de convites digitais. 

Link do Instagram do grupo: https://www.instagram.com/escoteirossouzalobo150?igsh=MXJ3ZTIzM21qb3l1Yw==

Sobre mim: Pratico Crossfit e corrida, gosto muito de estudar e aprender coisas novas, meu sonho é viajar pelo Brasil e canto numa banda de rock. 😃 Sou muito persistente e focado nos meus objetivos pessoais e profissionais.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-09T15:17:00.000Z'::timestamptz),
  ('Claudia Laguna','laguna.cau@gmail.com',NULL,'51993910431','1986-04-18',39,'Solteiro(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=11ScTLo5OaTJO7IVr6J-3e4-_wL1j584S','Comunicação - Relações Públicas','Pós-graduação Incompleta','Unisinos','2015-01-10','Sou formado','Consultora em Experiência do Cliente — Autônoma

Santo Antônio da Patrulha/RS • 08/2024 – atual
Resultados e Atividades:
        •        Criação de diagnósticos personalizados e planos de ação para qualificação do atendimento.
        •        Realização de treinamentos e palestras com foco em encantamento e fidelização de clientes.
        •        Aumento da satisfação e retenção de clientes em pequenos negócios locais.

⸻

Assessora de Comunicação — FURG (Universidade Federal do Rio Grande)

Santo Antônio da Patrulha/RS • 03/2022 – 09/2024
Resultados e Atividades:
        •        Fortalecimento da imagem institucional do campus local.
        •        Produção de conteúdo para site, rádio, redes e eventos.
        •        Criação e locução de podcasts institucionais.
        •        Ampliação da presença da universidade na imprensa regional.

⸻

Relações Públicas e Social Media — Estúdio Tanto

Santo Antônio da Patrulha/RS • 03/2020 – 02/2022
Resultados e Atividades:
        •        Gestão de redes sociais de empresas e candidatos políticos com aumento de engajamento.
        •        Criação de identidade visual e estratégia digital personalizada.
        •        Consultorias de imagem e posicionamento para negócios locais.

⸻

Chefe de Comunicação — Câmara de Vereadores de SAP

Santo Antônio da Patrulha/RS • 02/2017 – 02/2020
Resultados e Atividades:
        •        Reestruturação da comunicação institucional.
        •        Coordenação de eventos oficiais e cerimoniais públicos.
        •        Produção de conteúdo e campanhas educativas para a comunidade.

⸻

Coordenadora de Comunicação — Prefeitura Municipal de SAP

Santo Antônio da Patrulha/RS • 2011 – 2016
Resultados e Atividades:
        •        Planejamento e execução de campanhas institucionais.
        •        Cerimonial e protocolo em eventos oficiais e populares.
        •        Criação de ações para o turismo e divulgação cultural da cidade.
        •        Atendimento direto à imprensa e aos públicos internos e externos.

⸻

Assistente Administrativo — SIMERS (Sindicato das Indústrias de Máquinas)

Porto Alegre/RS • 2010
Resultados e Atividades:
        •        Organização da logística de expositores na Expointer 2010.
        •        Gestão administrativa, contratos e pagamentos.
        •        Atendimento empresarial e suporte a eventos setoriais.

⸻

Radialista e Repórter — Rádio Itapuí

Santo Antônio da Patrulha/RS • 2008 – 2010
Resultados e Atividades:
        •        Produção e apresentação de programa diário com foco em comunidade.
        •        Cobertura especial das eleições 2008 com transmissão ao vivo de 10h.
        •        Aumento da audiência e engajamento através de inovação no conteúdo.

⸻

Estágio em Comunicação — Prefeitura de SAP

Santo Antônio da Patrulha/RS • 2006 – 2008
Resultados e Atividades:
        •        Mestre de cerimônias de eventos oficiais.
        •        Produção de releases, spots de rádio e protocolo de eventos.
        •        Apoio à assessoria de imprensa e marketing institucional.','Curso de Protocolo, cerimonial e eventos.
Curso de gestão da comunicação 
Curso de experiência do cliente e atendimento de excelência 
Curso de gestorea de administração e comunicação 
Curso de inglês 
Curso de Instagram, algoritmo e mídias sociais
Curso de gestão de mídias sociais',NULL,'Administrativa, Marketing',NULL,NULL,'Instagram','Antonio Alves','3.000,00','Não','Jassira Castro - 51 99251-5616

Marcelo Gaucho - 51 99818-1704

Júlia Rancheski - 51 99928-2661','Quero inscrever-me no banco de talentos da Young!','Relações Públicas formada com 18 anos de experiência em comunicação institucional e pública. Especialista em endomarketing, assessoria de imprensa, mídias digitais, produção de conteúdo e atendimento ao cliente. Sólida vivência em eventos, cerimonial, marketing digital e relacionamento com stakeholders diversos. Atualmente, atua como consultora e treinadora em Experiência do Cliente, com foco em atendimento de excelência e humanizado.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-09T19:20:00.000Z'::timestamptz),
  ('Angélica Machado da Silva','machadodasilvaangelica97@gmail.com',NULL,'51995020957','1987-06-05',38,'Solteiro(a)','2','Não','Nao','https://drive.google.com/uc?export=view&id=1al1PL9qSXqi0CHgFbXVN6lXjwLqtgxYg',NULL,'Ensino Superior Incompleto','Furg',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Magna, inspetora de Qualidade, inspeção de peças','Exel ,nota fiscal,informática basica...',NULL,'Engenharia',NULL,NULL,'Agência de Empregos','Nao','2 salarios','Sim',NULL,'Aux.de projetos','Sou de casa,saio bem pouco','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-09T21:28:00.000Z'::timestamptz),
  ('Dionatan Quiles Seidler','dionatan.quiles1@gmail.com',NULL,'51999052743','2000-08-14',25,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1nIXNyvaI7uxNNdDiUo2RmD5mpvQlorPF','Marketing','Ensino Médio Completo','Polo Universitario',NULL,'Não, no momento pausei/parei por um período.','Costa e Kosvoski LTDA/ Vaga: Repositor de mercadorias/ Data de admissão: 08/11/2018/ Data de saida: 24/06/2020.

Rudder Serviços Gerais LTDA/ Vaga: Segurança/ Data de admissão: 01/12/2021/ Data de saida: 07/06/2022.

Vero S.A/ Vaga: Operador de Telemarketing Tecnico/ Data de admissão: 04/07/2022/ Data de saida: 09/05/2023.

M F Gomes e Cia LTDA/ Vaga Repositor de Mercadorias/ Data de admissão: 24/05/2021/ data de saida: 07/06/2021','Cursos profissionalizantes: Informatica profissional completo, manutenção de  computadores basico, gestões administrativas basico e cursando Marketing profissional.',NULL,'Comercial, Marketing',NULL,NULL,'Agência de Empregos','Nao fui indicado por ninguém.','1800$','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-09T21:44:00.000Z'::timestamptz),
  ('Maria Eduarda Coelho Mello','eduardacoelhomello@gmail.com',NULL,'55992313648','2007-03-13',18,'Solteiro(a)','0','Não','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1wm-p63oslKOrcR4dYitT2mQQbOJSXWTb',NULL,'Ensino Médio Completo','Uniasselvi','2029-07-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Companhia Riograndense de Saneamento - Corsan
Cargo: Auxiliar administrativo
Período: 20/12/2021 á 19/12/2023
Principal atividade: Atendimento ao público e auxiliar administrativo.

Simbiose Agro
Cargo: Auxiliar de produção - Envase SC
Período: 14/05/2025 á 18/07/2025

Aline Miranda Caraffa Machado - Clínica Saberes
Cargo: Secretária
Período: 31/01/2024 á 24/03/2025
Principal atividade: Cadastro de pacientes, atendimento ao público, recepção dos pacientes,
atender ligações, agendamentos de consultas e auxiliar em informações.

Agência Cime Comunicação Integrada
Cargo: Social Media - estagiária
Período: 29/07/2025 - até o momento','Atualmente, estou cursando Bacharelado em Administração (EAD), o que complementa minha formação e amplia minha capacidade de atuação nas demandas administrativas e organizacionais do ambiente de trabalho.',NULL,'Administrativa, Estágio, Financeiro, Marketing',NULL,NULL,'Indicação','Sim','R$1.800','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Olá!
Meu nome é Maria Eduarda Coelho Mello e venho, por meio desta mensagem, manifestar meu interesse na vaga disponível em sua empresa.

Sou uma profissional pontual, proativa, comunicativa e com excelente relacionamento interpessoal. Tenho experiência consolidada em atendimento ao público, agendamentos, recepção de pacientes e rotinas administrativas, adquiridas ao longo das funções que exerci em instituições como a Clínica Saberes e Companhia Riograndense de Saneamento (Corsan).
Atuei também na agência CIME de marketing digital como Social Media, sendo responsável pela gestão de redes sociais, elaboração de conteúdos estratégicos e análise de métricas de desempenho, visando o fortalecimento e engajamento das marcas.

Atualmente, estou cursando Bacharelado em Administração (EAD), o que complementa minha formação e amplia minha capacidade de atuação nas demandas administrativas e organizacionais do ambiente de trabalho.

Acredito que minha facilidade de adaptação, dinamismo e comprometimento podem contribuir de forma positiva para a equipe e os objetivos da empresa. Em anexo, envio meu currículo para apreciação.

Desde já, agradeço pela oportunidade e coloco-me à disposição para uma entrevista.

Atenciosamente,
Maria Eduarda Coelho Mello','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-09T21:48:00.000Z'::timestamptz),
  ('Thaina Silva das Neves','silvathaina885@gmail.com',NULL,'51995378458','2001-08-20',24,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1FAp4EHGOHiGZW33KlTK-USbLG-FN-M7U','Auxiliar Administrativo','Ensino Médio Completo','Uniasselvi','2024-12-27','Não, no momento pausei/parei por um período.','Santo Antônio Alimentos: Embaladora a mão: 11/03/2029 a 22/08/2020.
Guimarães Alimentos: Embaladora a mão: 21/05/2021 a 16/10/2024','Sou formada em Auxiliar Administrativo. Fiz o curso profissionalizante da Uniasselvi.',NULL,'Administrativa, Marketing',NULL,NULL,'Agência de Empregos','Não','$2.250,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Bom, me chamo Thaina, tenho 23 anos. 
Estou em busca de um crescimento profissional, de novas oportunidades. Sou uma pessoa pontual, comprometida, proativa. Sou de fácil aprendizado. Gosto de trabalhar em equipe, me adapto a qualquer tarefa na qual seja atribuída a mim.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-09T21:54:00.000Z'::timestamptz),
  ('Hellen Cardoso Santos','hellencs2203@gmail.com',NULL,'995926938','2008-03-22',17,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=18pGXX88VMQ1L5J5oZ9ep2x12GxvdE2Qm','Ensino médio','Ensino Médio Incompleto','Gregoria de Mendonça','2025-12-18','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Estágio no setor de recursos humanos da Prefeitura Municipal de Santo Antônio da Patrulha',NULL,NULL,'Administrativa',NULL,NULL,'Agência de Empregos','Não','2000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou esforçada e sempre procuro por aprender coisas novas. Procurando sempre enriquecer profissionalmente','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-09T21:57:00.000Z'::timestamptz),
  ('Luana Corteletti','luana.corteletti83@gmail.com',NULL,'51996717191','1983-01-12',43,'Divorciado(a)','1','Sim','Riozinho/rs','https://drive.google.com/uc?export=view&id=1Blms_bQ_x4wnUdObMwHx4RaPQr0uWJOP','Tecnologia em Marketing Digital','Pós-graduação Completa','Anhanguera','2021-03-27','Sou formado','Respondido na pergunta anterior.','Formação Acadêmica - Tecnólogo em Marketing Digital, Universidade Anhanguera (concluído em 2020) 

Experiência Profissional

Prefeitura Municipal de Riozinho Cargo: Assessora de Imprensa (Cargo de Confiança) Período: 4 de janeiro de 2021 a 4 de novembro de 2024 - Atividades: Controle das redes sociais (Instagram e Facebook) da Prefeitura Municipal de Riozinho e Marketing na assessoria de imprensa. 

Lojas Colombo S/A (Rolante/RS) Cargo: Vendedora Período: 3 de fevereiro de 2020 a 28 de abril de 2020 Atividades: Atendimento ao cliente e vendas de produtos eletroeletrônicos e móveis.

Lojas Magazine Luiza (Rolante/RS) Cargo: Vendedora Período: 6 de setembro de 2019 a 21 de dezembro de 2019 Atividades: Atendimento ao cliente, vendas e apresentação de ofertas personalizadas. Participei de um treinamento prático/presencial de vendas e atendimento ao cliente em São Paulo/SP durante todo o mês de setembro de 2019.

R.R. Sedres (Taquara/RS) Cargo: Auxiliar de Escritório, Vendas e Marketing Período: 5 de outubro de 2020 a 4 de janeiro de 2021 Atividades: Vendas de trailer e reboques, controle de mídias sociais.

Mecânica Mapelli Ltda (Riozinho/RS) Cargo: Auxiliar Geral de Escritório Período: 2 de janeiro de 2019 a 28 de agosto de 2019 Atividades: Emissão de notas, controle de estoque, cobrança e atendimento ao cliente.

Calçados Sandra Ltda (Riozinho/RS) Cargo: Trabalhadora Polivalente de Confecção de Calçados Período: 4 de fevereiro de 2015 a 14 de fevereiro de 2018 Atividades: Diversas funções no setor de montagem e revisão de calçados. 

Prefeitura Municipal de Riozinho (Riozinho/RS) Cargo: Agente Administrativo Período: 8 de maio de 2002 a 4 de julho de 2014 Atividades: Controle interno, gestão patrimonial e atendimento ao público em diversas secretarias.

Defensoria Pública do Estado Cargo: Atendente Período: 2 anos Atividades: Atendimento ao público, recebimento de clientes e orientação sobre a documentação necessária para processos.

Fórum Judicial de Taquara (Taquara/RS) Cargo: Atendente do Balcão de Cartórios Período: 3 anos Atividades: Atendimento ao público, orientação sobre movimentações de processos e juntada de documentos para andamento dos mesmos.',NULL,'Administrativa, Comercial, Marketing, Engenharia',NULL,NULL,'Instagram','Não.','A partir de R$2.500,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Estou à disposição para fornecer mais informações e realizar uma entrevista, seja presencial ou online, para esta vaga. Acredito poder contribuir com dedicação e resultados positivos para a empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-09T22:09:00.000Z'::timestamptz),
  ('Gelson Gularte Gomes','gelsongularte@yahoo.com.br',NULL,'51995080343','1979-01-23',47,'Solteiro(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1cIyaFjRO4-7_sz2qZCPnOblyWze12gCO','tec.  edificações  e PLAGEDER UFRGS','Ensino Superior Incompleto','UFRGS','2028-03-02','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Desde 1997 na área de topografía com diversas. Empresas, no currículo.','Tec. edificações com diversar obras pelo estado do RS.',NULL,'Financeiro, Engenharia',NULL,'https://drive.google.com/open?id=1No5Sjex_BEN1KEmdmc2zQBMMsMXrwlTq, https://drive.google.com/open?id=1nMRRy4VanY6cWMnky0VSZBb3NQZGkZmb','Indicação','sim','maisdo que 6 mil mensais','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-09T22:10:00.000Z'::timestamptz),
  ('Bruna orfelina viana ture','bruna.ture@hotmail.com',NULL,'55984691891','1985-08-13',40,'União estável','1','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1LvSkeiZcsm6t4Mp5tnLupFQscXPHIG6z',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Sou promotora de vendas',NULL,NULL,'Comercial',NULL,NULL,'Facebook','Nao','2.800','Não','Allis / ativa / alpha','Comercial','Sou uma pessoa responsável e com bastante iniciativa gosto de me comunicar e sou boa em vendas e pontos estratégicos na área de venda','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-09T22:38:00.000Z'::timestamptz),
  ('Erik Cardoso','erikcardoso777@gmail.com',NULL,'51992920080','2002-03-18',23,'Solteiro(a)','0','Não','Caraá/rs','https://drive.google.com/uc?export=view&id=12iYULPjlh111ttEd0MFqfMpttai6Ra0a','Administração','Ensino Superior Incompleto','São Francisco de assims','2028-10-09','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Prefeitura Municipal de Santo Antonio da Patrulha, estagiário no setor de fiscalização, começo em 26/10/2024 até 16/07/2025. Atividades: confecção de planilhas, documentos, atendimento aos contribuintes, arquivo','Atualmente estou cursando Administração, conteudos como administração de empresas, gestão de pessoas, marketing, contabilidade',NULL,'Administrativa, Estágio, Engenharia',NULL,NULL,'Agência de Empregos','Não','2.000','Não','Daniela Jacques','Quero inscrever-me no banco de talentos da Young!','Sou estudante de Administração, tenho experiência em atendimento ao público e rotinas administrativas. Já atuei como recepcionista, auxiliar administrativo e estagiário jurídico, adquirindo conhecimento em organização, planilhas, atendimento e finanças. Tenho facilidade em aprender novas ferramentas, boa comunicação e gosto de trabalhar em equipe. No tempo livre, gosto de treinar na academia, o que me ajuda a manter disciplina e foco.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-09T22:52:00.000Z'::timestamptz),
  ('Danielli Palaver Fernandes','danielli.pf@gmail.com',NULL,'51991176891','1989-11-20',36,'União estável','1','Sim','Viamão/rs','https://drive.google.com/uc?export=view&id=1-wE9qUeETLrD8gqNeJW_b08O8IanYnf3','Arquitetura','Pós-graduação Completa','PUCRS','2013-01-26','Sou formado','Não tive trabalho com carteira assinada sempre fui autônoma','Sou formada em Arquitetura e Urbanismo, tenho MBa em Gestão Empresarial pela UniRitter,',NULL,'Administrativa, Arquitetura, Novos Negócios, Engenharia',NULL,NULL,'Instagram','Não','5000','Sim','Carol Gomes Arquitetura - Carolina proprietária trabalhei em parceria','Quero inscrever-me no banco de talentos da Young!','Inglês intermediário, Photoshop e canva intermediário, AutoCAD avançado e SketchUp avançado, sempre buscando se atualizar','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-09T22:55:00.000Z'::timestamptz),
  ('Suelen Carpovinski Paz','pazsuelen1@gmail.com',NULL,'55996658160','1999-10-06',26,'Casado(a)','0','Não','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1tN5qSePb5AG2C9rOOBsaUhC5rP7JPagx','Administração de empresas','Ensino Superior Incompleto','Uniasselvi','2026-12-12','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','.',NULL,NULL,'Administrativa, Financeiro',NULL,'https://drive.google.com/open?id=1J3cc7REQZ6piR8GaEulWhJeCSt_ZTC3j','Facebook','Nao','2.000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-10T00:29:00.000Z'::timestamptz),
  ('Luana Prado de Oliveira','luanaprado.540@gmail.com',NULL,'51991135105','2000-02-01',26,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1skaWbiiFwp054IQPH6fUQA_7sr88VVeg','Tecnólogo em Marketing','Ensino Superior Completo','Unifatecie','2024-12-06','Sou formado','Auxiliar administrativo no hospital são Lucas da PUC  em novembro de 2021 até novembro de 2022 , estágio como auxiliar de marketing place na Web continental em novembro de 2023 a abril de 2024',NULL,NULL,'Marketing',NULL,NULL,'Instagram','Não','2000','Não',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-10T04:13:00.000Z'::timestamptz),
  ('Paula Chaves Hernandes','paulachaves41147@gmail.com',NULL,'53991183553','1981-01-21',45,'União estável','0','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1Y5NzbUo-OHGZr-ujFSdUm0l9bHmj7VhZ',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Osirnet vendas
Rede conesul vendas',NULL,NULL,'Comercial',NULL,'https://drive.google.com/open?id=1J_ZT8aXxZ7oMElX1RKkEZKwadfPNwGxy','Facebook','Nao','Compatível com a função','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-10T13:52:00.000Z'::timestamptz),
  ('Gustavo da Silva Pontes','gustavopont90@gmail.com',NULL,'51996275119','2004-07-30',21,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1MD_-XgiQmLTgRBanol98ylxmNaV4He_a','Ainda nao posso formação','Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','1. Natural Light.

2. Repositor de Mercadoria.

3. 05/2024 – 07/2025.

4. Auxiliava nas vendas, atendimento e operação de caixa. Organizava e criava relações para fins de reabastecimento do estoque.',NULL,NULL,'Administrativa, Estágio, Marketing',NULL,NULL,'Agência de Empregos','Não fui indicado.','A quantidade recomendada com basa na carga horária, e pela função que irei executar.','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Possuo conhecimento em computação, Word e Excel. Tenho fácil aprendizado, sou proativo e possuo fácil comunicação.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-10T15:23:00.000Z'::timestamptz),
  ('Jessica Costa da Paz','jessicacdapaz@gmail.com',NULL,'51982988215','1991-07-02',34,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1KbS-CJ8wRABDQTMYTpmqY7WWdYOUcubS','Arquitetura','Ensino Superior Completo','Faculdade São Francisco de Assis','2023-08-03','Sou formado','CFL Inc - Analista de Atendimento ao Cliente Senior
Março/2025 – Setembro/2025
Atuei na oferta e implantação de kits personalizados, adaptando cada unidade conforme o
perfil e as preferências dos clientes. Buscando, junto aos fornecedores, as melhores soluções
técnicas para atender às demandas, sempre considerando a viabilidade e a qualidade da
execução. Realizei a compatibilização e a análise dos projetos, assegurando a coerência
entre as disciplinas envolvidas.
Conduzi reuniões para apresentação e definição de layouts, sistemas e acabamentos que
melhor atendam às necessidades de cada cliente. Trabalhei em parceria com o setor de
Personalização na análise de viabilidades, conferência de projetos e acompanhamento de
visitas técnicas às obras. Também colaborei com o setor de Qualidade na implementação
de processos e na fiscalização das etapas finais da obra, garantindo a entrega conforme os
padrões estabelecidos.
Fui responsável pelo acompanhamento dos aditivos contratuais, desde a elaboração até a
assinatura final. Tenho amplo domínio do AutoCAD, com foco em análise e conferência de
projetos, além de sólida experiência em Excel para organização, controle e análise de
dados. Também opero com facilidade plataformas como Sienge, Autodoc, Mobuss e CV
CRM.
Segui coordenando e conduzindo o processo de entrega das unidades aos proprietários,
realizando vistorias técnicas acompanhadas além de relatórios técnicos detalhados de vistorias. 
CFL Inc - Analista de Atendimento ao Cliente
Março/2024 – Fevereiro/2025
Segui coordenando a equipe externa de Assistência Técnica para empreendimentos em RS
e SC, tratando reclamações, elaborando fichas de vistorias, agendando e enviando
documentação. Auxiliei na implementação de sistemas, lancei solicitações e orçamentos, além
de participar de reuniões com condomínios. Realizei vistorias de imóveis, transferências
de titularidade e providenciei documentações jurídicas. Também fui responsável pela
implementação do setor de Atendimento ao Cliente, gerenciando solicitações de
clientes externos em RS e SC, comunicando o setor de projetos sobre novas vendas para
personalização, e elaborando indicadores e relatórios de monitoramento mensalmente.
Além dessas atividades, conduzi o processo de entrega das unidades aos proprietários,
realizando vistorias técnicas acompanhadas, orientando os clientes quanto aos sistemas e
acabamentos da unidade e assegurando a conformidade com o que foi contratado.
Elaborei relatórios técnicos detalhados de vistorias em salas comerciais, registrando não
conformidades e propondo melhorias. Atuei ainda na elaboração do Manual do Proprietário
e do Síndico, estruturando as informações técnicas e operacionais dos empreendimentos de
forma clara, objetiva e acessível aos usuários finais.
CFL Inc - Assistente Técnico de Pós-Obra
Março/2022 – Fevereiro/2024
Coordenei equipe externa de Assistência Técnica, gerenciando o fluxo de solicitações de
empreendimentos no RS, tratando reclamações dos clientes, elaborando fichas de
vistorias e atendimentos técnicos. Realizei agendamentos, enviei documentação aos clientes
e elaborei indicadores de desempenho. Auxiliei na implementação do sistema de Pós-obra em
RS e SC, lancei solicitações no Sienge e obtive orçamentos junto a fornecedores.
Participei na montagem de apresentações e laudos técnicos, realizei vistorias de imóveis,
transferências de titularidade e providenciei documentações jurídicas.
Encorp Eng - Auxiliar técnico
Março/2019 – Fevereiro/2022
Como Auxiliar Técnico no setor de Assistência Técnica, liderei a coordenação dos
serviços, desde o recebimento de chamados até o fechamento no sistema, incluindo
elaboração de boletins de atendimento e agendamento com os clientes. Supervisionei a
preservação dos produtos em empreendimentos entregues, garantindo conformidade com os
padrões de qualidade certificados pela ISO 9001 e PBQBH-A. Também assumi o papel de
gestão do relacionamento com o cliente.
Goldsztein Cyrela - Analista de incorporação
Janeiro/2018 – Janeiro/2019
Gerenciei a manutenção de terrenos, organizava e mantinha plantões de vendas, além de
supervisionar apartamentos decorados.
Goldsztein Cyrela - Técnico em edificação
sica-costa-da-paz-4bba61173
Fevereiro/2015 – Janeiro/2018
Liderei equipe de Assistência técnica, respondi solicitações de atendimento dos clientes, elaborei
boletins de ocorrências e acompanhamento de chamados até a sua conclusão.
Lual Projetos - Projetista Cadista
Janeiro/2014 – Dezembro/2014
Projetista cadista no setor de projetos.','Sou Arquiteta e Técnica em edificações. Recebi duas menções honrosas na formatura: melhor aluno e melhor TCC. O tema do meu TCC foi PROJETO DE REESTRUTURAÇÃO VIÁRIA E PAISAGÍSTICA DO
ENTRONCAMENTO DA ERS-240 E ERS-122 PORTÃO/RS',NULL,'Arquitetura',NULL,NULL,'Agência de Empregos','Não','A combinar','Não','Eng Suelen Gehlen - +55 51 99432-1229 - Gestora na CFL Inc','Para oportunidades em Arquitetura','Sou uma profissional comprometida, com sólida experiência nas áreas de Atendimento
ao Cliente, Assistência Técnica, Incorporação e Projetos. Atuo como Analista de
Atendimento ao Cliente, liderando equipes externas e garantindo qualidade nas entregas
e satisfação dos clientes. Tenho histórico de atuação em empresas renomadas, com foco
em resultados, resolução de problemas, liderança e excelência no relacionamento com o
cliente. Estou em constante busca por aprendizado e novos desafios que impulsionem
meu desenvolvimento e contribuam para o sucesso da equipe.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-10T16:15:00.000Z'::timestamptz),
  ('Fernanda Ucha Teixeira','fernandaucha045@gmail.com',NULL,'55984682739','1983-12-27',42,'Solteiro(a)','1','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1n85Nwd5xxYjhp4c2p2n5qJKw_n4CqdtU',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Mgm Prodoutospara cabelos 2001-2002
Consultora de Vendas
Danatos produtos para cabeleireiros 2002-2003
Consultora de Vendas
SupermercadosRighi 2003-2008
Operadora de caixa
Graziottin SA - Total Casa e Conforto 2008-2011
Consultora de Vendas
Gerente de Loja
Secretariadafazenda de Sant''Ana do Livramento 2011-2012
Estágio administrativo no cadastro imobiliario.
Simers-Sindicato médico do Rs 2012-2022
Auxiliar administrativa
Gerente de Negócios Pessoa Jurídica
Cielo S.A. -Instituição de Paçamento 2022- Fev. de 2025
Gerente de Negócios Pessoa Jurídica e Pessoa Física
Banco Senff - Abril 2025 a Agosto de 2025 Analista de contas Júnior

Em resumo, tenho experiência na área comercial há mais de 13 tanto na venda de produtos ,mas também na venda de serviços,atuando sempre com vendas e pós vendas,dando sempre suporte aos clientes.',NULL,NULL,'Comercial',NULL,'https://drive.google.com/open?id=1XqXJUNlSiUKGneAxNsXPDCJXd4kuKZI7','Instagram','Nao','3000','Sim',NULL,'Comercial','Sou artesã nas horas vagas,sempre fui muito criativa,sempre desenhei quando pequena,já fui voluntária em uma escola local onde  incentivava a atividade física através de oficina de dança e aulas funcionais. Sou muito comunicativa e,gosto bastante de interagir com as pessoas e sempre estou experimentando coisas novas.Pratico esportes,jogo padel quando tenho disponibilidade e comecei em um grupo de corrida faz um mês.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-10T16:57:00.000Z'::timestamptz),
  ('Isadora Irribarem Xavier','isairrixavier@hotmail.com',NULL,'51985985932','1999-09-09',26,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1CyabvTTNSGWh1epPec2rnCOCBlGutWaT','Arquitetura','Ensino Superior Completo','UNIVERSIDADE FEDERAL DE SANTA MARIA','2025-01-18','Sou formado','ESTÁGIO - EFETIVAÇÃO A CARGO DE CONFIANÇA
Prefeitura Municipal de Cachoeira do Sul/RS
Análise técnica de projetos arquitetônicos relacionados a processos de
aprovação de Habite-se, desmembramentos e loteamentos;
Cálculo de IPTU considerando características físico-geométricas dos imóveis
e parâmetros legais, com apoio de ferramentas como QGIS;
Participação em reuniões da Comissão Técnica Multidisciplinar (CTM)
contribuindo com análises e propostas técnicas.
Utilização do AutoCAD e QGIS no desenvolvimento e conferência de desenhos
técnicos, mapas e bases cartográficas para subsidiar as atividades acima.
10/2023 - 06/2024
ESTÁGIO
Sturza Engenharia
Modelagem de residências e edificações diversas no software BIM (Revit);
Projetos de desmembramento e individualização de unidades; Elaboração de
memoriais descritivos e orçamentos. Acompanhamento de obras por meio de
visitas técnicas. Utilização dos softwares Revit, AutoCAD e Vobi nas diversas
etapas do projeto.
08/2024 - ATUALMENTE
Tellini Vontobel Arquitetura
ARQUITETA JÚNIOR
Atuação em projetos de Paisagismo e Interiores, com predominância na área
de paisagismo de construtoras.
Representação gráfica de estudos projetuais utilizando Photoshop;
Modelagem e compatibilização interdisciplinar por meio do software BIM
(Revit), com participação em todas as etapas de desenvolvimento do projeto,
com ênfase em anteprojeto e projeto executivo.','Possuo experiência lidando com projetos em BIM (Revit), trabalhando com compatibilização interdisciplinar de projetos de grande porte.',NULL,'Arquitetura, Licenciamentos, Engenharia',NULL,'https://drive.google.com/open?id=1zWIR6E3BkTLUulp7B66SBpqludhEbfdm','Agência de Empregos','Não','3500','Sim',NULL,'Auxiliar de projetos','Prezados, olá! Aqui é a Isadora!

Sou arquiteta, me formei ainda este ano pela UFSM. Apaixonada por arquitetura, tenho muita alegria no que faço. Tenho um olhar otimista e curioso, sempre buscando novas formas de evoluir e me conectar com minha profissão e com a equipe em que estou inserida. Gosto de trabalhar em equipe, trocar ideias e acredito que a leveza e a simpatia tornam qualquer ambiente melhor. Levo comigo entusiasmo, dedicação e a vontade de construir não só espaços, mas também boas relações ao longo do caminho.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-10T17:06:00.000Z'::timestamptz),
  ('Lucas Barreto e Silva','lucas.barreto.nov@gmail.com',NULL,'51995096413','2003-06-02',22,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1z4zsqNLimw9Nry-xDH3FzMrivWqmZFfx','Arquitetura','Ensino Superior Incompleto','Uniritter','2026-12-10','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Ao longo da minha trajetória profissional na arquitetura, evoluí de forma constante, ampliando tanto meu conhecimento técnico quanto minhas habilidades práticas. Iniciei como estagiário na Módena Arquitetura (2022-2024), onde tive contato direto com o desenvolvimento de projetos, renderizações e suporte em diferentes demandas. Essa experiência foi essencial para consolidar minha base no uso de softwares e no entendimento do processo arquitetônico.

Posteriormente, no Mega Grupo (2024), aprofundei meu aprendizado em urbanismo e arquitetura comercial, participando de etapas de detalhamento de mobiliário, fachadas e elementos do setor, além de contribuir em pesquisas criativas. Essa vivência ampliou minha visão sobre a prática projetual e sobre o trabalho em equipe multidisciplinar.

Atualmente, na Sodexo Brasil (2024-2025), atuo em uma escala maior e mais complexa, com foco em detalhamentos, desenvolvimento de mobiliários, orçamentos e processos de otimização. Aqui, aprimorei meu domínio de softwares avançados, bem como minha capacidade de atender diferentes demandas com eficiência e qualidade.','Desde pequeno, sempre fui fascinado pelo mundo da arquitetura. Um dos meus passatempos preferidos era jogar Minecraft, onde construía casas, edifícios e até cidades inteiras, movido por essa paixão pelo construtivismo. Quando chegou a hora de escolher uma faculdade, não tive dúvidas: arquitetura era o meu caminho.
Atualmente, estou no oitavo semestre e não me arrependo da escolha que fiz. Ao longo desse percurso, conquistei prêmios em concursos internos, como o desafio da Tramontina em parceria com a universidade, e tive a oportunidade de ministrar palestras na faculdade, compartilhando experiências com outros estudantes. Essas vivências, somadas aos projetos acadêmicos, moldaram meu desenvolvimento como profissional, reforçando meu entusiasmo em seguir crescendo na área.',NULL,'Arquitetura',NULL,'https://drive.google.com/open?id=1JyNpPQXHavl3txyZpXluJlsZIaYdJi7q, https://drive.google.com/open?id=1qQvYZXFfGXzLTI_nwcO6uJiqy88duxia, https://drive.google.com/open?id=1iGsGQkVwdDq15xbk1xQE-2tzEjYI3VgD, https://drive.google.com/open?id=1ZagOeq8v3Iy4kK-BBP70rKrjZxbLwJ56','Agência de Empregos','Não','2000','Sim','Grupo OSPA','Estágio Engenharia e/ou Arquitetura','Desde pequeno sempre tive uma ligação com a criatividade e o construtivismo, começando por jogos como Minecraft, que despertaram em mim a paixão pela arquitetura. Hoje, no oitavo semestre da graduação, sigo desenvolvendo essa vocação com muito entusiasmo. Ao longo dessa jornada, conquistei prêmios em concursos, como o desafio da Tramontina, e tive a oportunidade de ministrar palestras na faculdade, experiências que me ajudaram a crescer tanto no lado técnico quanto no pessoal.

Profissionalmente, passei por escritórios e empresas onde aprimorei minhas habilidades em detalhamento, renderização, mobiliário e processos de projeto, utilizando softwares como AutoCAD, SketchUp, Lumion, V-Ray, Archicad, Enscape e PowerPoint. Essa trajetória me permitiu evoluir de funções de suporte para atuações de maior responsabilidade, sempre buscando eficiência, criatividade e inovação.

Fora da arquitetura, gosto de explorar diferentes formas de expressão criativa e estou sempre aberto a aprender algo novo, seja em tecnologia, cultura ou habilidades pessoais que complementem minha formação como arquiteto.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-10T17:14:00.000Z'::timestamptz),
  ('Daniela Fischer Kinzel','danifkinzel@gmail.com',NULL,'51980229280','2000-02-09',26,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=11iDy5iPOuem3dgAYJR9YmwbxLAqVUkCN','Engenharia de Produção','Ensino Superior Incompleto','FURG','2027-02-02','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Hospital Montenegro – Menor Aprendiz (03/2016 – 03/2017)
Atuei no setor de T.I. como auxiliar administrativo, realizando atividades de apoio em processos administrativos e organizacionais. Essa foi minha primeira experiência profissional, onde desenvolvi responsabilidade, disciplina e noções de trabalho em equipe.

2) CNA – Professora de Inglês (06/2018 – 06/2019)
Trabalhei como professora de inglês, ministrando aulas para diferentes faixas etárias. Essa função aprimorou minhas habilidades de comunicação, didática e relacionamento interpessoal, além de reforçar minha fluência no idioma.

3) Tornearia Godois – Auxiliar Administrativo e Fiscal (10/2019 – 02/2020)
Fui responsável por processos de lançamento de notas fiscais, pagamentos de funcionários, rotinas de contabilidade e uso frequente do Excel. Essa experiência me proporcionou visão sobre processos administrativos e financeiros.

4) Magna Cosma – Estagiária de Melhoria Contínua/Lean (07/2021 – 07/2022)
Atuei na implementação e controle do programa de sugestões e 5S, elaboração e acompanhamento de planilhas em Excel, auditorias internas, eventos de Kaizen, tradução de documentos e apoio administrativo. Também utilizei ferramentas como PDCA, DMAIC e Ishikawa para resolução de problemas. Essa experiência foi fundamental para meu aprendizado em gestão da qualidade e melhoria de processos.

5) Hauke Engenharia – Estagiária de Segurança do Trabalho (10/2023 – Atual)
Atualmente auxilio no desenvolvimento de projetos de PPCI utilizando o AutoCAD, elaboração de vistas de corte e fachadas, cálculos de áreas e população de ambientes, além de dimensionamento e posicionamento de equipamentos de combate a incêndio, como hidrantes e extintores. Essa função tem ampliado meus conhecimentos técnicos e práticos na área de segurança.

6) Vero Internet – Suporte ao Cliente (09/2024 – 06/2025)
Trabalhei com atendimento direto aos clientes, prestando suporte técnico, auxiliando em configurações de redes e equipamentos, registro e acompanhamento de chamados, além de esclarecimentos sobre planos e serviços. Também atuei em parceria com equipes técnicas para solucionar problemas mais complexos, sempre com foco na satisfação e fidelização dos clientes','Minha área de estudo é a Engenharia de Produção, curso que estou cursando na FURG e que devo concluir em 2027.
Além da graduação, busquei formações complementares que me ajudaram a desenvolver tanto competências técnicas quanto habilidades voltadas para melhoria de processos e atendimento ao cliente.

Sou fluente em Inglês e tenho Espanhol em nível intermediário, o que me permite atuar em diferentes contextos e lidar com materiais e clientes internacionais. Também possuo certificação White Belt em Lean, MASP e Resolução de Problemas, além de vivência prática em ferramentas como PDCA, DMAIC, Ishikawa e 5S.

Tenho ainda conhecimentos em Excel Avançado e AutoCAD Intermediário, que utilizei em atividades de controle de processos, projetos e apoio administrativo.',NULL,'Engenharia',NULL,NULL,'Agência de Empregos','Não','2000','Sim',NULL,'Vaga Auxiliar de Projetos','Minhas habilidades vão desde programação (em phyton e javascript) até a área de PPCI, onde me aprofundei bastante. Sou apaixonada por esportes e por música, no momento jogo futebol, basquete e pratico boxe. Sou baterista numa banda amadora de Santo Antonio, e além desses hobbies no meu tempo livre/férias eu adoro jogar no computador.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-10T17:17:00.000Z'::timestamptz),
  ('Amanda Melo de Paula','amandamelodepaula@gmail.com',NULL,'51997199518','1996-04-02',29,'União estável','0','Sim','Cachoeirinha/rs','https://drive.google.com/uc?export=view&id=1r_FbrjO9iXB_Xg11vIxwhigof_PVkMWX','Arquitetura','Ensino Superior Completo','Universidade Ritter dos Reis','2025-01-07','Sou formado','1) Ravanello Eng. 2) Projetista de PPCI 3) 04/04/20 | 07/12/2024 4) Elaboração de projetos de ppci; executivos de sistemas de proteção e prevenção contra incêndios; elaboração de documentação para aprovação; memoriais descritivos; levantamentos arquitetônicos; gerenciamento de mídias sociais; elaboração de materiais auxiliares e palestras.

1) Cerebrus Eng. 2) Analista de projeto 3) 20/06/2025 | atual 4) Elaboração de projetos de ppci; executivos de sistemas de proteção e prevenção contra incêndios; elaboração de laudos técnicos; elaboração de documentação para aprovação; memoriais descritivos; levantamentos arquitetônicos.','Sou especialista em PPCI, com 6 anos de experiencia com aprovação de projetos no CBMRS. Tenho cursos diversos, destacando Neuroarquitetura e Retrofit, pela Belas Artes. Possuo participação ativa em projetos de extensão voltadas ao urbanismo, principalmente, voltado para a primeira infância.',NULL,'Arquitetura, Engenharia',NULL,NULL,'Agência de Empregos','Não.','R$6.000,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho disposição para aprender, sou bastante sociável, ótima comunicação e resolução de problemas. Adoro ler e tenho tendência a me expressar de maneira sincera!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-10T17:34:00.000Z'::timestamptz),
  ('Maiara Mesquita de Souza','mai.mesquita@hotmail.com',NULL,'51982795885','1993-05-10',32,'Casado(a)','0','Sim','Cachoeirinha/rs','https://drive.google.com/uc?export=view&id=1RY_8iVO0K5dFiyNzFFaee_5o_CQyJ0sP','Hotelaria','Ensino Superior Completo','SENAC RS','2015-01-30','Sou formado','Kinghost — Assistente de atendimento
DE JULHO DE 2019 A ABRIL DE 2024
Atendimento ao cliente direto via telefone, chat, whatsapp e email
Acompanhamento de métricas de qualidade (CSAT, NPS, TMA e TME)
Esclarecimento de dúvidas financeira
Cobrança e retenção de clientes
Negociação de descontos e dívidas
Cancelamento de cadastros
Participação no Comitê de Diversidade e Inclusão, desenvolvendo palestras e eventos

Gol Linhas Aéreas — Agente de aeroporto
DE JUNHO DE 2017 A JULHO DE 2019
Recepção e triagem de passageiros
Atendimento nacional e internacional
Check in, despacho de bagagens e conferência de documentação
Acompanhamento de passageiros com deficiência

Intercultural Language Institute — Auxiliar administrativo
DE JANEIRO DE 2011 A JUNHO DE 2011
Recepção de alunos
Atendimento ao cliente presencial e via telefone
Recebimento de pagamentos
Fechamento de caixa
Organização do ambiente e material didático de alunos e professores
Rotina de escritório','Libras intermediário-
Escola para surdos Frei Pacífico

Inglês intermediário- Intercultural Language Institute',NULL,'Administrativa, Financeiro',NULL,NULL,'Instagram','Não.','2.100','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-10T17:35:00.000Z'::timestamptz)
;

INSERT INTO young_talents.candidates (full_name, email, email_secondary, phone, birth_date, age, marital_status, children_count, has_license, city, photo_url, education, schooling_level, institution, graduation_date, is_studying, experience, courses, certifications, interest_areas, cv_url, portfolio_url, source, referral, salary_expectation, can_relocate, professional_references, type_of_app, free_field, status, tags, origin, created_by, original_timestamp)
VALUES
  ('Erika Tone','erika.tone@hotmail.com',NULL,'51983227382','1988-08-11',37,'União estável','2','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1pZ-e7D6P5YTG50wuRN0L5MltbSMHi3V6','Administração de empresas','Pós-graduação Completa','Uniasselvi','2024-08-01','Sou formado','Empresa: Geap Autogestão em Saúde
Cargo: Assistente Técnico
Período: 08/2017 - atual 
Atividades: atendimento aos prestadores, negociação de tabelas e serviços, confecção de novos contratos, análise de custos, treinamentos de sistema presencialmente ou on-line.','Sou graduada em Administração de Empresas com pós graduação completa em Gestão Hospitalar e realizando uma nova pós em Gestão Estratégica. 
Tenho inglês intermediário e falo espanhol fluente.',NULL,'Administrativa, Financeiro, Novos Negócios',NULL,NULL,'Instagram','Nao','8000','Não',NULL,'Coordenador Administrativo','Venho de uma família um tanto diferente, meu pai é japonês e minha mãe Uruguaiana, cresci em um ambiente com várias línguas e culturas bem diferentes. 
Morei 6 meses na Espanha em 2014, realizei trabalhos voluntários com animais e com pessoas nas enchentes de 2024.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-10T18:20:00.000Z'::timestamptz),
  ('Julie Anne Pillar Behn','julie.anne.behn@gmail.com',NULL,'51993672526','1999-02-06',27,'Solteiro(a)','0','Sim','Canoas/RS','https://drive.google.com/uc?export=view&id=1AOSEsHQfSw1os2J0iGtfRLK9ul7mQLyq','Arquitetura','Ensino Superior Incompleto','UFRGS - Universidade Federal do Rio Grande do Sul','2026-03-06','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Lamb Construções e Engenharia
2) Assistente de Orçamento / estagiaria de orçamentos 
3) 23/07/2025 a 10/09/2025 / 14/02/2023 a 22/07/2025
4) Análise orçamentárias e de projetos, elaboração de orçamentos, contato com fornecedores para cotação de materiais, levantamento de quantitativos em BIM e reengenharia.

1) Câmara Municipal de Canoas
2) Assessora Parlamentar
3) 06/2022 a 01/2023
4) Atendimento ao público, elaboração de projetos de lei e pedidos de providência

1) Prefeitura Municipal de Canoas (SMDUH)
2) Etagiaria de arquitetura na Secretaria Municipal de Desenvolvimento Urbano e Habitação de Canoas
3) 03/2018 a 07/2018
4) Organização e atualização de cadastros da regularização fundiária, análise e leitura de plantas e elaboração de arquivos georreferenciados do município',NULL,NULL,'Arquitetura, Engenharia',NULL,NULL,'Agência de Empregos','Não','4500','Sim',NULL,'Arquitetura/engenharia civil','Utilizo o Revit, archicad e autocad no meu dia a dia, mas também sei usar scketchup e Rhino.
Sei falar e ler em inglês e estou aprendendo alemão.
Faço Muay Thai e aula de bateria entre a faculdade e o trabalho.
A empresa que estava trabalhando optou por encerrar as atividades e estou a procura de outra oportunidade, ainda não sou formada, mas me formo no final deste ano, atualmente faço meu TCC.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-10T20:04:00.000Z'::timestamptz),
  ('Kalandra farias padilha','Kalandrafarias@gmail.com',NULL,'51997309405','2005-03-01',20,'Solteiro(a)','0','Não','Glorinha/rs','https://drive.google.com/uc?export=view&id=1BFquQEPUYw6buUiLQjWf40hXe99iC_TE','Pedagogia','Ensino Médio Completo','Uninter','2029-12-21','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Maria celma 
Auxiliar de sala 
10/02/2025 final 21/12/2026','Licencenciatura pesagogia',NULL,'Estágio',NULL,NULL,'Agência de Empregos','Naoo','1.500','Sim',NULL,'Estágio Engenharia e/ou Arquitetura','Bom eu gosto muito de tudo e mais um pouco sou dedicada  atenciosa  adoro e gosto muito de adquirir  coisas novas','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-10T20:23:00.000Z'::timestamptz),
  ('Matheus Dos Santos Capinan Tourinho','mcapinan.arquiteto@gmail.com',NULL,'71981215222','2000-10-18',25,'Solteiro(a)','0','Sim','Salvador/ba','https://drive.google.com/uc?export=view&id=1B9zVRQa1HMwkIULvZIMZkRG2xIprYu4g','Arquitetura','Pós-graduação Incompleta','Faculdade Unime Anhanguera de Salvador','2024-12-15','Sou formado','Primustech – Estagiário em Arquitetura (2022 – 2023)
Atuei auxiliando em vistorias técnicas para levantamento cadastral e na elaboração de plantas baixas em AutoCAD, desenvolvendo precisão e atenção a detalhes.

Fredson Lima – Engenharia – Estagiário em Arquitetura (2023 – 2024)
Participei da elaboração de plantas baixas 2D e 3D em AutoCAD e Revit, além de apoiar na produção de projetos executivos. Essa experiência reforçou minha capacidade de integrar tecnologia e prática no desenvolvimento de soluções arquitetônicas.','Sou graduado em Arquitetura e Urbanismo pela Unime Anhanguera Paralela (dez/2024) e atualmente curso pós-graduação em Design de Interiores. Possuo capacitação em softwares essenciais para a prática profissional, como AutoCAD e SketchUp em nível avançado, Revit em nível intermediário a avançado, Archicad e V-Ray em nível básico, além de experiência prática em elaboração de projetos executivos e de interiores.',NULL,'Arquitetura, Engenharia',NULL,'https://drive.google.com/open?id=1KNHAWVH5DR_xviZCjzRjcCVdhnGXyuaN','Agência de Empregos','Sim, Diego','R$4.000,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Além da minha formação em Arquitetura e Urbanismo e da experiência prática em projetos e execução, sou apaixonado por aprender continuamente e desenvolver habilidades diversas. Tenho conhecimento avançado em AutoCAD e SketchUp, nível intermediário a avançado em Revit e básico em Archicad e V-Ray, sempre buscando melhorar meu domínio em ferramentas que elevam a qualidade dos projetos.

Fora da arquitetura, busco sempre aprendizado contínuo e desenvolvimento pessoal. Explorar novas áreas e habilidades que possam complementar meu trabalho, como softwares para projetos, inovação em interiores e soluções criativas para projetos, fortalecendo meu olhar atento aos detalhes e funcionalidade.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-10T21:17:00.000Z'::timestamptz),
  ('Diego Simon Prates','diegosprates87@gmail.com',NULL,'51981185759','1987-11-08',38,'Casado(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1ZAg2380Jia_35r9cEmmXz6xaFJtxPmIG','Arquitetura','Ensino Superior Completo','Atitus Educação','2025-07-23','Sou formado','Anglo Vestibulares, Auxiliar de Escritório, 05/2017 a 04/2022, suporte acadêmico aos alunos e professores, gestão de leads, vendas de cursos online.

Prefeitura Municipal de Porto Alegre, Estagiário, a) 05/2022 a 07/2022, auxiliar na elaboração de layout do novo arquivo físico da SMAMUS; b) 11/2024 a 02/2025, auxiliar na demarcação de áreas para regularização fundiária na extinta SMHARF.

Herrmann Perícias e Avaliações, Estagiário, 09/2022 a 11/2022, auxiliar na elaboração de laudos de perícias judiciais, acessibilidade, patologias.

Procuradoria-Geral do Estado do RGS, 10/2023 a 08/2024, auxiliar na fiscalização de manutenção predial.','Atualmente estou realizando uma segunda graduação em Bacharelado em Geografia, bem como um Técnico em Geoprocessamento, pois me encantei com essa área ao longo da Arquitetura. Tenho noção básica de QGIS (que utilizei durante a faculdade nos projetos Urbanos), além de conhecimento básico/intermediário em AutoCAD e Archicad.',NULL,'Arquitetura, Estágio, Licenciamentos',NULL,'https://drive.google.com/open?id=1beP6RgE19BpzaDQ2zcwl59wVjofiJgQk, https://drive.google.com/open?id=1CWqU6CaXsX4MZEjy5Mp3FGv-WbI1uzlC, https://drive.google.com/open?id=12SRPYPX7WRhskFw2bl3dHgplI0k0BKj4','Agência de Empregos','Não','2500-3000','Não','Ricardo Nacul, ex-diretor no antigo Anglo Vestibulares (atual Colégio Anglo). Atualmente Diretor do Bertoni Pro (se uniu ao Colégio Anglo recentemente).

Rodrigo Perini, Engenheiro da PGE-RS','Auxiliar de projetos','Tenho 37 anos, natural de Porto Alegre. Sou casado com a Marina e estamos juntos há 14 anos. Em 2010 me formei como técnico em edificações, mas não quis seguir na Arquitetura na época. Tentei duas graduações em áreas distintas: Biblioteconomia (não me encontrei, mas foi onde conheci minha esposa) e Educação Física (que embora eu gostasse do curso, o mercado era muito complicado). No final de 2016, insatisfeito com a situação que eu estava, tranquei a faculdade e comecei a buscar emprego formal. Entre 2017 a 2022 trabalhei no Anglo, ao lado da minha esposa, onde construímos nossa vida material. Em 2021 consegui uma bolsa integral em Arquitetura e ingressei com a mente aberta para tudo que a faculdade pudesse oferecer. Ao longo do  curso, me aproximei do Urbanismo e me apaixonei por Geoprocessamento, mas infelizmente a faculdade foi restrita nessa área, com foco maior em projetos de edificações, além de não tido a oportunidade de atuar profissionalmente nesse ramo (inexistência de vagas). Sou uma pessoa caseira e tranquila, gosto de ler, ver filme, jogar videogame, andar de bicicleta e curtir a vida a dois. Não temos filhos - e não pretendemos ter - decidimos que seremos pai/mãe de pet e daremos amor e carinho às nossas sobrinhas. Estou buscando uma oportunidade para construir uma carreira.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-11T02:20:00.000Z'::timestamptz),
  ('Gabriel Faleiro Duarte','gabriel.faleiro12@gmail.com',NULL,'51984279665','2000-02-05',26,'Solteiro(a)','0','Sim','Cachoeirinha/rs','https://drive.google.com/uc?export=view&id=1_0FcsMHGb9-GC3gfbsH5crooknhQ-caJ','Arquitetura','Ensino Superior Completo','CESUCA','2025-01-24','Sou formado','Ordem dos Advogados do Brasil - Setor de Cadastro 
Estagiário - (08/2018 - 12/2019);

Principais atividades: Atendimento a advogados via telefone, e-mail e presencial, atualizações cadastrais de advogados;  

Ordem dos Advogados do Brasil - Comissão de Defesa, Assistência e Prerrogativas 
Assistente Administrativo - (12/2019 - presente) 

Principais atividades: Atendimento a advogados via telefone, e-mail e presencial; 
Autuação e controle de processos administrativos; 
Expedição de ofício e certidões; 
Controle de prazo; 
Organização de pauta das sessões; 
Auxilio nas sessões;
 Elaboração de atas; 
Formulação de relatórios das demandas do setor encaminhados ao Presidente.','Sou formado em Arquitetura e Urbanismo pela CESUCA, possuo cursos em softwares como REVIT, AutoCAD, Skechtup e LUMION. Além disso, possuo curso técnico de administração, realizado no Colégio Estadual Rodrigues Alves, e ainda, curso de elétrica predial pelo SENAI - Comendador Clemente Cífali.',NULL,'Arquitetura, Engenharia',NULL,NULL,'Agência de Empregos','não','2500 - 3000','Não','Milena Bonifácio - (51) 99209-9306

Líder responsável pela Comissão de Defesa, Assistência e Prerrogativas da OAB/RS.','Auxiliar de Projetos','Sou formado em Arquitetura e Urbanismo pela CESUCA, onde adquiri habilidade com uso de softwares como REVIT, AutoCAD, SketchUp e Lumion, sou um profissional dedicado, caprichoso, esforçado, responsável e proativo, aprendo de forma rápida e procuro sempre manter as tarefas organizadas e em dia. Busco uma oportunidade na área da minha formação para aprender ainda mais e me desenvolver como Arquiteto. 

Possuo mais de 5 anos de experiência como Assistente Administrativo na OAB/RS, onde pude me desenvolver profissionalmente e me habituar com grande fluxo de trabalho.

Algumas competências e habilidades pessoal: 

REVIT - Avançado
AutoCad - Básico
SketchUp - Intermediário
Lumion - Intermediário
Pacote Office - Intermediário

Bom relacionamento interpessoal;
Rápida aprendizagem;
Organização;
Proatividade;
Responsabilidade;
Dedicado;
Caprichoso.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-11T12:05:00.000Z'::timestamptz),
  ('Kelim Rejane Zanotto','kelim.zanotto@gmail.com',NULL,'51986860514','1981-02-12',45,'Solteiro(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1ZliILWhmoSeLYT9zUNmh1yulbk-ZERpH','Investigadora e perito forense.','Ensino Superior Completo','ESTACIO','2024-10-12','Sou formado','Trábalhei alguns anos como, gerente e vendedora de loja, e trabalhei alguns anos em hospital, e Prefeituras hoje sou MEI.','CURSO DE INFORMATICA WORD, EXCEL E POWER POINT, ESPANHOL BASICO.',NULL,'Administrativa, Comercial, Marketing, Engenharia',NULL,NULL,'Agência de Empregos','Nao','3500','Sim',NULL,'Comercial','No momento nao tenho nada relevante, para comentar.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-11T19:09:00.000Z'::timestamptz),
  ('Robert Schäfer','roberthschafer@gmail.com',NULL,'51999828842','1983-04-28',42,'União estável','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1PKFJYERjexfRfCxlGn4VcoGfZWKSt2BY','Arquitetura','Ensino Superior Completo','Centro Universitário UniRitter','2010-01-10','Sou formado','Sceno Environmetal grafic design  
Cargo: Arquiteto Pleno 
• Atuação no desenvolvimento de projetos arquitetônico e de desenhos 
executivos, Desenvolvimento de Layout de interiores e estudos de 
viabilidade.

Ideia 1 
Cargo: Arquiteto Pleno 
• Atuação no desenvolvimento de projetos arquitetônico e de desenhos 
executivos, Desenvolvimento de Layout de interiores e estudos de 
viabilidade. 

Proa- Profissionais de Arquitetura 
Cargo: Arquiteto Pleno 
• Atuação no desenvolvimento de projetos arquitetônico e de desenhos 
executivos, Layout de mobiliário e  fiscalização e acompanhamento de 
obras.',NULL,NULL,'Arquitetura, Engenharia',NULL,'https://drive.google.com/open?id=1MEjpbjz-4AEyr36x9yDgZ_xTywkNvUWb','Agência de Empregos','não','R$5.500,00','Não',NULL,'Arquiteto','Arquiteto e Urbanista formado pelo Centro Acadêmico Uniritter em 2010 e atuando há mais de 15 anos desenvolvendo projetos para residencias e de interiores. Trabalho guiado em projetar espaços inteligentes, funcionais mas com estética, sempre foco em solucionar os desafios de forma criativa e técnica.
Tenho experiência em modelagem 3D, renderização de imagens e vídeos, oferecendo ao cliente uma imersão precisa do espaço antes de ser executado. Também produzo toda a documentação técnica necessária para a execução da obra conforme normas e especificações que garantam eficiência, clareza e segurança para a construção e toda a parte legal dos projetos.
Valorizo a colaboração entre profissionais envolvidos com o projeto e execução, de forma fluida e comunicativa, garantido soluções de qualidade conectadas e alinhadas com o propósito dos projetos.
Sempre busco inovação e novas formas de transformar ideias em espaços construídos que remetem ao bem estar e identidade para quem os ocupa.
 Atenciosamente,
 Robert Schäfer
 Arquiteto e Urbanista','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-11T20:00:00.000Z'::timestamptz),
  ('Maryane Neymann Schiro','maryaneneymann10@gmail.com',NULL,'55991855947','2007-03-04',18,'Solteiro(a)','0','Não','Uruguaiana/rs','https://drive.google.com/uc?export=view&id=14IQsEO1QRjEb-s_h9UCz7XjvCT3_gYWg','Biomedicina','Ensino Superior Incompleto','Unopar Anhanguera','2030-12-12','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Lojas Papatudo
Atuação no suporte ao time de marketing com foco em Customer
Success, auxiliando na comunicação com clientes, acompanhamento de resultados e
satisfação, elaboração de relatórios e feedbacks, organização de dados de atendimento e
auxílio em estratégias de retenção e fidelização. Apoio na criação de conteúdos para redes
sociais, e-mails e campanhas, com foco na experiência e sucesso do cliente.
Desenvolvimento de habilidades em empatia, escuta ativa, análise de métricas e
relacionamento com o público. 
início 06/2024 saída 12/2024
Over Sound 
Atendimento ao público presencial e por telefone, agendamento de
compromissos, organização de arquivos e documentos, controle de agendas, apoio em rotinas
administrativas, redação e envio de e-mails, recepção de clientes e visitantes, além de prestar
suporte às demandas internas do ambiente de trabalho. Atuação com foco em organização,
agilidade e boa comunicação
Início 02/2025 - meu atual emprego','Tenho curso de Comex, auxiliar administrativo, informática, design gráfico, farmácia e auxiliar de análises clínicas',NULL,'Administrativa, Estágio, Marketing',NULL,NULL,'Instagram','não','2500','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Falo espanhol, faço doações para os necessitados, nas minhas férias investi em cursos para horas complementares da faculdade, amo cuidar de pessoas, sou uma boa cozinheira, adoro ler e escrever, amo me cuidar e cuidar de todos ao meu redor','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-12T01:17:00.000Z'::timestamptz),
  ('John lenon Oliveira Tavares','johnbikejl@gmail.com',NULL,'51999099345','1984-08-26',41,'Divorciado(a)','2','Sim','Glorinha/rs','https://drive.google.com/uc?export=view&id=1DK728IRhdbm3fZGxFFlaPFspUFHlFD9E','Processos gerências','Ensino Superior Completo','Uniasselvi','2024-09-30','Sou formado','VLR Consul ,mecânico de aparelhos esportivos tempo 03 de Janeiro 2005 à 02 de Julho de 2007.
Fibraplac Painéis de madeira, auxiliar de linha de produção nível 3,operador de serra automática nível 1 e 2 e Líder de produção. 
Período 07 Janeiro 2009 a 19 Junho de 2020.
Fibraplac Painéis de madeira, mecânico de manutenção 2 e 3.
Período 22 de Março de 2021 até atualmente.','Tenho curso técnico mecânico industrial, curso de liderança de gestão de equipes,treinamento de implantação de programa 5S,curso de informática Microlins,curso de brigada de emergência Vidaseg.',NULL,'Administrativa, Comercial, Engenharia',NULL,NULL,'Agência de Empregos','Não!','5.000','Sim',NULL,'Supervisor administrativo','Tenho vocação e amor a área de gestão, de motivar a equipe de alcançar resultados,controlar tarefas, tomar decisões e sempre sendo honesto e correto com as pessoas e com horários e compromissos. 
No meu tempo livre gosto de malhar e  brincar com os filhos.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-12T14:41:00.000Z'::timestamptz),
  ('Vinicius Carvalho de Oliveira','vinicarvalho2109@gmail.com',NULL,'55981212665','2003-09-21',22,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1EYiGdurpFvsYyrVg8aUCCZwz6TTZaEWU','Escrita Criativa - PUCRS','Ensino Médio Completo','Pucrs','2027-08-05','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1- RENT COLIVING - Gestão de redes sociais e criação de conteúdo pra diversas plataformas, além de gravação e criação de roteiros.

2 - DGEX AGÊNCIA DE MARKETING - Iniciei como estagiário na programação e organização dos conteúdos dos clientes e franqueadoras Oral sin e após metade do ano subi de cargo para Social Media Junior onde executava toda a linha editorial dos clientes.','Tenho vários cursos de branding e comunicação!',NULL,'Marketing',NULL,'https://drive.google.com/open?id=12u1xiZxKbLn-qIYpOqGysbeIgi8ekXXR','Instagram','não','Para estágio entre 1200 á 1500','Sim',NULL,'Estágio em Marketing','Eu gosto bastante de tirar fotos e trabalhar com audiovisual: criar roteiros, fotos e fazer a direção de arte.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-12T15:08:00.000Z'::timestamptz),
  ('Ana Paula Marques Pereira','marquesz2018@gmail.com',NULL,'53997070372','2004-01-09',22,'Casado(a)','1','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1Dba-44qccNhTdDN2ovqFvxLeGr6WGvsw',NULL,'Ensino Médio Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Tenho várias experiências, já fiz vendas informais e também trabalhei em um escritório de contabilidade trabalhava organizando papéis fiscais e também serviço de rua, fazendo cobrança de 10/2024 até 10/02/2025 e depois desse período trabalhei na Havan S/a como operadora comercial de 10/02/2025 a 05/2025.',NULL,NULL,'Comercial, Licenciamentos, Novos Negócios, Engenharia',NULL,NULL,'Instagram','Não','Um salário mínimo.','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-12T16:15:00.000Z'::timestamptz),
  ('Gabriel Ribeiro da Silva','gabrieribeiroregipa@gmail.com',NULL,'14998576456','2002-11-12',23,'Solteiro(a)','0','Sim','Reginópolis/sp','https://drive.google.com/uc?export=view&id=1KG6uLAAl6Tbi5rWLdYQsLJHKI0rt6o5C','Arquitetura','Ensino Superior Completo','Unisagrado','2024-12-12','Sou formado','Estagiário em Arquitetura – STD. 014 Arquitetura e Interiores | 2022 – 2024
•	Desenvolvimento técnico de projetos.
•	Medição de edificações e elaboração de levantamentos técnicos (3D e plantas de layout).
•	Visitas técnicas em obras (fases inicial e final).
•	Apoio na escolha de materiais e acabamentos.
•	Modelagem 3D, renderização e pós-produção de imagens (Enscape e Photoshop).
Estagiário em Engenharia e Projetos – Prefeitura Municipal de Reginópolis | 2021 – 2022
•	Levantamento de ruas para projetos de recapeamento.
•	Medições de imóveis para atualização de IPTU.
•	Auxílio em medições e reformas de edificações públicas.
Auxiliar de Almoxarifado – Prefeitura Municipal de Reginópolis | 2021 – 2022
•	Levantamento de orçamentos e contato com fornecedores.
•	Conferência e registro de notas fiscais, garantindo controle administrativo de entradas e saídas.','Sou graduando em Arquitetura e Urbanismo pela Unisagrado (conclusão em 12/2024). Durante a formação, desenvolvi conhecimentos em projeto arquitetônico, detalhamento técnico, modelagem 3D e renderização.
Possuo cursos complementares que agregam à minha formação:
AutoCAD (Básico ao Intermediário) – AE Comp, 2019
Photoshop (Básico ao Intermediário) – SENAC, 2018
Além disso, domino softwares voltados para arquitetura e visualização, como SketchUp, Enscape, AutoCAD, Photoshop e Pacote Office.',NULL,'Arquitetura',NULL,'https://drive.google.com/open?id=1X_dirR3quVsFt5XnRoYeX9FD0VPzKn_f','Agência de Empregos','Não','4.000,00','Sim','Fábio Padovan (14) 99642-9656','Auxiliar de Projetos','Sou arquiteto formado em Arquitetura e Urbanismo (2024), com experiência prática em desenvolvimento de projetos, levantamentos técnicos e acompanhamento de obras. Tenho grande interesse em tecnologia aplicada à arquitetura, com foco em modelagem 3D, renderização e visualização arquitetônica (SketchUp, Enscape, AutoCAD e Photoshop).
Gosto de trabalhar em equipe, sou comunicativo e organizado, sempre buscando aprender novas ferramentas e soluções criativas. Também tenho interesse em design, urbanismo e sustentabilidade, áreas que me motivam a buscar constante aprimoramento.
No tempo livre, gosto de explorar referências visuais, estudar novas técnicas de representação arquitetônica e aprender mais sobre tendências do setor.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-12T23:20:00.000Z'::timestamptz),
  ('Karla cleunice silveira sanguinet','karlasanguinet@gmail.com',NULL,'55984741035','1996-01-31',30,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1-7-yLFIlDcUhcT9GsXQasK2lY1jPNQs4','Administração de empresas','Ensino Superior Incompleto','Anhanguera','2028-08-28','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','No meu ultimo emprego comecei como caixa depois fui exercendo e aprendendo outras funções como: caixa,auxiliar de contabilidade e responsável de conveniência.','Tenho ensino médio completo,curso técnico de contabilidade e faculdade de administração.',NULL,'Comercial',NULL,NULL,'Instagram','Não','A combinar','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-13T00:15:00.000Z'::timestamptz),
  ('Bruna Marques de Azevedo','brunamaaz@gmail.com',NULL,'51997156710','1992-08-14',33,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1qB9eg_ed6-b0sH5SjHo4IhKXjDoYR_kE','Arquitetura','Ensino Superior Incompleto','UFRGS','2026-03-06','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) GAK Obras 2) estagiária 3) Março de 2025 a agosto de 2025 4) Gerenciamento e fiscalização de obras, cronograma e relatório fotográfico semanal, orçamentos, controle de notas fiscais e produção de relatório financeiro. Programas: AutoCAD, Pacote Adobe, Pacote Office, Vigha e Monday;

1) Free-lancer 3) Julho de 2020 a setembro de 2024 4) Levantamento físico, elaboração de projeto executivo e detalhamentos, aprovação em prefeitura, modelagem 3D, renderização e acompanhamento de obra. Programas: AutoCAD, SketchUp, Vray, Pacote Adobe e Office;

1) J&K arquitetura 2) estagiária 3) maio de 2019 a julho 2020 4) Elaboração de projeto executivo com detalhamento, renderização, orçamentação e plano de obra. Programas: AutoCAD, SketchUp, Vray, Photoshop, Word e Excel.','Com experiência em desenvolvimento de projetos desde a concepção até a execução, com elaboração de detalhamentos técnicos e atuação em fiscalização de obras. Responsável pela elaboração de cronogramas, relatórios fotográficos semanais, orçamentos, controle de notas fiscais e produção de relatórios financeiros, além do acompanhamento das rotinas de escritório e contato com fornecedores.

Participei também de projetos de extensão universitária e voluntáriados e com formação em Sistemas de Informação Geográfica (SIG) aplicados ao mapeamento temático para suporte ao planejamento urbano. Possuo capacitação nas áreas de geoprocessamento, projeto executivo e fiscalização de obras.',NULL,'Arquitetura, Estágio, Engenharia',NULL,NULL,'Instagram','Não','R$1.100','Sim',NULL,'Estágio Engenharia e/ou Arquitetura',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-14T23:35:00.000Z'::timestamptz),
  ('Natalia Guedes Correa','nanaguedes542@gmail.com',NULL,'55992261094','2001-08-18',24,'Solteiro(a)','0','Não','Itaqui/RS','https://drive.google.com/uc?export=view&id=1bJcU-J_kd0tnFNr8gPVRse-Ww9kjZSjk','Administração de empresas','Ensino Superior Incompleto','Uniasselvi','2029-12-14','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','- Explorer call center/ Porto Alegre. 
Função: Auxiliar de Escritório.

- Kuchak comercial de alimentos LTDA/ Ijuí.
Função: Atendimento ao cliente.','Tenho experiência em área administrativa comprovada em carteira. 
Tenho curso em Assistente de Recursos Humanos pelo IFSUL- Unipampa.
Cursando Bacharelado em Relações Internacionais, Técnico em Comércio Exterior e Bacharelado em Administração.',NULL,'Administrativa',NULL,NULL,'Instagram','Não fui indicada!','2.800','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Possuo Inglês intermediário, tenho fácil aprendizagem e muita vontade de aprender! Tenho muito hábito com leitura e pratico muito sobre a língua portuguesa. 
Estou no momento estudando bastante a respeito sobre o mercado financeiro, fazendo curso a respeito do assunto com Marcos Maluf.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-15T04:22:00.000Z'::timestamptz),
  ('Manoela Sanchotene de Almeida','manoela.sanchotene@outlook.com',NULL,'55996988666','2001-11-22',24,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1_CGdw03A2JAMFHNBvhF2afatdMYN-Fwj','Arquitetura','Ensino Superior Completo','Universidade Franciscana','2025-06-17','Sou formado','Estagiária de arquitetura - Estágio voluntário
Mai 2022 - jul 2022 Prefeitura Municipal de Santa Maria
Superintendência de Análise de Regularização de
Edificações;
Auxílio nas análises e regularizações de edificações de
acordo com a Legislação Municipal.

Estagiária de arquitetura - Estágio presencial
Ago 2022 - dez 2022
Prefeitura Municipal de Santa Maria
Setor de Imposto Sobre Transmissão de Bens Imóveis (ITBI);
Auxílio no desenvolvimento de Avaliações de Imóveis;
Atendimento ao público.

Estagiária de arquitetura - Estágio remoto
Mar 2021 - jul 2025 Eng.Civil Eber Escobar
Auxílio no desenvolvimento de projetos residenciais
e comerciais;
Desenhos em AUTOCAD e modelagem 3D no
Sketchup;
Compatibilização de projetos complementares;
Auxílio em projetos de regularização.

Estagiária de arquitetura - Estágio presencialDez 2024 - jul 2025 Kaza Estúdio de Arquitetura
Auxílio no desenvolvimento de projetos
arquitetônicos;
Projetos de interiores e detalhamentos;
Auxílio no desenvolvimento de orçamentos com
prestadores de serviços e empresas','Sou formada em Arquitetura e Urbanismo pela Universidade Franciscana em Santa Maria/RS, onde desenvolvi uma base sólida em projeto, urbanismo, paisagismo e tecnologia da construção. Ao longo da graduação, participei de atividades acadêmicas, monitorias  e estágios que ampliaram minha experiência prática e de ensino, além de me aproximarem da vivência profissional. Também realizei estágios na Prefeitura Municipal, adquirindo vivência prática com aprovação de projetos e processos relacionados ao ITBI, o que me proporcionou um entendimento aprofundado sobre legislação urbana, trâmites administrativos e exigências para regularização de obras. Complementando minha formação, investi em cursos de curta e média duração voltados para ferramentas como Autocad, Sketchup, Archicad, V-Ray e Enscape.',NULL,'Arquitetura, Licenciamentos, Engenharia',NULL,NULL,'Instagram','Não','3000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Cursos adicionais: 
LEV DESIGN SKETCHUP -
-Carol Taveira
PRODUTIVIDADE ARCHICAD
- Eixo Escola de Archicad

-Inglês nível intermediário 
-Pacote Office
-Canva','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-15T16:15:00.000Z'::timestamptz),
  ('Taylane Oliveira de Araújo','taylaneoliveira@hotmail.com',NULL,'51996529056','1989-05-07',36,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1tPT-70xcMYG1s3aTLDmsmHUwES2HiSpE','Gestão de recursos humanos','Ensino Superior Completo','Unisinos','2022-06-01','Sou formado','Gráfica gaucha',NULL,NULL,'Administrativa',NULL,NULL,'Instagram','Nao','2500','Não',NULL,'Coordenador administrativo','Olá, sou formada em gestão de recursos humanos, atualmente estou desempregada procurando uma nova oportunidade de emprego para junto crescer com a empresa e também adquirir mais conhecimento e experiência!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-15T16:23:00.000Z'::timestamptz),
  ('Gustavo Oliveira','gustavoeckertoliveira@gmail.com',NULL,'51986104243','1994-03-08',31,'União estável','0','Sim','Lajeado/rs','https://drive.google.com/uc?export=view&id=1Nc22NmlYL4mXq1HKPCtblJ90cNyIy7Op',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Criative móveis',NULL,NULL,'Comercial, Novos Negócios, Engenharia',NULL,NULL,'Instagram','Não','5000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-15T17:13:00.000Z'::timestamptz),
  ('Luis Eduardo Trindade Ricardo','luiseduardotrindadericardo@gmail.com',NULL,'53999690910','1964-11-10',61,'Casado(a)','3','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1txWe_F2dtcpIk_XpilGtjouGSt6hTPt2','Direito','Ensino Superior Completo','Universidade da Região da Campanha','2001-08-11','Sou formado','1) Cielo 2) Gerente de negócios 3) atendimento de carteira de clientes, prospecção de novos, sempre ofertando os produtos da empresa e buscando excelência no atendimento com cumprimento de metas estabelecidas',NULL,NULL,'Comercial',NULL,NULL,'Facebook','Não','5.000,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho habilidade de relacionamento, hobby cozinhar e jogar futebol','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-16T02:43:00.000Z'::timestamptz),
  ('Sabrina Lucas de Oliveira beron','sabrinaberon952@gmail.com',NULL,'53999735514','1991-12-28',34,'Solteiro(a)','2','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1uv2TSPJI3VDiGIWxL_MFBYAhL-1MJjTV','Pedagogia','Ensino Superior Incompleto','Urcamp',NULL,'Não, no momento pausei/parei por um período.','Comecei a trabalhar com 14 anos como babá sempre estudando , tive minha primeira filha com 17 nesse período de 3 anos fiquei cuidando dela , após comecei a trabalhar como manicure ali fiquei mais 3 anos depois comecei a trabalhar no hotel do comércio,onde desempenhava as funções de camareira e copeira, após um tempo tive minha segunda filha  pedi as contas do meu trabalho para cuidar dela nesse período fiquei trabalhando como autônoma,  vendendo roupas produtos de beleza sexshop e cama mesa e banho , tudo dentro do carro minha loja móvel pó ser mais fácil já tinha mercadoria dentro do carro assim poderia vender em qual dia e horário estando no meu lazer ou não também usava as redes sociais pra ter mais visibilidade e foi assim por 4 anos , logo após comecei um trabalho de saladeira no restaurante churrasqueria e galeteria Mario , logo após comecei a trabalhar na Embrapa onde era preposta da limpeza desempenhava funções iguais as minhas colegas mas com algumas responsabilidades a mais , enviar contra cheques, folha ponto,  fazer mediação entre funcionários e empresa contratante fazer contagem de estoque lista de pedido de produtos e estar sempre alinhada conforme os pedidos da empresa.',NULL,NULL,'Comercial',NULL,NULL,'Agência de Empregos','Não','1,8','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou bem comunicativa,  gosto de ajudar, gosto de vender e ter contato com pessoas gosto de inovar gosto de conhecer pessoas e lugares , sou pontual, sou persistente e tenho muito vontade de crescer junto a empresa Young','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-16T12:20:00.000Z'::timestamptz),
  ('Deivid Correa Antunes','deividantunes32@gmail.com',NULL,'53999913650','1988-09-13',37,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=10dZ4qtEbZhnLUcgxwm0qpNQCgX66Il7-',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Trabalhei na empresa Bureau Veritas, como auditor agrícola, entre 5 de março de 2025 até 22 de abril do mesmo ano. Visitava as empresas fazendo acompanhamento de cargas e testes no soja.',NULL,NULL,'Administrativa',NULL,NULL,'Agência de Empregos','Não','R$2.000,00','Sim',NULL,'Consultor de vendas','Sou formado em Técnico em Contabilidade e Técnico em Mecânica Industrial','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-16T14:08:00.000Z'::timestamptz),
  ('Diovanna Elisa Silva de Souza','diovannasouza2501@gmail.com',NULL,'51984399085','2002-01-24',24,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=17pPjz5V9QxzsE0SQc5NiHW2kMKUSOXL2','Arquitetura','Ensino Superior Incompleto','FTEC','2027-06-15','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) PORTO5 INVESTIMENTOS IMOBILIÁRIOS S/A
Cargo: Administrativo de Obras Pleno (desde fevereiro de 2025)
Anteriormente: Auxiliar Administrativo de Obras (julho de 2024 a janeiro de 2025)

Atuo na supervisão de empreiteiros e no acompanhamento de serviços em torre residencial, incluindo instalações hidráulicas, contrapiso, gesso, impermeabilização e pingadeiras. Realizo inspeções via Mobuss e consultas de projetos no Construmanager, assegurando conformidade com cronogramas e padrões de qualidade. Após sete meses como auxiliar, fui promovido(a) a pleno, assumindo mais responsabilidades técnicas e administrativas na obra.

2) ARTE DE CRIAR MARCENARIA
Cargo: Projetista de Móveis
Período: Março de 2022 – Julho de 2023
Principais atividades:
Responsável pela elaboração de projetos de móveis planejados e detalhamentos técnicos para a fabricação. Realizava medições in loco e acompanhava todas as etapas do atendimento ao cliente, desde a negociação até a entrega do projeto final. Essa experiência me proporcionou forte desenvolvimento em interpretação técnica, precisão nos detalhes e contato direto com o cliente final.

3) D&M CONSTRUTORA
Cargos:
• Estagiária – Janeiro de 2022 a Março de 2022
• Auxiliar Técnica de Obras – Março de 2022 a Fevereiro de 2023

Principais atividades:
Iniciei como estagiária, atuando com elaboração de diários de obra, leitura e interpretação de projetos e emissão de relatórios técnicos. Após o estágio, fui efetivada como Auxiliar Técnica de Obras, passando a desenvolver projetos técnicos no AutoCAD, realizar medições em campo, conferência de serviços executados e controle de materiais recebidos. Também fui responsável pela gestão de compras. Essa experiência foi fundamental para consolidar meu conhecimento técnico e minha capacidade de organização e controle de processos no ambiente da construção civil.

4) JSL S/A – Júlio Simões Logística
Cargo: Jovem Aprendiz – Auxiliar Administrativo
Período: Março de 2018 – Março de 2020
Principais atividades:
Realizei diversas atividades administrativas, como elaboração e controle de planilhas, utilização do sistema SAP, gestão de almoxarifado, emissão de requisições de compras, digitalização de documentos e atendimento ao público (telefone e e-mails). Foi minha primeira oportunidade profissional, onde desenvolvi habilidades organizacionais, administrativas e sistemas corporativos.','Estudante de arquitetura e urbanismo, tenho conhecimento em administração e gestão de obras.',NULL,'Arquitetura, Engenharia',NULL,NULL,'Agência de Empregos','Não','R$3.500,00','Não','Jessica Ribeiro: 53 9945-9543 
Engenheira Civil - Porto 5 Empreendimentos','Auxiliar de projetos','Sou estudante de Arquitetura e Urbanismo, curiosa e sempre buscando aprender e crescer na área. Trabalho em obra conferindo serviços, o que me ajuda a entender a prática e projetar com mais consciência. Tenho experiência com AutoCAD, Vray, SketchUp e Enscape,  com familiaridade básica em outros softwares. 
  Sou empática, com um olhar humano para os espaços, e gosto de atividades que estimulam a criatividade, como colorir. Adoro o sol e estar ao ar livre, no ambiente urbano o que influencia minha visão sobre a cidade e o urbanismo.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-16T19:35:00.000Z'::timestamptz),
  ('Leonardo Schmitz','leonardoschmit3zz@gmail.com',NULL,'53991534754','1998-10-04',27,'Solteiro(a)','1','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1qk5ROU3V8x_my_nH471oMH5dwSzqOf6q','Arquitetura','Ensino Superior Completo','URCAMP - BAGÉ','2025-07-01','Sou formado','Com carteira assinada eu só tive em alguns lugares a maioria dos projetos q eu fiz foi de freelance.  
1) Nome da Empresa: Servir Engenharia LTDA
2) Cargo: Estagiário
3) Período: Setembro/2019 – Abril/2021
4) Principais atividades:

Apoio no desenvolvimento de projetos arquitetônicos e hidráulicos;

Execução de outras demandas relacionadas à área de engenharia e construção.
___________________________________________________________________
1) Nome da Empresa: Casa Brasileira Bagé
2) Cargo: Estagiário
3) Período: Maio/2021 – Março/2022
4) Principais atividades:

Responsável pela elaboração de projetos de móveis planejados;

Atendimento às demandas específicas de clientes em relação ao design e funcionalidade de ambientes planejados.
___________________________________________________________________
1) Nome da Empresa: GEPLAN (Prefeitura Municipal de Bagé)
2) Cargo: Estagiário
3) Período: Junho/2022 – Atualmente
4) Principais atividades:

Auxílio nos processos de aprovação de projetos na prefeitura;

Apoio técnico ao supervisor de estágio;

Elaboração de planilhas e documentos técnicos;

Produção de pareceres técnicos relacionados a projetos urbanísticos e arquitetônicos.','Sou formado em Inglês pela TOPWAY (primeira escola de inglês imersivo do Brasil) ; tenho curso de Photoshop profissional para empreendimentos (Archviz); Ilustrator; Revit é o meu programa que eu uso para fazer os meus projetos, eu até entendo um pouco de autocad mas eu trabalho com Revit há quase 7 Anos e faço desde projetos de concepção até projetos executivos no Revit, Tenho um olhar um pouco artístico a respeito das minhas pranchas finais e eu trabalhei por 2 anos fazendo estagio na GEPLAN de Bagé ( trabalhando diretamente com as duas analistas de projetos privados da cidade) aonde só são aprovados ou devolvidos os projetos por esse pessoal da analise técnica...eu sou formado a pouco tempo mas eu faço as aprovações de projetos na área toda parte burocrática eu tenho já a habilidade de aprovar desde regularizações, aprovações de projeto, projetos elétricos e hidráulicos.. Já trabalhei com um engenheiro fazendo todos os desenhos técnicos (detalhamento de vigas) (número de vergalhões e estribos)  para aprovaçao na Caixa Econômica. E mais....',NULL,'Arquitetura, Engenharia',NULL,'https://drive.google.com/open?id=1WZKVnBBNFCnaZY2cFyp3XGbM9aEiKMhb, https://drive.google.com/open?id=1Rwkde-icc-zU5EpdeXrUVdw0djy9dUh6, https://drive.google.com/open?id=10x_CHOxpiNYiGB4ifFmdNa6ZR-C8EVR0, https://drive.google.com/open?id=1zsfJ36h5PtNgFYzKSrRFa62fKCpyUtOR','Site da Empresa','não fui mas gostaria','Bagé é uma cidade menor comparada a capitais, então nem sempre será possível pedir valores de capitais, acredito que 3 mil?','Sim','https://schmitzleonardo.myportfolio.com/ (meu site)','Estágio Engenharia e/ou Arquitetura','Pessoal eu estou em busca de poder exercer a minha profissão... Sou um sonhador nato! e gostaria muito de atingir os meus objetivos e meus sonhos e eu tenho uma afinidade bem grande com a empresa acompanho nas redes... atualmente eu Tenho um filho de 1 ano e meio e sou separado mas quero viver pro meu filho mas preciso trabalhar! Sou focado tenho 27 anos e sempre fui atrás de tudo. Sei q o mar é grande e temos muitas disputas com os colegas da profissão mas eu consigo realmente fazer tudo que me é encarregado e eu gosto muito de trabalhar só quero evoluir na minha vida','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-16T20:05:00.000Z'::timestamptz),
  ('Caroline Carvalho Farias','cfcarrvalho@gmail.com',NULL,'51996816860','1999-08-05',26,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1tXIdd4qm-8nYdeW7qpHHsLQoW6Slmj-N','Relações Públicas','Ensino Superior Incompleto','Unisinos',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Vero Internet
Assistente Backoffice I 
Outubro/21 - 21/julho/2025',NULL,NULL,'Marketing',NULL,NULL,'Agência de Empregos','Não','1.700','Não',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-17T12:10:00.000Z'::timestamptz),
  ('Bianca Mello Bacelar','byancamello93@gmail.com',NULL,'51999668934','2007-03-30',18,'Solteiro(a)','0','Não','Itaqui/RS','https://drive.google.com/uc?export=view&id=179EtKJFypUpt6zbe4fS3G6tbkM6xTZ0F','Pedagogia','Ensino Médio Completo','Odila villordo de morais','2024-12-04','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) mecânica burguer, auxiliar de cozinha e limpeza, janeiro de 2025 - março de 2025.
2) armazém dois irmãos, atendimento, caixa e limpeza do local , março de2025 - junho de 2015
Atendia os clientes, finalizava a compra deles e também limpava o local a onde eu trabalhava.
3) shopping sheik, atendimento ao público , agosto de 2025- setembro de 2025 . Fui demitida por picuinha das gerente e da colegas de trabalho, montamos o shopping desde do começo.','Estou começando a fazer o curso de pedagogia',NULL,'Administrativa, Comercial, Estágio, Licenciamentos',NULL,NULL,'Instagram','Não','1960','Não','Robson Lopes (+55)99670-5195- Armazém dois irmãos 
Ata jaht (+55) 99668-2969- shopping sheik 
Jorge (+55) 99972-2001- mecânica burguer','Quero inscrever-me no banco de talentos da Young!','Sou comunicativa, tenho pontualidade, tenho vontade de aprender e bastante curiosidade.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-18T01:28:00.000Z'::timestamptz),
  ('Lucilene Martins Fernandes','lucilenem.fernandesss@gmail.com',NULL,'53991350623','2004-01-02',22,'Solteiro(a)','0','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1fCVhgSVazflHHilO6Cr01oy5HmQsIa7Z',NULL,'Ensino Médio Completo','Unicesumar',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Já trabalhei em uma empresa de internet da minha cidade como suporte técnico, fiquei uns 2 meses lá (Junho-Setembro 2024). Já trabalhei várias vezes como babá e agora procuro uma nova oportunidade.','Tenho curso de informática básica, confeitaria e inglês. Atualmente faço faculdade de design gráfico',NULL,'Estágio, Marketing, Engenharia',NULL,'https://drive.google.com/open?id=1jbW1A-yuOkDRiJjlo5DN4ysnhj_J_rsT, https://drive.google.com/open?id=1VfUBele7xoAb2iDDmbkCfOjo8aGE9dKm, https://drive.google.com/open?id=1cYk5eNrgmbrDnyMQ0Dm8j88OrWL0j1_t, https://drive.google.com/open?id=1fsnQa2-C7ro_iaJHGYi6mQjSNzg4vcWg, https://drive.google.com/open?id=1mrdAnM7i8yvChWhQVpmQPKpA5TQpaxv8','Instagram','Não','Estou disposta a negociar, o que me interessa é conseguir a vaga e agregar na empresa','Não',NULL,'Design Gráfico','Tenho inglês básico, sei o alfabeto coreano, já fiz krav maga e muay thai, fiz curso de programação, trabalhei como babá várias vezes.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-18T13:32:00.000Z'::timestamptz),
  ('Alice Leal Carniel','lealcarnielalice@gmail.com',NULL,'55996964946','2003-07-12',22,'União estável','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1eoUmBqPWn7U3lUyYybJR9mCsPI0YTpoC','Gestão Comercial','Ensino Superior Completo','Unifael','2023-12-15','Sou formado','Minha inserção no mercado de trabalho foi como secretária em uma empresa de tele entrega, na qual permaneci por 3 meses, minha função era atender ligações, memorizando e intermediando informações; abertura e fechamento de caixa, incluindo contagem de comprovantes. Logo após, passei a exercer como operadora de caixa em um fast-food, prestando atendimento ao cliente e efetuando abertura e fechamento, me mantendo por 5 meses. Através de uma oportunidade na área em que me especializei, optei por aceitar uma oportunidade na empresa Alma viva do Brasil, na qual era responsável pela prospecção de clientes, apresentando os planos da Vero Internet, por meio do PAP(porta a porta), negociação, fechamento e pós venda. O que acredito ter sido de grande valia tanto no meu desenvolvimento profissional, como pessoal, me permitindo conhecer cada tipo de cliente e entregar o produto necessário, aprendendo a lidar com adversidades do dia a dia. Após um ano a empresa optou por encerrar as atividades na cidade, fechando então a equipe. Por fim, trabalhei cerca de 10 meses na empresa Ponto da Moda, varejo de roupas e calças, recepciondando e negociando com clientes.','Sou formada em Gestão Comercial, a qual cursei com objetivo de me aperfeiçoar na área, tenho alguns cursos na área de vendas, atendimento ao cliente, informática e comunicação empresarial.',NULL,'Administrativa, Comercial',NULL,NULL,'Agência de Empregos','Não','1800','Sim','Fernanda de Freitas (Alma Viva do Brasil-Vero Internet): 5598417-7123','Comercial','Desde cedo procurei exercer minhas atividades da melhor maneira possível, trabalhando valores como paciência e respeito, buscando estar sempre em constante evolução. Sou uma pessoa determinada e focada, busco crescimento profissional em determinada empresa, a fim de me desenvolver e aperfeiçoar cada vez mais.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-18T14:01:00.000Z'::timestamptz),
  ('Renan Backes','r.schneiderbackes@gmail.com',NULL,'55984086258','1990-08-06',35,'Solteiro(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1nNGvY5PwOiDRqj9LHwCLiaRW8r5rsb0a','Agronomia','Ensino Superior Completo','Unipampa','2017-08-12','Sou formado','Consulor Técnico Comercial - Timac Agro. Gestão de carteira de clientes, vendas de fertilizantes sólidos e líquidos.','Especialização em Adubação Racional de Culturas de Lavoura',NULL,'Comercial, Marketing, Novos Negócios, Engenharia',NULL,NULL,'Agência de Empregos','Não.','R$3.000,00','Sim',NULL,'Comercial','Gosto de fazer atividades fisicas, ficar com a familia, estudar novos assuntos como inglês, ler e viajar. Nas ferias costumo viajar, ultimas fui ao litoral catarinense.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-18T17:42:00.000Z'::timestamptz),
  ('Sandro socca freitas','sandrosocca@gmail.com',NULL,'53999794751','1970-07-15',55,'Casado(a)','1','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1vrBKwpcMakt9FUsxrtP4PFq_f232_jis','Administração de empresas','Pós-graduação Incompleta','FURG','2026-06-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Nissul Gala Concessionária de Veiculos /Gerente  e Supervisor em Vendas /início 12/23 a 06/2025  / Grupo Felice Fiat  Consultor A Gerente de Loja  entrada e retorno de 2014 a 2023 / neste meio tempo  Curso de Imersão de 12 meses  
Imobiliaria on line  Bage  Estágio  01 Ano /Franchising Nestlé Exclusiv  2 Anos Consultor e Gerente expansão, Franqueado  / Lojas Sul Cores  Gerente 01 Ano
Magazine Luiza 01 Ano Gerente de lojas / lojas Colombo Gerente de Loja 15 Anos .','Processos Gerenciais / pos graduação  emprendedorismo  e Inovação  /Curso Técnico Imobiliario /Cursos de Alta Performance em Vendas /Sólida Gestão em Equipes.',NULL,'Administrativa, Comercial, Novos Negócios',NULL,NULL,'Facebook','Nao','8 mil reais','Sim',NULL,'Comercial','Finalizando pos Graduação, experiência em Gestão,focando no ramo por entender que hoje este e promissor,podendo contribuir muito para crescimento expansão sa empresa','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-18T20:23:00.000Z'::timestamptz),
  ('Bruno Alves da Silva','brunoalvessilva851@gmail.com',NULL,'53981019375','1983-11-18',42,'Solteiro(a)','1','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1PZOBOpkAHGdhpu5ZQW-Cc3iRfdhSJeOZ',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Minhas experiências estão na carteira digital','Curso de vendas (Power vendas)',NULL,'Comercial',NULL,NULL,'Agência de Empregos','Não','2.500 a 3.500','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-18T20:53:00.000Z'::timestamptz),
  ('Claudia Cibeli dos Santos Gottliebs','claudiagottliebs6@gmail.com',NULL,'55984263150','1972-05-29',53,'Viúvo(a)','3','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1NDfSlIrHg-2krHxkAKYui8djr-EWooL8',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Imobiliária,  secretaria, atendimento só público,  vendas
Paszsn construções,  secretaria,  área de atendimento a clientes,  vendas,  financeiro 
Comércio de combustíveis Pitangueira,  auxiliar administrativo, faturamento,  vendas, atendimento a clientes 
Consultora e Diretora de Vendas Mary kay,  vendas,  prospecção de clientes e consultoras',NULL,NULL,'Administrativa, Comercial, Novos Negócios',NULL,NULL,'Agência de Empregos','Não','2.800,00','Sim','Comércio de Combustíveis Pitangueira 
3433- 1212','Viver a experiência no projeto junto com a empresa empreendedora','Sou uma mulher ensinável, que busco todos os dias melhorar o meu relacionamento e convivência com pessoas em todas as áreas, estudando,  aprendendo e somando de forma positiva, saudável e com resultados','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-19T13:03:00.000Z'::timestamptz),
  ('Saionara Dias Vianna','sdiasvianna@gmail.com',NULL,'53981227921','1975-01-16',51,'Solteiro(a)','0','Sim','Pelotas/rs','https://drive.google.com/uc?export=view&id=1S7sN2_kfnnZV_9txYPl-QXhDVgoKEaq5','Arquitetura','Pós-graduação Completa','Ufpel','2006-02-10','Sou formado','Ifsul-Cavg - professora substituta - 11/2020 -11/2022. Ministrei aulas de desenho técnico e desenho arquitetônico para cursos técnicos e superiores. Fui orientadora de dois TCCs e participei de bancas de conclusão de curso.','Graduação em arquitetura e urbanismo (Ufpel -2006), Formação pedagógica de docentes (Ifsul-2012), Mestrado em arquitetura e urbanismo (Ufpel -2017), Doutorado em  ciência e engenharia de materiais (Ufpel - em andamento)',NULL,'Arquitetura, Licenciamentos, Engenharia',NULL,NULL,'Instagram','Não','4000','Sim','Humberto Dias Vianna, 5399715602, Ufpel','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-20T00:05:00.000Z'::timestamptz),
  ('Vitória Garcia da Silveira','bit.vit@gmail.com',NULL,'51993538183','1997-06-06',28,'Solteiro(a)','0','Sim','Osório/RS','https://drive.google.com/uc?export=view&id=1EM9JVcAqW-j9muKiNqHLwQcjYeRZ25TF','Engenharia Civil','Ensino Superior Incompleto','Unisinos',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Aviva urbanismo, atuava no apoio ao engenheiro da obra de um condomínio Náutico, realizando todas as atividades relacionadas a obra; Kommerling (atual trabalho), trabalho no P&D, com apoio de atividades em português e espanhol, desenvolvimento de projetos e de materiais técnicos para esquadrias de pvc.','Autocad, SketchUp',NULL,'Engenharia',NULL,NULL,'Instagram','Não','R$4.500,00','Sim','Aviva urbanismo, Kommerling','Quero inscrever-me no banco de talentos da Young!','Gostaria de uma oportunidade para apresentar minha capacidade.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-20T01:30:00.000Z'::timestamptz),
  ('Anna Carolina Maretoli Rios','annacmaretoli@hotmail.com',NULL,'55999902841','2002-03-16',23,'Solteiro(a)','1','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1b5h8EtpEg0438sW6fvJHQdForDGgX5UD',NULL,'Ensino Médio Completo','Colégio estadual São Patricio','2019-12-31','Não, no momento pausei/parei por um período.','Andrade tenis, auxiliar de escritório, 11/2023 à 05/2025
Trabalhava na parte administrativa da loja, a dona da loja trabalha com a apartamentos de aluguel e casas( montava contratos, rompimento de contrato)
Por menos, auxiliar de loja (vendas, caixa, cobrança e reposição)
A garimpeira 02/2021 à 03/2023',NULL,NULL,'Administrativa, Comercial, Novos Negócios, Engenharia',NULL,NULL,'Agência de Empregos','Não','Uma base do salário comercial, de acordo com o cargo','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa adaptável, comunicativa, aprendo com rapidez o que for-me passado, não tenho medo de encarar um novo desafio!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-22T11:44:00.000Z'::timestamptz),
  ('Naiara Lima Xavaré','naiaraxavare0603@gmail.com',NULL,'55999931342','1987-03-06',38,'Solteiro(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=10wr8er70nO5yAJ-27tstu8eX92_jES-_','Formada : Ciência e Tecnologia de Alimentos . Cursa: Nutrição','Ensino Superior Completo','Universidade Federal do Pampa - Unipampa','2024-12-17','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Promotora de Vendas Interna/Externa 
KLS Educacional Ltda. - 12/2023 a 01/2024
Atendimento ao cliente e apresentação de serviços educacionais ;
Atuação em campanhas externas e internas.','Assistente de controle de Qualidade (180h) - IFSUL
Inspetor de Qualidade (160h) - IFSUL
Boas Práticas de Fabricação (BPF) - Conteúdo abordado nos cursos
Excel Básico (2013)
Informática Básica (2013)',NULL,'Administrativa, Comercial',NULL,NULL,'Agência de Empregos','Não','0','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-22T13:35:00.000Z'::timestamptz),
  ('Raphael dos Santos dias neto','raphaeldias779@gmail.com',NULL,'55996113245','1995-10-27',30,'Solteiro(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1dknlc4LxgYLgXMmxDN0oq6qkUZXYZAwI',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','1) Empresa: Base Equipamentos de segurança 
- Atuava como vendedor interno! Experiência de 1 ano! Fui demitido por corte de gastos! 
2) Empresa:  Farmácias São João! 
- Atuava como vendedor (Plantonista) fui contratado para ser plantonista, ficando 3 meses! Fui demitido pois o plantão não existe mais!','- Auxiliar de contabilidade e Escrita fisca 
- Serviços Administrativos',NULL,'Administrativa, Comercial, Financeiro, Marketing',NULL,NULL,'Agência de Empregos','Nao','2.500,00','Sim','Cristian! 999636199','Comercial','Sou um pessoa super comunicativa, tenho facilidade de fazer amizades! Gosto de viver a vida um dia após o outro! Sei do meu potencial em todas as áreas de minha vida, focado até conseguir algo!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-22T14:01:00.000Z'::timestamptz),
  ('Milene de almeida da rosa','milene.darosa8@gmail.com',NULL,'55984233208','2000-02-07',26,'Solteiro(a)','1','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1CaS3hpl32lZuRrQ_I3qAn7UK88w-KLK4','Administração de empresas','Ensino Superior Completo','Universael Educacional da Lapa','2025-02-07','Sou formado','Realizei durante 2 anos estágio remunerado no INSS e no Escritório de Advocacia Albuquerque Maranhão e Ferreira ambos meio turno e no período de 2019 até inicio da pandemia 2021. Trabalhei durante 3 anos e meio para a Empresa Camil alimentos de forma terceirizada. 1 ano pela empresa Porto Seguro do setor de portaria, acompanhando entrada e saída de caminhões e realizando seus registro de sistema abril 2021 a maio 2022. Na sequência a nova empresa que ganhou a licitação realizou contrato onde fui trabalhar na vaga de aux. de logística, planejando rota, fiscalizando o app de rastreamento, frete, notas fiscais de saída e entrada entre outras funções, empresa Carga X ano de maio 2022 até setembro 2024, trabalhei  até o fechamento da empresa da empresa na cidade.','Excel básico, gestão de empresas.',NULL,'Administrativa, Comercial, Financeiro, Engenharia',NULL,NULL,'Agência de Empregos','Não','2.000','Sim',NULL,'Comercial','Atualmente estudo para certificações da Ambima, pois acredito que conhecimento nunca é demais.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-22T14:17:00.000Z'::timestamptz),
  ('Arthur Santos Teixeira','arthteixeira95@gmail.com',NULL,'51983147661','1995-03-31',30,'Solteiro(a)','0','Sim','Canoas/RS','https://drive.google.com/uc?export=view&id=1hUMhn-BI_X8E6u-Tfe7k7K9nUEW4ICXF','Arquitetura','Pós-graduação Incompleta','Centro Universitário Cesuca','2025-09-20','Sou formado','- Shopping Iguatemi POA - Analista de Manutenção
(Ago/2022 - atualmente)
Análise de projetos de arquitetura e PPCI das obras das lojas e
quiosques do shopping, de acordo com caderno técnico do
Iguatemi. Gestão e fiscalização das obras das lojas e internas do
shopping. Elaboração de briefing, orçamentos e projetos de
melhorias como adequação de layout das salas de administração,
criação de depósitos de lojistas e elaboração de plantas técnicas.
- Cia Zaffari - Analista Técnico de Engenharia
(Nov/2021 - Ago/2022)
Análise de projetos complementares como elétrica,
hidrossanitário, estrutural, ppci, gás, exaustão, ar condicionado e
sistema saponificante. Fiscalização da execução das obras das
lojas da Cia Zaffari de acordo com os projetos aprovados e
caderno técnico.
- Dufrio Refrigeração - Técnico em Edificações
(Jan/2021 - Nov/2021)
Participação em todo processo de abertura de nova filial no
Brasil. Desde a análise de terrenos e estudos de viabilidade, a
elaboração de projeto arquitetônico, escopo de obra, orçamento
e negociação com fornecedores de serviços da construção civil.
Gestão e supervisão da obra, garantindo a entrega da mesma
dentro do cronograma e orçamento previsto.','Estou cursando MBA em Gestão de Projetos no momento com previsão de conclusão para dezembro de 2025.',NULL,'Arquitetura, Engenharia',NULL,NULL,'Agência de Empregos','Não','6000','Não',NULL,'Auxiliar de Projetos','Prezada equipe da Young Empreendimentos,

Sou o Arthur Teixeira, Arquiteto e Técnico em Edificações, com mais de seis anos de experiência na área de obras, projetos e manutenção predial. Ao longo da minha trajetória, atuei em empresas como a Dufrio Refrigeração, a Cia Zaffari e o Shopping Iguatemi Porto Alegre, onde desenvolvi habilidades sólidas em análise e compatibilização de projetos, fiscalização de obras, elaboração de escopos técnicos e gestão de melhorias em ambientes comerciais e corporativos.

Tenho facilidade em trabalhar em equipe, sou proativo e valorizo relações transparentes no ambiente profissional. Busco constantemente o aprimoramento técnico e de gestão — atualmente curso MBA em Gestão de Projetos.

Acredito que minha vivência prática, aliada à minha formação técnica e acadêmica, podem contribuir de forma significativa para os projetos e desafios da Young Empreendimentos.

Coloco-me à disposição para conversarmos melhor sobre como posso agregar à equipe.

Atenciosamente,
Arthur Teixeira','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-22T15:43:00.000Z'::timestamptz),
  ('Rania medeiros','medeirosrania86@gmail.com',NULL,'53999269844','2006-02-13',20,'Solteiro(a)','0','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1GaNH07fu8MaN3Llpo6b_NSWdxkTSjtBl','Estou cursando Bacharelado em Administração','Ensino Superior Incompleto','UNIASSELVI','2028-12-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Sede Campestre Clube Caixeiral – 2023/2024
Centro administrativo obino — 2024
Mosaico — 2024.
Prefeitura Municipal De Bagé — 2025.','Curso de Atualização – Comportamento Organizacional.
 Curso de iniciação tecnológica IT2. 
 Curso de Qualificação Profissional para o Mercado de Trabalho – ACIBA.',NULL,'Administrativa, Comercial, Estágio, Marketing',NULL,NULL,'Facebook','Não','1.800,00','Sim',NULL,'Vaga disponível comercial','Sou uma pessoa comunicativa, dedicada e com grande disposição para aprender. Valorizo o trabalho em equipe e estou sempre pronta para enfrentar novos desafios com responsabilidade e entusiasmo. Acredito que cada obstáculo é uma oportunidade de crescimento, e busco constantemente me desenvolver tanto no âmbito pessoal quanto profissional.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-22T16:02:00.000Z'::timestamptz),
  ('Verônica Lima Oviedo','veronical.ovied01@gmail.com',NULL,'55999074744','2002-02-18',24,'Solteiro(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1Kvb2OqZ5ZGx2czqDlJ_49nmrrtrH8vJg','Tecnólogo em Gestão Financeira','Ensino Superior Incompleto','CRUZEIRO DO SUL','2026-07-25','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) SPIDER NET PROVEDOR DE INTERNET 
Estágio 11/2022 - 05/2023
Auxiliava no controle financeiro, com a renovação de contratos e cobranças. Realizava o atendimento ao público presencialmente e através das redes sociais da empresa. 

2) A GARIMPEIRA 
 Vendedora 06/2023 - 06/2025
Ficava responsável pela organização da loja, atendimento e vendas para os clientes. Além de realizar a abertura e fechamento dos caixas. 

3) RGE Distribuidora de Energia 
   Jovem aprendiz 03/2020 - 03/2022
Auxiliava a assistência nos processos rotineiros da área administrativa, realizava atividades com planilhas pelo Excell.','Realizei alguns cursos como gestão de pessoas,  técnicas de vendas. E atuei na área administrativa e de vendas em uma empresa provedora de Internet.',NULL,'Comercial, Financeiro',NULL,NULL,'Agência de Empregos','Não','Em torno de 1 salário mínimo','Sim','SPIDER NET ITAQUI - 55 999547229
JULIANO PRADO - SUPERVISOR RGE / 55999732329','Consultor de Vendas','Comecei recentemente a busca por um novo idioma para ter um diferencial no mercado de trabalho, o idioma escolhido foi inglês. Posso dizer que sou uma jovem em busca de oportunidade para melhorar e executar as habilidades que possuo, mas sempre disposta a aprender e desenvolver novas atividades.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-22T17:07:00.000Z'::timestamptz),
  ('Daniel Tito de Souza','dantsouza@gmail.com',NULL,'94992022240','1985-06-23',40,'Divorciado(a)','2','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=18VyuLtiiIMq9h6rzoqY6sMEWTxWZaEiN','Gestão Pública','Pós-graduação Completa','Estácio','2021-12-31','Sou formado','Tenho vasta experiência na área administrativa e operacional, bem como na pedagogias, tanto educacional como administrativa. 
Sendo assim, estou anexando meu currículo onde constam minhas experiências.','Estou finalizando um MBA',NULL,'Administrativa, Comercial, Novos Negócios',NULL,'https://drive.google.com/open?id=1kRpYM5_pNvmUlwxwgV4SNKDS39haY3Fw','Agência de Empregos','Não','R$4.000,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou formado em Gestão pública, com especialização em andamento em auditoria. Também em pedagogia e especialista em gestão.
Durante os anos em residem em Brasília estive em gestão em diversos áreas de órgãos públicos, como Presidência, Itamaraty, PGR, Ministérios e outros órgãos. 
Sou focado em resultados e trabalho com metas. Meus objetivos em relação à trabalho, são de buscar crescer e buscar excelência.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-23T19:12:00.000Z'::timestamptz),
  ('Gimaine Oviedo Teixeira','gimaineoviedoteixeira@gmail.com',NULL,'55999039965','1986-02-13',40,'Solteiro(a)','0','Não','Itaqui/RS','https://drive.google.com/uc?export=view&id=12WtPTSLBCzT1pPkQI-xj4fyWrYiiaPAT','Letras','Ensino Superior Completo','Universidade Castelo Branco',NULL,'Sou formado','Estou trabalhando atualmente na empresa Amigo Internet como agente de relacionamento no período de 4 anos e 11 meses, nesse cargo atuo no setor comercial.',NULL,NULL,'Comercial',NULL,NULL,'Indicação','Não','Estou aberta a negociar de acordo com a faixa salarial da empresa para a vaga.','Sim',NULL,'Comercial','Sou Gimaine, minha formação é no curso de Letras, estou cursando pós graduação em alfabetização,gosto de trabalhar com pessoas,atualmente trabalho no setor de relacionamento da Amigo Internet, atuo em várias áreas nesse cargo,sou proativa, comunicativa,busco crescimento profissional.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-23T21:47:00.000Z'::timestamptz),
  ('Carieli Trindade Barbosa','carielitrindade@gmail.com',NULL,'55999955342','1999-11-14',26,'Solteiro(a)','1','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1xHdEI_7V6FOVAi6qe3J-VZ6jn1yGVTKj','Administração de empresas','Ensino Superior Completo','Unopar Alegrete','2023-12-09','Sou formado','Casa do Brick – Itaqui/RS 
Auxiliar Administrativo | mai/2024 – jul/2025 
- Apoio administrativo e de RH, controle de vendas e caixa. 
- Gestão de atendimento ao cliente e suporte em mídias sociais.

Empire Representações – Itaqui/RS 
Auxiliar Administrativo | nov/2023 – abr/2024 
- Controle de contas a pagar e organização de planilhas financeiras. 
- Realização de pós-vendas e acompanhamento de clientes. 

Nosso Guia – Alegrete/RS 
Auxiliar Administrativo Comercial | abr/2022 – jun/2023 
- Atendimento ao público e vendas de produtos. 
- Elaboração de contratos de estágio e apoio em rotinas de RH.

Fonther Contabilidade e Imobiliária – Alegrete/RS 
Estágio em Administração | fev/2022 – jun/2022 
- Organização de documentos e lançamentos contábeis. 
- Apoio administrativo e atendimento telefônico. 

CIEE – Alegrete/RS 
Estágio Administrativo | out/2019 – abr/2021 
- Suporte às rotinas administrativas e organização de arquivos. 
- Atendimento ao público e alimentação de sistemas internos. 

Prefeitura Municipal de Alegrete – Alegrete/RS 
Estágio em Arquivo Administrativo | set/2018 – set/2019 
- Controle, expedição e arquivamento de documentos. 
- Digitação e organização de processos administrativos.','Curso profissionalizante de administração',NULL,'Administrativa, Comercial, Financeiro, Marketing',NULL,NULL,'Agência de Empregos','Não','2000','Sim',NULL,'Comercial','Profissional formada em Administração, com experiência desde 2018 na área administrativa, financeira e de atendimento ao público. Busco oportunidade para aplicar minhas competências em gestão de processos, suporte administrativo e relacionamento com clientes, contribuindo para os resultados da empresa e o meu desenvolvimento profissional. Possuo também habilidade com criação de imagens para marketing.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-23T21:51:00.000Z'::timestamptz),
  ('Loraine Fernandes','lorainefenandesbelezacorporal@gmail.com',NULL,'53991625058','1988-06-07',37,'Solteiro(a)','2','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1mzNse9v_d1EY9eIlydDxkR6Ikitj4uac','Recursos humanos','Ensino Superior Incompleto','Uniasselvi','2027-10-07','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Já trabalhei como atendente em pizzaria , caixa em supermercado, vendedora em loja de roupas e calçados,vendedora em óptica, vendas externas, promotora de vendas em loja física e tbm por telefone ,e tbm na parte de estética .','Tenho ensino médio completo e comecei a cursar recursos humanos agora, tenho cursos na parte da estética, designer de sobrancelhas, e tbm sou dermomicropgmentadora , tenho curso de atendente e vendas , trabalhei com vendas ,e como promotora de vendas .',NULL,'Comercial, Marketing, Novos Negócios, Engenharia',NULL,NULL,'Facebook','Não','2000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou comunicativa, gosto de trabalhar em equipe , mas me dou bem trabalhando sozinha gosto de desafios de bater metas , sou responsável e persistente dou o meu melhor e sempre estou buscando conhecimento','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-23T22:44:00.000Z'::timestamptz),
  ('Juliane Espindola da Luz','juespindola35@gmail.com',NULL,'55996092638','2002-06-18',23,'União estável','1','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=10Mg7dJWGHsgGjrKLkinGQiOZmvLsgTuh',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Possui experiência diversificada em atendimento, logística e comércio. Atuei como garçonete no Musa Restaurantes, desenvolvendo habilidades de comunicação e trabalho em equipe. Em seguida, ingressei na Vazquez & Cia LTDA como Analista de Transporte em Comércio Exterior, adquirindo vivência em processos administrativos e organizacionais. Por fim,trabalhei no Mix Atakadão, onde desempenhei funções no estoque, atendimento e caixa, demonstrando versatilidade, responsabilidade e pró-atividade.',NULL,NULL,'Administrativa',NULL,NULL,'Facebook','Não','1700','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-24T00:23:00.000Z'::timestamptz),
  ('Naiara Lima Xavaré','naiaraxavare0603@gmail.com',NULL,'55999931342','1987-03-06',38,'Solteiro(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1v36x4AXU4uwx77kEnbQBiE2MtSEat5qp','Ciência e Tecnologia de Alimentos/ Nutrição','Ensino Superior Completo','Unipampa','2024-12-17','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Sim','Inspetor de Qualidade - Controle da qualidade - informática -',NULL,'Administrativa, Comercial',NULL,NULL,'Agência de Empregos','Não','0','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-26T12:18:00.000Z'::timestamptz),
  ('Vanessa dos Santos Pinheiro','vprs29@hotmail.com',NULL,'55984473766','1983-03-29',42,'União estável','0','Não','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1GVnW6gIsd2LLmxmLTRaLry2KEZNllvI0','Engenharia Ambiental','Ensino Superior Incompleto','Uninter','2030-03-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Confer construtora Fernandes LTDA','Sou formada em Direito',NULL,'Administrativa, Engenharia',NULL,NULL,'Facebook','Nao','2.500,00 a 4.000,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-26T16:37:00.000Z'::timestamptz),
  ('Maína Duzac Vivian','mduzacvivian@gmail.com',NULL,'55996626977','1996-02-05',30,'União estável','1','Não','Itaqui/RS','https://drive.google.com/uc?export=view&id=1AJkN8__ixpfP1HxSN5-0rAroq2QRtjVI','Nenhuma','Ensino Médio Completo','Odila Vilordo de Morais','2016-12-26','Não, no momento pausei/parei por um período.','Vendedora na loja Andrade tênis independência, período de 10 meses 
Tive outras experiências profissionais também mas essa foi a última',NULL,NULL,'Comercial, Marketing, Novos Negócios',NULL,NULL,'Facebook','Não','Salário mínimo','Não','55 99961-2811','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-26T23:01:00.000Z'::timestamptz),
  ('Helenara Nelsons de Azevedo','helenaraazevedo22@gmail.com',NULL,'55996605750','2002-12-02',23,'Solteiro(a)','0','Não','Itaqui/RS','https://drive.google.com/uc?export=view&id=1ITje390L4pztAuz0zyWiYdptQn3ZzY4O','Administração de empresas','Ensino Superior Incompleto','Uninter','2029-01-10','Não, no momento pausei/parei por um período.','Operadora de caixa- Supermercado Baklizi 
Mai/2022 a Fev/2024
• abertura e fechamento de caixa;
•atendimento ao cliente;
•organização, precificação e controle de estoque de gôndolas.

Estágio auxiliar administrativo - Patrícia Wurfel Advocacia Previdenciária.
Jun/2024 a Abr/2025.
• acompanhamento de processos judiciais e administrativos;
• venda de serviços;
• organização de documentos e planilhas;
• atendimento online e presencial;','Técnico contábil - Senac (2024 a 2025)
Assintente de contabilidade - Instituto Federal RS (2025)
Auxiliar administrativo - Fael (2018 a 2019) 
Informática - Data Master (2016 a 2017)
Gestão Financeira Empresarial - Instituto Mix (2021)
No momento estou fazendo mais dois cursos de 200h também no Instituto Federal RS: assistente financeiro e assistente de rh',NULL,'Administrativa, Comercial, Financeiro, Novos Negócios',NULL,NULL,'Instagram','Não','Algo Compatível com a função que irei exercer, não gostaria de ser retirada do processo seletivo por essa questão','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma profissional focada em resultados, estou no começo da minha carreira e quero muito ter a estabilidade de crescer junto com a empresa. 
Trabalhei em várias áreas além das experiências comprovadas do meu curriculo, com isso aprendi a me adaptar e dar o meu melhor em cada tarefa, tenho muita facilidade em aprender.
Cultivo e acredito que a ética e o respeito são as coisas mais importantes dentro da empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-27T13:08:00.000Z'::timestamptz),
  ('Melissa Scheid','melissa.r.scheid@gmail.com',NULL,'51992346610','1998-08-18',27,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1KO-65BaQOtgBGAZtTPBTBzymhRvxYzzl','Arquitetura','Pós-graduação Incompleta','Universidade Federal de Santa Maria','2024-08-23','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Autônoma
2) Arquiteta e Urbanista
3) Agosto 2024 - presente
4) Projetos executivos design de interiores, arquitetônicos residenciais, reformas, paisagismo, detalhamentos e compatibilização. 

1) ATR3S Arquitetas
2) Estagiária
3) Setembro 2023 - Maio 2024
4) Estagiária com foco em projeto arquitetônico, detalhamento de
interiores, residenciais, corporativos, comerciais, executivos utilizando CAD e plataforma BIM.

1) Estúdio Vértice
2) Estagiária
3) Março 2021 - Março 2022
4) Estagiária com foco no setor de renderização, modelagem, desenho e edição de imagem, tendo também contato com paisagismo, detalhamento de interiores, levantamento de projeto e apresentação ao cliente.

1) YUMA Studio 3D
2) Estagiária
3) Agosto 2020 - Junho 2021
4) Estagiária com foco no setor de desenho, modelagem 3D e renderização profissional de edificações, fachadas, paisagismo e interiores de alto padrão.

1) Escritório Modelo de Arquitetura e Urbanismo Perspectiva - CAU UFSM
2) Especialista em Design Gráfico e Marketing
3) Março 2019 - Dezembro 2020
4) Integrante do projeto de extensão Escritório Modelo do Curso de Arquitetura da UFSM com foco no desenvolvimento de projetos de cunho social, maior atuação no setor de  design gráfico, marketing e mídias digitais.','Pós Graduação em BIM (Building Information Modeling)em andamento - PUCRS 

Programa Autor BIM Archicad em andamento - GRAPHISOFT

Treinamento Archicad - EIXO 2021

Treinamento AutoCAD - LP Desenhos 2018

Sustentabilidade e suas aplicações na prática de mercado; Projeto
sustentável; Saúde com ênfase em design - UGREEN 2020

Sustentabilidade Urbana - UNIEDUCAR 2020',NULL,'Arquitetura',NULL,'https://drive.google.com/open?id=1M9-Bn4zd8MugWWTUOMl0jcQjJ0MA0TGt','Instagram','Não','R$: 4.500,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou arquiteta e urbanista, formada pela UFSM em 2024, com especialização em BIM pela PUCRS (em andamento). Tenho experiência no desenvolvimento de projetos executivos, detalhamento arquitetônico e de interiores, compatibilização de projetos complementares, modelagem 3D, projetos em BIM e visualização arquitetônica, paisagística e urbana – do conceito à documentação final.

Minha principal ferramenta de trabalho é o Archicad, mas também domino AutoCAD, SketchUp + Layout, 3ds Max + Corona, além de Lumion, V-Ray, Enscape e ferramentas de design gráfico e pós-produção como Photoshop, InDesign, Illustrator, Lightroom e Pacote Office.

Atuo como arquiteta independente, designer e artista 3D. Já realizei projetos autorais e colaborei com escritórios de arquitetura e urbanismo, trabalhando em equipes multidisciplinares em projetos residenciais, comerciais e corporativos. Tenho familiaridade com gestão de equipe, direção de arte e preparo de materiais para publicação – gosto de ver cada etapa ganhando vida, até o momento de apresentar o resultado.

Sou uma pessoa curiosa e criativa, apaixonada por aprender. Adoro cultura, filosofia e psicologia — a experiência humana é algo que me prende profundamente. Gosto de viajar (fiz intercâmbio em Boppard, Alemanha, em 2017), tenho inglês fluente. Procuro experimentar novos hobbies e explorar diferentes formas de expressão artística. Já participei do coral da UFSM, toco piano e violão, canto, gosto de cozinhar, de escrever, de estar ao ar livre e costumo frequentar oficinas de pintura e desenho. Gosto de acreditar que tudo isso contribui para o meu olhar sensível e detalhista na hora de projetar. 

Valorizo organização, comunicação clara, resolução de problemas e melhoria contínua. Acredito que minha bagagem técnica e criativa pode agregar muito a qualquer equipe que busca inovação, excelência e um olhar atento para a experiência do usuário.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-27T18:12:00.000Z'::timestamptz),
  ('Gustavo Siefert da Rocha','gudarocha@gmail.com',NULL,'53991792863','2001-06-14',24,'Solteiro(a)','0','Sim','Pelotas/rs','https://drive.google.com/uc?export=view&id=1rSqdaRZpQaZ0Ex-_hDmH4SSxut48haBd','Engenharia Civil','Ensino Superior Incompleto','UFPel','2026-08-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Dias Gomes prevenção de incêndios: 8/19-2/20
Idealiza Cidades: 2/22-2/24
Rodobens (RNI):  4/24-4/25
Todos estágio de engenharia civil','Tenho 4 anos de experiência com canteiro de obras, domínio com Excel, AutoCAD, sketchup, e estou fazendo curso de Revit e eberick',NULL,'Estágio, Engenharia',NULL,NULL,'Instagram','Nao','1300','Sim',NULL,'Estágio Engenharia e/ou Arquitetura','Possuo bastante experiência em canteiro de obras, agora quero e estou me especializando na área de projetos, sou técnico em edificações e estou no 9° semestre de engenharia civil','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-27T20:33:00.000Z'::timestamptz),
  ('Darlise Crespo Mendes','darlisemendes@gmail.com',NULL,'51991134280','1993-02-22',33,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1C8vdMuuqIy9NSmjKaKWLZsoFnXvQkmDc','Psicologia','Pós-graduação Completa','PUCRS','2016-07-23','Sou formado','Fundação O Pão dos Pobres de Santo Antônio – Porto Alegre/RS
Psicóloga Social | set/2022 – set/2025
Atendimento individual e grupal a crianças e adolescentes em acolhimento institucional;
acompanhamento de famílias; reuniões intersetoriais; visitas domiciliares; acompanhamento
em saúde física e mental; elaboração de relatórios técnicos e encaminhamentos; gestão de
medicações.

Instituto Pobres Servos da Divina Providência – Rede Calábria – Porto Alegre/RS
Psicóloga Social | out/2017 – set/2022
Atuação em CRAS com acolhida, escuta qualificada e orientação a famílias;
acompanhamento social e visitas domiciliares; encaminhamentos para serviços da
rede socioassistencial e intersetorial; registros em prontuário; condução de grupos e
oficinas; participação em planejamento e capacitações.

Consultório Particular - Canoas e Porto Alegre/RS
Psicóloga infantojuvenil | mai/2017 - atual
Atendimentos psicoterapêuticos individuais; acolhimento e orientação parental; trabalho
integrado com escolas através de visitas institucionais; elaboração de relatórios psicológicos
e pareceres técnicos, conforme necessidade clínica.','Possuo pós-graduação em Psicopedagogia Clínica Institucional cursada na Universidade La Salle de abril/2019 a novembro/2021. Ademais, possuo participação em cursos, seminários e espaços voltados a garantia de direitos, especialmente de crianças e adolescentes.',NULL,'Administrativa, Engenharia',NULL,'https://drive.google.com/open?id=1GeDqhLtIb1sXAtegfm-wso9VeghWSoAR','Instagram','Não.','R$4.000,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Embora tenha experiência em Organizações da Sociedade Civil na área social, tenho interesse em me desafiar, assimilar novas aprendizagens e contribuir com minhas habilidades em um novo espaço.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-29T12:42:00.000Z'::timestamptz),
  ('Taylane Araujo','taylaneoliveira@hotmail.com',NULL,'51996529056','1989-05-07',36,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1eWwDO6LNZCdxblSrjNEqJwg_8FRbjawV','Gestão de recursos humanos','Ensino Superior Completo','Unisinos','2022-06-01','Sou formado','Gráfica gaúcha, vendas externas',NULL,NULL,'Administrativa, Comercial, Marketing',NULL,'https://drive.google.com/open?id=1Sci9UQUOemL4K7ypGcrSt6sL14u6IEHm','Instagram','Nao','2.000 a 2.500','Não',NULL,'Coordenador administrativo e vendas',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-29T15:00:00.000Z'::timestamptz),
  ('Antonio Muniz Trindade','antonioamt1993@gmail.com',NULL,'55997094503','1993-07-02',32,'Solteiro(a)','1','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1PIaPM7dI-zw65iECe7Pp5ci5P-HsNYqK',NULL,'Ensino Médio Completo','Escola Estadual Sao Patrício','2011-11-10','Não, no momento pausei/parei por um período.','Lojas Colombo - Vendedor - 12/04/2023 ate o momento.
Principais atividades: Atendimento, Prospecção CRM, Pos-Venda, Prospecção PaP. 

Amigo Internet/Brasil TecPar - Agente de Relacionamento- 13/05/2019 a 16/03/2023
Principais atividades: Atendimento, Prospecção CRM, Pos-Venda, Prospecção PaP, Cobrança, Participei de um projeto piloto de prevenção de cancelamento e fidelização de clientes.','Vendas - Senac 2010
Aprendizagem Comercial - Senac 2011',NULL,'Administrativa, Comercial, Novos Negócios, Engenharia',NULL,NULL,'Agência de Empregos','Não','1800','Sim',NULL,'Comercial','Desde os 17 trabalho no comércio da cidade, transformando minhas vendas em experiências e meus clientes em amigos. Ao longo desse tempo trabalhei uma carteira de cliente que somam 2800 pessoas. Tambem trabalho minhas redes sociais. Levando para onde vou trabalhar minha carteira de clientes e minhas redes sociais onde no Facebook me acompanham em torno de 4.900 seguidores e Instagram mais de 3.000 seguidores todos locais.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-29T15:28:00.000Z'::timestamptz),
  ('Gabriel Santos','gabcandiota@gmail.com',NULL,'53999742541','1999-04-05',26,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1LkX8jkcAXKOiE5_YEEVcaJePXazEF1In','Gestão imobiliária','Ensino Médio Completo','Geteco','2022-10-10','Não, no momento pausei/parei por um período.','Wild Imóveis – Corretor de Imóveis (07/06/2021 a 17/12/2021)
Atuei na área de vendas de imóveis, realizando atendimento e prospecção de clientes. Durante esse período, adquiri também formação como correspondente bancário, atuando diretamente com processos de financiamento imobiliário.

Dalé Imobiliária – Coordenador de Marketing e Vendas (20/12/2021 a 18/02/2023)
Responsável pela coordenação de marketing, elaboração de relatórios de vendas e análise de CRM. Atuei também no processo comercial de imóveis prontos e na planta, ampliando minha experiência em negociação, gestão de clientes e estratégias de venda.

Inove Comunicação Visual – Vendedor de Comunicação Visual (12/03/2024 a 28/09/2025)
Atuei no desenvolvimento de projetos de fachadas e comunicação interna, atendendo clientes pessoa física e jurídica. Minhas atividades envolveram prospecção, vendas consultivas, elaboração de propostas comerciais e acompanhamento de todo o processo de execução dos projetos, fortalecendo minha experiência em atendimento e soluções personalizadas.','Formação em gestão imobiliária, curso focado em documentação e vendas, também possuo certificações bancárias, atuei como correspondente bancário, vendendo financiamentos e consórcios.',NULL,'Comercial',NULL,NULL,'Instagram','Não','3.000,00','Sim',NULL,'Comercial','Gosto muito da área comercial e de atendimento ao público, pois acredito que tenho facilidade em me comunicar e criar conexão com as pessoas. Ao longo das minhas experiências profissionais, desenvolvi habilidades em vendas, negociação e relacionamento com clientes, além de ter contato com ferramentas de CRM e relatórios de desempenho.

Sou uma pessoa que busca constantemente aprender coisas novas e me reinventar. Tenho interesse em áreas de gestão, empreendedorismo e desenvolvimento pessoal. Nos momentos de lazer, gosto de praticar atividades físicas, o que me ajuda a manter disciplina e foco, além de me dar energia para a rotina.

Tenho facilidade em trabalhar em equipe e acredito que posso contribuir trazendo soluções criativas, dedicação e disposição para alcançar resultados.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-29T16:14:00.000Z'::timestamptz),
  ('Joel Santos de Castilhos','joelsc368@gmail.com',NULL,'51985067584','1968-03-11',57,'Casado(a)','2','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1wG6W6woQj-nvQerauxCKOZDEHzSi0-kB',NULL,'Ensino Médio Incompleto','Escola Gregório de Mendonça',NULL,'Não, no momento pausei/parei por um período.','Na verdade trabalho autônomo de pedreiro mais estou disposto a experimentar outra função',NULL,NULL,'Engenharia',NULL,NULL,'Google','Não','Ainda . não sei ficaria a critério da empresa','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Bom como já havia mencionado eu trabalhei de pedreiro autônomo','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-29T19:29:00.000Z'::timestamptz),
  ('Carolina Nunes dos Santos','krol89poe@gmail.com',NULL,'51989752064','2000-04-26',25,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1WU_VPQnCRI8A13b1XiI9o_gBO373TRHc','Ciencias de Dados (cursando) e Ciencias Sociais (completo)','Ensino Superior Completo','UFMS (atual)','2027-12-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Fui orientadora social concursada pelo município de Gravataí desde 2018. A partir de setembro deste ano sou estagiária no Programa de Liderança Operações nas Lojas Americanas SA','Sou cientista social com ampla experiência de pesquisa de campo. Atualmente curso ciencias de dados e tenho estudado gestão de projetos. Cursei o certificado Google em gestão de projetos e atualmente estou fazendo um mini-curso na mesma área pela USP (Acelerando Projetos de Sucesso)',NULL,'Administrativa, Estágio, Engenharia',NULL,NULL,'Instagram','Não','Entre 2 e 3 salários-mínimos','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou fluente em inglês, tenho domínio do pacote Office e conhecimentos básicos em linguagem de consulta SQL e também Python. Conheço também metodologias ágeis e gostaria de me aprofundar nessa área. Sou uma pessoa espontânea que adora trabalhar com pessoas. Sou bastante detalhista e dedicada. Tenho um perfil inovador e flexível.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-29T19:35:00.000Z'::timestamptz),
  ('Jéssica dos Santos Martins','eujessicamartins2318@gmail.com',NULL,'55991231243','2000-10-23',25,'Solteiro(a)','1','Não','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1YrQbZtwj1q1XWw4IeNEJgVSHAETMklQi',NULL,'Ensino Médio Completo','Escola estadual instituto Annes dias','2000-10-23','Não, no momento pausei/parei por um período.','Claro Brasil  01/2024 até  02/2025  (consultora de vendas ) Americanas SA 10/2019 até 12/2023 ( atendente de loja, supervisora de departamento) Bayer 03/2019 até 08/2019 ( estagiária no departamento  de Rh responsável por marcar reuniões, encaminhamentos de notas fiscais)','Tenho experiência em vendas, atendimento só público, foco em metas trabalho em
Equipe. Tenho curso de informática profissional administração e secretáriado',NULL,'Administrativa, Comercial, Marketing',NULL,NULL,'Instagram','Não','1.700','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-29T20:02:00.000Z'::timestamptz),
  ('Bianca Silva Oliveira','bsilvaoliveira20@gmail.com',NULL,'51998219182','2007-05-09',18,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=16CRZ5RJyIjP-3bEJtp0wiGjtuhv4YcCG',NULL,'Ensino Médio Incompleto','IFRS - Campus Rolante','2027-02-01','Não, no momento pausei/parei por um período.','Atendente de Balcão - L. S. Petró 
atendimento ao cliente, organização do ambiente, (personalização de produtos)
02/2024 - 04/2024

Estagiária - Secretária da agricultura e meio ambiente SEMAN
Atualização de planilhas, atendimento ao cliente.
Início 11/2024 - 30/05

Trabalho temporario de secretária em salão de beleza
Marcação de horários, organização do espaço, atendimento ao cliente
Inicio 04/2024 - 11/2024',NULL,NULL,'Administrativa, Estágio, Marketing',NULL,NULL,'Agência de Empregos','Não','R$900,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-29T20:10:00.000Z'::timestamptz),
  ('Ana Paula Requia Pereira','anarequia@hotmail.com',NULL,'51992502961','1985-09-02',40,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1aptfTJ8xm3gBIF8QFICbIuGxS-He1fjz','Arquitetura','Ensino Superior Incompleto','Uniritter','2026-08-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Estagiária Fevereiro 2025 - Atualmente
Maiojama
Auxiliar no diário de obra, gestão à vista, quantitativos e conferência de serviços de mão de obra. Apoio a gestão de engenharia no processo de construção do empreendimento.

Estagiária 2024 - Fevereiro 2025
Jog Engenharia de Andaimes
Auxiliar em visitas comerciais, apresentação da empresa e análise de demandas. Auxiliar na prospecção de clientes e atividades pós-venda. Check-lists comerciais. Auxiliar no planejamento comercial, elaboração de propostas e contratos
e no abastecimento de banco de dados. Elaborar planilhas de fluxo financeiro.

Consultora de vendas 2020 - 2024
Espaço do Piso Revestimentos Ltda.
Atendimento pessoal e online para venda de revestimentos como pisos de madeira, vinilico, laminado, etc. Vistoria em obra visando atender os pré-requisitos e critérios para instalação dos
materiais vendidos. Conferência de metragem in loco para fechamento correto da venda. Experiência em atendimento ao cliente final, arquitetos/engenheiros e representantes comerciais. Prospecção de novos clientes.','Estudante de arquitetura e urbanismo.',NULL,'Arquitetura',NULL,NULL,'Agência de Empregos','Não','3000','Não',NULL,'Auxiliar de projetos','Prezado(a) [Nome do recrutador],

Meu nome é Ana Paula Requia Pereira, estou no 9º semestre de Arquitetura e Urbanismo pela UniRitter e busco a oportunidade de atuar como Auxiliar de Projetos.

Sou uma pessoa prática, comprometida com a verdade e dedicada a tudo o que faço. Tenho facilidade em comunicação, negociação e organização, além de uma forte visão criativa e inovadora. Me identifico com profissionais que unem excelência técnica e propósito, como Norman Foster, e trago essa inspiração para minha forma de pensar e trabalhar.

Minha trajetória de vida também contribuiu muito para minha formação pessoal e profissional. Tive a oportunidade de morar por 1 ano e 4 meses na Nova Zelândia, uma experiência que ampliou meu olhar sobre diferentes culturas, modos de vida e formas de habitar os espaços. Além disso, gosto de viajar, estar em contato com a natureza, praticar esportes e me reconectar em ambientes abertos, o que fortalece ainda mais minha sensibilidade em relação ao espaço urbano e arquitetônico.

Já atuei em funções de apoio administrativo e comercial, lidando com planejamento, organização de demandas, elaboração de propostas e relacionamento com clientes — experiências que reforçam minha capacidade de trabalhar em equipe e lidar com responsabilidades variadas dentro de projetos.

Estou em busca de uma oportunidade que me permita colocar em prática meus conhecimentos acadêmicos, aprender com profissionais experientes e colaborar no desenvolvimento de soluções funcionais e criativas.

Agradeço desde já pela atenção e coloco-me à disposição para uma conversa.

Atenciosamente,
Ana Paula Requia Pereira','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-30T13:41:00.000Z'::timestamptz),
  ('Bolivar da Rosa Motta','bolivar_motta@hotmail.com',NULL,'55991691398','1984-09-22',41,'Casado(a)','0','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1jJ4yD3NO_9LywkmKLk3q1Z2KfMjlHevP','Tecnologia em Gestão Comercial','Ensino Superior Incompleto','Uniasselvi','2027-03-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Grupo Mônego 
Assistente administrativo IV',NULL,NULL,'Administrativa, Comercial, Financeiro, Engenharia',NULL,NULL,'Instagram','Não','2.500,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-30T16:34:00.000Z'::timestamptz),
  ('Vanessa dos Santos Pinheiro','vpra29@hotmail.com',NULL,'55984473766','1983-03-29',42,'União estável','0','Não','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1jya4S2gPqg0_C_r6d8wk8j3N3EwDBLSU','Engenharia Ambiental','Ensino Superior Incompleto','Uninter','2030-03-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Confer construtora Fernandes  Ltda- Técnico de Qualidade.',NULL,NULL,'Administrativa, Engenharia',NULL,NULL,'Facebook','Não','R$3.000,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-30T17:31:00.000Z'::timestamptz),
  ('Jéssica de Fátima de Lima Borges','782jessicalima@gmail.com',NULL,'5499967360','1999-05-17',26,'Casado(a)','2','Não','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1IeUmpR9UZoUGppbFWtWyvr1gfI_0jLBi',NULL,'Ensino Médio Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Almir vestuário e calçados Ltda/ vendedor/ início 10/05/2023  / fim 10/10/2024',NULL,NULL,'Administrativa, Marketing',NULL,NULL,'Facebook','Não','2.400','Sim',NULL,'Vendedor','Olá .  Estou em busca de novas experiências e uma oportunidade estou terminando meu estudo 
Sou proativa. Comunicativa. Organizar. Fácil em aprender','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-30T19:40:00.000Z'::timestamptz),
  ('Evelise Neves Hamed','lisehamed86@gmail.com',NULL,'991533938','1986-01-04',40,'Casado(a)','2','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1bsxuSihQTSIV2fhssKb_1hw19JpovWZt',NULL,'Ensino Superior Incompleto','Uninter','2030-07-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Imobiliária Rochinhas,  área de atuação: recepção 2022.
Remax superação área de atuação:atendimento ao cliente e captação e vendas 
entrei 2022  sai 2024',NULL,NULL,'Comercial',NULL,NULL,'Instagram','Não','O correspondente com a função a minha enviada','Sim','Lucas Limberger Gerente remax superação  
Contato: 5599988166','Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-09-30T20:16:00.000Z'::timestamptz),
  ('Fernanda Pavani Fagundes','ffagundes0603@gmail.com',NULL,'55991085423','2003-11-28',22,'Divorciado(a)','1','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1fDEJg7Y7NGEQWz08IOyIgtIIsaTQR-Q0',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Empório164 Padaria e Mini Mercado Atendente e auxiliar de cozinha Agosto/2024 a Julho/2025
-Atendimento ao cliente, lançamento de notas, organização e limpeza, preparo e entrega de pedidos.
Glasil Materiais Analista de Marketing
Novembro/2023 – Julho/2024
-Gestão de redes sociais, criação de campanhas e apoio no e-commerce.
Basketito
Social Media 
Janeiro/2022 - Maio/2023
-Criação de conteúdo, planejamento de postagens e interação com o público.
Terminal Informática Vendedora
Junho/2021 – Dezembro/2021
-Atendimento ao cliente, vendas, auxílio nas demandas administrativas e organização da loja.

Chiquinho Sorvetes 
Atendente
Janeiro/2021 - Maio/2021
- Atendimento ao cliente, organização e limpeza, preparo de pedidos.',NULL,NULL,'Administrativa, Comercial, Marketing',NULL,NULL,'Facebook','não','2 mil reais','Não',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-01T13:57:00.000Z'::timestamptz),
  ('Petrona do Prado Regina','petronaregina48@gmail.com',NULL,'55996505428','1984-02-14',42,'Divorciado(a)','2','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=13vLfd8tGP_O77ljBQH6F6j01cWihC9wV','Recursos Humanos','Ensino Superior Incompleto','Uniasselvi','2026-12-30','Não, no momento pausei/parei por um período.','Meu primeiro trabalho foi como vendedora na lojas pompeias , trabalhei de 2001 até 2004 depois tive a minha primeira experiência em gestão comercial na loja de telefonia Oi de 2012 a 2017 e meu último trabalho foi na STN uma construtora eu trabalha de assistente administrativo da frota de 2023 a 2025','Técnico em contabilidade e Magistério',NULL,'Comercial',NULL,NULL,'Agência de Empregos','Não','A combinar','Sim','Dyan Foi meu chefe 51- 985380264','Consultor de vendas','Eu tenho experiência em vendas a planilha Excel e ao sistema Power Bi','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-01T16:41:00.000Z'::timestamptz),
  ('Daniel Marques Godinho','danielmarques0709@gmail.com',NULL,'53997016241','2000-05-13',25,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1UxMEabB0gE73_BUF5-ZHIL5qWpMbiqbK',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Operarador de máquinas e Office boy',NULL,NULL,'Administrativa, Financeiro, Marketing, Novos Negócios',NULL,NULL,'Facebook','Não','2000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-01T21:24:00.000Z'::timestamptz),
  ('Jonatan Renato Stacol','rstacol@gmail.com',NULL,'55997059747','1987-10-29',38,'Casado(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1RlxgZp1qQD242TJ4hKF38BtWAGplZHxM','Administração de empresas','Ensino Superior Completo','Uninter','2010-08-31','Sou formado','1- Rede Gazeta 
2- Executivo de vendas 
3- Julho de 2008 até 13 setembro 2024
4- Na Rede Gazeta, iniciei na recepção no formato de atendimento, logo, passei para assistente comercial e depois me tornei executivo de vendas multimídia, sempre na área comercial de mídia ( Rádio, TV e Digital). Participava de ações promocionais, eventos corporativos e projetos institucionais e sustentáveis . Fazia parte do comitê de pesquisas de lembrança de marca. Participava também dos processos licitatórios dos municípios que faziam publicidade legal.','Me formei em Administração de Empresas, iniciei uma pós em Gestão de Pessoas no UNESC. Fiz outros cursos na área de vendas, argumentação de vendas, varejo, mídias sociais e digitais dentre outras.',NULL,'Comercial',NULL,NULL,'Instagram','Não','50.000,00','Sim','Maria Elena Lani 
Rede Gazeta 
Gerente Comercial Multimídia 
Telefone (27) 999892098','Comercial','Gosto muito de viajar, viver novas experiências e também cozinhar, recentemente fiz um curso de culinária básico. Tenho foco no cliente e sempre busco o melhor resultado para ele, inclusive, gosto muito do contato com o cliente. Acredito que o relacionamento reflete nos retornos pessoais e profissionais. Tenho facilidade em trabalhar com o CRM Sallesforce e AdSim. Gosto de estar sempre reunimdo amigos e familiares.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-02T22:27:00.000Z'::timestamptz),
  ('José Galdino dos Santos da Silva Filho','jose.filho53@outlook.com',NULL,'55999882812','2000-09-05',25,'Solteiro(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=15BKUKf3ZtqzmYLGpWbAqGvr53cTr2-Tf',NULL,'Ensino Médio Completo','Uninter',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','MANTENA FLORESTAL S.A (Freelancer) - Conferência de notas fiscais, faturas de pagamentos e boletos, contribuindo para a melhor organização do departamento financeiro.
• Organização de documentos, armazenando adequadamente arquivos importantes para fácil acesso e consulta posterior.
• Elaboração e Atualização de relatórios e planilhas, colaborando com o controle administrativo da empresa.
• Controle e registro de documentos, compilando contatos e informações necessárias para a organização da empresa.
Período: 06/2025 a 09/2025 
BNET TELECOMUNICAÇÕES LTDA - Instalação de equipamentos
o Instalação de roteadores, modens, antenas, cabos, centrais telefônicas e outros dispositivos de rede.
o Configuração equipamentos para redes cabeadas e sem fio (Wi-Fi, fibra óptica, etc.).
• Manutenção preventiva e corretiva
o Realização de testes e diagnósticos nos sistemas de telecomunicação.
o Corrige falhas em conexões, substitui e reconfigura sistemas quando necessário.
• Atendimento técnico a clientes
o Visita técnica ao cliente para instalar ou resolver problemas técnicos.
o Oferecer suporte técnico presencial ou remoto.
Período: 08/2024 a 10/2024
OSMAR NICOLINI COMERCIO E DISTRIBUIÇÃO S.A. - Realizava Atendimento ao cliente, registro de produtos, recebimento de pagamentos, organização e limpeza do local de trabalho e auxiliava
em outras áreas (quando necessário).
Período: 02/2024 a 08/2024.',NULL,NULL,'Administrativa, Comercial, Marketing, Engenharia',NULL,NULL,'Instagram','Não','1800','Sim','Bianco Lodi: +55 (11) 98555-2649 - Mantena Florestal S.A
Ana Silveira: +55 (55) 9922-7835 - Mantena Florestal S.A
Keven Costa: +55 (55) 99976-3354 - BNET Telecomunicações LTDA
Jason Souza: +55 (55) 99661-1182 - BNET Telecomunicações LTDA
Júlia Gracielle: +55 (64) 99903-3429 - STN Construções e Empreendimentos','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-03T19:12:00.000Z'::timestamptz),
  ('Tiago Ribeiro','thiago.cuia@hotmail.com',NULL,'992125206','1983-01-19',43,'Solteiro(a)','1','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=143wfb5_qvbPYiYK8VUV96eQHaehAIz8D',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Empresa: Via Seg Segurança e Vigilância Ltda ( Itajái/SC)
 Cargo: Vigilante 
Data inicial: 30/10/2014  Data Termino: 02/06/2017
 Principais  Atividades: Zelar pelo patrimônio e segurança dos funcionários e clientes que ali circulam.

Empresa : Ramos e Telles Ltda
Cargo: Auxiliar de Segurança
Data Inicial: 08/01/2018  Data Termino: 07/04/2018
Principais Atividades: Fazer a seguranças dos Patrimônios dos clientes.

Empresa: Komprâo Mais Linke Atacado e Varejo.
Cargo: Fiscal de Prevençâo de Perdas
Data Inicial: 23/10/2019  Data Termino: 23/07/2020
Principais Atividades: Fazer o monitoramento pelas câmeras para evitar os furtos.

Empresa: Inviolável ( Ana Claúdia Folle Eireli)
Cargo: Auxiliar de Serviços Patrimoniais Tercerizado na Empresa SLC MÁQUINAS JOHN DEERE.
Data Inicial: 17/11/2020 Data Termino: 18/07/2025
Principais Atividades:  Acompanhar e registrar as notas fiscais de entrada e saída dos bens da empresa como, óleos, peças, implementos e máquinas agrícolas. Monitoramento interno e externo da empresa.',NULL,NULL,'Administrativa, Comercial, Marketing, Novos Negócios',NULL,NULL,'Facebook','NÂO','A combinar','Não',NULL,'Consultor de vendas','Possuo curso de tonfa e algema','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-04T22:31:00.000Z'::timestamptz),
  ('kellyss13@gmail.com','kellyss13@gmail.com',NULL,'55996195568','1984-04-10',41,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1jKfVdQpJ77IeMZJvUSWYilNO7u2vdEPY','Administração de empresas','Ensino Superior Completo','Urcamp','2006-01-27','Sou formado','1) Contisul Transportes Ltda, 2) Auxiliar de escritório, 3) 15/04/2013 a 02/09/2025, 4) Responsável pelo faturamento e cobrança dos fretes, Responsável pelo Departamento Pessoal, realizando todos procedimentos para admissão, férias, controle de ponto, rescisões. Responsável pela conferência dos acertos de viagem dos motoristas. Auxiliar no setor financeiro e operacional da empresa. 
1) Banco do Brasil S/A, 2) Estagiária/Escriturário/Telefonista, 3)02/2003 a 02/2005/ 07/2006 a 07/2008/ 09/2008 a 09/2012, 4) Auxiliar nos serviços de retaguarda do banco, emissão de boletos de cobrança, conferência de documentos, atendimento interno e atendimento ao público e telefonista.',NULL,NULL,'Administrativa',NULL,NULL,'Facebook','Nao','2.600,00','Sim','Miguel Fontoura (diretor Contisul) - 55 98112-0000','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-05T00:44:00.000Z'::timestamptz),
  ('Cristiane Pinheiro Rodrigues','cristianekit07@gmail.com',NULL,'53999098339','1985-06-29',40,'Solteiro(a)','3','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1c6dlxetQr0XFqYCUfb21OsEaC42WZGJL',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Claro S.A Vendedora de comércio Varejista 2021 a 2023
Top service Auxiliar de serviços gerais 2018 a 2021','Power Point
Atendimento ao Público 
Estratégia de Negócios',NULL,'Comercial',NULL,NULL,'Agência de Empregos','Não','1.800','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-05T15:27:00.000Z'::timestamptz),
  ('Rafaela Arruda Del Pino','rafaelaarruda123delpino@gmail.com',NULL,'53991295434','2005-02-21',21,'Solteiro(a)','0','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1qlsbfA9OmysmeSvDdsmR9OomLPQ60p9Z','Técnico em segurança do trabalho','Ensino Médio Completo','Senac','2024-09-29','Não, no momento pausei/parei por um período.','GBI combustíveis 
Técnico em segurança do trabalho 
01/04/2025 à 15/07/2025
Ministrar treinamentos; garantir o uso e entrega de EPI''s; garantir validade dos alvarás da empresa.',NULL,NULL,'Comercial, Marketing, Novos Negócios, Engenharia',NULL,NULL,'Facebook','Não','1600','Sim',NULL,'Vendedor externo',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-05T16:38:00.000Z'::timestamptz),
  ('Syndel Vianna Fernandes','syndelfernandes261101@gmail.com',NULL,'53991673939','2001-03-11',24,'Solteiro(a)','0','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1DkDsEirDL7txJRdTGZDj4Bk2wTJu4FSn',NULL,'Ensino Médio Completo','Rede TC Cursos','2024-08-17','Não, no momento pausei/parei por um período.','Espaço Laser
- Consultora de unidade. 
- 07/2024 - 02/2025
- Recepcionista e vendedora 

Claro 
- Vendedora 
- 10/2023 - 06/2024
- Atendente e vendedora 

Lunelli (Santa Catarina)
- Operadora de estamparia 
- 09/2019 - 12/2022
- Atuava no desenvolvimento de peças de roupas, em todas as etapas.',NULL,NULL,'Administrativa, Comercial, Marketing',NULL,NULL,'Instagram','Infelizmente não.','A combinar!','Sim',NULL,'Consultora de vendas','Olá, tudo bem? Espero que sim! Eu sou a Syndel. Eu tenho muitas qualidades e alguns defeitos, como todo mundo... Meus pontos fortes? Eu sou muito organizada, responsável, dedicada, proativa e comprometida. Busco sempre aprender e aprimorar minhas habilidades, buscando também, contribuir de forma positiva para o ambiente e para os resultados da empresa. Algo mais pessoal? Meu maior sonho é ter meu próprio negócio e através dele, realizar todos os meus outros sonhos. Bons cursos em uma boa faculdade, casa própria, um carro para facilitar a vida, entre outros... Mas na verdade verdadeira mesmo, o meu maior sonho é poder mudar o mundo e ajudar muitas pessoas, espalhar o evangelho assim como Jesus Cristo fez, e sempre fazer o melhor que eu poder, em tudo sempre!!!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-05T23:08:00.000Z'::timestamptz),
  ('Bruno Esteves Cassão','brunocassaoo@gmail.com',NULL,'53999214186','1994-10-31',31,'Solteiro(a)','1','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1MJ8pn_miR3lw3q0PVk-E12j44H8uDa3t','Administração de empresas','Ensino Superior Incompleto','Urcamp',NULL,'Não, no momento pausei/parei por um período.','Tumelero / vendedor / novembro 24 à fevereiro 25',NULL,NULL,'Administrativa, Comercial, Financeiro, Marketing',NULL,NULL,'Indicação','Nao','2000 a 3000','Sim','Deltasul','Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-06T17:16:00.000Z'::timestamptz),
  ('Fernanda lannes igura','igurafernanda4@gmail.com',NULL,'53999595517','1982-06-09',43,'União estável','1','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1OuqObp8UfoluIXZ6YlL5f49MvE4CrxEo',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Tenho experiência em atendimento ao cliente em call center,caixa e loja',NULL,NULL,'Administrativa, Comercial',NULL,NULL,'Facebook','Nao','2000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-06T18:59:00.000Z'::timestamptz),
  ('Ester Ellwanger','esterellwanger@gmail.com',NULL,'51991686538','1983-04-15',42,'Divorciado(a)','0','Sim','Novo Hamburgo/rs','https://drive.google.com/uc?export=view&id=12ZCN-e4W4XO3MNKbGE0IL6Mnc-8qWxha','Comunicação Social - Jornalismo','Pós-graduação Completa','Universidade Feevale','2010-01-23','Sou formado','Sindilojas Vale Germânico - Assistente de Marketing | 2023 - 2025
Planejamento e execução de campanhas e eventos
Produção de conteúdo digital e institucional
Relacionamento com agências e coordenação de ações promocionais

Um Cultural - Assistente de Produção | 2022
Produção de eventos como o 193º Kerb de São Miguel e XXVII Natal dos Anjos, em Dois Irmãos
Atuação nas atividades de palco, apoio técnico e organização logística

Revista Expansão - Repórter | 2009-2010 | 2021 – 2022
Produção de matérias voltadas ao desenvolvimento regional
Gerenciamento de conteúdo digital, entrevistas e fotografia jornalística.

+E2 Assessoria de Comunicação - Jornalista/social media/ diretora| 2012- 2021
Empreendedora criativa atuando com marketing para pequenas empresas
Desenvolvimento de sites, fotografias, publicações e clipagem
Atendimento a diversas marcas e pequenas empresas

Colégio Marista São Marcelino Champagnat - Assistente de Comunicação | 2012 – 2014
Produção de textos, fotos e vídeos institucionais
Organização de eventos e clipagens de mídia

Instituição Evangélica de Novo Hamburgo (IENH) - Assistente de Comunicação | 2012 – 2014
Produção de jornais internos, releases e cobertura de eventos

Demais experiências profissionais
Assessoria de imprensa;
Repórter de jornal do interior;
Gerenciamento de redes sociais;
Redação de blog;
Produção de matérias e fotografias para sites.','MBA em Comunicação em Mídias Sociais - Universidade Estácio de Sá | 2018

Copywriting (Up Cursos On Line)
Copywriting (Gyn Cursos On Line)
Marketing Digital (Up Cursos On Line)
Ferramentas de Marketing Digital (Senac-NH)
Ferramentas de Inteligência Artificial (Senac-NH)
Assessoria Digital: Como Produzir Conteúdo Relevante para a Rede Social (Comunique-se – Escola de
Comunicação)
Planejamento Estratégico para Mídias Sociais (Comunique-se – Escola de Comunicação)
Intensivo de Mídias Sociais (Fabulosa Ideia)
11º Maratona Digital em Porto Alegre (Fabulosa Ideia)
Marketing Digital –Cresça com o Google (Google Brasil Internet)
Vídeo S/A: Como as organizações podem se comunicar na era audiovisual (Universidade Feevale)
Adobe Photoshop 2018 Completo (Udemy)
Instagram Marketing Completo (Udemy)
Facebook ADS e Instagram ADS (Udemy)
You Tube Seo- Seu vídeo na primeira página (Udemy)
Iniciação à Fotografia: ênfase em iluminação natural (Unisinos)
Photografia: a escrita da luz (Unisinos)
Assessoria digital - Evoluindo do release para a web 2.0(Comunique-se – Escola de Comunicação)
Gestão de equipes em Assessoria de Imprensa (Comunique-se – Escola de Comunicação)
Marketing/ Endomarketing
Comunicação para Micro e Pequenas Empresas (Comunique-se – Escola de Comunicação)
Endomarketing (Comunique-se – Escola de Comunicação)
Pós-NRF 2025 (CDL POA)
Varejo 360º (Fecomércio-RS)Jornalismo Cultural: prática, discussão, discussão da prática (Unisinos)
Produção Cultural (Um Cultural)
Introdução em Marketing Digital (Up Cursos On Line)
Produção e Gestão Cultural (Fasul Educacional)
Produção e Gestão Cultural (Up Cursos On Line)
Jornalismo Cultural: prática, discussão, discussão da prática (Unisinos)
Produção Cultural (Um Cultural)
Introdução em Marketing Digital (Up Cursos On Line)
Produção e Gestão Cultural (Fasul Educacional)
Produção e Gestão Cultural (Up Cursos On Line)
Estratégias de atendimento em assessoria de comunicação (Comunique-se – Escola de Comunicação)
Comunicação Integrada (Comunique-se – Escola de Comunicação)
XX Congresso de Ciências da Comunicação na Região Sul - Intercom Sul (Sociedade de Estudos
Interdisciplinares de Comunicação da Região Sul)
17º Festival Mundial de Publicidade de Gramado (Associação Latinoamericana de Agências de
Publicidade )
Apresentação de Telejornais (Universidade Feevale)
Acordo Ortográfico! E, Agora, Como eu Escrevo? (Universidade Feevale)
Redação na Web (Comunique-se – Escola de Comunicação)',NULL,'Administrativa, Marketing, Engenharia',NULL,'https://drive.google.com/open?id=15iTFL4oKwLf94P9Gd_Kv0ilM_C6LIYUk','Instagram','não','2000','Não','Sérgio Jost (revista Expansão) 5199947254','Quero inscrever-me no banco de talentos da Young!','“Contadora de histórias por vocação, estrategista por formação e apaixonada por conectar marcas, pessoas e propósitos por meio da comunicação humanizada.”','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-06T19:45:00.000Z'::timestamptz),
  ('Lucas Belmonte da Silva','belmontelucas77@gmail.com',NULL,'55996339854','2001-02-03',25,'Solteiro(a)','0','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1oxW2D_vgh5jlEemBfcSS0f1LkOuYO_Gx','Administração de empresas','Ensino Superior Completo','Uri Santiago','2024-12-10','Sou formado','1 - Prefeitura de São Borja -  Direção administrativa de compras públicas, atendimento para as empresas participantes. 
2 - Coordenadoria Regional de Educação - Gestor de Patrimônio Escolar, Analista administrativo responsável pelos recursos públicos destinados a secretaria de educação do RS.
3 - RG digital - Vendedor de Ecommerce Digital e atendimento ao cliente, administração de carteira de clientes. 
4 - Imobiliária Fred imóveis - Atendimento ao cliente, prospecção de novos negócios Imobiliários e novos clientes.','Sou formado em administração de empresas, atualmente sou corretor de imóveis em formação e faço uma especialização em Gestão Pública.',NULL,'Administrativa, Comercial, Financeiro, Novos Negócios',NULL,'https://drive.google.com/open?id=1X8hfGaxzAbzE4Qp1QpH0ulQPFs-kFWhI','Instagram','Não','2400','Não',NULL,'Comercial','Eu sou um profissional esforçado e dedicado, constantemente em busca de aprendizado, sou formado em administração de empresas, atualmente estou me formando corretor de imóveis e estou cursando uma pós graduação em gestão pública. Possuo uma ótima experiência em curricular, experiência em vendas, gestão, administrativo e atendimento ao cliente.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-06T21:00:00.000Z'::timestamptz),
  ('Alexandre Teixeira de Oliveira Júnior','jralexandre011@gmail.com',NULL,'53999950287','2003-04-19',22,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1Jsypaem0hIFep5fP69CTIKeU1rlREIsu','Engenharia da Computação','Ensino Superior Incompleto','Universidade Federal do Pampa  - UNIPAMPA','2028-12-22','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Secretária da Fazenda de Bagé 
Estágio - Auxiliar administrativo
06/2023 - 01/2024
Fazia planilhas, cadastro e etiqueta de novas aquisições, organização de papelada e inventário
EMATER/RS
Estágio - Analista de suporte
06/2024 - atualmente
Atendimento e abertura de chamados, instalação de programas, formatação, limpeza e manutenção de computadores.','Tenho alguns cursos de manutenção de computadores e programação, tenho conhecimento do pacote office e os aprendizados nas cadeiras da faculdade',NULL,'Administrativa, Estágio, Engenharia',NULL,NULL,'Instagram','Não','2000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho conhecimento em algumas linguagens de programação, estou fazendo um curso para JavaScript que lida com sites, tenho conhecimento na linguagem Python e C, sei usar o Pacote Office, tenho facilidade em aprender o que eu não souber','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-06T21:04:00.000Z'::timestamptz)
;

INSERT INTO young_talents.candidates (full_name, email, email_secondary, phone, birth_date, age, marital_status, children_count, has_license, city, photo_url, education, schooling_level, institution, graduation_date, is_studying, experience, courses, certifications, interest_areas, cv_url, portfolio_url, source, referral, salary_expectation, can_relocate, professional_references, type_of_app, free_field, status, tags, origin, created_by, original_timestamp)
VALUES
  ('Rosemari Santos Amaral','rosemariamarall@gmail.com',NULL,'55992088288','1987-06-07',38,'Solteiro(a)','1','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1YlMFK-yhu92ECbFzwbliUUXmKAoZaFp3','Matemática','Ensino Superior Completo','Instituto Federal Farroupilha','2023-03-31','Sou formado','Empresa: Prefeitura Municipal de São Borja.
Cargo ocupado: monitora
Data de início: 02/03/2020
Data de término: 12/06/2025
Atividades:
Casa de acolhida (secretaria de desenvolvimento social) : monitora de criança e adolescentes em situação de vulnerabilidade social.
Centro de referência em atendimento social bairro paraboi( CRAS): monitor e atendimento do bolsa família e assistente social.
Centro de referência em atendimento social (CRAS) bairro centro: atendimento ao público.
Escola de Educação infantil Natércia Cunha Santos: monitora escolar de crianças de 0 a 05 anos.','Informática basica, word , office',NULL,'Administrativa, Comercial',NULL,NULL,'Facebook','Não','Remuneração compatível com a função.','Não',NULL,'Consultor de vendas','Cursei matemática na instituição de ensino Instituto Federal Farroupilha campus São Borja, tenho facilidade com cálculos , me considero uma pessoa responsável e comprometida e estou realmente precisando de emprego.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-06T21:41:00.000Z'::timestamptz),
  ('Daniel Escobar da Silva','dan.esc33@gmail.com',NULL,'+555591335279','1991-06-25',34,'Solteiro(a)','1','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1lH7EbOARQ3T6mzDjEB1OLgrDXzhkUvCf',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Vero Internet S.A – São Borja/RS
Cargo: Técnico em Telecomunicações II
Período: Julho de 2021 – Abril de 2025
Atuei na instalação e manutenção de conexões de internet via fibra óptica (FTTH/FTTA), oferecendo suporte técnico a clientes e realizando diagnósticos e correções de falhas. Também contribuí para a padronização de processos de instalação, melhoria da qualidade do serviço e otimização do atendimento técnico. Essa experiência fortaleceu minha capacidade de resolver problemas, lidar com público e trabalhar sob pressão com foco em resultados.


---

N & M Pletsch LTDA - ME – São Borja/RS
Cargo: Auxiliar de Instalação / Monitoramento
Período: Junho de 2019 – Outubro de 2019
Responsável pela instalação e manutenção de sistemas de alarme e CFTV, além do monitoramento de sistemas de vigilância e controle de ocorrências. Também elaborei relatórios e planilhas de acompanhamento de atividades semanais. Essa função desenvolveu minha atenção aos detalhes e organização, além de reforçar minha experiência com ferramentas administrativas e técnicas.


---

GPSNET – Provedor de Acesso a Redes de Comunicação – São Borja/RS
Cargo: Assistente de Infraestrutura de Redes
Período: Fevereiro de 2017 – Agosto de 2018
Atuei na instalação e manutenção de equipamentos de comunicação e fibra óptica, bem como na execução de cabeamento estruturado e suporte técnico de campo. A experiência ampliou meus conhecimentos em redes e infraestrutura, além de aprimorar meu trabalho em equipe e meu compromisso com prazos e qualidade.


---

Sou um profissional versátil, com rápida capacidade de aprendizado, facilidade para trabalhar em equipe e disposição para atuar em diferentes áreas, unindo experiência técnica com habilidades administrativas e de atendimento ao público.','Tenho formação em Ensino Médio completo e cursei Bacharelado em Sistemas de Informação pelo IFFar – São Borja (com matrícula trancada). Além disso, concluí o curso de Auxiliar Administrativo, que ampliou meus conhecimentos em rotinas de escritório, controle de estoque, atendimento e uso do Pacote Office.

Também possuo diversas certificações técnicas, entre elas:

Ubiquiti Broadband Wireless Specialist (2017) – voltada para redes e telecomunicações.

Curso Cisco – Informática Intermediária (2009) e Aluno Monitor – Informática Básica (2008), que reforçaram minha base em tecnologia e suporte.

Curso Interno Tellfree (Hammer, 12h), além de formações em NR32, NR33 e LGPD, que complementam meu perfil técnico com foco em segurança e conformidade.',NULL,'Administrativa, Comercial',NULL,NULL,'Indicação','Não','Minha expectativa salarial é compatível com as responsabilidades da função e com a média praticada no mercado. Estou aberto a conversar sobre o valor conforme o cargo e as oportunidades de crescimento.','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa com rápida capacidade de aprendizado e facilidade para me adaptar a diferentes funções e ambientes. Tenho interesse em continuar me desenvolvendo profissionalmente, buscando sempre novos desafios.
Tenho conhecimento em inglês intermediário/avançado, bom domínio do Pacote Office e experiência com planilhas, relatórios e controle de estoque.
Sou comunicativo, gosto de trabalhar em equipe e de ajudar a resolver problemas de forma prática e eficiente.
Fora do ambiente de trabalho, gosto de tecnologia, música, curtir a familia, e costumo aprender coisas novas por conta própria — acredito que todo conhecimento pode se transformar em uma oportunidade.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-06T22:48:00.000Z'::timestamptz),
  ('Vitoria Requelmo da Silva','vitoriarequelmo07@gmail.com',NULL,'55999637619','2004-05-07',21,'Solteiro(a)','0','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1FODfHfa3bNhDARfmFfbmr8jeXEtOHB4v','Ciências Contábeis','Ensino Superior Incompleto','Uninter','2029-02-06','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Empresa: Alvorada Sistemas Agrícolas Ltda
Cargo: Auxiliar financeiro 
Atuação: conciliação bancária, analise de crédito, apoio corporativo as demais filiais, sistema ERP.','Profissionalizante em auxiliar administrativo.',NULL,'Administrativa, Comercial, Financeiro',NULL,NULL,'Facebook','Não','2.300,00','Sim','.','Comercial','Me chamo Vitória, tenho 21 anos, acadêmica em ciências contábeis pela Uninter. Meus hobbies são escutar musicas, livros e praticar esportes. Faço parte de um grupo de corrida daqui da cidade. Já competi em algumas provas e já ganhei o meu 1º troféu. Sou uma pessoa carismática, amo aprender e conhecer novas coisas, pessoas, novas maneiras de tornar essa jornada ainda mais instigante. Minha candidatura é para somar no time, em minha convicção sei que poderemos fazer um otimo trabalho juntos. Fico no aguardo em um retorno positivo.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-07T00:24:00.000Z'::timestamptz),
  ('Edgar faguaga Espíndola junior','junioredgar535@gmail.com',NULL,'991056873','1999-03-07',26,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1_6yjIVpFpLuiaxSTTOl3d1oMWcbii_e1','Não tenho','Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Rota segurança inteligente','Informática básica , experiência com público',NULL,'Administrativa, Comercial, Novos Negócios',NULL,NULL,'Agência de Empregos','Não','2000','Não','Gabriel , 992346753','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-07T00:39:00.000Z'::timestamptz),
  ('Jessica Teles Siqueira','jessicateles9494@gmail.com',NULL,'55991336742','1994-09-24',31,'Solteiro(a)','3','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1QL4iBvpQmT10oByQ0AdvAPv79Fj8-qKZ',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Empresa: Banco do Brasil 
Cargo: Agente de crédito 
Período: 01/07/2024 até 02/02/2025 
Atividades: Vendas de crédito, prospecção de clientes, atendimento ao cliente, suporte ao cliente, etc.',NULL,NULL,'Administrativa, Comercial, Financeiro, Novos Negócios',NULL,NULL,'Instagram','Não','R$1.800','Sim',NULL,'Comercial','Sou uma pessoa comunicativa e determinada. Gosto de entender as necessidades dos clientes e buscar soluções que gerem resultados para ambos os lados. Tenho facilidade em me relacionar, negociar e trabalhar em equipe.
 No tempo livre, pratico atividades físicas e me interesso por temas de desenvolvimento pessoal e liderança.
Acredito que o sucesso comercial vem do equilíbrio entre empatia, estratégia e foco em resultados.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-07T01:22:00.000Z'::timestamptz),
  ('João Pedro Ramos da Costa','ramosjpedro13@gmail.com',NULL,'43991362518','2000-10-01',25,'Solteiro(a)','1','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1jDvoiT_fCggSJJ7bDzBiJKTIn1sgE3AF',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','1) Bondioli & Pavesi; 2) Expedidor E; 3) 02/19-11/2023; 4) Supervisionar colegas delegando funções conforme prioridades de envio, inspeção de produtos finais antes da embalagem, administrar estoque e planilhas | 1) Pado S/A; 2) Auxiliar de Expedição; 3) 04/24-01/25; 4) Alimentar e controlar estoque, embalar produtos para envio | 1) Jardino LTDA; 2) Auxiliar de faturamento; 3) 02/25-08/25; 4) Faturar produtos, auxiliar embalagem e visar prioridades de envio.','Neurociência e vendas (cursando), logística de almoxarifado, Excel básico e avançado, Lid e metrologia',NULL,'Administrativa, Comercial',NULL,NULL,'Instagram','Não','18000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Possuo inglês avançado, estou buscando um novo rumo no mercado de trabalho após chegar em Bagé, me adequando as vagas majoritárias daqui. Já morei em Caxias do Sul - RS e em Londrina - PR.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-07T01:48:00.000Z'::timestamptz),
  ('Jaqueline Vieira Lago','jaquelinelago88@gmail.com',NULL,'55996716404','1994-06-10',31,'Solteiro(a)','0','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1PcQzL1dL2xDPuoCJYcxHQP_eSefqq415','Sistema de informação','Ensino Superior Incompleto','Instituto Federal Farroupilha',NULL,'Não, no momento pausei/parei por um período.','Angelos oeste telemarketing',NULL,NULL,'Administrativa, Comercial, Financeiro, Marketing',NULL,NULL,'Instagram','Não','1800','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-07T02:40:00.000Z'::timestamptz),
  ('Edmar Hafferman Júnior','juniohaferman@gmail.com',NULL,'55991050590','1997-07-14',28,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1W_cCMSggVtnrFQUMNp8tDXYXZyQKshLA',NULL,'Ensino Médio Completo','Olavo Bilac','2018-12-06','Não, no momento pausei/parei por um período.','Trabalhei com vendas e atendimento ao público na empresa (O Bolicho) 
Técnico de instalação audiovisual (Protech Missões)
Apontador de mão de obra (Mac Engenharia)','Curso de vendas, curso atendimento ao público, curso de eletricista',NULL,'Administrativa',NULL,'https://drive.google.com/open?id=1L5C8_2L6mRleof8xlylLrXax5WHpEA6T','Instagram','Não','Entre 1800,00 a 5.000,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Minha qualidade é ser proativo, autêntico e criativo','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-07T02:41:00.000Z'::timestamptz),
  ('Awany Kohls de Paula','awanykohls2019@gmail.com',NULL,'55999045494','2004-04-26',21,'Solteiro(a)','1','Não','Itaqui/RS','https://drive.google.com/uc?export=view&id=146odKX5hqu9Du52xeuckvUxKI2YyWaZl',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Requinte modas; vendedora e operadora de caixa 12/2022 - 11/2023','Curso de informática profissional',NULL,'Administrativa, Comercial',NULL,NULL,'Instagram','Não','2.000','Não',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-07T20:47:00.000Z'::timestamptz),
  ('Deivid Leonardo Camargo Fava','deividfava6879@gmail.com',NULL,'55991320869','1999-05-12',26,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1TBITERIv4EVYgv7QKVtfdkiTVBUXG-6Z','Gestão, RH e Marketing','Ensino Superior Completo','Instituto federal farroupilha e SENAC','2021-10-11','Sou formado','Experiência Profissional
CVC São Borja | Vendas
Período: 10/2021 a 03/2022  
Experiência direta em prospecção, vendas e negociação, com foco em resultados e metas do setor comercial.
HOTEL EXECUTIVO | Recepcionista
Período: 12/2023 a 09/2024  
Atendimento ao público e gestão de informações, o que aprimorou a comunicação interpessoal e a habilidade de lidar com o cliente.
PSICÓLOGA FABIANA BONETTI | Social Media
Período: 07/2022 a 06/2024  
Experiência em marketing digital e comunicação estratégica, valiosa para entender o comportamento do consumidor.','Gestão de turismo 
Marketing 
Vendas 
Recursos Humanos',NULL,'Administrativa, Comercial, Marketing',NULL,NULL,'Instagram','Não','1 salário mínimo','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Prezados(as),
Com grande interesse em participar do banco de talentos para atuar em São Borja ou região, apresento meu currículo. Minhas formações técnicas em Vendas e Gestão de Marketing, RH e Turismo me deram uma base sólida para a áreas abrangentes.
Minha experiência em vendas e negociação me capacita para alcançar as metas e contribuir de forma significativa para o time.
Coloco-me à disposição.
Atenciosamente,
Deivid Leonardo Camargo Fava
(55) 9 91320869','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-08T00:42:00.000Z'::timestamptz),
  ('Bruna Freitas Almeida','bfa.almeida@gmail.com',NULL,'55996663293','1989-05-01',36,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1WjLAYu0mh5Rpf3XAUbnQ2nZ9u8aRZGbZ','Engenharia Civil','Ensino Superior Incompleto','Unipampa',NULL,'Não, no momento pausei/parei por um período.','Bom irei contar minhas duas ultimas experiências profissionais: - em julho de 2021iniciei na Construtora e incorporadora Avb, empresa terceirizada da Corsan para realizar a adequação técnica dos novos medidores. Lá fui contratada para o cargo de auxiliar administrativo, cujo desenvolvia vistorias, medições, controle de materiais, contratações e planejamento. Nesta empresa fique até Janeiro de 2022 onde se encerrou o contrato com a contratante (Corsan). Em fevereiro de 2023 iniciei na Auto Peças Cidade Alta como caixa, cujo setor fica junto ao financeiro o qual com o passar do tempo iniciei a desenvolver as atividades junto, com cobrança, faturamento. Neste último local fiquei até junho de 2025. Lá também aprendi sobre estoque, lançamento de notas.','Parei o curso de engenharia civil e realizei o técnico em administração.',NULL,'Administrativa, Comercial, Novos Negócios, Engenharia',NULL,NULL,'Instagram','Não','3000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Bom sou uma pessoa proativa, dedicada, sempre disposta ao novo. Domino office, Questor empresarial, Autocad. Atualmente voltando a pedalar e fazer a academia, acredito muito que uma boa saúde não só física mas mental está baseada na atividade física.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-08T12:37:00.000Z'::timestamptz),
  ('CARMEM TEREZINHA DOS SANTOS FREITAS','jesus.anaof@gmail.com',NULL,'55999564550','1977-07-02',48,'União estável','3','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1N2WNu1yY4VXcfuUv_OroNQQ3Seec_xqd','Técnico em comércio','Ensino Superior Incompleto','Escola estadual DR Lauro Dorneles','2009-10-08','Não, no momento pausei/parei por um período.','MEI',NULL,NULL,'Comercial',NULL,NULL,'Instagram','Não','2.000.','Não','Vendas','Vendedor terreno','Obrigado','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-08T16:57:00.000Z'::timestamptz),
  ('Jenifer martins','msdhenny@gmail.com',NULL,'55999815559','2006-10-08',19,'Solteiro(a)','0','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1A8uVQ0vEFFs4C_ca2c5gQq-0EN_GTp0v',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Copagril agrícola,
 jovem aprendiz,
 entre final de janeiro a início de maio de 2024',NULL,NULL,'Comercial',NULL,NULL,'Instagram','Nao','A combinar','Sim','Larissa  99622-1316 
Auxiliar administrativa','Quero inscrever-me no banco de talentos da Young!','Sou comunicativa, gosto de trabalhar em equipe, tenho curso básico de informática, já trabalhei em escritório como jovem aprendiz, aprendo rápido, sou esforçada, se não sei algo procuro aprender para agregar no meu conhecimento e procuro sempre resolver as coisas com uma boa conversa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-08T20:18:00.000Z'::timestamptz),
  ('Sabrina Pacheco de Abreu','sabrina.pachecodeabreu@gmail.com',NULL,'55999502632','1995-06-08',30,'Solteiro(a)','1','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1TL6WjFPv-Pov_Ho-Tw-JxiptkMUcrXPc','Tecnologia em alimentos','Pós-graduação Completa','UFSM','2018-01-08','Sou formado','Assistente Adm JBS SEARA em Garibaldi 
Supervisor de rh MINERVA FOODS Alegrete','Formada em tecnologia em alimentos 
Especialista em gestão segurança dos alimentos 
Especialista em gestão de recursos humanos
Por graduanda em Neurogestão organizacional',NULL,'Administrativa, Comercial, Financeiro, Novos Negócios',NULL,NULL,'Instagram','Não','2000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-08T20:45:00.000Z'::timestamptz),
  ('Milton augusto Fernandes da rocha','miltonlavras@gmail.com',NULL,'53991163774','1990-12-28',35,'Casado(a)','1','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=14PFcATTYEwbVukGxdmogipy4x5euXHbe',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Hotel obino 2014 -2024',NULL,NULL,'Comercial',NULL,NULL,'Facebook','Amigo','1900','Não','Hotel obino','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-08T23:04:00.000Z'::timestamptz),
  ('Katiane Gamarra Olegário','katigolegario@gmail.com',NULL,'55991672682','2001-11-13',24,'Solteiro(a)','0','Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1svIavH6bCCL6RIHOTxH8jBRsQZdZpA3C','Técnico em Radiologia','Ensino Médio Completo','Escola Técnica José Gomes - SEG','2025-09-09','Não, no momento pausei/parei por um período.','Realizei dois estágios. 
Auxiliar de classe no Colégio Portinari (04/04/2024 - 04/10/2024). Nesse estágio auxiliava a professora regente com o que fosse necessário e as crianças nas ativades pedagógicas, higiene e atividades lúdicas.
Estágio supervisionado no Hospital São Luiz Gonzaga no setor de imagem (12/05/2025 - 09/09/2025). Realizava os exames de raio-x e acompanhava as tomografias e densitometrias.
Não possuo experiências além dessas.',NULL,NULL,'Administrativa, Comercial, Marketing',NULL,NULL,'Instagram','Não.','R$1.700,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Possuo boas habiliades utilizando o pacote Office e as ferramentas Google, se não souber algo aprendo com facilidade. Compreendo fala e escrita em inglês, nível básico. Durante alguns meses em 2021 fiz um trabalho voluntário no LASCA, um laboratório de arqueologia da UFSM. Fiz um cursinho básico utilizando HTML e CSS online com a GrowDev, não dei continuidade na área mas super faço mais algum para aprender coisas novas!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-08T23:43:00.000Z'::timestamptz),
  ('Tielle de Azambuja Pias Stieven','tiellestieven@gmail.com',NULL,'55999868505','1982-11-11',43,'Casado(a)','2','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1HV9XoXGBK9g1dYYDA9xPbw3Bkdt6VB01','Direito','Pós-graduação Completa','URI','2005-01-14','Sou formado','Terrapias Ltda - advogada e responsável pela parte Adm e financeira - período 2009 até presente data','Fiz 3 pós graduações na área do direito, atuei como advogada por 20 anos, sou sócia proprietária de uma empresa de engenharia responsável pelo jurídico e parte financeira desde 2009; terminei curso de TTI em
Julho do corrente ano , já possuo Creci ; fiz alguns cursos pelo SEBRAE em gestão',NULL,'Novos Negócios',NULL,NULL,'Instagram','Nao','A combinar','Não','Tribunal de Justiça Rs; Terrapias LTda','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-09T12:39:00.000Z'::timestamptz),
  ('Karoline Domingues Rodrigues','karolinedominguesz90@gmail.com',NULL,'53991730831','2004-06-21',21,'Solteiro(a)','0','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1CK6qhD9JG4Kr4zw2AYMCywPRo1gaL2XU',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Ads sports, atuei como atendente e organização de estoque e limpeza 
Calçados Novo Hamburgo 
Atuei no atendimento ao público e organização 
Cuidadora de crianças 
Cuidadora de idoso
Trabalhei em uma conveniência com atendimento 
Também já trabalhei em restaurante lavando pratos',NULL,NULL,'Administrativa, Marketing, Novos Negócios, Engenharia',NULL,'https://drive.google.com/open?id=1FBeb9jgEiGGWeyKk1kpnBgdmHa3jqv5C','Facebook','Nao','2500','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Gosto muito de aprender coisas novas e me dedicar ao que faço. Já trabalhei com atendimento ao público, com crianças e também com idosos, sempre com paciência e responsabilidade. Tenho facilidade em lidar com pessoas, sou criativa, simpática e gosto de ajudar no que for preciso. Nos meus momentos livres, gosto de estar com minha família e minha cachorrinha Mel','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-09T13:03:00.000Z'::timestamptz),
  ('Nicolas Alves Branco Periera Gonçalves','nicolashps14@gmail.com',NULL,'53999517915','2007-04-01',18,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1yJTZIkvVwkY9Zd9-M_hVKDW8s1FOfZej','cursando o 3° do ensino médio','Ensino Médio Incompleto','dr carlos antônio kluwe','2025-12-17','Não, no momento pausei/parei por um período.','trabalhei no período de 2023 até 2025 na academia power fitness personal, trabalhei como personal trainer. tenho boa comunicação, trabalhei com muito público, sei trabalhar em grupo.','cursando ensino médio no turno a noite',NULL,'Comercial',NULL,NULL,'Instagram','não','R$1.700,00','Sim',NULL,'Comercial','atualmente estou custando o terceiro ano do ensino médio na escola Dr. Carlos Antônio kluwe. Já trabalhei na academia Power Fitness personal por um período de dois anos e três meses. Depois disso dei aula de box por um período de oito meses. Sei trabalhar bem em grupo, sou pró ativo, sei atender muito bem ao público,,sei trabalhar sob pressão','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-09T13:13:00.000Z'::timestamptz),
  ('Sidnei Guilherme da Silveira','sidneiems@gmail.com',NULL,'55999737476','1978-07-26',47,'Divorciado(a)','1','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1hIEzuQJUB17d-1gfunuc_Edqd26j_Sl_','Marketing','Ensino Superior Completo','Unopar','2019-12-10','Sou formado','18anos na indústria farmacêutica como propagandista','Não fiz pós ainda',NULL,'Marketing',NULL,NULL,'Instagram','Não','Que se enquadra no cargo','Sim','Adilso Pizzolato , foi meu gerente por mais de 10 anos trabalhamos juntos , contato cel 54 996789988','Comercial','Eu cozinho muito bem , e gosta da área comercial de vendas','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-09T13:15:00.000Z'::timestamptz),
  ('Amanda Alves de Araújo Silva','amandaaraujosilva200@gmail.com',NULL,'55984579498','2004-02-06',22,'Solteiro(a)','0','Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1CesodwZ-5dUBjHPWz9qwwaKxmvodgnTM',NULL,'Ensino Médio Completo',NULL,NULL,'Sou formado','1 - curso Santana, atuava como secretária na área da educação, fazia vendas e matrículas
2- Instituto mix- orientadora educacional, trabalhava na área de call-center e vendas',NULL,NULL,'Administrativa, Comercial',NULL,NULL,'Facebook','Não','1800','Não','Curso Santana 
Instituto mix','Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-09T14:25:00.000Z'::timestamptz),
  ('Thiago Nogueira','thiagor.nogueira@hotmail.com',NULL,'53991085826','1993-10-06',32,'Solteiro(a)','1','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1g2dzNxed-u2L7get1gGXnizmMUDzOzmX','Administração de empresas','Pós-graduação Completa','Uninter','2020-04-13','Sou formado','1) claro Sa. 2) vendas 3) 02l01l2020 -2024 4) atendim e vendas de plano',NULL,NULL,'Administrativa, Comercial, Financeiro, Novos Negócios',NULL,NULL,'Agência de Empregos','Não','2000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-09T19:06:00.000Z'::timestamptz),
  ('Eduarda Caetano Da Silveira','Dudahsilveira78@gmail.com',NULL,'53991262265','2006-04-15',19,'Solteiro(a)','0','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1yStTBaNkYqWqyO31eUMU6OOE78gooeii',NULL,'Ensino Médio Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Sempre trabalhei na área de vendas, gosto de trabalhar com vendas e o público.','Curso de operador de caixa, no movimento da mulher gaúcha',NULL,'Comercial, Estágio',NULL,NULL,'Agência de Empregos','Não','1600','Não',NULL,'Comercial','Sou uma pessoa extremamente responsável, sou organizada e cumpro com meus deveres, em algumas ocasiões tímida mas geralmente sei resolver uma situação com êxito','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-09T19:13:00.000Z'::timestamptz),
  ('Lana Lutz da Rosa','lanalutz456@gmail.com',NULL,'51998062260','2006-05-14',19,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1S3A-PT9Mb4pftHOSn4HHUNhZi1YXy5-W','Tecnologia - Ciência da Computação','Ensino Superior Incompleto','Universidade do Vale do Rio dos Sinos','2029-06-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1: Despachante Previdenciário Diana Lutz
2: Secretária
3: 07/2022 até 03/2024
4: Atendimento ao cliente presencial e por telefone, organização de arquivos e pastas do escritório.

1: Facilitta Soluções Empresariais
2: Auxiliar Contábil
3: 11/2024 aos dias de hoje
4: Importação e digitação de documentos no sistema utilizado pela empresa, conciliações de balancetes simples, organização de documentos digitais pelo Google Drive.','No momento, além da faculdade estou fazendo um curso de Suporte Técnico da Google. Tenho inglês intermediário, informática básica/intermediária, já fiz formatação em notebooks e tenho conhecimento em Windows 10 e 11.',NULL,'Estágio',NULL,NULL,'Google','Não.','1.700','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Disse anteriormente na área de Cursos e Certificações.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-09T21:55:00.000Z'::timestamptz),
  ('Diovanna Zappe buzatti','zappearquitetura@gmail.com',NULL,'55996161066','1998-02-11',28,'Solteiro(a)','0','Sim','Santa Maria/rs','https://drive.google.com/uc?export=view&id=1qPl0as4Q-HICNiqudmfYLGPNE7Q7CXr4','Arquitetura','Ensino Superior Completo','UFN','2022-01-05','Sou formado','Atuei em escritórios de arquitetura, auxiliando na criação e desenvolvimento dos projetos, utilizando os softwares AutoCAD, Sketchup e Vray','Possuo experiência em arquitetura, projetos residenciais e comerciais, projetos de interiores E mobiliário e também regularização imobiliária',NULL,'Arquitetura',NULL,'https://drive.google.com/open?id=1W-fpSxkGq1hrClDOVZK3J7032NHRE9o2','Instagram','Não','3.000,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-10T03:16:00.000Z'::timestamptz),
  ('Salete Luiz Ferreira','saleteluizferreira@gmail.com',NULL,'53999513717','2003-10-30',22,'Solteiro(a)','1','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1Cm0jJzBEnwQ3oMxaO0VwzXW5SQq-wba3',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Osmar Nicolini
Operadora de caixa 
Início 25 de julho 
Final 25 de agosto 
Esse foi meu primeiro emprego de carteira assinada',NULL,NULL,'Comercial, Estágio, Financeiro, Marketing',NULL,NULL,'WhatsApp','Não','2','Não','Osmar Nicolini','Quero inscrever-me no banco de talentos da Young!','Já trabalhei de babá por 2 anos tenho curso de espanhol comecei um workshop de cabeleireira já vendi doces cucas brigadeiros e enroladinhos na rua tenho uma filha de 3 meses tive um parto complicado aonde quase morri eu e ela e agora quero volta a minha vida normal consegui meu dinheiro pra poder sustentar eu e ela e melhora a casinha dos meus pais','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-10T12:38:00.000Z'::timestamptz),
  ('PRISCILA BRIZOLARA DA SILVA','priscilabrizolara35@gmail.com',NULL,'53992049857','1982-06-30',43,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1211Aj96Kj7Rg0JP6QJVBzRjJkhKEQWNP','Pedagogia','Ensino Superior Completo','Urcamp','2022-07-15','Sou formado','Agro veterinária campo fértil, operadora de caixa 02/02/2022 á 15/06/2023 recebimento de mercadorias transações com dinheiro, cartão, empacotar, pagamentos','Estudando pós graduação educação de jovens e adultos e supervisão escolar',NULL,'Administrativa',NULL,NULL,'Agência de Empregos','Não','1500','Sim','Rainha das noivas operadora de caixa e crediarista15/12/2009 á 10/10/2015 recebimento de mercadorias, pagamento, cobrança, empacotar, realização de cadastro de clientes','Quero inscrever-me no banco de talentos da Young!','Sou formada em pedagogia, mas no momento não estou conseguindo uma vaga na minha área , sempre trabalhei no comércio antes da faculdade quando estava na faculdade comecei a estagiar na área . Hoje estou tentando uma vaga em outras áreas tenho experiência com atendimento ao público e estou buscando uma nova oportunidade.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-10T14:01:00.000Z'::timestamptz),
  ('Thiago Samuel Rocha','thiagopanthio@gmail.com',NULL,'55984696751','1984-08-20',41,'Casado(a)','2','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1RxV3Y5qYUEuWcNgxs2cM87etE7Y7S3pJ',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','JP transporte cargo expedição de notas e liberação de caminhão período de 2012 a 2016',NULL,NULL,'Administrativa, Comercial, Novos Negócios',NULL,NULL,'Agência de Empregos','não','compatível com a função','Não',NULL,'Comercial','sou evangélico gosto de curtir a família nos finais de semana','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-10T17:57:00.000Z'::timestamptz),
  ('ALLYSON CAMPOS NUNES','camposnunesallyson@gmail.com',NULL,'55996075230','1996-05-24',29,'Solteiro(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1n9XsXFc97yrixSH-ZrhRwfBzz8aPQOhs','Engenharia Cartográfica e de Agrimensura','Ensino Superior Completo','Unipampa Campus-Itaqui','2026-06-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Estou me candidatanto para um emprego','Cursos na área de SIG, parcelamento, geoprocessamento, cadastro técnico multifinalitário.',NULL,'Estágio, Engenharia',NULL,'https://drive.google.com/open?id=1Rt8Lt0J3-a8MlYJem9pt1W1FdHFsmrRU, https://drive.google.com/open?id=1mahGEiTHn3gbHhtMwxJYPqMQ1cLi5sUY','Indicação','Não','5000','Sim','itaqui.eca@unipampa.edu.br','Estágio Engenharia e/ou Arquitetura','Boa tarde.
Me chamo Allyson, sou formado em BICT ( Bacharelado interdiciplinar em ciência e tecnologia), sou provável formando em Engenharia cartográfica e de Agrimensura, já estou procurando pós em Segurança di trabalho, me adapto facilmente, pois participei de várias equipes multidiciplinares, nos trabalhos acadêmicos, possuo experiência em SIG, sou bolsista do projeto de xadrez no campus que estudo e tenho o MMA como hobby.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-10T20:00:00.000Z'::timestamptz),
  ('Camila Oliveira de Castro Perego','camilacastro1195@gmail.com',NULL,'51995438880','1995-05-11',30,'Casado(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1ZsgZ6KGRmLkf7UFn2wW2Isr5dBI-6uaA','Análise e Desenvolvimento de Sistemas','Ensino Superior Completo','Centro Universitário Ritter dos Reis - UNIRITTER','2023-12-20','Sou formado','Tribunal de Justiça do Rio Grande do Sul (TJRS)
Estágio em TI - Início: 10/2021 Saída: 04/2023

⦁	Publicação de conteúdo no site do TJRS
⦁	Criação de páginas, edição de imagens e tabelas
⦁	Elaboração de tutoriais orientando sobre publicação de conteúdo para os setores do TJRS
⦁	Conversão e formatação de arquivos

Claro TV
Auxiliar Administrativo - Início:05/2017 Saída: 08/2019

⦁	Atendimento ao público, telefone e e-mail
⦁	Repasse de demandas
⦁	Controle de sistema




Tecnoware LTDA
Auxiliar Administrativo  - Início: 02/2014 Saída: 09/2014
⦁	Atendimento ao telefone e controle de e-mail
⦁	Elaboração de planilhas
⦁	Controle de sistema

Cargus Encomendas
Secretária - Início:11/2011 Saída: 11/2012

⦁	Atendimento ao público e ao telefone
⦁	Elaboração e controle de planilhas
⦁	Controle de MSN e envio e recebimento de e-mail',NULL,NULL,'Administrativa, Marketing, Novos Negócios, Engenharia',NULL,NULL,'Instagram','Não.','1.500','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Boa tarde, estou a procura de uma oportunidade de emprego. Tenho rápida aprendizagem e sou uma pessoa muito dedicada, disposta e com muita vontade de aprender e agregar a equipe. Agradeço desde já.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-11T19:08:00.000Z'::timestamptz),
  ('Luara Chuquel','luarachuquelll12@hotmail.com',NULL,'55984467385','1999-07-12',26,'Solteiro(a)','0','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1VhZW8fe-mY-7t2csJnw4nRtlD2BlGCFe',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Super Tratores - New Holland 
Estoquista Sênior 
Despacho e recebimento de mercadorias, lançamentos de notas, vendas, financeiro, administrativo e caixa.',NULL,NULL,'Administrativa, Comercial, Marketing, Novos Negócios',NULL,NULL,'Facebook','Não.','Estou aberta a discutir uma faixa compatível com as responsabilidades do cargo e com as práticas da empresa.','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Faço curso na área de TI, estou em processo de mudança para marketing, faço curso de inglês em casa, já fiz trabalhos voluntários no Natal, pratico Muay Thai, gosto de viajar, estudar, ler, gosto de esportes e acima tudo gosto de estar viva e feliz.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-12T11:49:00.000Z'::timestamptz),
  ('Ezequiel Martinez De Oliveira','ezequielx1.mt@hotmail.com',NULL,'53997016843','2001-07-12',24,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1Fzp5eptEaVfgQTi6NbvhrnmWYRvOBPMA','processos gerenciais','Ensino Superior Completo','Unifacvest','2025-04-10','Sou formado','1) Camara De Vereadores Bagé
 2) Assessor Parlamentar
3) 01/04/2022
4)Atendimento ao publico e atividades administrativas',NULL,NULL,'Administrativa, Comercial, Marketing',NULL,NULL,'Instagram','nao','2000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa criativa, comunicativa e curiosa. Tenho experiência com redes sociais e produção de conteúdo,engajamento e publicidade. Gosto de aprender coisas novas e sempre busco melhorar minhas habilidades, tanto no trabalho quanto na vida pessoal.
 toco guitarra e treino com frequência. Também curto explorar ideias novas, transformar criatividade em resultado e fazer as pessoas rirem.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-12T22:35:00.000Z'::timestamptz),
  ('Ezequiel Martinez De Oliveira','Ezequielx1.mt@hotmail.com',NULL,'53997016843','2001-07-12',24,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=126B8cPHtxc5yEnTh7s2N3qoE7K5TbCfm','Processos gerenciais','Ensino Superior Completo','unifacvest','2025-04-10','Sou formado','1) Camara de Vereadores
2) Assessor parlamentar
3) 01/04/2022 ate 01/01/2025
4) atendimento ao publico e atividades administrativas, protocolava documentos',NULL,NULL,'Administrativa, Comercial, Marketing',NULL,NULL,'Instagram','nao','2000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa criativa, comunicativa e curiosa. Tenho experiência com redes sociais e produção de conteúdo, engajamento e publicidade. Gosto de aprender coisas novas e sempre busco melhorar minhas habilidades, tanto no trabalho quanto na vida pessoal.
toco guitarra e treino com frequência. Também curto explorar ideias novas, transformar criatividade em resultado.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-12T22:40:00.000Z'::timestamptz),
  ('Tainá Alves da Rosa','tainaalvesdarosa@gmail.com',NULL,'53991415987','1996-03-30',29,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=15qBCoL87eJhPc3D5PysWoZg5kKwSyrec','Engenharia Agronômica, História e Publicidade e Propaganda','Ensino Superior Completo','URCAMP','2027-03-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Empresa 1:
1- Dalé Imobiliária 
2 - Especialista em Vendas - estágio 
3 - agosto a março (2022-2023) 
4 - Prospecção de clientes, manutenção da cartela de clientes, visita a imóveis, plantão de vendas, elaboração de contratos e etc.

Empresa 2:

1 - Ana Lignon Eventos e Marketing 
2 - Encarregada de Marketing Digital 
3 - Março a Dezembro (2024) 
4 - Toda a produção de design das empresas atendidas pela agência, incluindo edição de fotos, vídeos e criação de logotipos. Gerenciamento de redes sociais, copy, gestão de crise. Na parte de eventos minha principal tarefa era auxiliar na busca de patrocinadores e também na elaboração de todo material para redes sociais ou impressão.

Empresa 3:

1 - Doronmia
2 - Vendedora/Social Média
3 - Março a setembro (2024) - estágio 
4 - Gerenciamento das redes sociais da loja, fotografia e edição de fotos e vídeos para redes sociais. Venda de semi jóias, gestão do estoque, caixa e montagem de vitrine.','Tenho curso de Transações Imobiliárias, mas não fiz a prova final, então não tenho diploma dele. Fiz vários cursos na área de marketing e comunicação (copy, social media, edição de fotos/vídeos, pacote Adobe), fiz alguns cursos gerais, como oratória e também gestão de pessoas e vendas e negociação (a maioria pelo Santander open).',NULL,'Comercial, Licenciamentos, Marketing, Engenharia',NULL,NULL,'Facebook','Não','1800,00 - 3000,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Eu costumava fazer trabalho voluntário na APAE, como professora de agroecologia, atualmente estou desenvolvendo um projeto que visa ensinar história para pessoas com deficiência visual. Meu inglês e espanhol são intermediários e comecei recentemente um curso de coreano. Também sou voluntária no departamento de comunicação da minha igreja, onde lidero um time de 5 pessoas que fazem toda cobertura fotográfica, de vídeo e também de live.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-12T23:19:00.000Z'::timestamptz),
  ('Rafaela Arruda Del Pino','rafaelaarruda123delpino@gmail.com',NULL,'53991295434','2005-02-21',21,'Solteiro(a)','0','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1B_EFnRg6-Labgd2IZ0IVNrxaU_pZK6g_','Técnico em segurança do trabalho','Ensino Médio Completo','Senac','2024-09-29','Não, no momento pausei/parei por um período.','GBI combustíveis 
Técnico em segurança do trabalho 
01/04/2025 à 15/07/2025
Entrega e controle de EPI''s ; Garantir utilização dos epi''s; ministrar treinamentos; verificação de validação de alvarás da empresa 


Prosegur 
Jovem aprendiz/ auxiliar 
29/09/2023 à 17/11/2024
Contagem e conferência de numerário; Fechamento.',NULL,NULL,'Administrativa',NULL,NULL,'Instagram','Não','1600','Sim',NULL,'Consultor de vendas',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-13T00:48:00.000Z'::timestamptz),
  ('Raíssa Castro Ramos','raissacramos18@gmail.com',NULL,'55996663538','1999-10-08',26,'Solteiro(a)','2','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1X8NJYCBTYVOZYSalqxTA_XgUrZENShkh',NULL,'Ensino Superior Incompleto',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Iniciei minha carreira em vendas em lojas de varejo desde 2018.
 Passando a consultora óptica em 2022 até 03/2023, onde tinha como responsabilidade a busca de clientes e atendimento em loja.
após isso trabalhei na área de serviços financeiros na Americanas, pela AME com início em 04/2023 até 03/2024, onde tinha como responsabilidade a venda dos produtos financeiros como seguros imobiliários e de vida, entre outros, atuando em loja.
Após, ingressei na ASG- Proteção veicular em  08/2024 como consultora em proteção veicular, prospectando novos associados, atuando no escritório e vendas externas. Totalmente focada em vendas e metas desse o início da minha vida profissional, perfil voltado a área comercial com um excelente histórico de conversões','Cursos e Mentorias em vendas, gestão de funil e técnicas de vendas, cursos em informática e atualmente curso de transações imobiliária em andamento',NULL,'Comercial',NULL,NULL,'Instagram','Não','5.000','Não','Asg proteção veicular, gestor Leonardo +55 54 9190-5647','Comercial','Tenho habilitação B e carro próprio. Fui prenda de ctg durante muitos anos, atualmente faço graduação em enfermagem e também já lutei muay Thay durante a adolescência','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-13T04:00:00.000Z'::timestamptz),
  ('Ermínia Graciela Quinteiro jardim','erminiaqjardim@gmail.com',NULL,'55992333236','2001-08-14',24,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1JKAoMGLqDO3fsyWd6blNYmihVa_8t-xv',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Iniciei minha experiência profissional como auxiliar administrativa na Financeira
Mais Ágil. Lá, eu auxiliava nas áreas administrativa e operacional,
desenvolvendo habilidades significativas tanto em atendimento ao público
quanto em vendas. Comercializei serviços financeiros e produtos lotéricos, o que
aprimorou minha capacidade de comunicação e meu raciocínio lógico rápido.
ACL lotérica - Operadora de caixa – (03/2023 a 03/2024)
- Atendimento ao cliente;
- Apostas lotéricas;
- Vendas de jogos;
- Abertura e fechamento de caixa;
- Serviços bancários, como saques, consulta de saldos, depósitos,
transferências; e
- Pagamento de contas e faturas.
Lotérica da Barão - Operadora de caixa - (07/2022 a 02/2023)
- Atendimento ao cliente;
- Apostas lotéricas;
- Vendas de jogos;
- Abertura e fechamento de caixa;
- Serviços bancários, como saques, consulta de saldos, depósitos,
transferências; e
- Pagamento de contas e faturas.
Mais Ágil Porto Alegre - Auxiliar administrativo - (09/2021 - 06/2022)
Atividades desempenhadas:
- Oferta dos serviços prestados, destinado ao público alvo;
- Atendimento ao cliente e prestação de informações sobre as operações de
crédito;
- Recepção e encaminhamento de propostas referentes a operações de crédito
e financiamento;
Formação -',NULL,NULL,'Administrativa',NULL,NULL,'Instagram','Não','2600','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-13T23:57:00.000Z'::timestamptz),
  ('Renata da Silva Nunes','rhe.nunes.rn@gmail.com',NULL,'55999146093','1983-08-01',42,'União estável','2','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1vbGAWFAPiHDfTCk-UTbvoR7sgzuEL2s1','Pedagogia','Ensino Superior Incompleto','Anhanguera',NULL,'Não, no momento pausei/parei por um período.','Casa e comercial a favorita 
Vendas e atendimento ao cliente 
Organização de estoque
Preenchimento de novos cadastros 
Serviços bancários 
Atendimento ao caixa
Início: 02/01/2017
Saida: 29/10/2023',NULL,NULL,'Comercial',NULL,NULL,'Instagram','Nao','1800','Sim',NULL,'Comercial','Curso de atendimento ao cliente 
Trabalhei como gerente em loja de calçados, sem registro, experiência em cobranças','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-14T00:16:00.000Z'::timestamptz),
  ('Ana Paula Vargas de Oliveira','vargas29anapaula@gmail.com',NULL,'55999437161','2002-03-29',23,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1493hWA4RWjf4B2Kgg2vcjJV8kBjGSQ73',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','1) Lojas Quero-Quero, Jovem Aprendiz, 09/2019 - 02/2021, Organização de estoque, loja, recepção ao cliente e auxílio no setor administrativo;
2) Tabelionato Souza, Atendente de cartório, 06/2021 - 09/2023, atendimento ao cliente via WhatsApp, e-mail, telefone e presencial. Realizações de procurações e escrituras; 
3) Laboratório Luiz Fernandez, Recepcionista, 09/2024 - atual, Atendimento ao paciente, organização, fechamento de caixa;','Aprendizagem profissional comercial em serviços de vendas- Senac Alegrete.',NULL,'Administrativa, Comercial, Financeiro',NULL,NULL,'Instagram','Não','R$1.900,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Me considero uma pessoa muito alto astral, simpática, dedicada e pontual. Gosto sempre de estar em ação, ajudando no que eu posso, além disso, amo estar ao lado das pessoas que me fazem bem! Em um ambiente de trabalho, sempre quero estar de bem com todos, pois acredito que para alcançarmos bons resultados, precisamos todos andar alinhados. Não gosto de injustiças, nem que alguém se sinta excluído, isso me define como pessoa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-14T13:06:00.000Z'::timestamptz),
  ('Karoline Domingues Rodrigues','karolinedominguesz90@gmail.com',NULL,'53991730831','2004-06-21',21,'Solteiro(a)','0','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1T7sRgIoDoj8sWil02CTfwaNgkWV5wpRg',NULL,'Ensino Superior Incompleto','Ensino médio completo na escola silveira Martins','2023-11-14','Não, no momento pausei/parei por um período.','Ads sports 
Cargo de vendedora e organização de estoque e da loja 
Calçados Novo Hamburgo
Cargo de atendente e organização da loja 
Cuidadora de crianças em escola e cuidadora de idosos 
Postos baluarte 
Cargo de atendimento em conveniência e organização',NULL,NULL,'Administrativa, Estágio, Marketing, Engenharia',NULL,NULL,'Facebook','Não','2500','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa dedicada, criativa e que gosta muito de aprender coisas novas. Tenho facilidade para lidar com pessoas, gosto de trabalhar em equipe e estou sempre disposta a ajudar
  Eu já participei de um trabalho voluntário em um asilo, onde pintei as unhas das idosas e pude viver momentos muito especiais com elas. Foi uma experiência que me ensinou muito sobre empatia e carinho com o próximo. Também fiz um curso de marketing básico, que me ajudou a entender melhor sobre divulgação, comunicação e criatividade — coisas que eu gosto bastante de aprender e colocar em prática.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-14T15:43:00.000Z'::timestamptz),
  ('Lavínia Fagundes de Quadros','dequadroslavif03@gmail.com',NULL,'55984347512','1996-05-03',29,'Divorciado(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1V-VcQ5DKzKYBW47mzz11NW6hhAyM94E9','Fisioterapia','Ensino Superior Incompleto','Unifecaf',NULL,'Não, no momento pausei/parei por um período.','Auxiliar administrativo na empresa CAAL (menor aprendiz) ano 2014 a 2015
Loja Territorio como consultora de vendas, mídias sociais, e atendimento ao publico. Ano 2022 a 2024
Impacto marketing e tecnologia como consultora comercial 
Hotel alegrete como recepcionista em 2025',NULL,NULL,'Administrativa, Comercial',NULL,NULL,'Instagram','Não','$3500,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho experiência com vendas, atendimento ao público e redes sociais. Gosto de me comunicar, entender o cliente e pensar em estratégias que realmente funcionam. Sou dinâmica, curiosa e estou sempre em busca de aprender e crescer no que faço.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-14T22:00:00.000Z'::timestamptz),
  ('Ana Clara da Rosa da Silva','ana.jenny99@gmail.com',NULL,'51995559980','2004-01-05',22,'Casado(a)','1','Sim','Montenegro','https://drive.google.com/uc?export=view&id=1nV19m3BTTcxrwghaddS9OK-o-rhh57i6','Arquitetura','Ensino Superior Incompleto','Uniasselvi','2029-12-29','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','IMMAGINARQ, estagiária, atuo desde julho efetivamente e faço modelagens no Sketchup e detalhamentos de projetos no Layout','Tenho experiências com modelagens em 3D e detalhamentos em cursos que fiz no YouTube, pesquisar e leituras.',NULL,'Arquitetura, Engenharia',NULL,'https://drive.google.com/open?id=1UclB2ldnXY3_Pc8iyseeoPQ-e-5IEbKf, https://drive.google.com/open?id=1_XVntsw_d4w9bC6E1P2FaNtqjgXCL6O4','Instagram','Não','R$2.500,00','Não','Nathalia Tomaselli (51) 997464924','Auxiliar de Projetos','Sou estudante de Arquitetura, apaixonada por transformar espaços em ambientes funcionais, acolhedores e cheios de personalidade. Como mãe, aprendi a equilibrar criatividade, organização e paciência, habilidades que levo para meus projetos e para a forma como encaro desafios. Busco sempre aprender, inovar e trazer leveza para tudo que faço, unindo técnica e sensibilidade em cada detalhe.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-15T01:11:00.000Z'::timestamptz),
  ('Leonardo Urquhart Duarte','leonardo.uduarte@gmail.com',NULL,'55996638629','1992-12-20',33,'União estável','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=10_8MGlI2xKPRWeihmHxLWVU_2P00cGar','Engenharia Civil','Pós-graduação Completa','Urcamp - Universidade da Região da Campanha','2019-12-17','Sou formado','PREFEITURA SANTANA DO LIVRAMENTO – SECRETARIA DE OBRAS
Engenheiro civil
05/2025 – Atualmente
• Atuação como engenheiro civil na secretaria municipal de obras de Santana do
Livramento, auxiliando em fiscalizações de obras públicas, obras com mão de obra
própria e identificação de problemas de infraestrutura no município;
• Elaboração de orçamentos e cronogramas;
• Fiscalização de obras públicas de infraestrutura;
• Elaboração de relatórios e laudos técnicos;
• Elaboração de medições de obras.


ICCILA - Indústria, Comércio e Construções Ibagé Ltda
Santana do Livramento
Analista de Engenharia civil
04/2024 – 04/2025
• Gerenciamento de equipes de construção civil e terraplenagem.
• Planejamento e controle de orçamentos e cronogramas de obras.
• Elaboração de diários de obra, medições, relatórios técnicos e documentos de
controle de qualidade.
• Acompanhamento da execução de obras, incluindo planejamento semanal de
equipes.


Consórcio Br-116 Norte (MAC Engenharia; ETERC; SOGEL; IGUATEMI)
Sapucaia do Sul – Projetos e Execução de melhorias de tráfego (Cliente DNIT)
Assistente de Engenharia civil
03/2024 – 04/2024
• Elaboração de diários de obra detalhados, cronogramas de execução e controle da
produção de equipes de pavimentação asfáltica e terraplenagem.
• Acompanhamento técnico de serviços de terraplenagem e pavimentação asfáltica.
• Coleta e análise de dados técnicos para subsidiar decisões estratégicas do
engenheiro responsável.
• Suporte técnico e administrativo proativo ao engenheiro responsável, otimizando a
organização e comunicação.


Goetze Lobato Engenharia S/A
Santana do Livramento/RS - Parque Eólico Coxilha Negra (Cliente Eletrosul)
Técnico de qualidade
05/2023 – 02/2024
• Elaboração de fichas de verificação e controle de qualidade para serviços de
terraplenagem, pavimentação e drenagem;
• Acompanhamento diário da execução das equipes de terraplenagem,
pavimentação, drenagem e construção civil;
• Fiscalização das concretagens das fundações diretas de aerogeradores,
garantindo conformidade técnica;
• Elaboração de relatórios técnicos para análise de desempenho e conformidade
dos serviços;','Gerenciamento de Obras de Construção Civil (pós -graduação);
Curso de fiscalização de pavimentação (curso)',NULL,'Engenharia',NULL,NULL,'Instagram','Não','12400','Sim',NULL,'Engenheiro Civil','Espanhol, tenho experiencia em area de pavimento, aprendo rapido o que for necessário.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-15T13:31:00.000Z'::timestamptz),
  ('Éder Rita Faria','ederfariaagro@gmail.com',NULL,'53999011747','2001-09-24',24,'União estável','1','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=19sr9echE9kZi78pgL5PCXQ1TNLe72Pfb','Técnico em Agropecuária e Técnico em Transações Imobiliárias','Ensino Médio Completo','IFSul e Senac','2023-10-11','Sou formado','Minha experiencia imobiliária começou como estagiário da Nilo imóveis Rurais, depois vindo a ser corretor parceiro da imobiliária, onde sempre fui corretor autônomo mas com parceira direta, agenciando imóveis e fazendo cadastro de clientes no CRM Jet Imob, fazendo anúncios, entrando em contato com clientes, verificando documentação e realizando visitas, também fiz agenciamentos urbanos casas, terrenos e participei do lançamento do Morada na Coxilha aqui em Bagé, o periodo que estive nesta parceria dezembro de 2023 a outubro de 2025, consegui fechar negócio e fazer visitas com clientes compradores.','Capacitação para venda de imóveis Rurais, onde aprendi a prospectar clientes, importância de um bom network, pós venda.',NULL,'Comercial, Novos Negócios, Engenharia',NULL,NULL,'Facebook','Não','2.500','Sim',NULL,'Consultor de vendas em Bagé','Gosto das coisas do campo, tenho um estilo de vida bem simples, sempre busquei por trabalhar e fazer coisas que gosto, estar com amigos, fazer as coisas da maneira mais justa possível.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-15T13:46:00.000Z'::timestamptz),
  ('Michele C. Louzada','carvalhomichele281@gmail.com',NULL,'55999114262','2001-09-18',24,'Solteiro(a)','0','Não','Santa Maria/rs','https://drive.google.com/uc?export=view&id=1Enh-aTsb1BFwj3_PMlO52ZIRl8tG_jo9','Arquitetura','Ensino Superior Completo','UFSM','2025-08-01','Sou formado','Me formei em agosto de 2025. Nao tive experiência de trabalho fixo como CLT. Minhas experiências foram referentes a estágios durante o período de graduação e trabalhos freelancer. No meu último estágio, trabalhei por 2 anos e meio.','Sou formada em arquitetura e Urbanismo pela Universidade Federal de Santa Maria. Atualmente curso duas disciplinas do mestrado como aluna especial. As matérias são relacionadas à sustentabilidade no ambiente construído e arquitetura centrada no usuário.
Tenho experiência nos softwares: sketchup, Archicad, Autocad, enscape, pacote Office, canva.',NULL,'Arquitetura, Engenharia',NULL,NULL,'Instagram','Não','R$5.000,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Trabalho com os softwares: Sketchup, Archicad, autocad, enscape, Pacote Office, Illustrator, canva. 
Durante a graduação  fiz um disciplina  de espanhol 1, onde pude compreender melhor o idioma  e melhorar minhas habilidades.
Gosto bastante de cozinhar, principalmente doces, adoro preparar pratos diferentes.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-15T16:34:00.000Z'::timestamptz),
  ('André Alves Garcia','andre.pacato@gmail.com',NULL,'51991182928','1984-04-12',41,'Casado(a)','1','Sim','Cachoeirinha/rs','https://drive.google.com/uc?export=view&id=1YQUnsn611X8LwCfRV0oLZHA6U0sKHwN7','Engenharia Civil','Pós-graduação Completa','PUCRS','2009-01-23','Sou formado','Sou André Alves Garcia, engenheiro civil formado há 15 anos, com pós-graduação em Engenharia de Produção e MBA em Gestão de Projetos. Ao longo da minha trajetória profissional, desenvolvi ampla experiência na execução e gestão de obras residenciais verticais de médio e alto padrão, bem como em empreendimentos de baixo padrão, como os programas Minha Casa Minha Vida e SBPE.

Como gestor de obras, atuo com foco em planejamento estratégico de curto, médio e longo prazo, buscando constantemente a redução de prazos e custos, além da otimização de processos e procedimentos internos, utilizando os conceitos de Lean Construction. Tenho perfil de liderança colaborativa, facilidade de comunicação em todos os níveis e excelente relacionamento interpessoal.

Possuo conhecimentos técnicos em ferramentas como MS Project (intermediário), Excel (avançado), AutoCAD, Autodoc Qualidade, Autodoc Projetos, Construtivo, JCO, Sienge e SAP.

Minhas responsabilidades incluem a mobilização de obras, integração de equipes próprias e terceirizadas, planejamento e acompanhamento de compras e serviços, além da gestão de custos, prazos e qualidade de todas as atividades administrativas e operacionais. Também realizo interpretação de projetos multidisciplinares, gestão de estagiários, medições e liberações de pagamentos, bem como o monitoramento das condições de segurança do trabalho.

Tenho experiência na execução de obras em alvenaria estrutural, sendo responsável pela obtenção do Habite-se, manutenção e reparos em unidades entregues, e preparação de imóveis para entrega aos clientes.

Além disso, atuei no backoffice, contribuindo para a implementação do sistema de gestão da qualidade da empresa, voltado à certificação nível A do PBQP-H, e também participei de projetos de viabilidade e planejamento de loteamentos, envolvendo análise técnica, desenvolvimento e estruturação de etapas de execução.

Minha trajetória é marcada pela busca contínua por eficiência, qualidade e inovação, sempre com foco em resultados concretos e na excelência da gestão de obras e projetos.','Tenho Pós graduação em engenharia de Produção, MBA em Gestão de Projetos e pós em Liderança e Gestão de Equipes, Gestão de Equipes.',NULL,'Administrativa, Engenharia',NULL,NULL,'Agência de Empregos','Não','13000','Não','Lucas Rocha - Arrimo.co - Diretor - (51) 99707-5009
Marcelo Gruner - Pertho - Diretor - (51) 99561-7300
Gabriel Milanesi - TGD - Gerente Geral - (51) 98189-8699
Rafael Rossetto - RNI - Gerente Geral - (11) 95387-4576
Sandro Cordeiro - Edificatore / Settecon - Diretor - (51) 99209-4124','Coordenador de Engenharia','Sou simples, gosto de ficar em casa, e curtir a família.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-15T18:28:00.000Z'::timestamptz),
  ('Edson Lemes da Rosa','lemesedrosa@gmail.com',NULL,'51999251499','1969-06-18',56,'Casado(a)','1','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1g7z8Jgd_lvixf1CS20Hls23PLY9V2f6h','Engenharia Civil','Ensino Superior Completo','PUC-RS','2005-08-05','Sou formado','Guaiba Park Empreendimentos Imobiliários
Engenheiro civil  (set/2019 - out/2025
Gerenciamento   fiscalização,  supervisão obras em loteamentos',NULL,NULL,'Engenharia',NULL,NULL,'Agência de Empregos','Não','18.000,00','Sim','Deivis Brenner ( Urbanizadora Concordia) 51999916853','Engenheiro Civil','Profissional com experiência em obras de loteamentos e condomínios,  outras obras como hidroelétricas,  parque eólicos , infraestrutura urbana todos na área de gerenciamento,  fiscalização e supervisão,  engenharia do proprietário','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-15T20:31:00.000Z'::timestamptz),
  ('Alvair Borges de Almeida','almeidaalvair759@gmail.com',NULL,'54992716275','1993-09-13',32,'Solteiro(a)','1','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1AsHr5WspXWU1TsZDYSO389ZBcP0zcIal','Engenharia Civil','Ensino Superior Completo','Uniasselvi','2024-02-26','Sou formado','Constru Bel mais 02/03/2024 engenheiro de obras até 09/10/2025','Engenharia civil',NULL,'Engenharia',NULL,NULL,'Agência de Empregos','Não','6.000,00','Sim','51996935378 Fiama','Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-15T20:38:00.000Z'::timestamptz),
  ('Lauren Teixeira Côrtes','laurenteixeiracortes@gmail.com',NULL,'55991618288','1998-06-11',27,'Solteiro(a)','0','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1A_i13EpSHkSyRBEM9A6DmRuRQNDLJwBL','Administração de empresas','Ensino Superior Completo','Unopar','2022-09-15','Sou formado','04/06/2024 A 16/05/2025 – TRES TENTOS AGROINDUSTRIAL S/A
Assistente Administrativo I:
Atendimento ao público, atendimento telefônico, organização arquivos, realização de notas de remessa,
transferência, fixação de soja, venda de casca e farelo, planejamento de agendas e outras atividades.

01/03/2024 A 14/05/2024 – ECER SERVIÇOS CONTABEIS E CORRETORA DE IMOVEIS LTDA
Auxiliar de Escritório em geral:
Atendimento telefônico, atendimento presencial, atendimento virtual, organizar arquivo, realização de
certificado digital, quebra de caixa, contas a pagar, contas a receber, encaminhamento das aberturas de
empresas, alvarás, prepara relatório e planilhas, organização de arquivos, planejamento de agendas e outras
atividades.

20/03/2023 a 06/09/2023 – IMOBILIARIA PERSONAL IMOVEIS LTDA
Assistente administrativo:
Atendimento ao cliente, atendimento ao telefone, via Whatzapp, arquivos, fazer vistoria de saída dos imóveis,
fazer relação dos reparos, fazer orçamentos de mão de obra e materiais, aviso de 30 dias da entrega do
imóvel, organização de contratos entre outras atividades.

19/08/2019 A 07/10/2022- ESCRITÓRIO ANÁLISE CONTABILIDADE E DESPACHANTE
Secretaria:
Principais Atividades: Notas eletrônicas Sefaz, notas ISSQN municipal, parte trabalhista, digitar, arquivar e
encaminhar documentos nas empresas, atendendimento telefônico, encaminhamento dos alváras das
empresas, atendimento ao público, trabalhar com dados no sistema, dentre outras atividades relacionados ao
setor e fora dele; exemplo: ir ao Tabelionato de notas, Prefeitura, Cartório de Registro de Imoveis etc.

EXPERIÊNCIA PROFISSIONAL
22/05/2017 a 14/05/2019 – PREFEITURA MUNICIPAL DE CRUZ ALTA -RS
Estagiária na área de Assistente Administrativo (Secretária de Obras):
Principais atividades: digitar Ofícios e memorando, realização de requisição, arquivos e encaminhamento de
documentos, atendimento telefônico, atendimento ao público, organização com planilhas dentre outras atividades relacionados ao setor e fora dele.','Tenho curso técnico em secretariado, estou cursando MBA em agronegócio.
Tenho curso de informática.',NULL,'Administrativa, Financeiro',NULL,NULL,'Indicação','Não','2.500,00','Sim','Wilson Ary Gomes Ferreira  - 55 98425-2005
Leonel Carlan - 55 98403-9041','Quero inscrever-me no banco de talentos da Young!','Me chamo Lauren, tenho 27 anos, solteira, moro em Cruz Alta - RS, tenho habilitação categoria AB,  sou formada em Administração, tenho curso técnico em secretariado, cursando MBA em gestão de agronegócio, estou cursando certificação cpa-10 e, nos últimos anos, trabalhei como assistente administrativo. Sempre gostei de trabalhar realizando atividades como atendimento ao público, atendimento externo, edição de documentos como contratos, relatórios, atender solicitações externas, organização de arquivos, atendimento via WhatsApp, e-mails, telefone, emissão de notas eletrônicas, recebimento pagamentos dos honorários, quebra de caixa, entre outras atividades administrativas.
E Quero Colaborar de forma eficiente e responsável no ambiente de trabalho, onde possa colocar em prática meus conhecimentos, buscando crescer e me aprimorar na área atuada.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-15T21:08:00.000Z'::timestamptz),
  ('Adrielle Serpa','serpadyh@gmail.com',NULL,'55992334646','1990-06-06',35,'Solteiro(a)','3','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1vfT2cqytwyO8jOm3JjYt1GyphTDzgmfN','Tecnico em Administracao','Ensino Médio Completo','Colegio Emilio Zuneda','2012-07-15','Não, no momento pausei/parei por um período.','Setor patrimonial de alegrete; auxiliar de escritório; 05/15 a 02/17 cadastro e baixas de bens licenciamento de veículos','Auxiliar em RH',NULL,'Administrativa, Comercial',NULL,NULL,'Instagram','Nao','O da catrgoria','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-15T21:09:00.000Z'::timestamptz),
  ('Jader Costa Carvalho','jaderccarvalho10@gmail.com',NULL,'55999398113','1983-03-11',42,'Casado(a)','1','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1xNA35lvLQM9yyE7LDjyThTClu6C79rN_',NULL,'Ensino Superior Incompleto',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Cv',NULL,NULL,'Comercial',NULL,'https://drive.google.com/open?id=1MNuWohSyUQV2MMRTxYHmTmNEhYC4Vfam','Facebook','Não','3500','Sim','Cv','Comercial','Cv','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-15T21:27:00.000Z'::timestamptz),
  ('Thiago Chagas Soares','thiagochsoares@gmail.com',NULL,'51991358513','1992-02-01',34,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1ipLgC-jckml2YP7irSnQUC_2u6afdw3q','Engenharia Civil','Ensino Superior Completo','Instituto Federal de Educação, Ciência e Tecnologia do Amazonas - IFAM','2022-05-25','Sou formado','CTS Engenharia em Manaus, Assistente de Engenharia 05/2021 até 02/2023 atuei no acompanhamento de serviços em indústria, reparos e reformas e condomínios, confecção de parecer técnico. 

Elmo Eletromontagens, Engenheiro Civil Residente 05/2023 até 03/2025. Acompanhemento geral de serviços, contratação de equipe, gerenciamento total de obra, reforma de escolas, medição mensal.',NULL,NULL,'Engenharia',NULL,'https://drive.google.com/open?id=14j4ogEfOdbmMXQ-cZsMPGlx4Y4S7PYAy','Instagram','Não','R$6.000,00','Sim',NULL,'Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-15T21:39:00.000Z'::timestamptz),
  ('acamarildocosta89@gmail.com','acamarildocosta89@gmail.com',NULL,'51995262720','1989-11-14',36,'Casado(a)','1','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1dlTO-5zphXZMSC510XID701kUPx7gM2u','Engenharia Civil','Ensino Superior Completo','Anhanguera','2024-11-30','Sou formado','Comecei como ajudante de pedreiro, hoje trabalho na área civil, faço desde pequenas reformas a casas de alto padrão, trabalhei com Segatto, na Melnick, cirella, maiojama entre outras empresas, hoje presto serviços a particulares e para escritório de gerenciamento de obras.',NULL,NULL,'Engenharia',NULL,NULL,'Instagram','Não','6.000,00','Não',NULL,'Engenheiro Civil','Cad, eberick, Exel, gerenciamento de serviços, orçamento de obras.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-15T23:01:00.000Z'::timestamptz),
  ('Victor Ackermann Marzullo Lirio','victor.amlirio@gmail.com',NULL,'51982676078','1996-10-17',29,'União estável','2','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1gi60Tl4iNo_YUZePUy9LIEmrJQe_VBva','Engenharia Civil','Ensino Superior Completo','UniRitter','2019-01-20','Sou formado','1) Ecsam - Auxiliar de engenharia 
10/2021 até 10/2022
Responsável por coordenar as equipes de campo e realizar as medições.

2) Porto Beton - Engenheiro Civil 
10/2022 até 02/2024
Engenheiro responsável pela obra de terraplanagem do Aeroporto da cidade de Caçador/SC. 

3) Multserv - Engenheiro Civil 
02/2024 até 02/2025
Responsável por medições, coordenação de todas as equipes de trabalho em campo e vistoria com os fiscais.

4) Multiplan - Auxiliar de engenharia 
03/2025 até 08/2025
Responsável pelas medições do empreiteiros terceirizados.',NULL,NULL,'Engenharia',NULL,NULL,'Agência de Empregos','Não','7000','Sim',NULL,'Engenheiro Civil','Estou em busca de uma oportunidade que eu consiga ter estabilidade profissional, que eu consiga mostrar a capacidade que tenho como engenheiro civil e fazer a diferença na empresa. Quero ter essa estabilidade por ter duas filhas pequenas e a primeira oportunidade que me surgir vou me agarrar e fazer valer a escolha por mim!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-16T00:57:00.000Z'::timestamptz),
  ('Diuliana Dorneles Flores','dornelesdiuliana93@gmail.com',NULL,'55992192813','2001-10-09',24,'Solteiro(a)','1','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1PdBnoHHGTlFqRpfAsIFbSDd7ckBoIku0',NULL,'Ensino Superior Incompleto',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Atendimento presencial e por telefone aos clientes, esclarecendo dúvidas sobre produtos e serviços.
Responsável por registrar vendas no sistema e acompanhar trocas e devoluções.
Contribuí para a fidelização dos clientes por meio de um atendimento ágil, educado e eficiente.
Trabalhei em equipe para manter o ambiente da loja organizado e agradável.',NULL,NULL,'Comercial',NULL,NULL,'Facebook','Não','1500','Não',NULL,'Comercial','Profissional com experiência sólida em atendimento ao público e vendas, atuando com foco na excelência no relacionamento com clientes, identificação de necessidades e oferta de soluções personalizadas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-16T10:45:00.000Z'::timestamptz),
  ('Natana dos Santos Prates','pratesnatana@gmail.com',NULL,'55999972887','1997-01-05',29,'Solteiro(a)','2','Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1db6vwCG-fIpnn91BlrVnCj2vypJKBvTf',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','1- izolan calçados 
2- vendedora
3-1/12/2015 11/04/2018
4- vendedora, organização da loja 

1- casas Bahia 
2- acessor de vendas 
3- 29/10/2018 11/04/2018
4- atendimento ao cliente, organização do estoque e entrega de mercadorias ao cliente',NULL,NULL,'Comercial',NULL,NULL,'Instagram','Não','3.000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-16T12:20:00.000Z'::timestamptz),
  ('Andre pereira cardoso','andrecardoso67@gmail.com',NULL,'55992321158','1981-04-17',44,'Casado(a)','1','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1-eBRGq_Y7fWKcfAxnabtomY65YEX7rCq','Engenharia de Produção','Ensino Superior Incompleto','FAEL',NULL,'Não, no momento pausei/parei por um período.','AUDITOR QUALIDADE',NULL,NULL,'Administrativa',NULL,NULL,'Facebook','NAO','A COMBINAR','Não',NULL,'Comercial','TECNICO EM MECANICA E AUDITOR','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-16T20:22:00.000Z'::timestamptz),
  ('Caroline Corrêa Garcia','Carolinecorreagarcia27@gmail.com',NULL,'53999281653','1995-01-27',31,'União estável','1','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=18HADk4qBqy4HeobISlQyIAptb2d5PzKu','Tecnica em contabilidade','Ensino Médio Completo','Antenor goncalves pereira','2019-08-10','Não, no momento pausei/parei por um período.','Wild imóveis- auxiliar contábil 
Predial gaúcha-financeiro 
Sami sistemas- tecnico de apoio ao usuário 02/01/2021 a 02/09/2025',NULL,NULL,'Administrativa, Comercial, Financeiro',NULL,NULL,'Facebook','Nao','1512','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-16T20:35:00.000Z'::timestamptz),
  ('Ana Flávia da Silva Pereira','anaasp@hotmail.com',NULL,'55996211541','1996-08-12',29,'Solteiro(a)','0','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1Kx3smkHGG4hUxH_GioT3WXMSW48jLTnp','Administração pública','Ensino Superior Incompleto','Anhanguera',NULL,'Não, no momento pausei/parei por um período.','Anexei meu currículo na opção de portfólio, assim é possível visualizar melhor todas as minhas experiências.',NULL,NULL,'Administrativa, Comercial, Financeiro',NULL,'https://drive.google.com/open?id=1YJStW4UbxQrPf7QPmZvPbDK86ZSpaELK','Instagram','Não','2100','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-16T22:43:00.000Z'::timestamptz),
  ('Marcelo Oliveira Monteiro','marceloluyseeduarda@gmail.com',NULL,'53991468668','1981-12-04',44,'Solteiro(a)','2','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1Ztr4CoJavyz5GX1CaqWvFGIYYYN3rWZP','Gestão pública','Ensino Superior Completo','Anhanguera','2025-10-16','Sou formado','Ditalia,12/03/2025,18/07/2025, vendedor e motorista','Elétrica, formação em gestão pública',NULL,'Comercial, Novos Negócios',NULL,NULL,'Instagram','N','0','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-17T00:52:00.000Z'::timestamptz),
  ('robertagutierrezferreira@gmail.com','robertagutierrezferreira@gmail.com',NULL,'55999790152','2004-11-04',21,'Solteiro(a)','1','Não','Itaqui/RS','https://drive.google.com/uc?export=view&id=10m95QXs8nDo82AhXt3_V6EbGRlOQvMuZ',NULL,'Ensino Médio Completo','Instituto Estadual de Educação Osvaldo Cruz','2023-12-22','Não, no momento pausei/parei por um período.','Não obtive oportunidade de trabalho ainda de carteira assinada que comprove, mas trabalho de home office em casa pra empresa terceirizada na área de empréstimos',NULL,NULL,'Estágio, Financeiro, Engenharia',NULL,NULL,'Facebook','Não','Um salário mínimo','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Agradeceria se eu tivesse uma oportunidade pois na minha cidade é difícil conseguir emprego sem experiência na área, mas sem oportunidades não tem experiência. No que me dedico aprendo rápido','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-17T04:40:00.000Z'::timestamptz),
  ('Cauã Domingues','cauanmarques206@gmail.com',NULL,'51991980017','2005-04-14',20,'Solteiro(a)','1','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1sJggfgRN6MwkGMMInjUF52TmD80cFjC8','Fisioterapia','Ensino Superior Incompleto','FACCAT','2028-12-01','Não, no momento pausei/parei por um período.','MF1 SERVIÇO EM TELEATENDIMENTO, VENDEDOR, 06/2021 a 07/2023, ATENDIMENTO TELEFÔNICO E ONLINE COM FOCO EM VENDES. COM BASE DE CLIENTES LEADS QUENTE E FRIO.

VERO S.A, ATENDENTE DE RETENÇÃO, 08/2023 a 9/2024, ATENDIMENTO TELEFÔNICO E ONLINE COM FOCO EM MANTER CLIENTES DA BASE, SOLUCIONANDO PROBLEMAS E GERANDO NOVO CONTRATO DE FIDELIDADE.

FACTA PROMOTORA, CONSULTOR FINANCEIRO, 09/2024 a 05/2025, VENDES ONLINE E PRESENCIAL DE PRODUTOS FINANCEIROS COMO EMPRÉSTIMO CONSIGNADO, PESSOAL e CARTA DE CRÉDITO. BASE LEADS CLIENTE FRIO.',NULL,NULL,'Comercial, Marketing, Novos Negócios',NULL,NULL,'Instagram','Não','Entre 1800,00 a 2000,00','Não',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-17T12:27:00.000Z'::timestamptz),
  ('Rafael Amaral Mattos','contato.rafaelmattos96@gmail.com',NULL,'51993776199','1996-07-05',29,'Casado(a)','0','Não','Alvorada/rs','https://drive.google.com/uc?export=view&id=1RSWpMJSqBToYXmxLHM_ywgS6mLaLfO9S',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','TUDO FÁCIL – Auxiliar Administrativo
(10/2024 – 02/2025)
Apoio às áreas administrativas.
Organização e controle de documentos.
Apoio na elaboração e encaminhamento de
relatórios.

BANCA 12 Armazém de Produtos Naturais LTDA –
Atendente
(12/2023 – 03/2024)
Atendimento presencial e online (telefone, chat e e-
mail).
Cadastro de produtos em site e suporte em
estratégias comerciais.
Controle de qualidade dos produtos.

SULACRES Indústria e Comércio LTDA – Operador de
Máquinas
(06/2021 – 11/2022)
Abastecimento das linhas de produção.
Operação de máquinas e equipamentos.
Controle de qualidade do material produzido.

PAQUETÁ Calçados LTDA – Estoquista
(09/2016 – 09/2017)
Gestão de estoque e recebimento de mercadorias.
Organização e categorização de produtos.',NULL,NULL,'Administrativa, Comercial',NULL,NULL,'Instagram','Não','1.800','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Olá! Meu nome é Rafael, tenho 29 anos e sou morador de Alvorada. Sou casado e me considero uma pessoa dedicada, responsável e sempre disposta a aprender. Tenho experiência como auxiliar administrativo, com atividades de organização de documentos, relatórios e apoio às rotinas do setor.

Desde a adolescência sempre gostei muito de tecnologia e videogames, o que me fez desenvolver familiaridade com computadores — realizava reparos, trocas de peças e formatações por conta própria. Tenho facilidade com informática e interesse em seguir aprendendo e crescendo nessa área.

Acredito que oportunidades de aprendizado e desenvolvimento são essenciais, e por isso busco fazer parte de uma equipe onde eu possa contribuir com meu comprometimento e continuar evoluindo profissionalmente.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-17T18:23:00.000Z'::timestamptz),
  ('Thomas Magno','thomasmagno90@hotmail.com',NULL,'5571991485897','1990-11-20',35,'Solteiro(a)','0','Sim','Camaçari/ba','https://drive.google.com/uc?export=view&id=1s-o03JmzLSzXbLdcu4C77VDBsNOOUb6n','Engenharia Civil','Ensino Superior Completo','UNIME','2019-05-05','Sou formado','JBENS S.A – Obra Hangar LATAM São Carlos/SP
Cargo: Engenheiro de Produção
Período: 03/2025 a 06/2025
Atuação na construção do novo Hangar de Manutenção da LATAM (5.558 m² | R$ 40 milhões). Responsável pelo planejamento físico-financeiro, controle de cronograma (MS Project), integração de projetos (AutoCAD), gestão de suprimentos e apoio técnico à execução. Fiscalização dos serviços civis e montagem metálica com vãos de até 90 m, além de fundações, lajes, instalações e três edifícios anexos.

Smart Link Soluções Ltda – Justiça Federal de Santa Catarina
Cargo: Engenheiro Civil de Obra Pleno
Período: 02/2024 a 07/2024
Gestão de contrato de obras e reformas (R$ 3,7 milhões) na JFSC/Chapecó. Responsável pelo planejamento, medições, orçamentos, subcontratação de sondagem, topografia e projeto geotécnico. Execução de terraplenagem, drenagem, pavimentação, impermeabilização, alvenaria, estruturas metálicas, telhados e contenções.

Smart Link Soluções – Superintendência Regional da Polícia Federal/BA
Cargo: Engenheiro Civil Preposto
Período: 11/2022 a 02/2024
Gestão completa do contrato de manutenção predial preventiva e corretiva da Polícia Federal na Bahia. Atuação em oito unidades. Elaboração de medições, planejamento físico-financeiro e orçamentos (OrçaFascio e ObraPrima). Coordenação de equipes terceirizadas, controle de custos e execução de serviços elétricos, hidráulicos e estruturais.','Master Bim - andamento',NULL,'Engenharia',NULL,NULL,'Agência de Empregos','Não.','8000','Sim',NULL,'Engenheiro Civil','Sou engenheiro civil com perfil analítico, organizado e voltado para resultados. Tenho facilidade em aprender e aplicar novas tecnologias, especialmente ferramentas de gestão e modelagem 3D, como Revit, AutoCAD, SketchUp e MS Project. Domino Excel avançado (macros, PROCV, tabelas dinâmicas), Power BI, OrçaFascio, ObraPrima e Sienge, o que me permite integrar planejamento, orçamento e controle de obras de forma eficiente.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-17T19:43:00.000Z'::timestamptz),
  ('Caroline Ciconet Borba','ciconetb@gmail.com',NULL,'51991666969','1981-10-23',44,'Casado(a)','2','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1Cf16gkSe1Z68QGNQFN_vEglgMqIhndCZ','Engenharia Civil','Ensino Superior Completo','Universidade do Vale do Rio dos Sinos','2009-08-22','Sou formado','Empresa: SESC RS 
Cargo: engenheira civil 
Data de início: 08/2023 até atual Atividades: elaboração de projetos, orçamentos, BDI, CPUs, editais, análise de licitações, termos de referência, memoriais, análise de projetos, analise de orçamentos, análise de memoriais descritivos, compatibilização de projetos e elaboração e análise de pareceres técnicos. 
Empresa: SESI RS 
Cargo: engenheira civil 
Data de início: 02/2014 Data final: 08/2023 
Atividades: orçamentos, BDI, CPUs, editais, análise de orçamentos, memoriais descritivos e projetos, compatibilização de projetos, elaboração de análise de licitações, pareceres técnicos. Fui facilitadora dos processos de orçamento e fiscalização de obras, onde tinha sob minha responsabilidade 5 engenheiros e 2 técnicos de edificações. 
Empresa: Serno Construções e Incorporações Ltda
Cargo: engenheira civil 
Data de início: 08/2013
Data de fim: 11/2013
Atividades: elaboração de orçamentos e análise técnica de imóveis.
Empresa: Ughinhi Empreendedora Ltda Cargo: engenheira civil 
Data de início: 04/2010 Data final: 07/2013 
Atividades: engenheira residente, gerenciamento de equipes terceirizadas, elaboração de orçamentos, cotações, compras, planejamento e gerenciamento de obras. 
Empresa: Cádiz Construções SA
Cargo: técnica orçamentista 
Data de início: 02/2009
Data de fim: 04/2010
Atividades: elaboração de orçamentos, cronogramas, gerenciamento e fiscalização de obras, cotações, medições, gerenciamento de equipes e análise de desempenho das obras.
Empresa: Labore Engenharia 
Cargo: Estagiária de Engenharia civil 
Data início: 01/2008
Data fim: 02/2009
Atividades: elaboração de orçamentos, fiscalização e gerenciamento de obras, gerenciamento de equipes, aplicação de PBQPh, medições de obras, contratos com empresas terceiras, entrega de unidades para os clientes, manutenção pós obra.
Empresa: Acunha Sole Engenharia 
Cargo: Estagiária de Engenharia civil 
Data início: 03/2006
Data fim: 01/2008
Atividades: Obra Multiplico, Theatro São Pedro e Santander Cultural Recife - elaboração de orçamentos, acompanhamento de obras, elaboração de projetos e portifólios, cotações, análise de manifestações patológicas, compras.
Empresa: DELL
Cargo: Estagiária de Engenharia civil 
Data início: 01/2006
Data fim: 03/2006
Atividades: manutenção fabril, elaboração de orçamentos, gerenciamento de contratos e equipes terceirizadas, aplicação de 5Ss.
Empresa: Ministério do Planejamento, Orçamento e Gestão 
Cargo: Estagiária de Engenharia civil 
Data início: 07/2005
Data fim: 12/2005
Atividades: atualização de projetos, análise de imóveis, digitalização de projetos.
Empresa: INFRAERO 
Cargo: Estagiária de Engenharia civil 
Data início: 08/2004
Data fim: 12/2005
Atividades: elaboração de projetos, orçamentos, acompanhamento de obras e fiscalização de obras.
Empresa: Morrison Knudsen do Brasil
Cargo: Auxiliar Técnica em Planejamento 
Data início: 03/2003
Data fim: 06/2004
Atividades: elaboração de orçamentos, projetos, planejamento, gestão de contratos, fiscalização de obras.
Empresa: CEEE
Cargo: Estagiária de Engenharia civil 
Data início: 06/2001
Data fim: 03/2003
Elaboração de orçamentos, projetos,visitas a obras.','Atuo com elaboração de orçamentos, projetos, planejamento, gestão de contratos e fiscalização de obras. Fiz vários cursos sobre as áreas que atuo com auditores do TCU e CGU (elaboração de editais, contratação de projetos e obras, fiscalização de obras, reajustes, reequilíbrio econômico financeiro, termos aditivos, elaboração de orçamentos e medições), curso de Revit MEP, AutoCad, pilotagem de drone, NR10, NR35, gerenciamento de resíduos, alvenaria estrutural, inglês e espanhol.',NULL,'Engenharia',NULL,NULL,'Instagram','Não','12200','Sim','Eng Gustavo Monser Contato: (51) 991984545 Empresa: SESC 
Eng Tiago Covi Contato: (51) 998165723 Empresa: Ulbra','Engenheiro Civil','Trabalho com sistemas OrçaFascio, Siapa, Sienge, AutoCad, Revit, Citrix, Construtivo, Project, Excel. Sou terapeuta holística, mestre Reiki Gendai e Tibetano, Magnified Healing, Light Healing e Seichim.
Fiz, também, curso de Desenvolvimento e Liderança e inteligência emocional.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-17T22:50:00.000Z'::timestamptz),
  ('Thamires Luciele Teixeira Ferreira','teixeirathamires22@gmail.com',NULL,'55992306181','1997-02-16',29,'União estável','3','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=12C6k7OET8vLNk1Y9VV4zhXfghCdyyp9f','Administração','Ensino Superior Incompleto','Uniasselvi','2029-09-10','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Sygo Internet - Consultora de vendas, 04/2022 á 08/2024','Informática Profissional/Concluído.
Auxiliar financeiro/Concluído.
Atendimento ao cliente/Andamento',NULL,'Comercial',NULL,NULL,'Instagram','Não.','1.500,00','Não','Franne Scheineider - Gestora na empresa Sygo Unifique. Telefone:(55)9 9720-9377.','Comercial','Pessoa dedicada, organizada e comprometida, que busca sempre aprender e se aprimorar. Tenho facilidade em lidar com responsabilidades, sou atenciosa aos detalhes e gosto de contribuir de forma positiva em qualquer ambiente. Possuo perfil proativa, comunicativa e sei trabalhar em equipe, mantendo sempre a calma e o foco mesmo em situações desafiadoras. Gosto de manter tudo bem organizado e prático, seja no trabalho ou na vida pessoal,valoriza aprender coisas novas e adquirir experiências que tragam crescimento. Aprecio ambientes colaborativos, onde possa ajudar colegas e trocar conhecimentos. No tempo livre, gosto de atividades que tragam bem-estar e tranquilidade, como ouvir música, estar com a família e cuidar do dia a dia de forma equilibrada.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-18T02:09:00.000Z'::timestamptz),
  ('Rafael Vieira Zilli','rafaelvieirazilli@outlook.com',NULL,'55984044991','1983-01-07',43,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=11v9sRsNZzYgaHcimNN1cBcFqFz9oO8UY','Administração de empresas','Ensino Superior Completo','Iesa - Santo Ângelo','1983-01-07','Sou formado','Mecautor - Wolksvagen São Borja - Consultor de Vendas',NULL,NULL,'Comercial, Marketing',NULL,NULL,'Google','Nao','40000','Sim','Matheus Pavinatto 55 999920020','Comercial','Perfil Comercial , ótima fluência verbal , pro ativo , organizado, dinâmico , flexível , organizado e responsável !','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-20T13:12:00.000Z'::timestamptz),
  ('jessica Pedrotti Salles','jessicasalles11295@gmail.com',NULL,'55981265369','1995-12-01',30,'Solteiro(a)','0','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1OLNbl7W9Ia0EguH0SqqboL_lLjUvRRe9','Excel avançado','Ensino Médio Completo','Senac Rio grande do Sul','2025-10-23','Sou formado','Vence tudo -ibiruba','Excel avançado',NULL,'Administrativa, Comercial, Marketing, Engenharia',NULL,'https://drive.google.com/open?id=1vvTSszII62tF1dF44EQXLyMqVwpE1bdM','Instagram','Não','1.800,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Ajuda a associação ao cachorrinho','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-20T16:27:00.000Z'::timestamptz),
  ('Andressa de Souza Soares','arqandressasoares@gmail.com',NULL,'51992621035','1997-05-04',28,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1YZq-dGoPEx0Nawxd1nQQ8Mb7GwVHD0WT','Arquitetura','Ensino Superior Completo','Uniritter','2020-08-01','Sou formado','1) Roseli Melnick 2) Arquiteta Líder Interiores 3) 07/2025 a 05/2025 4) Elaboração de projetos de interiores utilizando ferramentas como
autocad e sketchup. Medições em campo e levantamento de
interferências de projetos. Reunião com clientes, fornecedores e
prestadores de serviço. Realização de orçamentos e escolhas de
mobiliários, revestimentos e acabamentos.   01) Zeca Amaral Arquitetura 02) Arquiteta de Projetos - Sócia 3) 2020 a 2024 4) Gerenciamento e cronograma de projetos de interiores,
treinamento de equipe de estagiários e novos arquitetos.
Elaboração de projetos de interiores e
arquitetônicos utilizando ferramentas como autocad e
sketchup. Busca por referências e criação de projetos.
Medições em campo e levantamento de interferências
de projetos, viagens realizadas para Punta Del Este, São
Paulo, Litoral Rio Grande do Sul e Montevidéo.
Elaboração de detalhamentos executivos e ajustes
conforme interferências de obra e solicitações dos clientes.
Compatibilização de projetos de diferentes áreas
(hidráulica, elétrica, climatização etc.).',NULL,NULL,'Arquitetura',NULL,'https://drive.google.com/open?id=1Y8WgcdZyv1SY8RfJpYq1nDQcc1n3rXOo','Facebook','Não','6.000,00','Sim',NULL,'Assistente de Projetos',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-20T19:28:00.000Z'::timestamptz),
  ('Thamirys Netto da Silva','thamirysnetto20@gmail.com',NULL,'55999348833','2001-10-11',24,'Casado(a)','0','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1SiE_A1sWHAZabZRRHsUhRD-ogDeUlOoJ','Engenharia Civil','Ensino Superior Incompleto','Unicruz e Unopar','2026-06-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1-Unicruz (projeto de iniciação cientifica PRONEX)
2-Bolsista
3-Experiência acadêmica de 8 meses
4-Realização de pesquisas, relatórios e textos ,
participação de reuniões e palestras no âmbito
educacional.


1-Academia Fit Ligth/aquafit
2-Pomotora de vendas 
3-Experiência informal de 2 meses 
4-Prospecção de novos clientes ,realização de
cadastros e monitoramento do pós venda.

1-Mecânica Injecar
2-Auxiliar de Escritório
3-Abril de 2022 até dezembro de 2022
4-Controle e emissão de documentos como notas
fiscais e boletos e monitoramento/controle de
estoque.

1-Drilling Company
2-Auxiliar Administrativo
3-Janeiro de 2023 até março de 2023
4-Controle e entrada de materias no sistema ,
execução de planilhas de controle e auxílios gerais
de monitoramento da equipe.


1-Construtora Cattaneo
2-Aprendiz de engenharia E auxiliar de Engenharia
3-Aprendiz de engenharia (Março de 2023 até março de 2025) / Auxiliar de engenharia (março de 2025 ate agosto de 2025)
4-Planilhamentos e execução de vistorias.
Forte atuação no planejamento de atividades,
controle de prazos e gerenciamento de equipes.
Habilidade em lidar com normas técnicas,
documentação oficial, processos administrativos e
atendimento a diferentes públicos. Capacidade de
organização, cumprimento de metas e adaptação a
ambientes que exigem precisão,responsabilidade e
pressão.',NULL,NULL,'Estágio, Novos Negócios, Engenharia',NULL,NULL,'Instagram','não','R$1.750,00','Sim','Considero que qualquer experiência em empresas acima mencionadas agrega valor relevante ao currículo.','Quero inscrever-me no banco de talentos da Young!','Olá! Meu nome é Thamirys Netto, estudante universitária quase formada e grande admiradora dos projetos da Young Empreendimentos. Tenho cerca de dois anos de experiência em uma construtora, onde acompanhei de perto o dia a dia de um canteiro de obras, desenvolvendo habilidades práticas e aprendendo a lidar com desafios reais.

Além disso, possuo outras experiências que considero igualmente relevantes e que me ajudam a contribuir de forma positiva para qualquer equipe. Sou dedicada, tenho muita vontade de aprender e acredito que posso agregar à Young Empreendimentos, auxiliando no desenvolvimento e crescimento da empresa.

Fora do âmbito profissional, gosto de ler e fazer crochê, atividades que me ajudam a desenvolver concentração, paciência e criatividade. Estou animada com a possibilidade de contribuir e de conversar mais sobre como posso fazer parte da equipe!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-20T19:41:00.000Z'::timestamptz),
  ('Felipe Dacanal dos Anjos','eng.feliped@gmail.com',NULL,'55991067413','1993-04-14',32,'União estável','0','Sim','Ijuí/rs','https://drive.google.com/uc?export=view&id=1gQqri0HVkKKmG5-W2CFa6d52qUKN8rsa','Engenharia Civil','Ensino Superior Completo','UNIJUI - Universidade Regional do Noroeste do Estado do Rio Grande do Sul','2018-03-05','Sou formado','Razionale Incorporadora e Construtora 
Sócio e Engenheiro Civil 
10/2019 – Atual 
• Gerencia a execução de mais de 30 projetos, abrangendo construções 
residenciais e reformas de grande porte. 
• Supervisiona equipes de engenharia, garantindo a qualidade das entregas e a 
conformidade com normas técnicas. 
• Elabora projetos arquitetônicos, estruturais e elétricos otimizados, garantindo 
funcionalidade, organização, redução de custos, durabilidade e segurança. 
• Conduz negociações com fornecedores e clientes, fortalecendo parcerias 
estratégicas. 
• Atua na gestão financeira da empresa, incluindo análise de fluxo de caixa e 
controle de inadimplências.

Refrigeração Cossetin 
Auxiliar de Escritório 
10/2018 – 07/2019 
• Organização, atualização e emissão de documentação para processos 
licitatórios. 
• Participação em licitações on-line e presenciais. 
• Controle de fluxo de caixa, estoque e emissão de notas fiscais. 

Modelly Indústria Metalúrgica 
Estagiário 
01/2016 - 11/2016 
• Projetista de estruturas metálicas e pré-moldados. 
• Desenvolvimento de projetos de galpões industriais, caixas d’água e 
reservatórios. 
• Acompanhamento de obras e atendimento a clientes. 

Laboratório de Engenharia Civil - UNIJUI 
Bolsista Grupo PET 
10/2013 - 08/2015 
• Realização de pesquisas de inovação e ensaios laboratoriais conforme normas 
técnicas. 
• Produção e publicação de artigos científicos em pavimentação e concreto. 

Centro Sul Informática 
Técnico em Informática 
04/2011 - 10/2012 
• Manutenção e configuração de computadores e notebooks. 
• Montagem e conserto de equipamentos eletrônicos.','Projeto de Estruturas em Concreto Armado - EBERICK 2019 
Cálculo e Detalhamento – Módulos Básico e Avançado – Prof. Jeancarlo Ribas 
(50 horas).',NULL,'Novos Negócios, Engenharia',NULL,NULL,'Instagram','Não foi indicação','10000','Sim',NULL,'Engenheiro Civil','Engenheiro Civil com 7 anos de experiência em projeto arquitetônico, estrutural 
(Eberick), elétrico baixa tensão, maquetes eletrônicas, renderização, gerenciamento de 
obras, coordenação de equipes e execução de projetos de construção civil. Engenheiro 
civil em uma construtora com experiência em empreendimentos residenciais de alto 
padrão, com foco na entrega de soluções eficientes, dentro do prazo e orçamento.

Tenho grande facilidade em trabalho com softwares, de modo que já trabalhei com informática tenho agilidade em aprender sobre o programa e seu funcionamento.

Adoro pegar uma estrada e tenho como maior hobby a paixão por carros :)','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-20T20:36:00.000Z'::timestamptz),
  ('vivimatheus376@gmail.com','vivimatheus376@gmail.com',NULL,'55991879546','2004-10-02',21,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=11LE_6WJAM142AmT-c7xz9Zvjm1AZE5Bd','Técnico em agropecuária (completo)','Ensino Médio Completo','Instituto Federal Farroupilha - Campus Alegrete','2025-07-14','Não, no momento pausei/parei por um período.','•Exército Braisleiro- Soldado EP. (Fev-2023 à Fev-2025)
Realizei diversas atividades, desde administrativas à servicos gerais, devida a pouca mão de obra, necessitei atuar em diversas frentes de atividades.

•Cooperativa Agroindustrial Alegrete LTDA. (Centro comercial)- Jovem aprendiz (Emprego atual)
Iniciei as atividades atuando no setor de conferência em recebimento, atualmente atuo no setor de vendas, o que foi um grande desafio, pois não tinha conhecimento sobre comércio. Porém com interesse e persistência, cada dia tem sido de melhorar as habilidades de comunicação e relações interpessoais para estar mais apto ao trabalho diário com o público.',NULL,NULL,'Administrativa, Comercial',NULL,NULL,'Instagram','Não fui','O valor relativo à área que, por ventura, vier a integrar','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou jovem, e estou dando os primeiros passos no mercado de trabalho, ainda não possuo grandes qualificações, porém estou buscando diariamente desenvolver meu perfil profissional, para, no futuro, vir a ser um colaborador expressivo para a empresa que desejar me emprestar, pessoalmente me considero uma pessoa interessada, responsável, organizada, proativa que está sempre querendo aprender algo a mais, para poder me destacar dentre os demais. Tenho facilidade com computadores e sistemas de gestão.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-20T22:56:00.000Z'::timestamptz),
  ('Berony de Andrade Silva','beronyandrade75@gmail.com',NULL,'92993875120','1994-03-08',31,'Solteiro(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Azdjl7VojiRN4oFByX69hnRERQaOycZs','Administração de empresas','Ensino Médio Completo','Polo universitário santo Antônio da patrulha',NULL,'Não, no momento pausei/parei por um período.','Jovem profissional, consultor de vendas, desde 2023',NULL,NULL,'Comercial',NULL,NULL,'Instagram','Não','3.200,00','Sim','Valdeni 51998740663','Comercial','Olá sou o Berony atleta amador de corridas e mountain bike, faixa marrom em karatê estilo Shotokan. Tenho mta facilidade de comunicação, porém entendo que vendas é pura matemática…
Sempre quero me desafiar!!!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-20T23:29:00.000Z'::timestamptz),
  ('João Henrique Porto da Silva','jhportosilva@gmail.com',NULL,'53991267217','1994-07-29',31,'Solteiro(a)','0','Sim','Pelotas/rs','https://drive.google.com/uc?export=view&id=1ys6oxV-dRBZEPQ_ZSz5t_ajdWAwe-oj6','Engenharia Civil','Ensino Superior Incompleto','Uniritter','2025-12-18','Sou formado','1) Pôrto 5 Investimentos Imobiliários SA 
2) Analista de Qualidade 
3) 01/05/2025 - atualmente 
4) Elaboração e revisão de procedimentos sistêmicos, monitoramento de indicadores, avaliações de fornecedores, inspeção final de apartamentos, vistorias de clientes, auditoria interna, auditoria externa, controle tecnológico, acompanhamento de obras, manual do proprietário, elaboração de instrução de trabalho, elaboração de detalhamento de execução.
2) Inpetor de Qualidade 
3) 04/09/2023 - 30/04/2025 
4) Elaboração e revisão de procedimentos sistêmicos, monitoramento de indicadores, avaliações de fornecedores, inspeção final de apartamentos, vistorias de clientes, auditoria interna, auditoria externa, controle tecnológico, acompanhamento de obras, manual do proprietário, elaboração de instrução de trabalho, elaboração de detalhamento de execução.','Atuo a 2 anos no setor de Qualidade de uma construtora, possuo certificação de audito interno ISO 9001 e PBQPH. Como Analista de Qualidade, realizo atividades internas, voltada a procedimentos, elaboração de processos executivos, controle tecnológico, auditorias internas dentre outras. Realizo também atividades nos canteiros de obras, de acompanhamento de servições, medições e inspeções de qualidade voltada para a entrega de unidades para os proprietários.',NULL,'Engenharia',NULL,'https://drive.google.com/open?id=12_U0AhCw-PzfO2QPNctiTdMTSDkO8VgW','Instagram','Nao','RS 5000,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Já utilizei os software Mobuss e Sienge','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-21T01:50:00.000Z'::timestamptz),
  ('Rômulo de Campos Fernandes Fonseca','romulorota77@gmail.com',NULL,'55996739937','1992-02-07',34,'Casado(a)','1','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1q7ArIh9oiwB-5JjPWWDdoB85ZcanvR3M',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','1) Prefeitura de Alegrete 2) Assessor de habitação 3)janeiro de 2017 até agosto de 2020 4) atendimento ao público, elaboração de documentos internos e externos, elaboração de planilhas, arquivamento.

1) Oficina Sul Diesel 2)Administração/vendas 3) Novembro de 2020 até maio de 2021 4)Responsável pelo setor administrativo, prospecção de novos clientes, elaboração de documentos e emissão de NF, orçamentos, compra e venda de peças.','No momento estou cursando Eletrotécnica, com previsão de conclusão em junho de 2027.',NULL,'Administrativa, Comercial, Marketing, Novos Negócios',NULL,NULL,'Agência de Empregos','Não','2000','Não','Adriana - Chefe direta na prefeitura de Alegrete - celular (55)99984-5495','Comercial','Vou muito além das experiências profissionais colocadas, já tive negócio próprio, realizei serviços free-lancers, atuei como motorista de aplicativo, sempre se reinventando, sendo proativo e tendo boa relação interpessoal, tanto com colegas de trabalho como com clientes. Faço trabalhos voluntários na minha igreja, principalmente voltada a área de mídias e redes sociais, possuo boa habilidade com a área de tecnologia e computação.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-21T17:59:00.000Z'::timestamptz),
  ('Karen Tauane Oviedo Lencina','lencinak99@gmail.com',NULL,'55991430479','2002-10-11',23,'Solteiro(a)','0','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1ObYBR0f61sSkCpuFC4Y6iTrtzoG9ADgc','Tec enfermagem, gestão de pessoas','Ensino Médio Completo','Sesc','2026-03-05','Não, no momento pausei/parei por um período.','..','Fiz somente um semestre de TEC enfermagem, e gestão de pessoas tenho o curso pelo fundação Bradesco.',NULL,'Comercial',NULL,'https://drive.google.com/open?id=1JtJgULFyWc6dAgwWIUztHsABt9ToX-qC','Facebook','Não','Não tenho pretensão salarial, estou aberta a propostas.','Não','Tenho experiência como operadora de caixa, fiscal de frente de caixa e como chefe de loja(sub gerente)','Quero inscrever-me no banco de talentos da Young!','.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-21T19:49:00.000Z'::timestamptz),
  ('Raquel Lovatto Salbego','raquellovatto@yahoo.com.br',NULL,'55999805075','1993-01-11',33,'Solteiro(a)','1','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1EAX-TBsfu3QKbvLmjNvIM2ZsWtaj3T6Q','Técnico em administração','Ensino Médio Completo','Emílio Zuñeda','2019-07-31','Não, no momento pausei/parei por um período.','Barriga Verde 
Vendedora e caixa
StopCar serviços automotivos
Atendimento ao cliente, responsável pela parte administrativa','Informática 
Auxiliar de crédito e cobrança',NULL,'Administrativa, Comercial, Novos Negócios',NULL,NULL,'Instagram','Não','1800','Não','StopCar 
Éder 55996244045','Quero inscrever-me no banco de talentos da Young!','Tenho facilidade em aprender, tenho foco e determinação, total disponibilidade para começar imediatamente, gosto de trabalhar com o público e em equipe.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-22T15:22:00.000Z'::timestamptz),
  ('Clayton Barros Assunção','claytonbarrosassuncao@gmail.com',NULL,'55991191206','1984-02-15',42,'União estável','3','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=132sqELzvloTB_egVSTcaVjBP9z2g6dlb',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Executivo comercial',NULL,NULL,'Administrativa, Comercial, Marketing, Novos Negócios',NULL,NULL,'Agência de Empregos','Não','3000','Sim','Rede card','Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-22T16:50:00.000Z'::timestamptz),
  ('Michela carpes de Oliveira','michelacarpesdeoliveira@gmail.com',NULL,'51989507285','1982-04-16',43,'Casado(a)','3','Não','Guaíba/RS','https://drive.google.com/uc?export=view&id=1kY9-Q3DYxO7AVQlY4wz0moxrUvBRAlwL','Administração de empresas','Ensino Superior Incompleto','Unifatecie','2026-03-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','De estagiária a analista comercial em uma distribuidora de medicamentos, Cervosul, 4 anos no projeto escola aberta, com público em geral, aos sábados, estou assistente de vendas na indústria de cosméticos e faço venda direta via whats','Tenho técnico em administração, Excel, gestão de Farmácia pelo Instituo Bulla, estou cursando Marketing digital na EAD Radiante',NULL,'Comercial, Marketing, Novos Negócios, Engenharia',NULL,NULL,'Instagram','Não','R$2.800,00','Sim','Mario Wagner , Cervosul +55 51 9602-0943','Quero inscrever-me no banco de talentos da Young!','Eu fui exclusivamente mãe até os 32, assinei a carteira profissional aos 37. Me considero no início da minha carreira e ainda em busca do que realmente me dá prazer no trabalho. Quero algo mais dinâmico, para além de apenas mexer em planilhas e organizar as coisas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-23T10:45:00.000Z'::timestamptz),
  ('Lays Molina','layssmolina@gmail.com',NULL,'55999359899','1999-08-13',26,'Solteiro(a)','1','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1YnYKHpI5tV4re6MXWz9iqEcZtQRtmA6C',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Sirtec; Gestão de clientes e fornecedores; 2024; Contato direto com clientes e fornecedores, fechando contratos de prestação de serviço. | Corsan; Atendente; 2025; Atendimento ao cliente e operações em loja (trâmites administrativos, religações, ligações novas de água e outros)','Curso completo de informática, Pacote Office, Excel, Aux. Administrativo.',NULL,'Administrativa, Comercial, Estágio',NULL,NULL,'Agência de Empregos','Não fui','R$1.700,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-23T11:15:00.000Z'::timestamptz)
;

INSERT INTO young_talents.candidates (full_name, email, email_secondary, phone, birth_date, age, marital_status, children_count, has_license, city, photo_url, education, schooling_level, institution, graduation_date, is_studying, experience, courses, certifications, interest_areas, cv_url, portfolio_url, source, referral, salary_expectation, can_relocate, professional_references, type_of_app, free_field, status, tags, origin, created_by, original_timestamp)
VALUES
  ('Michel Renan Santos Ferreira','michel.rferreira@gmail.com',NULL,'51997181378','1988-05-03',37,'Solteiro(a)','2','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1uZ72Qewn9ETIzghjuE7NNLTaEYu5DrEp','Engenharia Civil','Pós-graduação Completa','PUC RS','2018-08-11','Sou formado','Experiência Profissional 
STN Empreendimentos e Construções – Porto Alegre/RS 
Engenheiro Civil Residente | Set 2024 – Fev 2025 
• Gerenciamento integral de obra industrial com estruturas pré-moldadas de 
concreto e metálicas, desde fundações até a entrega final. 
• Supervisão da execução física da obra e liderança de equipes 
multidisciplinares (engenharia, segurança, produção e logística). 
• Elaboração de cronogramas físico-financeiros, medições, compatibilização de 
projetos e contratação de fornecedores e empreiteiros. 
• Responsável pela definição de métodos construtivos, controle de qualidade, 
segurança do trabalho e atendimento às normas técnicas. 
• Realização de reuniões técnicas com cliente e fornecedores, garantindo 
aderência ao escopo e prazos contratuais. 
DIEFRA Engenharia – RS 
Engenheiro Civil – Planejamento e Fiscalização | Dez 2023 – Set 2024 
• Atuação estratégica no planejamento e acompanhamento da execução de 
obras de ampliação e retrofit de subestações de alta tensão (230kV, 69kV e 
13,8kV). 
• Elaboração e controle de cronogramas detalhados no MS Project, com 
atualizações semanais, histogramas e acompanhamento físico-financeiro. 
• Levantamento de quantitativos, apoio em orçamentos e controle de 
suprimentos. 
• Fiscalização técnica de campo para conferência da execução e elaboração de 
relatórios gerenciais e documentos técnicos. 
AESC (Grupo Hospitalar Mãe de Deus) – Porto Alegre/RS 
Engenheiro Civil | Ago 2023 – Dez 2023 
• Fiscalização e planejamento de obras civis e reformas em ambientes 
hospitalares com exigência de controle técnico rigoroso. 
• Equalização técnica de orçamentos, análise de propostas e supervisão da 
entrega de materiais. 
• Atualização das plantas “As Built”, relatórios técnicos e gestão dos 
cronogramas e fornecedores. 
• Participação em reuniões de alinhamento técnico e de planejamento com a 
equipe de engenharia da instituição. 
Autônomo – Engenharia Civil 
Engenheiro Civil | Abr 2023 – Ago 2023 
• Responsável pelo gerenciamento e execução de obras de infraestrutura 
hidrossanitária, incluindo instalação de EBE – Estação de Bombeamento de 
Esgoto. 
• Coordenação de equipes para execução de retrofit e ampliação de lojas 
comerciais no Shopping Boulevard Laçador. 
• Controle de contratos, medição de serviços e fiscalização de qualidade em 
campo. 
BSC Nova Ipanema – Porto Alegre/RS 
Engenheiro Civil – Gestão de Obras | Set 2018 – Jan 2023 
• Gerenciamento de múltiplas frentes de obras simultâneas: residenciais, 
comerciais e infraestrutura de loteamentos. 
• Gerenciamento integral de obra industrial com estruturas pré-moldadas de 
concreto e metálicas, desde fundações até a entrega final. 
• Elaboração de cronogramas, medições, orçamentos e relatórios de obra. 
• Coordenação da execução de infraestruturas urbanas (água, esgoto, elétrica, 
telefonia, drenagem e pavimentação). 
• Responsável por manutenção de prédios comerciais e supervisão técnica em 
reformas. 
• Apoio na elaboração de projetos arquitetônicos e civis, compatibilização de 
projetos e execução de “as built”. 
Assistente de Engenharia Civil | Jan 2018 – Set 2018 
• Apoio à gestão de obras e controle físico-financeiro. 
• Coordenação de equipes de campo e controle de contratos de empreiteiros. 
Estagiário de Engenharia Civil | Nov 2015 – Dez 2017 
• Elaboração de orçamentos, apoio no planejamento de obras e fiscalização de 
serviços executados. 
• Acompanhamento de obras de casas, prédios comerciais e loteamentos. 
Squadra Engenharia Ltda. 
Estagiário de Engenharia Civil | Mar 2014 – Set 2015 
• Fiscalização e controle de qualidade em obras de alto padrão residencial. 
• Acompanhamento do cronograma, controle de concretagem, preenchimento de 
planilhas de rastreabilidade e verificação de conformidade técnica. 
Kátedra Engenharia Construções 
Estagiário de Engenharia Civil | Nov 2013 – Mar 2014 
• Apoio à fiscalização da obra, controle de qualidade e levantamento de 
quantitativos. 
• Controle de materiais e equipamentos, suporte ao planejamento de serviços. 
MRV Engenharia 
Estagiário de Engenharia Civil | Abr 2013 – Set 2013 
• Acompanhamento e apoio técnico em todas as etapas de execução de 
empreendimentos populares. 
• Apoio à definição do cronograma, fiscalização de fundações, estrutura, 
alvenaria e instalações prediais.','MBA em Gerenciamento de Obras',NULL,'Engenharia',NULL,NULL,'Agência de Empregos','não','9.000,00','Sim','Sérgio Bottini ( Diretor presidente da Nova Ipanema empreendimentos) - 51 98417-9677
Tiago França (Gerente de obras da Diefra) - 51 62 98212-7738
Rafael Lorenzi ( Diretor da Lorenzi Engenharia) - 51 99651-9552','Engenheiro Civil','Tenho conhecimento em Autocad, MS Project, Excel, sobre cozinhar gosto de me aventurar as vezes, gosto de praia, já realizei trabalho voluntário, gosto de jogar futebol, e pratico algum esporte no momentos que tenho disponível, como corrida caminhada ou andar de bicicleta, recentemente me escrevi no curso de MBA em gerenciamento de projetos.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-23T12:51:00.000Z'::timestamptz),
  ('Henrique dos Santos Kramer','henriiquekramer.95@gmail.com',NULL,'55992025467','1995-11-19',30,'União estável','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1tWjXBL5WA6tXTM3GsFq52N9T7Cy4O6An','Engenharia Civil','Pós-graduação Completa','Universidade Federal de Santa Maria','2020-01-24','Sou formado','Finger Engenheiros Associados (2025 – atual)
Engenheiro Civil
Atuação com dimensionamento de estruturas para pontes e obras especiais. Desenvolvimento de relatórios de inspeção.

Complexo de Ensino Superior de Cachoeirinha (2023 – 2025)
Professor de ensino superior em disciplinas das áreas de construção civil e estruturas para os cursos de Engenharia Civil e Arquitetura e Urbanismo.

Escola Técnica Sul Ensino (2023)
Professor de ensino técnico no curso de Técnico em Edificações.

Instituto Tecnológico em Desempenho e Construção Civil (2022 – 2025)
Analista de engenharia civil, com foco em gerenciamento de projetos e avaliação de sistemas construtivos.

Exata Construções e Instalações Ltda (2020 – atual)
Engenheiro civil responsável por obras e projetos executivos.

Sustembio Serviços Ambientais (2019 – 2020)
Estagiário em engenharia civil, com atuação em projetos residenciais.

Caixa Econômica Federal (2016 – 2018)
Estagiário em engenharia civil, realizando avaliação de orçamentos e medições de obras públicas.',NULL,NULL,'Arquitetura, Engenharia',NULL,NULL,'Agência de Empregos','Não','R$10.000,00','Não',NULL,'Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-23T14:51:00.000Z'::timestamptz),
  ('Edelmira pascoal da luz','edelmirapascoald@gmail.com',NULL,'53999755735','1997-10-31',28,'Solteiro(a)','3','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=120gPqVO_clkAhNql9IuhAhFT6eGblwcI',NULL,'Ensino Médio Completo','Rede tc','2016-10-23','Não, no momento pausei/parei por um período.','Trabalhei cm auxiliar de cozinha, lá fruta Bagé, na área de vendas, tenho minha própria loja, travei cm caixa/balconista em padaria. 
Representante de vendas em clínica odontológica, vendedora externa.',NULL,NULL,'Marketing, Novos Negócios, Engenharia',NULL,'https://drive.google.com/open?id=1F0CdfUAMe04YbPrGOpYQ0DP3IENkw2r0','Google','Não','1700','Não',NULL,'Comercial','Trabalho cm minha própria loja online desde 2016, trago diversos produtos para meus clientes,  faço a entrega, estou sempre curando priorizar eles . 
Mas tbm, aderi o conhecimento na área de cozinha, limpeza, caixa/balconista, vendas externas 
Estou sempre procurando aprender, e e procurar novas oportunidades, para crescer na vida pessoal e financeira.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-23T15:06:00.000Z'::timestamptz),
  ('Jorge Valdecir May Junior','juniormay.arq@gmail.com',NULL,'51982009913','1999-04-29',26,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1l7kdGRyotLOqyinHV5JW7RxcGcUiEnHa','Arquitetura','Ensino Superior Completo','UFRGS','2024-08-31','Sou formado','1) Escritório de Paisagismo Susana Nedel Arquiteto. 2) Arquiteto. 3) de agosto de 2021 até então, tendo em vista que iniciei como estagiário e dei sequência como arquiteto formado desde 2024. No momento estou visando um próximo passo profissional. 4) Realizava gestão de projetos, desenho técnico, detalhamentos,
modelagem 3d, renderização, pós-produção
de imagens e produção e edição de vídeos
de projetos de paisagismo e de elementos
arquitetônicos em ambientes externos, bem
como planilhas quantitativas, controle de
orçamentos, acompanhamento de obras e pesquisas conceituais. Tive
a oportunidade de colaborar em empreen-
dimentos residenciais renomados de alto
padrão, em diferentes etapas de projeto','Direcionei meus estudos ao fim da graduação em projetos urbanos de média e grande escala, desenvolvendo no trabalho de conclusão de curso um projeto de parque urbano. Tenho curso de formação em paisagismo pela E.B.A.C e uma passagem com vínculo temporário pelo mestrado em planejamento urbano e regional do PROPUR/UFRGS.',NULL,'Arquitetura, Engenharia',NULL,NULL,'Instagram','Não','5000','Sim',NULL,'Auxiliar de projetos',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-23T16:16:00.000Z'::timestamptz),
  ('Wagner Cabral Bordignon','mwagnerbordignon@gmail.com',NULL,'51997778686','1981-04-22',44,'Casado(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1lDkwpe3NFdDKUfSv5oKkO3xRwZoDILJg','Engenharia de Controle e Automação','Pós-graduação Completa','PUCRS','2005-12-22','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Coordenador Multidisciplinar / Coordenador de Obras
FEMSA Coca-Cola – Porto Alegre/RS
dez/2024 – mai/2025
•        Planejou e controlou cronogramas de obras e reformas em áreas industriais e comerciais;
•        Analisou viabilidade técnica e financeira dos projetos;
•        Coordenou equipes de campo e empresas terceiras (elétrica, civil, HVAC, automação);
•        Supervisionou cumprimento de normas de segurança (NR12, NR35, NR10);
•        Monitorou uso de materiais e equipamentos, garantindo eficiência e redução de perdas;
•        Fiscalizou a execução de tarefas, assegurando qualidade e conformidade técnica;
•        Elaborou pareceres e relatórios técnicos para a alta gestão.
________________________________________
Engenheiro de Licitações | Supervisor Técnico
MGM Serviços Técnicos – Porto Alegre/RS
jan/2024 – set/2024
•        Planejou e acompanhou obras de infraestrutura e instalações elétricas;
•        Controlou escopo, cronograma e orçamento de obras comerciais;
•        Coordenou equipes nas áreas de elétrica, lógica e controle de acesso;
•        Atuou na gestão de resíduos e controle ambiental das obras;
•        Elaborou documentação técnica e relatórios de performance.
         
Analista de Planejamento de Obra - CMPC (dez. 2022 – jul. 2023)
•        Responsável pelo planejamento e controle da obra da unidade industrial acompanhando através da ferramenta MS Project, avaliações da curva S.
•        Desenvolveu planos de manutenção preventiva e preditiva, otimizando recursos e tempo de execução.
•        Atuou na análise crítica de falhas e elaboração de relatórios técnicos para suporte à tomada de decisão.
•        Acompanhou indicadores de performance (KPI''s) e apoiou na gestão orçamentária da área.
•        Interface direta com áreas operacionais, engenharia e fornecedores para alinhamento técnico e de cronograma.
_____________________________________________________________________________
Coordenador de Manutenção e Técnico de Planejamento - Gerdau  (mar. 2022 – nov. 2022)
•        Elaborou planos de manutenção industrial com foco em equipamentos pesados  linha de produção siderúrgica.
•        Acompanhou a execução dos serviços planejados, ajustando prazos e escopo conforme as necessidades operacionais utilizando a ferramenta MS Project.
•        Implantou o sistema SCRUM nas equipes de trabalho multidisciplinares.
•        Contribuiu para projetos de melhoria contínua e aumento da disponibilidade operacional.
•        Trabalhou em conjunto com a engenharia de manutenção para propor melhorias em processos e na gestão de ativos.
Engenheiro Responsável Técnico | Coordenador de Obras e Instalações
SJF Engenharia & MGM Serviços Técnicos – Porto Alegre/RS
dez/2013 – mar/2021
•        Coordenou obras comerciais e prediais de médio e grande porte;
•        Geriu contratos de SAS e SES no setor público, incluindo projeto e instalações na área da eng. civil, elétrica ( baixa e média tensão), automação ( telemetria), mecânica sistema de bombeamento, ambiental e segurança do trabalho.
•        Elaborou planos de execução e cronogramas detalhados;
•        Liderou treinamento e capacitação de equipes técnicas;
•        Implementou e controlou checklists de segurança e qualidade;
•        Atuou na fiscalização da execução técnica e monitoramento de padrões de qualidade;
•        Controlou custos e prazos de projetos diversos (elétrica, civil, automação, refrigeração).','Estou em fase final de curso de engenharia civil, tenho pós graduação em gestão da qualidade para o meio ambiente e mestrado em engenharia de minas, materiais e metalúrgica.',NULL,'Engenharia',NULL,NULL,'Instagram','Não','10000 pj','Sim',NULL,'Engenheiro Civil','Sou engenheiro de formação e curioso por natureza. Gosto de entender como as coisas funcionam — seja um sistema elétrico complexo, uma nova tecnologia de automação ou até um processo de gestão.
Durante os últimos anos, busquei ampliar meus conhecimentos em softwares de projeto e planejamento, como AutoCAD, MS Project e ferramentas de modelagem 3D.

Além da engenharia, tenho um lado prático e criativo: gosto de cozinhar e costumo experimentar receitas novas aos finais de semana — é o meu jeito de relaxar e exercitar a precisão fora do campo técnico.
Sou fluente em português e possuo conhecimento intermediário em inglês técnico, voltado especialmente para leitura de manuais e especificações de projetos.

Acredito que a combinação entre disciplina, curiosidade e capacidade de análise é o que mais me define — tanto no trabalho quanto na vida.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-23T20:57:00.000Z'::timestamptz),
  ('Tatiana moraes','tatiananazario33@gmail.com',NULL,'55991744298','1977-08-08',48,'Divorciado(a)','1','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1fb1VbWHfJmDeljMdLBqzJ8wnoQdffzDK','Letras espanhol','Ensino Superior Completo','Ufpel','2014-03-14','Sou formado','Farmácia panvel, atendente e caixa, 02/2023 até 05/2024, trabalhei com atendimento, limpeza e organização',NULL,NULL,'Administrativa, Comercial',NULL,NULL,'Facebook','Não','1700','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sempre trabalhei com atendimento e vendas, fiz trabalho voluntário em uma escola de educação especial, gosto de trabalhar em equipe e aprender coisas novas','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-24T01:41:00.000Z'::timestamptz),
  ('Rodrigo Da Silva Zardin','rodrigozardin@yahoo.com.br',NULL,'55996195279','1981-08-25',44,'Casado(a)','2','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=18eh8O6uIi0TWnnN6uKZJnfuflMTWQnGS','Corretor de Imóveis','Ensino Médio Incompleto','Ibrep','2025-12-15','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','CVA INVEST - Consultor de Investimentos - Identificando oportunidades de investimentos e novos clientes para o setor imobiliário. Desde 2022, continuo atuando..',NULL,NULL,'Engenharia',NULL,NULL,'Facebook','Não tenho o nome','Salário Regional + comissão sobre o resultado proporcionado','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-24T12:27:00.000Z'::timestamptz),
  ('Fabricio Ferreira Neto Barbosa','fabriciof1984@gmail.com',NULL,'51993037165','1984-10-17',41,'União estável','2','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1Umiwn3IuI83WReqmtGKAn6HoIQEdH9MZ','Engenharia Civil','Ensino Superior Completo','Uniritter','2021-10-21','Sou formado','Trabalho com a construcao civil desde 2006','Auto cad ,Ms project',NULL,'Engenharia',NULL,NULL,'Agência de Empregos','Nao','7000','Sim',NULL,'Engenheiro Civil','Gosto de trabalhar','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-24T16:31:00.000Z'::timestamptz),
  ('Andreice Jacques Casagrande','andreice.casa@gamail.com',NULL,'55999701107','1996-01-23',30,'União estável','1','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=157MHkhfLTaWWzge5uSmNxH86AuiHTQmM',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Trabalhei na Gerência de empresas familiares, Pobris Alegrete, Uruguaiana e Santa Maria no ramo alimentício, Marketing de redes sociais, e divulgação, balanço financeiro entre demais atividades dentro das lojas. 
Trabalhei com Marketing digital e vendas na empresa Rural Grife.
E por último trabalhei de Secretária Administrativa na Agropecuária São Jorge, onde fazia a organização de pagamentos, documentação e atividades burocráticas da Agropecuária. 
Tenho um ótima oratória, sou bastante comunicativa e possuo um imenso interesse pelo ramo imobiliário. Disponibilidade total de horário.','Curso Contabilidade EAD, no momento estou em pausa, quero retornar assim que arrumar um emprego. Possuo cursos de Fundamentos do Marketing Imobiliário, Negociação em Vendas e OKRS e Gestão Estratégica',NULL,'Administrativa, Comercial, Financeiro, Marketing',NULL,'https://drive.google.com/open?id=1wPh2nphtkAOhQqPZjbeFByc_tgNMNXZw, https://drive.google.com/open?id=1qoMTonzLm6e6SdkmUOGUJOqQvq4B-hAw, https://drive.google.com/open?id=1Ipf7kIBkgvKrRPyCodwJjYXJJJAD2HYd, https://drive.google.com/open?id=1Xd6wcHTV_EDf1HhB5BLPpS2GRLHsUvSS','Facebook','Não','R$2.300,00','Sim','Andrei Jacques Casagrande (55) 99944-1054
Etiane Fan Casagrande (55) 99695-2424
Claudia Carvalho da Silveira (55) 99992-2378','Comercial','Tenho facilidade com novas tecnologias e linguagens, estudo on-line outros idiomas, sou extremamente comunicativa e organizada, trabalho bem com metas, me considero uma pessoa focada, e com objetivos, tenho facilidade em me expressar, trabalho muito bem em equipe, gosto de resolver problemas.
Gostaria de entrar para a Young Empreendimentos pois acredito que tenho capacidade de somar com a empresa, assim como aprender muito vestindo a camisa!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-24T20:43:00.000Z'::timestamptz),
  ('biancamattos762@gmail.com','biancamattos762@gmail.com',NULL,'55992241447','2002-09-28',23,'Solteiro(a)','0','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1ovyxLyHXEQEAzQmY3Acna_nRdypwuQkp',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Trabalhei como auxiliar de cozinha em uma empresa chamada Gran Rangus, trabalhei desde 05/05/2024 até 12/09/2024','Estava cursando administração, mas por alguns motivos tive que pausar por um tempo.',NULL,'Administrativa',NULL,NULL,'Instagram','Não.','Salário conforme a categoria.','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho 23 anos e estou em buscar de uma melhor oportunidade de trabalho, para crescer profissionalmente, sou uma pessoa dedicada, responsável, comprometida e tenho muita vontade e curiosidade de aprender o que sei.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-24T21:52:00.000Z'::timestamptz),
  ('Karine Moiano Machado','karine.moiano.machado@gmail.com',NULL,'55991229591','1990-09-19',35,'Casado(a)','2','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1SLmZ3-U8V3NbjrMea8dsghe5PbIUPIE1','Comunicação','Pós-graduação Incompleta','Universidade federal do Pampa','2013-03-23','Sou formado','Escritório Oliveira e Marques Advocacia | 2023 – Atual (Home Office) 
SDR – Sales Development Representative 
• Prospecção ativa de leads e qualificação de oportunidades. 
• Agendamento e acompanhamento de reuniões com clientes. 
• Apoio às rotinas administrativas e organização de agenda de contatos. 
• Gestão de CRM, planilhas e relatórios comerciais. 

Senac São Borja | 12/2022 – 03/2024 
Auxiliar Administrativo I 
• Suporte administrativo aos setores de atendimento e secretaria. 
• Controle de documentos, matrículas e relatórios internos. 
• Apoio em campanhas de comunicação e atendimento ao público. 
• Organização de eventos e rotinas operacionais. 

Cartões Hipercard | 01/2014 – 04/2015 
Agente de Vendas 
• Atendimento ao público em pontos de venda e feiras. 
• Comercialização de cartões, empréstimos e produtos financeiros. 
• Negociação e fidelização de clientes. 

Mídia Sul Direct Mídia | 10/2012 – 04/2013 
Auxiliar Administrativo / Atendimento Publicitário 
• Atendimento corporativo e elaboração de orçamentos. 
• Acompanhamento de propostas e suporte à área comercial.','Sou formada em publicidade, com pós em gestão da experiência do cliente e estou finalizando o mestrado em comunicação e industria criativa',NULL,'Administrativa, Comercial, Novos Negócios',NULL,NULL,'Facebook','Não','2200','Não',NULL,'Comercial','Sou comunicativa, gosto do setor comercial, de ler, estudar, atualmente faço mestrado em comunicação e indústria criativa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-25T21:41:00.000Z'::timestamptz),
  ('Edilson De Oliveira Alves','edilsonoliveiraalves1314@gmail.com',NULL,'55991468687','2003-02-21',23,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1tg27Ieu7YIYTGj5frRwWW6XkVTYxHR_j','Tecnólogo em logística','Ensino Superior Completo','Faculdade Censupeg',NULL,'Sou formado','Iniciei minha carreira profissional como jovem aprendiz na empresa Marfrig, atuei 7 meses e fui efetivado, estou a 3 anos e meio na empresa, realizava atividades como coletor de dados e alocação de estoques no setor de congelados e resfriados, atualmente estou no setor de lavanderia na mesma empresa, estou cumprindo aviso prévio e em busca de novas oportunidades no mercado.','Curso atendente de farmácia 
Curso operador de caixa 
Curso comunicação e expressão 
Curso comissário de voo (cursando)',NULL,'Administrativa, Comercial, Estágio, Marketing',NULL,NULL,'Instagram','Não','R$1.900,00','Sim',NULL,'Comercial','Sou uma pessoa muito dedicada com meus afazeres e compromissos, tenho bastante carisma, criatividade, facilidade em me comunicar com as pessoas, tenho pouco conhecimento em software mas sempre disposto a aprender, gosto de praticar a dança sou bailarino, aprecio muito a aviação também.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-25T23:19:00.000Z'::timestamptz),
  ('Mylena Couto','alessandracouto001@gmail.com',NULL,'51993566790','1998-11-30',27,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1LtlcMZiJNijvzI51KJwz0dG_uVAQSfk4','Administração de empresas','Ensino Superior Incompleto','Anhanguera','2028-07-12','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Ajl comércio de alimentos, auxiliar administrativo, minhas atividades eram contas a pagar e receber, admissão e demissão de pessoal, cuidava da partedo financeiro e de departamento pessoal, 25/07/2024 a 19/03/2025
Prefeitura de Porto alegre( estágio), 
Era responsável pelo atendimento do contribuinte e emitir guias de IPTU, 01/04/2025, meu contrato acaba agora em novembro.','Excel ( fundação Bradesco)
Atendimento ao público (fundação Bradesco)
Assistente administrativo (ifrs)
Power BI( Santander academy)',NULL,'Administrativa',NULL,'https://drive.google.com/open?id=1SbZlqsbNlbM8vgjw8zN209mwCUv0zKd3','Instagram','Não','1600','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-27T11:27:00.000Z'::timestamptz),
  ('Denilson Freitas Moraes','denilsonfreitasmoraes20@gmail.com',NULL,'55999535593','1998-12-24',27,'Solteiro(a)','0','Não','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1uJqSB7mr4ptJNEJuHnPpZD3BrhfeGa0Q','Administração de empresas','Ensino Superior Completo','Senac Cruz Alta','2025-11-07','Sou formado','Líder de produção simbiose 1ano e 6 mês','Técnico em administração tem 1 ano e 3 mês',NULL,'Administrativa, Comercial, Engenharia',NULL,NULL,'Instagram','Não','2.300','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-27T13:53:00.000Z'::timestamptz),
  ('Natália Elisabeth Schroeder','nata.schroeder@hotmail.com',NULL,'54999648477','1998-04-24',27,'União estável','0','Sim','Carazinho/rs','https://drive.google.com/uc?export=view&id=1lNdXK1ZStTD9i6rZuMezXTXc9-VnBWaV','Engenharia Civil','Pós-graduação Completa','IMED','2021-01-04','Sou formado','1) Nome da Empresa: Construtora Del Rijo S/A
2) Cargo: Engenheira Civil
3) Período: Fevereiro de 2025 – Atual
4) Principais atividades:
Atuação na unidade de britagem, com foco no controle de custos de obras de pavimentação e gestão técnica de projetos internos. Responsável pela elaboração e acompanhamento de reformas e obras de manutenção no pátio industrial, apoio em processos licitatórios e documentações técnicas, além de planejamento e acompanhamento de serviços de campo.
Também desenvolvo projetos de melhoria para áreas de convivência e infraestrutura, aplicando conceitos de sustentabilidade e reaproveitamento de materiais.
Experiência em acompanhamento de obras de pavimentação, planejamento físico-financeiro, medições de empreiteiros, e elaboração de relatórios técnicos e memoriais descritivos.


1) Nome da Empresa: Prefeitura Municipal de Carazinho/RS
2) Cargo: Estagiária de Engenharia Civil
3) Período: Agosto de 2019 – Dezembro de 2020
4) Principais atividades:
Apoio na fiscalização de obras de infraestrutura urbana e pavimentação, controle de materiais, leitura e conferência de projetos executivos, e auxílio na elaboração de planilhas orçamentárias.
Participação no acompanhamento de execução de base e revestimento asfáltico, bem como no controle de qualidade dos serviços realizados.


1) Nome da Empresa: Prefeitura Municipal de Carazinho/RS
2) Cargo: Cargo em Comissão 
3) Período: Janeiro 2021 – Dezembro de 2024
4) Principais atividades:
Apoio na fiscalização de obras de infraestrutura urbana e pavimentação, controle de materiais, leitura e conferência de projetos executivos, e auxílio na elaboração de planilhas orçamentárias.
Participação no acompanhamento de execução de base e revestimento asfáltico, bem como no controle de qualidade dos serviços realizados.','Possuo pós graduação em avaliação e perícia de engenharia, e atualmente estou cursando pós graduação em engenharia de custos e orçamento.',NULL,'Licenciamentos, Engenharia',NULL,NULL,'Instagram','Não','R$2.500,00','Não',NULL,'Engenheiro Civil','Sou engenheira civil, com interesse em aprimorar continuamente meus conhecimentos nas áreas de projeto, controle de custos e gestão de obras. Tenho facilidade em trabalhar em equipe, boa organização e atenção aos detalhes.

Possuo domínio intermediário/avançado de softwares como AutoCAD, Excel (planilhas de controle e análise de custos), REVIT, Eberick, além de experiência com elaboração de relatórios técnicos e documentos de obras.

Tenho inglês intermediário e estou sempre em busca de novos aprendizados. Gosto de desafios, de encontrar soluções práticas e sustentáveis, e de colocar em prática o que aprendo no dia a dia.

Nas horas livres, gosto de cozinhar, cuidar de plantas e cuidar da casa, atividades que me ajudam a manter o equilíbrio e a criatividade.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-27T14:06:00.000Z'::timestamptz),
  ('Raphael Antunes','raphaoftel@gmail.com',NULL,'55991477865','1982-10-07',43,'Solteiro(a)','2','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1Q3io7h441VCDCg7rAuU7uXe9soBZ0Upw','Administração de empresas','Ensino Superior Incompleto',NULL,'2028-10-27','Não, no momento pausei/parei por um período.','Currículo',NULL,NULL,'Administrativa, Comercial, Financeiro, Marketing',NULL,NULL,'Instagram','Não','3000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-27T14:50:00.000Z'::timestamptz),
  ('Alejandro Nicolas Azevedo Silveira','nicosilveira406@gmail.com',NULL,'51997053254','2001-03-08',24,'Solteiro(a)','0','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1cK-OuoyJ6e1_HQiD_oexXgX0j67DVwBs','Informática e atendimento e vendas!','Ensino Médio Completo','Barão de Aceguá','2022-11-22','Sou formado','Trabalhei de auxiliar administrativo e de operador de caixa!','Informatica- Atendimento e vendas!',NULL,'Administrativa, Comercial, Financeiro, Novos Negócios',NULL,NULL,'Instagram','não','1.700,00','Não',NULL,'Promotor de Vendas',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-27T21:47:00.000Z'::timestamptz),
  ('Iago Barbosa da rosa','iagobarbosar@gmail.com',NULL,'51998552218','1998-05-18',27,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1jSSHsHMCEm17Mpj1esFPPMrOKDEMmWrF','TTI / processos gerenciais','Ensino Superior Incompleto','Escola da república / unifatecie','2026-11-01','Não, no momento pausei/parei por um período.','1-Cherutti imóveis 
2-Corretor imobiliário
3- 06/2025 - 08/2025
4-Corretagem, atendimento ao cliente, operador de drone e fotografias 

1- Iesa Jeep
2- Mecânico ADM
3- 06/2022 - 01/2025
4- manutenção, atendimento ao cliente, adm/gestão de setor, consultor de vendas',NULL,NULL,'Administrativa, Comercial, Marketing',NULL,NULL,'Facebook','Não','1900','Não',NULL,'Consultor de vendas',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-28T11:22:00.000Z'::timestamptz),
  ('Kethelen Cristine Casqueiro Soares','kethelensoares817@gmail.com',NULL,'55984081336','2005-03-24',20,'Solteiro(a)','1','Não','Itaqui/RS','https://drive.google.com/uc?export=view&id=1AbPOTAgMIeIzctckdKYWTK9Tlo9kHIUA',NULL,'Ensino Médio Completo',NULL,'2023-12-16','Não, no momento pausei/parei por um período.','Supermercado Baklizi 
Operador de Loja/Caixa
19/03/2025
08/09/2025',NULL,NULL,'Comercial',NULL,NULL,'Instagram','nao','conforme a empresa','Não',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-28T13:21:00.000Z'::timestamptz),
  ('andrieli dos santos Fernandes','andrielesantosfernandes17@gmail.com',NULL,'55991382125','2000-12-01',25,'Solteiro(a)','1','Não','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1dVpxuWeydNHzif8me6Qwaxsc8eAdGL8X','Confeitarias','Ensino Médio Completo','Faculdade Unitá',NULL,'Não, no momento pausei/parei por um período.','1 empresa são João. Atendente. 2 Pompéia loja. Operadora de caixa',NULL,NULL,'Administrativa, Comercial, Financeiro',NULL,NULL,'Instagram','Não','2000','Sim',NULL,'Vendedor',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-28T16:32:00.000Z'::timestamptz),
  ('Ritiele Cafarate Minhos','cafarater@gmail.com',NULL,'55997106526','1994-04-20',31,'Casado(a)','1','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1_UxDJsittiPXxqbsv66q54DmaIw5eWfc',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','1) Old center 2) auxiliar de cozinha 3) 01/03/2024 à 10/09/2024',NULL,NULL,'Administrativa',NULL,NULL,'Facebook','Não','1518','Sim',NULL,'Estágio Financeiro','Sou uma pessoa bem comunicativa, aprendo rápido, me dou muito bem com a tecnologia.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-29T12:57:00.000Z'::timestamptz),
  ('Jeferson Moroni Martins Balbueno','jeffbalbueno@gmail.com',NULL,'55991048682','1989-06-14',36,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1QL-8IsIqP1zPIQPG5k5NbVXOdV3Eaxol','Comunicação','Ensino Superior Completo','Universidade Federal do Pampa','2016-03-15','Sou formado','1) Assistente de Marketing – Pirahy Alimentos (Mar/2025 – ago/2025)

Negociei com influenciadores, gerando 200 mil visualizações (25x mais que campanhas anteriores da empresa) com apenas 30% do investimento usual.

Coordenei produção de estandes em feiras e premiações regionais.

Atuei em planejamento, redes sociais, eventos corporativos, live marketing e campanhas virais.

Destaques: Redigi uma peça audiovisual para o Masterchef 2025, interpretado por Éric Jacquin e transmitido em rede nacional. Também fomos vencedores do prêmio Top de MKT – 2025, da ADVB/RS, na categoria Agro, ao qual participei criando o argumento do case e defendendo-o diante da comissão julgadora.

2) Agente de Locação e Marketing – Imobiliária Ícaro (2024 – 2025)

Aumentei em 90% o número de locações já no 1º mês com estratégias digitais até então não utilizadas pela empresa.

Produzi mídias para redes sociais, atualizei o site e gerei leads qualificados.

Atuei em atendimento, negociação e fechamento de contratos, além de análise de processos internos e design.

2) Produtor de Eventos – Rosa Fatho Eventos Criativos (2023)

Produzi eventos corporativos e sociais de grande porte.

Atuei em orçamentos, emissão de NF e logística de execução.

Destaque: eventos de grande porte com artistas renomados como Leonardo e João Bosco & Vinícius.

3) Analista de Marketing – Elo Soluções Logísticas Integradas (2022 – 2023)

Sugeri melhorias que levaram à obtenção de certificações internacionais e abertura de novos negócios.

Durante minha passagem, o faturamento cresceu de R$ 50 mi para R$ 250 mi.

Atividades: social mídia, endomarketing, eventos, design, fotografia, e-mail marketing, Google Analytics e produção de vídeos.

4) Assistente de Marketing – Lotisa Empreendimentos Imobiliários (2021 – 2022)

Negociei com fornecedores, gerando redução de custos significativa.

Atividades: e-mail marketing, eventos, tráfego pago, design de materiais e outdoors.

5) Redator – Suprema Propaganda (2021)

Produção de mais de 5 mil palavras diárias para blogs e redes sociais.

Conteúdos otimizados para SEO no WordPress, e-mail marketing e campanhas digitais.',NULL,NULL,'Administrativa, Comercial, Marketing',NULL,NULL,'Facebook','Não fui indicado.','R$3.000,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou um profissional dedicado, criativo e focado em resultados. Minha motivação diária é sempre fazer o melhor que posso e ser reconhecido com alguém que agrega valor e faz a diferença. Espero contribuir muito com a Young, desenvolvendo projetos e estratégias que poderão entrar para a história da empresa!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-29T13:48:00.000Z'::timestamptz),
  ('Taiane Victoria','taianevictoria123@gmail.com',NULL,'55999064225','2001-08-10',24,'Solteiro(a)','0','Não','Itaqui/RS','https://drive.google.com/uc?export=view&id=19BGFmaHgGWgzWBtwHGjezqUXBPkxOmDD','Gestão Comercial','Ensino Superior Incompleto','Uninter','2026-06-10','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Empresa: Rusinek Materiais de Construção
Cargo: Auxiliar Administrativo
Função desempenhada: Atendimento ao público, controle de vendas, realizações de relatórios, planilhas, boletos, caixa e lançamento de controle do horário dos pontos dos funcionários.
Empresa:Empire Representações – Representação
Cargo: Consultora Comercial e SDR 
Função desempenhada: Representação comercial fábricas, preenchimento de
CRM, gestão de indicadores, preenchimento de planilhas, relatórios, reuniões semanais para gestão de números, planejamento, estruturação e desenvolvimento de estratégias e viagens para visitar clientes.
Fábricas Representadas: Mercoplasa, Avanti Polímeros, Harcen Medalhas e
Troféus e Monaro Sports.
Empresa: Imaz – Gestão de Banco de Imagens
Cargo: SDR – Representante de Desenvolvimento de vendas 
Função Desempenhada: Contato ativo através do LinkedIn e e-mail, criação de listas
de prospecção, gestão de planilhas, CRMS, reuniões e relatórios mensais.','Gestão Financeira, Comunicação e Oratória, Prospecção e Conversão de Vendas, PNL para Líderes, Excel Avançado, entre outros.',NULL,'Administrativa, Comercial, Estágio, Financeiro',NULL,NULL,'Instagram','Não','1700','Sim','Rusinek Materiais de Construção - 55 99997-2363','Estágio Financeiro','Me chamo Taiane, tenho experiência na área administrativa e atualmente estou cursando o ensino superior em Gestão Comercial. Ao longo da minha trajetória, desenvolvi habilidades que me permitem contribuir de forma organizada, eficiente e responsável com as rotinas do setor administrativo.
Tenho experiência com elaboração e gestão de planilhas, controle e análise de relatórios, organização de documentos físicos e digitais, apoio em reuniões e acompanhamento de tarefas operacionais. Atuei também com atendimento ao público, controle de agenda e suporte às demandas diárias do time.
Possuo conhecimento prático em CRMs como RD Station, Ploomes, Multiplier e Zenvia, nos quais realizei prospecção ativa, atendimento ao cliente, acompanhamento de carteira e realização de ligações comerciais. Além disso, busco sempre aprimorar minhas competências em comunicação, gestão de tempo e resolução de problemas.

Sou uma profissional comprometida, proativa e com facilidade para trabalhar em equipe, sempre em busca de contribuir com o bom desempenho e crescimento da empresa. Acredito que posso agregar valor ao time, colocando em prática minha experiência e disposição para aprender constantemente.

Estou à disposição para conversarmos melhor!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-29T13:48:00.000Z'::timestamptz),
  ('Rosiane Bruck Ferreira','rosianebruck88@gmail.com',NULL,'55996723554','1988-08-14',37,'Solteiro(a)','1','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1YVwrtVUCX1ID__NAHwvfs48jgqKLSu-5',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','SVP Agrícola Ltda, auxiliar administrativo, 04/2024 a 09/2025',NULL,NULL,'Administrativa, Comercial, Financeiro, Novos Negócios',NULL,NULL,'Agência de Empregos','Não','3000','Sim',NULL,'Disponível para novas oportunidades','Tenho mais de 15 anos de experiência na área administrativa, domino Excel, word e outros campos na informática, sou formada em técnico em segurança do trabalho.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-29T16:35:00.000Z'::timestamptz),
  ('Natalia Guedes Correa','nataliaaguedescorrea@gmail.com',NULL,'55992261094','2001-08-18',24,'Solteiro(a)','0','Não','Itaqui/RS','https://drive.google.com/uc?export=view&id=1rJBdZEPSN7tTpINmj-l4DM_fHQ9nN2VG','Administração de empresas','Ensino Superior Incompleto','Anhanguera - Polo São Borja','2030-05-06','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Empresa: Explorer call center - Porto Alegre RS 
Cargo: Assistente de escritório.
Período: 11/2017 até 06/2018

Empresa: Kuchak comercial de alimentos LTDA 
Cargo: atendimento ao cliente.
Período: 07/2020 até 03/2021','Tenho certificado em Assistente em Recursos Humanos. Tenho comprovado em carteira assinada em assistente de escritório.',NULL,'Administrativa, Estágio, Marketing',NULL,NULL,'Instagram','Não fui indicada.','2.000','Sim',NULL,'Estágio Administrativo','Tenho experiência em atendimento ao público e no setor administrativo. Tenho conhecimento com os seguintes programas: Excel, word, OneNote e drive.
Nível intermediário em inglês, sei me comunicar, ler e entender o idioma.
Estou cursando Bacharelado em Administração pela instituição Anhanguera, polo São Borja.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-29T17:56:00.000Z'::timestamptz),
  ('Guilherme Da Silva Brum','brum9802@gmail.com',NULL,'984536404','1998-09-12',27,'Casado(a)','0','Não','Itaqui/RS','https://drive.google.com/uc?export=view&id=11-_ana3qItinXjQPKFLRpMxGO_0NoTZW',NULL,'Ensino Médio Completo',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Josapar-Auxiliar de produção 
2021/2022','Assistente administrativo',NULL,'Administrativa, Estágio',NULL,NULL,'Facebook','Não','1800','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-29T17:58:00.000Z'::timestamptz),
  ('Dariele Silva Falcao','darisf476@gmail.com',NULL,'55999915502','1993-10-04',32,'Solteiro(a)','0','Não','Itaqui/RS','https://drive.google.com/uc?export=view&id=1k6vRUe8AF06tF_9AUdPCIO2i7W5KaqLd',NULL,'Ensino Médio Completo',NULL,NULL,'Sou formado','Trabalhei na OAB subseção de Itaqui, em 2022. Atuava na área administrativa em digitalizações de processos, com cópias em xerox, atendimento ao cliente! Comecei em fevereiro 2022, sai em Setembro de 2022.
Trabalhei no Escritório de advocacia FG em 2024 atua na área administrativa também! 
Com fechamento de contas a pagar e receber, atendimento ao cliente via presencial ou por telefone, protocolações de processo, verificações de pastas e aberturas de diligências!',NULL,NULL,'Administrativa, Comercial, Estágio, Financeiro',NULL,NULL,'Facebook','Nao','R$1.700','Não',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-29T18:21:00.000Z'::timestamptz),
  ('Paulo Ricardo Justen Micheli','pricardojusten@gmail.com',NULL,'55996283657','1988-11-07',37,'Solteiro(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1d05XgGG5SG2KG5OUTJXtIjTmem-fGPqd',NULL,'Ensino Superior Incompleto',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Mercado de Mattos, atendente, 2014 à 2021.
Restaurações Guajuvira, aux.de marceneiro, 2009 à 2014','Tecnico em edificações e Técnico em Design de Interiores',NULL,'Estágio, Engenharia',NULL,NULL,'Facebook','Não','R$2.000,00','Sim',NULL,'Estágio Engenharia e/ou Arquitetura','Conhecimento em Autocad, Revit, Sketchup, Enscape.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-29T18:39:00.000Z'::timestamptz),
  ('Kayline de Souza Bicca','kaylinebicca1612@gmail.com',NULL,'55996427142','2003-12-16',22,'Solteiro(a)','1','Não','Itaqui/RS','https://drive.google.com/uc?export=view&id=13aBYcoCJA7yfbX2MHdm72PjKxaklaKus',NULL,'Ensino Superior Incompleto','Cruzeiro do Sul Virtual','2026-07-29','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Banco Estadual do Rio Grande do Sul — Estágio (Jun/2024 - Jun/2025) 
Inicialmente atuei na rotina do autoatendimento do banco, ajudando os clientes nos caixas eletrônicos e em serviços primários de atendimento como emissão de faturas e extratos, posteriormente comecei o atendimento aos clientes jurídicos do banco, auxiliando o gerente de contas jurídicas, exercia funções de abertura de conta, venda de cartões de crédito, prospecção de clientes, atividades relacionadas às maquinas de cartão, entre outras atividades como arquivo de contratos, organização de planilhas de controle, digitalização de documentos, atendimentos via e-mail, whatsapp corporativo e ligações.

Prefeitura Municipal de Itaqui — Estágio Assistente Administrativo (Mar/2023 Jun/2024)
Atuava no setor de arrecadação do município, da secretaria municipal da fazenda e desenvolvimento econômico. Atendimento ao público geral, realizava parcelamentos de divida ativa, impressão de carnês de IPTU, emissão de guias de pagamento de diversos tipos, também fazia atendimentos via e-mail, whatsapp e ligações.

Camil Alimentos S.A — Jovem Aprendiz (Nov/2019 - Nov/2021)
Fazia parte do setor SSMO (saúde, segurança e meio ambiente), auxiliava os técnicos em segurança do trabalho e tecnicos em enfermagem nas rotinas administrativas da empresa, arquivava documentos, organizava tabelas de dados, fazia organização e distribuição dos uniformes e itens de EPI para os funcionários.','Gostaria de destacar os cursos de informática basica e aprendizagem profissional em comércio de bens, produtos e turismo.',NULL,'Administrativa, Comercial, Estágio, Financeiro',NULL,NULL,'Facebook','não','Remuneração compatível ao cargo que exercerei.','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Gostaria de destacar algumas habilidades pessoais, como: 
Proatividade e facilidade de adaptação; Aprendizagem rápida e dedicação;
Organização de tarefas; 
Trabalho em equipe;
Cumprimento de metas e prazos.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-29T19:19:00.000Z'::timestamptz),
  ('Raquel Ferreira Rodrigues','rodriguesraqueljulia@gmail.com',NULL,'53999632772','1983-01-15',43,'Solteiro(a)','2','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=16SJ5nJrPu3IbLtRgNy8ScCa2fU4Sq1Db',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Adicionei no portfólio de trabalho meu currículo.','Vigilante',NULL,'Comercial',NULL,'https://drive.google.com/open?id=1ufQ8DlLh42wUC303ZtcHAG23PnoNS0-j','Indicação','Evelise','R$2.000,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa simpática,e gosto muito de pontualidade,sou bem falante,e aprendo rápido.
Amo estar com minhas filhas e família.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-29T20:42:00.000Z'::timestamptz),
  ('Gabriela Coffi Weber','gabicoffi@gmail.com',NULL,'55999853195','2002-07-16',23,'Solteiro(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=18O3Y7yeBOumj-lktWx-acCrX15lMJup_','Ciências Contábeis','Ensino Superior Incompleto','Cruzeiro Do Sul','2026-12-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Assistente de escritório - Patrícia Wurfel Advocacia (de 03/02/2025 há 23/06/2025)
Atendimento ao cliente - Chomax Comercial Ltda (15/06/2024 há 05/11/2024)
Vendas e Caixa - Lottus Acessórios (01/12/2022 há 11/11/2023)
Consultora de Vendas - O Boticário (02/09/2022 há 30/11/2022)
Atendente - Reino Doce/Chocolates Gramadenses - Free Lance em 2022
Vendedora Capeta Surf Skate - Free Lance em 2021','Atualmente estou cursando ciências contábeis e gestão financeira na faculdade Cruzeiro do
Sul. Mas tenho alguns cursos como administração, informática básica envolvendo word, power point e excel. Além experiências profissionais no mercado de trabalho como atendimento, vendas, caixa e assistente de escritório de advocacia.',NULL,'Administrativa, Estágio, Financeiro',NULL,NULL,'Instagram','Não','R$1.840,00','Sim','Gabriele Wandcheer (Patrícia Wurfel Advocacia) - 55992629796
Maxivan (Chomax Comercial) - 55999288650','Estágio Financeiro','Sou uma pessoa muito comunicativa e extrovertida. Gosto bastante de aprender, conversar, sonhar alto, conhecer pessoas novas, me manter ocupada e também gosto de pets.
Desde os meus 13 anos eu sempre acompanhei minha mãe no trabalho dela (representante comercial e promotora) para conhecer o mercado de trabalho. 
Busco sempre ajudar a empresa em que estou inserida e além disso, o crescimento profissional e pessoal.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-29T22:04:00.000Z'::timestamptz),
  ('Teylor Almeida de Carvalho','twialc@outlook.com',NULL,'48991763485','2005-06-01',20,'Solteiro(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=16Jda2L1Y3a2VQn17_8sH3ONam6NOglrp',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','RAROZ ALIMENTOS LTDA. Jovem Aprendiz - Assistente Administrativo | FEV-DEZ/2024  
• Emissão de Notas Fiscais para pessoas física e jurídica;  
•  Acompanhamento de pedidos e entregas de mercadorias;  
• Organização de documentos físicos e digitais, facilitando o acesso às informações;  
• Apoio às atividades do setor de faturamento e vendas. 

Grazziotin S.A Orientador de Vendas | ABR/2025 até o momento  
•  Atendimento ao cliente com foco em excelência e personalização;  
• Organização no setor de vendas para otimização e exposição dos produtos;  
• Registro e finalização de compras, oferecendo condições facilitadas de pagamento; 
• Apoio ao setor financeiro na cobrança de clientes inadimplentes.','Administração e Mercado de Trabalho – Futuro Cursos Preparatórios  
Departamento Pessoal – Futuro Cursos Preparatórios  
Informática Básica e Avançada - Futuro Cursos Preparatórios',NULL,'Administrativa, Estágio, Marketing',NULL,NULL,'Facebook','Não','1700','Sim','(015 55) 99673-2490 - Geanne Rebelo (Raroz)
(015 55) 98409-8890 - Gabrielle Costa (Tottal / Grazziotin)','Quero inscrever-me no banco de talentos da Young!','Tenho muita facilidade em aprender coisas novas. Sou muito proativo e empenhado nas demandas apresentadas. Gosto de conversar em outros idiomas como inglês e espanhol e amo trabalhar com tecnologia, sempre com responsabilidade. Desenvolvi um talento em vendas que nem eu mesmo sabia que tinha.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-29T23:10:00.000Z'::timestamptz),
  ('Laurise Aires Patta','lau.patta12@gmail.com',NULL,'55997125496','1998-04-27',27,'Casado(a)','1','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1A5yu3k15vqP2Z3pDxgsn64sKxneLk4_2',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Loja Bom Ti Ver - Vendedora 

Loja Mundo do brinquedo - Vendedora - Outubro de 2016 até Março 2017 - Venda e empacotamento de mercadoria, contagem de estoque.

Embreagens Metalmax- Auxiliar Administrativo- Cuidar da parte financeiro da empresa, emissão de NF-e, empacotamento de peças e atendimento ao público.',NULL,NULL,'Administrativa, Estágio, Financeiro',NULL,NULL,'Facebook','Não','A combinar','Não',NULL,'Estágio Administrativo',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-29T23:16:00.000Z'::timestamptz),
  ('Luis Eduardo cortelini de cortelini','e.corteline@gmail.com',NULL,'55999259321','1981-07-31',44,'Solteiro(a)','2','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1w-99VueSLYVSec3xKrUR7I2yPd7VQQee','Administração de empresas','Ensino Superior Completo','Unopar','2013-02-01','Sou formado','Frigorífico Mercosul 
Controle de qualidade 
01/03/2006
01/11/2006

Angelos assistência familiar
Coordenador de equipe de vendas 
09/2007
11/2008

Agência de habilitação( correspondente negocial caixa econômica federal)
Sócio proprietário 
01/2009
12/2013

Acl loterias( loterica caixa econômica federal)
Sócio proprietário 
02/2014
12/2018

Malharia rizzatti( empresa de confecção)
Setor administrativo e negocial
03/2018
03/2021

Ritt empreendimentos imobiliários 
Setor financeiro e controladora
07/2021
05/2024

Mercado stok center
Administrativo noturno, estoque, reposição 
05/2025',NULL,NULL,'Comercial',NULL,NULL,'Indicação','Sim, Caroline volpato','Entre R$ 1800,00 à R$ 3000,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-29T23:25:00.000Z'::timestamptz),
  ('Tainara da Costa Silveira','taicsilveira2@gmail.com',NULL,'55996622283','1999-01-17',27,'Casado(a)','2','Não','Itaqui/RS','https://drive.google.com/uc?export=view&id=14ueOhXsoDyLkEYLa-3Jpx2In6thFx4Nj',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Hospital São patrício - (2) auxiliar de secretária - (3) 15/04/2021- 15/07/2022',NULL,NULL,'Administrativa',NULL,NULL,'Instagram','Nao','1780','Não',NULL,'Administrativo ou recepcionista',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-30T11:49:00.000Z'::timestamptz),
  ('Rafael Zilli','rafaelvieirazilli@outlook.com',NULL,'55984044991','1983-01-07',43,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1VkcoWDVox2f4Gld36Xg1AxJS0ivDL7Xn','Administração de empresas','Ensino Superior Completo','IESA Santo Ângelo','2010-11-30','Sou formado','VW Mecautor São Borja -  Cargo Consultor de Vendas  , 
Perfil Comercial Focado no Melhor Atendimento e Resultados!','Vendas , Neuro Vendas , Técnicas de Negociação FGV , MkT Virtual',NULL,'Comercial, Marketing',NULL,'https://drive.google.com/open?id=1ClMnELQS2JII2n3vOqoYjDIuU2WA9lOe','Agência de Empregos','Não','4000','Sim','Antigo Gerente Mecautor Matheus Pavinatto 55 999 920 020','Vendas !',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-30T13:30:00.000Z'::timestamptz),
  ('Renata Rothen Prudente','renatarothenprudente@gmail.com',NULL,'051980237322','1987-01-19',39,'Casado(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1ais3txVqTEaPzJAenQcRdoySw2pYNRKr',NULL,'Ensino Superior Incompleto',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Sempre trabalhei na área administrativa e na área comercial. Fiz o curso de TTI, então tenho Creci ativo. Hoje trabalho na Escola Jovem Profissional já fazem 2 anos no Setor Comercial','Tenho Creci',NULL,'Administrativa, Comercial',NULL,NULL,'Agência de Empregos','Não','A combinar','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-30T13:35:00.000Z'::timestamptz),
  ('Vanessa Doralice Martins Vilhena da Silva','vanessa_vmartins@outlook.com',NULL,'51998520278','1995-09-30',30,'União estável','2','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1A_5Bh33sa_AVJZtzgLycYPa39ny6ANyI',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Trabalhei na MP Coelho tintas, fui vendedora e gerente, fechava orçamentos, planilhava, gerenciava os problemas em loja e fora,  atendia ao público, fazia tintas, vendia on-line, atendia em várias áreas, trabalhei durante três anos.
Atualmente trabalho com público na churrascaria Vitória',NULL,NULL,'Comercial',NULL,NULL,'Indicação','Nao','2500','Não','Mauricio Coelho 519985046928','Comercial','Adoro atender pessoas, tenho muita paciência e respeito com todos, estou começando o curso de libras, amo grandes metas e projetos','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-30T13:51:00.000Z'::timestamptz),
  ('Elessandra Proença Carneiro','alehcarneiro25@gmail.com',NULL,'55996097920','1997-09-22',28,'Solteiro(a)','3','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=16sXj_eN0Gd8UCPEX16SuAajNa_F6cd1F',NULL,'Ensino Médio Incompleto','Escola estadual de ensino médio tricentenário',NULL,'Não, no momento pausei/parei por um período.','Trabalhei como cuidadora de idosos, trabalhei em padaria, trabalhei como atendente em um bar, trabalhei como atendente em um app de Uber.',NULL,NULL,'Administrativa, Comercial, Financeiro, Marketing',NULL,NULL,'Instagram','Não','Mil e duzentos reias ( um salário mínimo) no mínimo.','Sim','Cristiano +55 55 99192-4910 atendente no App de Uber do bah mobilidade urbana','Quero inscrever-me no banco de talentos da Young!','Me chamo Elessandra, tenho 28 anos tenho 4 filhos estou solteira moro com meus pais e irmãos meus filhos não moram comigo por motivos mais pessoais. Não tenho muita experiência pois estou ainda cursando o 2° ano do ensino médio, e estou a procura de uma oportunidade melhor moro em São Borja tem 3 meses sou natural de Itaqui-RS','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-30T14:36:00.000Z'::timestamptz),
  ('Eric Luan Dinat Alves','ericluandinat18@gmail.com',NULL,'55997235905','2002-05-29',23,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1tlApGqUw_qXlgeycymi40Wd7QhkQO5Xo',NULL,'Ensino Médio Completo',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Trabalhei de Abril de 2022 a Setembro de 2022 na empresa The black Beef, eu era garçom e também operava no caixa. De setembro de 2022 a julho de 2024 trabalhei como vendedor nas Lojas Gang, atendia o público, entregava metas diariamente e prospectava clientes através do WhatsApp. Atualmente trabalho na empresa Vero Internet a 1 ano e 4 meses, atuo na área de vendas, prospecto cliente e entrego metas mensalmente.',NULL,NULL,'Comercial',NULL,NULL,'Facebook','Não','1800 mensal','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-30T14:41:00.000Z'::timestamptz),
  ('Yasmin da Silva Abreu.','conta.yasmin.abreu@gmail.com',NULL,'51992920272','2003-03-20',22,'Solteiro(a)','1','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1DEIbXG0W6GdFsJ6HJt0cbqeay1FO-I64',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Polo UniRitter - (11/2020 - 08/2021)
Consultora de vendas UniRitter e Auxiliar Administrativo.
Recepção e atendimento de alunos no polo educacional e espaço coworking;
Emissão de boletos, notas fiscais e controle de pagamentos;
Ações promocionais e distribuição de brindes;
Captação de leads e prospecção de novos alunos em lojas, redes sociais e sistema CRM;
Realização de matrículas, inscrições e suporte ao aluno durante o processo acadêmico;
Criação e divulgação de anúncios em redes sociais para captação de novos alunos.

Instituição Educacional e Beneficente Assembléia de Deus (IEBAD)- (02/2022-03/2023).
Auxiliar de Desenvolvimento Infantil
Apoio no planejamento e execução das atividades pedagógicas e recreativas;
Auxílio na higiene, alimentação e cuidados básicos das crianças;
Suporte ao(à) professor(a) nas rotinas diárias e no acompanhamento individual dos alunos;
Organização, limpeza e manutenção do ambiente escolar;
Colaboração em eventos e projetos educativos da instituição;

Empreendedorismo Loja de Conveniência janeiro de 2024 - julho de 2025.','Auxiliar Administrativo – Olimpio (Carga horária: 40 horas).
Excel Básico –  Olimpio (Carga horária: 20 horas).
Operador(a) e Mídias Sociais – Enjoy (Carga horária: 9 horas).
Gestão de Pessoas e Liderança - IFSUL (Em andamento).',NULL,'Administrativa',NULL,'https://drive.google.com/open?id=1y1d7SGZq2dAIhwCDmQ73mjHbXF1cZpA9','Agência de Empregos','Sem indicação.','Quero aprender a desenvolver habilidades novas. A minha expectativa é de um salário mínimo (R$: 1.518,00).','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Além das minhas qualificações profissionais, dedico meu tempo livre à prática de Muay Thai e a pintura de esculturas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-30T14:47:00.000Z'::timestamptz),
  ('Kerolain Giacomelli Goulart','giacomellikerolain@gmail.com',NULL,'55999108375','1995-03-09',30,'Solteiro(a)','1','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1bU7QvnTekh1BtEjMELpRnnzt3nZAtJWS',NULL,'Ensino Superior Incompleto','Faculdade Uninter','2029-12-28','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Clinsul Mão de Obra e Rep. LTDA   17/05/2013 à 21/04/2014
-	UPA 24Hrs Porto Alegre/RS   Recepcionista Atendimento ao público presencial e por telefone; Organizar agendamento de consultas médicas;
Encaminhar os pacientes aos respectivos consultórios médicos;
Klein Estúdio Jurídico   Advogados   01/08/2014 à 22/02/2019
-	Auxiliar Administrativo
Atendimento ao público presencial e por telefone; Contabilidade (receber e pagar contas, planilha de gastos); Carga/cópias de processos (Fórum e INSS);
Elaborar petição inicial para processos previdenciários; Encaminhamento e acompanhamento de processos previdenciários;

Desidério Machado   Sociedade Individual de adv.   28/12/2020 à 27/04/2023 Auxiliar Administrativo
Atendimento ao público presencial e por telefone; Contabilidade (receber e pagar contas, planilha de gastos); Carga/cópias de processos (Fórum e INSS); Elaborar petição inicial para processos previdenciários;
Encaminhamento e acompanhamento de processos previdenciários;

Defensoria Pública do Estado do RS   01/07/2024 à 31/12/2024 - Estagiária
Atendimento ao público presencial e por telefone;
Elaborar petições e peças processuais nas áreas cível, criminal, tributário, saúde, dentre outras;
Peticionamento de Réplica, Contestação, Memoriais sempre assistida pelos Defensores responsáveis;
Consulta de andamento processual utilizando o Portal da Defensoria e os sistemas do Judiciário (E-PROC e Site TJRS);
Elaborar ofícios (INSS, Bancos, Cartórios e etc.);
Elaborar cálculos Tributários e de pensão alimentícia utilizando a ferramenta de cálculo do TJRS e o LibreOffice Calc.

Estágio Voluntário   Defensoria Pública do Estado do Rio Grande do Sul
Período 16/04/2024 à 21/06/2024
Atendimento ao público presencial e por telefone;
Elaborar petições e peças processuais nas áreas cível, criminal, tributário, saúde, dentre outras;
Peticionamento de Réplica, Contestação, Memoriais sempre assistida pelos Defensores responsáveis;
Consulta de andamento processual utilizando o Portal da Defensoria e os sistemas do Judiciário (E-PROC e Site TJRS);
Elaborar ofícios (INSS, Bancos, Cartórios e etc.);
Elaborar cálculos Tributários e de pensão alimentícia utilizando a ferramenta de cálculo do TJRS e o LibreOffice Calc.','Atualmente estou cursando Bacharelado em Administração Pública e Técnico em Segurança do Trabalho, possuo curso de Secretariado, informática básica e estou fazendo o curso Domínio CAP. Tenho mais de 7 anos de experiência como Auxiliar Administrativo.',NULL,'Administrativa, Estágio',NULL,NULL,'Instagram','não','R$ 1.500,00 (um milagre e quinhentos reais)','Não','Defensoria Pública do Estado do RS  (Itaqui)- (55)3433-6209 ou (55)3433-5074','ESTAGIO ADMINISTRAÇÃO','•	Curso Domínio CAP – em andamento
Período 19/08/2025 a 27/11/2025


Curso Capacitar Você   2010
-	Atendimento ao Público;
-	Secretariado;
-	Auxiliar Administrativo;
-	Informática Básica;

Estágio Voluntário   Defensoria Pública do Estado do Rio Grande do Sul
Período 16/04/2024 à 21/06/2024','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-30T14:59:00.000Z'::timestamptz),
  ('Viviane Silva de fraga','vivianesilvadefraga@gmail.com',NULL,'996028496','2025-10-03',0,'Solteiro(a)','1','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1uagdIZCPALj99Qjp41tKoHvjVTnwV051',NULL,'Ensino Médio Completo',NULL,NULL,'Sou formado','Spazzo (loja de roupas onde fui vendedora)
Kallango fit(empresa fabricante de matérial para academia e esporte,trabalhei na área produtiva)
Agropet várzea (trabalhei como tosadora e banhista de animais)',NULL,NULL,'Comercial',NULL,NULL,'Instagram','Nao','1900','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Eu já fiz um cursinho de gestão de pessoas sou uma pessoa organizando e proativa, gosto de aprender coisas novas .','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-30T15:43:00.000Z'::timestamptz),
  ('Dyovana Charão Dorneles','dyocharao@gmail.com',NULL,'55991100667','2000-09-16',25,'Solteiro(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1MOKQ4ZbbJT1fSmJwdwAddu1_zCBp8U0t','Nutrição','Ensino Superior Incompleto','Universidade Federal do Pampa',NULL,'Não, no momento pausei/parei por um período.','Loja 7 Povos: auxilia de stoque e vitrine (2018); Pispirika Festas e Eventos: auxiliar decorativa (2018 á 2019); AMC Negócios Financeiros: Consultora de FGTS e digitações de contratos para beneficiários (2023 á 09/2025); Grupo Grazziotin: Caixa e Estoquista (em 2023 por 3 meses de experiência)',NULL,NULL,'Comercial',NULL,NULL,'Google','não','a partir de um salario mínimo','Não','AMC Negócios Financeiros: (48)48 99147-7245) CEO Adriano Charão','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-30T18:14:00.000Z'::timestamptz),
  ('Marcela de Barcelos Selbach','marcelaselbach49@gmail.com',NULL,'51995905887','2006-08-17',19,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1o1VOs6xchtkiHjF_e_n3elbvDU5FJxSj',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Young Empreendimentos - Jovem aprendiz - Setor RH e Comercial - 04/2023-09/2024.
São João Farmácias - Balco-farmacista - 06/2025-09/2025.','Cursos do Senac: 
Matemática Básica;
Gestão;
Design thinking; 
Técnicas básicas de auxiliar administrativo; 
Empreendedorismo digital.',NULL,'Administrativa, Comercial, Marketing',NULL,NULL,'Instagram','Não','2000/2500','Sim',NULL,'Comercial','Já trabalhei na empresa, por esse motivo e pela boa experiência que tive, tenho vontade de voltar a trabalhar aí. Meu nível de inglês é intermediário.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-30T21:16:00.000Z'::timestamptz),
  ('vitória marques merlo','merlovitoria2@gmail.com',NULL,'55999519719','2006-05-28',19,'Solteiro(a)','0','Não','Itaqui/RS','https://drive.google.com/uc?export=view&id=1AbUibPg3WorCsmfW_o037DSvGZq3JsVZ',NULL,'Ensino Médio Completo',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','meu primeiro emprego','contabilidade básica EAD, matemática financeira com o uso da HP12c',NULL,'Estágio',NULL,NULL,'Instagram','não','sem expectativa','Sim',NULL,'estagio administrativo','sou uma pessoa que aprende com facilidade e que sempre esta buscando colocar em pratica o pouco que sabe','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-31T01:42:00.000Z'::timestamptz),
  ('Andriele da rosa correa i','andrieledarosacorrea10@gmail.com',NULL,'55991434861','1994-02-09',32,'Divorciado(a)','1','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1c9Vr10vUxoU6NbaNp8n0mJSs_aWOZMiT','Administração de empresas','Ensino Superior Incompleto','Instituto mix','2025-10-15','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1.mb farmácia 2.caixa atendente 3.09/06/2025 4.atendimento ao cliente e cobrança.','Curso de 75 horas muito bem elaborado com aprendizado rápido de administração, contabilidade,RH e outros.',NULL,'Administrativa, Comercial, Financeiro',NULL,NULL,'Facebook','Não','2,500.00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa disposta, gosto de desafios, trabalho muito bem em equipe, simpática ,humorada, boa comunicação interpessoal pontual.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-31T12:30:00.000Z'::timestamptz),
  ('Emilly da Rosa dos Santos','millyrosa2006@gmail.com',NULL,'55984561818','2006-01-02',20,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1XcirTQXwaQxte6RfdiSSfsjbuvhsgtVK','Direito','Ensino Superior Incompleto','URI Câmpus Santiago - Universidade Regional Integrada do Alto Uruguai e das Missões','2028-12-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Nao possuo experiências profissionais anteriores','Possuo curso de inglês intermediário, pacote office, cursos envolvendo direitos humanos',NULL,'Administrativa, Estágio',NULL,NULL,'Facebook','Não','1500','Não',NULL,'Estágio administrativo ou trabalho comercial','Estudante de Direito, atualmente no 4º semestre, com sólida formação teórica e interesse em atuar nas áreas jurídica e administrativa. Possuo boa capacidade de organização, facilidade de aprendizado e comprometimento, buscando aplicar meus conhecimentos acadêmicos na prática profissional e contribuir com a equipe.

CURSOS COMPLEMENTARES

Enfrentamento e Prevenção ao Discurso de Ódio e Extremismo – ENAP, 2025
Competências Socioemocionais aplicadas ao contexto penitenciário – ENAP, 2025
Marcos Legais Antirracistas para Igualdade Racial – ENAP, 2025
Competência do Processo do Trabalho – OAB/ESA Nacional, 2h, 2025
Coisa Julgada – OAB/ESA Nacional, 2h25min, 2025','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-31T16:05:00.000Z'::timestamptz),
  ('Paula Regina Machado Pereira','paulamachadopereira10@gmail.com',NULL,'51989345463','1988-07-31',37,'Solteiro(a)','0','Não','Glorinha/rs','https://drive.google.com/uc?export=view&id=1BIKqa7skXtmup0ISN04vMDRndwatONEb',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Carrefour comércio e industria Ltda,2 anos e onze meses-Atendente Comercial: efetuar pagamentos, registro de produtos, abertura e fechamento de caixa, atendimento ao público.
Concessionária da rodovia Osório/POA -Triunfo Concepa -Atendente de pedágio: Classificação das categorias de veículos, abertura e fechamento de caixa, cobrança e atendimento aos usuários.
Supermercado JM Ramos ltda-Atendente Comercial: Operador de caixa.
Picadilly Company -Auxiliar de linha de produção em industria calçadista: Montagem de caixas, fechamento de pedidos, abastecimento de esteira.
Rdutilidades-industria de móveis e estofados Ltda-Auxiliar de produção em fábrica de costura e montagem de móveis: Fechamento de pedidos, conferência, abastecimento de linha de produção.','Senac: Rotinas admistrativas; Cuidados aos idosos -Senar: Boas práticas na fabricação e manipulação de alimentos; panificação caseira; aproveitamento integral de alimentos; básico plantas condimentares,aromáticas e medicinais -inclusao digital; informática básica;Excel básico; gestão de pessoas; ferramentas digitais.',NULL,'Administrativa, Comercial, Estágio, Marketing',NULL,NULL,'Agência de Empregos','Não','1900','Sim','Picadilly Company; Líder: Daniel.','Comercial','Eu gosto muito de fazer caminhada ao ar livre,cuidar de criança e idosos, cozinhar e cuidar, animais também é bom.Sou bastante compreensiva e prática.Me sinto bem ajudando, sendo útil.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-31T16:13:00.000Z'::timestamptz),
  ('Taís Balhefo','tatabalhefo@gmail.com',NULL,'55991561738','2000-08-08',25,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1gtMc5nI_rND6BxA5IcSQ41Fu_4FtyLlr','Gastronomia','Ensino Superior Completo','Instituto federal Farroupilha','2023-08-23','Sou formado','Giraffas  - coordenadora de loja: 2024/2025
Responsável por abrir e as vezes fechar a loja, caixa e atendimento, coordenar a equina nas produções e atendimento, prezando sempre pelo q os franqueados pediam.
Restaurante posto 44 - auxiliar de cozinha: 2023/2024
Auxiliar no atendimento ao buffet, produção dos lanches
Nosso Mercado - Atendente de Padaria/ auxiliar de produção: 2022/2023: atendimento de padaria, auxiliava na organização de escalas, calendário de festivais e planejamento de equipe.','Tenho experiência muitas experiência na área da gastronomia, em q sou formada, recentemente estou tentando trocar de área e pretendo cursar administração ou logística, procuro uma oportunidade para tentar sair de experiências somente em cozinha quero crescer em outras áreas',NULL,'Administrativa, Comercial, Financeiro, Marketing',NULL,NULL,'Instagram','Nao','1800','Não',NULL,'Comercial','Tenho conhecimento em informática, me adpto bem as mudanças e aprendo rápido','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-31T16:53:00.000Z'::timestamptz),
  ('Dielenn Camargo Muniz','diellen.c.muniz123@gmail.com',NULL,'55991730983','1999-08-28',26,'Solteiro(a)','0','Não','Itaqui/RS','https://drive.google.com/uc?export=view&id=1it0s4MTxUVY9dyB8nasE2QDvmDh_72zn','Gestão de recursos himanos','Ensino Superior Incompleto','Unintter','2028-01-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Prefeitura Municipal de Itaqui
Estágio em Recursos Humanos
Ago. 2024 - Jun. 2025 (10 meses)
Auxiliar na área administrativa, atendimento ao público, recepção, protocolo
GRAZZIOTIN
Vendedor Comercial
Abr. 2024 - Jul. 2024 (3 meses)
Caixa Vendedor Repositor de mercadorias
Centro óptico da visão
Vendedor
Abr. 2023 - Fev. 2024 (10 meses)
Vendedora de óculos de grau e solar Fazer marketing nas redes sociais Limpeza de loja
Atendimento ao público','Formada em administração',NULL,'Administrativa, Estágio, Marketing',NULL,NULL,'Instagram','Não','1650','Sim','55 984474940 (Andrea centro óptico da visão)','Quero inscrever-me no banco de talentos da Young!','Comunicação Proatividade Colaboração Organização Criatividade Adaptalidade Inteligência
emocional','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-31T17:09:00.000Z'::timestamptz),
  ('Bruna Pinto Feirnandes','brupfl28@gmail.com',NULL,'55992394346','1990-05-09',35,'Solteiro(a)','3','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1JD_HJDZGiN6GVRp2D2w11s90dCDvb7s1','Pedagógia','Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Trabalhei na HS Consórcio, na venda de consórcios novos, e cartas contempladas, encaminhas orçamento, fechar vendas.',NULL,NULL,'Financeiro',NULL,NULL,'Agência de Empregos','Não','3000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-31T17:58:00.000Z'::timestamptz),
  ('Mariele de Moraes Tuparai Souza','marieletuparai2014@gmail.com',NULL,'55999000026','1987-03-15',38,'Casado(a)','2','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1qNn4t_x3FPYUujpSXbhaoiQJi-SR_AQO','Gestão escolar','Pós-graduação Completa','Faculdade são Luís','2020-07-20','Sou formado','Coordenadora  de rh','Gestão escolar Orientação escolar e supervisão escolar',NULL,'Administrativa',NULL,NULL,'Agência de Empregos','Não','2.800,00','Não','55 999000026','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-31T18:36:00.000Z'::timestamptz),
  ('George Tainã Martins Bartolomé','georgebartolome13@gmail.com',NULL,'51999200477','1999-05-10',26,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=18DZPFT5aP1ubc2BmQ6gdFQKrQuq0_99U','Comunicação Social - Publicidade e Propaganda','Ensino Superior Completo','Universidade Federal do Pampa','2025-02-20','Sou formado','1) Nome da Empresa: Exército Brasileiro
Cargo: Soldado
Período: 2018
Principais atividades: Atuei como soldado temporário, desempenhando funções operacionais e administrativas dentro da unidade militar. Desenvolvi disciplina, responsabilidade, trabalho em equipe e capacidade de liderança em situações de alta exigência física e emocional.
2) Nome da Empresa: Confette Recreações
Cargo: Gestor de eventos
Período: 2020 – 2022
Principais atividades: Responsável pela organização, planejamento e execução de eventos recreativos e corporativos. Atuei na coordenação de equipes, gestão de cronogramas e no contato direto com clientes e fornecedores, garantindo a qualidade e a experiência positiva dos participantes.
3) Nome da Empresa: Universidade Federal do Pampa (UNIPAMPA)
Cargo: Gestor do grupo de conversação em espanhol
Período: 2022 – 2023
Principais atividades: Coordenei encontros semanais de conversação em língua espanhola, promovendo o desenvolvimento comunicativo dos participantes. Atuei também no planejamento de atividades e na mediação de dinâmicas voltadas à prática oral e à integração cultural.
4) Nome da Empresa: Universidade Federal do Pampa (UNIPAMPA)
Cargo: Atendimento e Planejamento (Componente curricular de Agência Experimental)
Período: 2023 – 2024
Principais atividades: Atuei na área de atendimento e planejamento publicitário dentro da agência experimental do curso de Publicidade e Propaganda. Fui responsável por desenvolver briefings, propor estratégias de comunicação e acompanhar execuções criativas, trabalhando com clientes reais e em equipe multidisciplinar.
5) Nome da Empresa: Grupo Dama
Cargo: Planejador
Período: 2024 – atual
Principais atividades: Responsável pelo planejamento estratégico e criativo de campanhas, análise de público e posicionamento de marca. Atuo na integração entre os setores de criação e atendimento, propondo soluções comunicacionais alinhadas aos objetivos de marketing dos clientes.',NULL,NULL,'Comercial, Marketing',NULL,NULL,'Instagram','não','2000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-10-31T22:58:00.000Z'::timestamptz),
  ('Leonardo Magni Bernardo','leonardomagni68772@gmail.com',NULL,'51998024691','2004-05-27',21,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1bbAYgZF0Vx0qDkXG6cBwySAodJznSONx',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','GLUCOSUL COMÉRCIO DE DOCES E ALIMENTOS LTDA
- Motorista de caminhão (01/05/2024 – atualmente)
Organização das rotas de entrega, carregamento do caminhão, entrega a clientes, contato com
clientes, vendas, operador de empilhadeira.
- Auxiliar de produção (01/09/2021 – 30/04/2024)
Operador de empilhaeira, auxílio no envasamento, lavagem e esterilização de embalagens.

 SHOPPING DAS MOTOS
- Proprietário e vendedor (10/01/2022 – 15/08/2023)
Compra de produtos, cálculo no preço de venda, controle de estoque, vendas, cobrança, entrega.

 RR SHOES COMÉRCIO E FABRICAÇÃO DE CALÇADOS LTDA
- Preparador de calçados (18/01/2021 - 13/04/2021)
Auxiliar a produção de calçados','Curso de atendimento ao cliente',NULL,'Novos Negócios, Engenharia',NULL,NULL,'Indicação','Não','3.000,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Penso que sei me comunicar bem, sempre tive vontade de atuar no ramo de vendas. 
Gosto de lidar com o público, tenho um pouco de experiência com clientes e vendas.
Atualmente estou realizando cursos online para me aprimorar nesta área.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-01T01:15:00.000Z'::timestamptz),
  ('Dariele Silva Falcao','darisf476@gmail.com',NULL,'55999915502','1993-10-04',32,'Solteiro(a)','0','Não','Itaqui/RS','https://drive.google.com/uc?export=view&id=1atajNLo6_FhTJYS0bSk1dgoy9-2Hp_kr','Ciências Contábeis','Ensino Superior Completo','Uniaseelvi','2025-01-30','Sou formado','FG ADVOCACIA SECRETARIA 01/2024 A 06/2024',NULL,NULL,'Administrativa, Comercial, Estágio, Financeiro',NULL,'https://drive.google.com/open?id=1m9p_FYTAtFLiEWrpVjdB-63BEp9zkkDj','Facebook','Nao','R$1.700','Não','Nelize Falcão','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-01T02:58:00.000Z'::timestamptz),
  ('Laureane Aguiar','aguiarlaureane@gmail.com',NULL,'55984240588','1993-06-19',32,'Solteiro(a)','1','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1b7mJi_5iUA1QTUAVO-S3abpRHMeHU6Qv','Administração de empresas','Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Loja mb vendas e atendimento ao cliente  2014 a 2016 loja sensual Moda intima 2020 a 2025 vendas e caixa loja sete povos vendas 2025 até o momento',NULL,NULL,'Administrativa, Comercial',NULL,NULL,'Instagram','Nao','2.000','Sim','Minha gerente da época que trabalhei na Mb lojas 
Jacqueline charao 5599706-4330','Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa muito comprometida e responsável e atuo na área de vendas desde meu primeiro trabalho.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-01T16:14:00.000Z'::timestamptz),
  ('Karlize Morais Adolpho','123karlize@gmail.com',NULL,'55996307524','2002-03-12',23,'Solteiro(a)','0','Não','Itaqui/RS','https://drive.google.com/uc?export=view&id=11pemBGxbuhk3pgnSDmU_rHAbEAvmw3kP','Bacharelado em Administração','Ensino Superior Incompleto','Unifacvest',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Trabalhei na Escola de cursos Profissionalizantes Data Mastes, exercendo o cargo de Recepcionista/atendente e ajudando no cargo Administrativo e financeiro.
Iniciei em Agosto de 2021 até Maio de 2025','Tenho curso de Assistente Administrativo e estou cursando Administração pois trabalhei quase 4 anos na área de auxiliar administrativo e me adaptei.',NULL,'Administrativa, Financeiro',NULL,NULL,'Instagram','Não','Na base de R$1.700','Sim','André Silva 055 9925-3825 Dono da Empresa','Secretária','Sou uma pessoa de boa comunicação, simpática, procurando sempre aprender coisas novas','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-01T16:44:00.000Z'::timestamptz),
  ('Douglas Bassani Aquino','douglas.b.aquino@gmail.com',NULL,'11920018934','1995-10-05',30,'Solteiro(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1uagIp0jsNfTQSqn0vuYk6BNm_VuCGa8e','Gestão Ambiental e Engenharia Cartografica e de Agrimensura','Ensino Superior Incompleto','Unipampa e Unifatecie','2028-12-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Fui micro empresario e tambem ja estagiei em uma escola profissionalizante','Grande conhecimento em Cad e Sketchup, além de areas de infomatica.',NULL,'Estágio, Marketing',NULL,NULL,'Facebook','Nao','2000','Sim',NULL,'Estágio Engenharia e/ou Arquitetura',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-01T20:32:00.000Z'::timestamptz),
  ('Carieli Trindade Barbosa','carielitrindade@gmail.com',NULL,'55999955342','1999-11-14',26,'Solteiro(a)','1','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1OVAe00d1ORRA_FeMlzWt3SsKggie5LBq','Administração de empresas','Ensino Superior Completo','Unopar Alegrete','2023-12-23','Sou formado','Auxiliar Administrativo | mai/2024 – jul/2025
- Apoio administrativo e de RH, controle de vendas e caixa.
- Gestão de atendimento ao cliente e suporte em mídias sociais. Empire Representações – Itaqui/RS
Auxiliar Administrativo | nov/2023 – abr/2024
- Controle de contas a pagar e organização de planilhas financeiras. - Realização de pós-vendas e acompanhamento de clientes.
Nosso Guia – Alegrete/RS
Auxiliar Administrativo Comercial | abr/2022 – jun/2023
- Atendimento ao público e vendas de produtos.
- Elaboração de contratos de estágio e apoio em rotinas de RH. Fonther Contabilidade e Imobiliária – Alegrete/RS
Estágio em Administração | jan/2022 – abr/2022
- Organização de documentos e lançamentos contábeis.
- Apoio administrativo e atendimento telefônico.
CIEE – Alegrete/RS
Estágio Administrativo | out/2019 – abr/2021
- Suporte às rotinas administrativas e organização de arquivos.
- Atendimento ao público e alimentação de sistemas internos. Prefeitura Municipal de Alegrete – Alegrete/RS
Estágio em Arquivo Administrativo | set/2018 – set/2019
- Controle, expedição e arquivamento de documentos.
- Digitação e organização de processos administrativos.',NULL,NULL,'Administrativa, Comercial, Marketing',NULL,NULL,'Agência de Empregos','Não','1800','Sim','Casa do Brick - José Lucimar (proprietário) - (55)99708-8797','Comercial','Profissional formada em Administração, com experiência desde 2018 na área administrativa, financeira e de atendimento ao público. Busco oportunidade para aplicar minhas competências em gestão de processos, suporte administrativo, vendas e relacionamento com clientes, contribuindo para os resultados da empresa e o meu desenvolvimento profissional.

Tenho muito conhecimento prático em informática, aprendo com muita facilidade, em uma empresa que trabalhei fazia criação de imagens profissionais, e atividades de cobranças e entrega de documentos, mais em específico contratos.

Assim que possível quero fazer uma pós-graduação em Negócios Imobiliários que tem me despertado bastante interesse.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-02T14:11:00.000Z'::timestamptz)
;
