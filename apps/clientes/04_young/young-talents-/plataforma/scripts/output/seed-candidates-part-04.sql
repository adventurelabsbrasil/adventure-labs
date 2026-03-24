-- Parte 4 de 9 (até 300 linhas por arquivo para caber no SQL Editor)
-- Cole no SQL Editor do Supabase → Run. Depois execute a próxima parte.
-- Tabela permite múltiplos envios por email (cada linha = um envio com timestamp).

INSERT INTO young_talents.candidates (full_name, email, email_secondary, phone, birth_date, age, marital_status, children_count, has_license, city, photo_url, education, schooling_level, institution, graduation_date, is_studying, experience, courses, certifications, interest_areas, cv_url, portfolio_url, source, referral, salary_expectation, can_relocate, professional_references, type_of_app, free_field, status, tags, origin, created_by, original_timestamp)
VALUES
  ('Tasiane Borges','tasianeborgesnavarro@gmail.com',NULL,'55999339299','1992-10-03',33,'Casado(a)','1','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1mUT3VROTwFcOpe5xKMtG5-BGPyH-di0d','Enfermagem','Ensino Médio Completo','Escola técnica José gomes_ são luiz Gonzaga Rs','2013-11-09','Não, no momento pausei/parei por um período.','Pacífic recursos humanos. Empresa terceirizada para os Correios. Em Itaqui Rs Cargo Operadora de transbordo e triagem. Atividades recebimento de correspondência Sedex. Separação das mesmas a serem entregues ao destinatário

ortosul material hospitalares importados e Ltda. Empresa de Joinville SC. Técnica de enfermagem e instrumentadora cirúrgica na área de ortopedia e traumatologia em São Borja Rs

Hospital Ivan Goulart São Borja Rs. Técnica de enfermagem

Ateliê mamãe coruja.  Itaqui RS Vendedora.',NULL,NULL,'Administrativa, Comercial, Marketing',NULL,NULL,'Instagram','Nao','Entre R$ 2.000,00 a R$ 2.500,00','Não',NULL,'Atendimento, administrativo ou marketing.','Tenho Conhecimento básico e avancado em pacote Office.
  Palestra em Porto Alegre festa de   final de ano empresa  privada.
Sou proativa, gosto de aprender e trabalhar em equipe nos impulsiva para nosso crescimento pessoal e  visa no crescimento da empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-03T02:26:00.000Z'::timestamptz),
  ('Vitor Barbosa Gonçalves','eng.vitorbgon@gmail.com',NULL,'62998427095','1995-02-04',31,'Solteiro(a)','0','Sim','Goiânia/go','https://drive.google.com/uc?export=view&id=19iC0fsR5dTUQMrVADiC6XAIUnPff8E8Q','Engenharia Civil','Ensino Superior Completo','UNIP - Universidade Paulista','2019-12-31','Sou formado','Nome: Vereda Engenharia
Cargo: Engenheiro Civil - Trainee
Datas: 09/2022 - 01/2023
Principal atividade: Responsável pela frente de serviço de execução de OAE (bi apoiadas e mista)

Nome: GOINFRA
Cargo: Auxiliar de escritório 
Datas: 05/2020 - 09/2022
Principal atividade: Acompanhamento de programas, de obras estaduais, governamentais.','Estou cursando MBA EM GESTÃO DE OBRAS NA CONSTRUÇÃO CIVIL','Eng. Cledson Pereira – Vereda Eng. LTDA Contato: (31)9 9881-7128','Administrativa, Engenharia','https://drive.google.com/open?id=1K53jWUJBU5dhiyFxGdykaDDA6WLMSHKS','https://drive.google.com/open?id=1uynNxvPt9fUh-Z6cTEmZlBngfiU0rV2G','Agência de Empregos','Não','R$6.000,00','Sim',NULL,'Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-08T11:06:00.000Z'::timestamptz),
  ('João Vitor bicca','joaoconsultorfoes@gmail.com',NULL,'5198865157','1998-04-13',27,'Casado(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1y7mGVOm4hLk3ND1VNfARGyc2u-ddsGCW','Administração de empresas','Ensino Médio Completo','Cursando',NULL,'Não, no momento pausei/parei por um período.','(Experiência 1 vendedor lojas Colombo) 
(Experiência 2 corretor de imóveis realiza imobiliária) 
(Experiência 3 suporte ao cliente vero internet)',NULL,'Apenas em pacote de word, workshop etc...','Administrativa, Comercial, Financeiro, Marketing','https://drive.google.com/open?id=1luWvQDIij_mQc0SMc973kxzr-vHUlWcs',NULL,'Instagram','Não','Salário justo','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-08T16:17:00.000Z'::timestamptz),
  ('Afonso Larruscaim Cauduro','afonsocauduro@gmail.com',NULL,'55999883611','1994-03-07',31,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1z2fqqWgDFC0yoWO52T2piyyMYWOumWFj','Engenharia Civil','Ensino Superior Completo','Universidade Federal do Pampa - UNIPAMPA','2022-11-25','Sou formado','1) Autônomo;
2) Engenheiro Civil - Calculista Estrutural;
3) 02/2023 - Presente; 
4) Dimensionamento e detalhamento de projetos estruturais,
Projetos de estruturas diversas em concreto armado,
Otimização e compatibilização de projetos.

1) Departamento de Água e Esgotos - DAE;
2) Estagiário;
3) 12/2021 - 04/2022;
4) Estagiário de engenharia no setor de planejamento e estatística,
Estagiário de engenharia no setor operacional,
Atuação em grupo de trabalho com foco na atualização da rede de distribuição de água no município,
Experiência com uso do software AutoCAD e análise de projetos de saneamento básico.

1) Universidade Federal do Pampa;
2) Pesquisador (Iniciação Científica);
3) 05/2019 - 12/2019;
4) Pesquisador no projeto “Efeito dos danos construtivos em paredes de alvenaria estrutural”,
Ênfase em estudos de paredes de alvenaria estrutural sob ação de temperaturas elevadas,
Experiência em moldagem e análise de corpos de prova de argamassa estutural.

1) Consórcio 3C - Procidades;
2) Pesquisador;
3) 12/2018 - 12/2018
4) Pesquisador em atividades contribuintes para a elaboração do Plano Diretor de Mobilidade,
Atuação em pesquisa de entrevistas e de contagem de veículos.

1) Cia da Forma;
2) Instrutor de academia / Instrutor de treinamento funcional / Recepcionista;
3) 03/2016 - 03/2017;
4) Instrutor de musculação com ênfase em treinamento resistido.
Instrutor de treinamento funcional com ênfase em planejamento de circuitos.','Sou engenheiro civil com foco na elaboração de projetos estruturais, possuo curso de Revit (Revit para Engenheiros 5.1), um curso em andamento em projetos estruturais (Projeto Estruturas na Veia) e um curso em andamento em Excel. Estudo Inglês (Wise Up Online) e tenho boa noção de Espanhol. Além disso, possuo uma primeira graduação em Educação Física (UNIPAMPA).',NULL,'Engenharia','https://drive.google.com/open?id=1_fFGssPsk5Rm0EU2qld53XhUHltn56Ms','https://drive.google.com/open?id=1qE_MIvn9hgcM3Llfo-nhF4F2l8giIALT, https://drive.google.com/open?id=1PeSuDDptJ4etGvFPGZ5JSWqBQnRGu-jA, https://drive.google.com/open?id=1T5mEGPMX3M6ldkQaQ2AsdpN7VHL_2RPU','Facebook','Não','R$4.000,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou Engenheiro Civil, graduado pela Universidade Federal do Pampa - Campus Alegrete, com especial interesse na elaboração de projetos, mais especificamente projetos estruturais. Durante a graduação desenvolvi o interesse por diferentes tipos de estrutura, como concreto armado, estruturas metálicas e até tensoestruturas como estruturas tensegrity (tema do meu TCC). Tenho contato com uso de softwares como AutoCAD, Revit, Excel, TQS e Eberick. Atualmente sou aluno do curso Projeto Estruturas na Veia, onde desenvolvi alguns projetos utilizando o Eberick.
Possuo uma primeira graduação em Educação Física pela Universidade Federal do Pampa - Campus Uruguaiana, onde desenvolvi estudos em áreas diversas do exercício físico, como atividade física e saúde, esportes e atividade física e meio ambiente. Fiz parte de diversos projetos de pesquisa, ensino e extensão durante a graduação, além de atuar em atividades esportivas nas equipes de futsal, futebol, handebol e rugby da universidade.
Procuro sempre estar em movimento e me aperfeiçoando.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-08T17:04:00.000Z'::timestamptz),
  ('Bárbara dos Santos Bertuzzzi','babertuzzi@gmail.com',NULL,'51985752052','1991-02-08',35,'Solteiro(a)','0','Sim','Osório/RS','https://drive.google.com/uc?export=view&id=1Bdz3ZhDQleTFKDS74ErDzak72aoP1ozf','Engenharia Civil','Pós-graduação Incompleta','UNISINOS','2016-02-27','Sou formado','01/22 - 01/2023 | PREFEITURA MUNICIPAL DE SANTO ANTÔNIO DA PATRULHA
Engenheira Civil
● Atividades: Engenheira civil responsável pelos projetos da Secretaria de Educação. Responsável pelo patrimônio escolar do município. Orçamentação das obras das escolas novas e planilha orçamentária; Elaboração de PPCI; Elaboração de projetos complementares; Fiscalização e acompanhamento de obra.

07/2017 – Atualmente ESCRITÓRIO DE ARQUITETURA DÉBORA VARGAS Colaboradora Autônoma
Engenheira Civil
● Atividades: Engenheira civil responsável pela orçamentação das obras do escritório, contato com fornecedor e planilha orçamentária; Elaboração de PPCI; Fiscalização e acompanhamento de obras do escritório em outras cidades.

08/2014 – 01/2015 ADVOCACIA GERAL DA UNIÃO Estagiária de Engenharia Civil
● Atividades: Lançamentos de dados nas planilhas internas; Elaboração de orçamentos para reformas locais; Medição de locações para reformas;

01/2011- 07/2012 – PREFEITURA MUNICIPAL DE OSÓRIO – Secretaria da Fazenda Estagiária de Engenharia Civil
● Atividades: Lançamento das plantas prediais no sistema para fins de IPTU; Atendimento ao público; Organização e lançamento no sistema de bairros e terrenos do município;','Cursando Pós-Graduação em Construção Civil: Gestão, Tecnologia e Sustentabilidade na UNISINOS',NULL,'Arquitetura, Engenharia','https://drive.google.com/open?id=1nZYeTNno85RiOapf7cJoDRzTg46dGPsW',NULL,'Indicação','Rodrigo Ribas','5000','Sim','Arquiteta Débora Vargas - 51 981632397','Engenheiro Civil','Me chamo Bárbara, tenho 32 anos, sou engenheira civil formada a 7 anos! Possuo experiência em construções residenciais, comerciais e corporativas de médio e alto padrão, orçamentos e gerenciamentos de obras. Também tenho experiência com orçamentação de obras, contato com fornecedores, planilhas de custos e compras.
Nessa caminhada adquiri experiência em execução de obras, acompanhamento de equipes, fiscalização, elaboração de relatórios e gerenciamento. Conhecimento e experiência na elaboração de PPCI. Possuo experiência com autocad e estou começando um curso de revit! Capacidade analítica, trabalho em equipe, planejamento estratégico, relacionamento interpessoal, perfil técnico, condescendência, organização, proatividade e multitarefas fazem parte do perfil profissional. Além disso faço parte do Rotary Club Satélite de Osório Bons Ventos onde hoje sou a presidente da gestão e também faço parte do Rotaract Club de Osório, ambos clubes que prestam serviços a comunidade!
Ademais faço parte da equipe de comunicação e marketing do Débora Vargas Arquitetura (DVArq) onde sou responsável por todas as redes sociais do escritório, além de cuidar das mídias do DVArq, também cuido das redes sociais da Hardo e da Fábio Santos Engenharia.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-08T21:19:00.000Z'::timestamptz),
  ('Rafaela dos Reis meurer','rafah.reis01@gmail.com',NULL,'997903393','2007-03-23',18,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1OIvE_lpMPMykfSwpzDbIGD3OOxvUqW6Z',NULL,'Ensino Médio Completo','E.E ensino médio patrulhense',NULL,'Não, no momento pausei/parei por um período.','Estou me candidatando ao meu primeiro emprego',NULL,'Nao','Administrativa, Arquitetura, Marketing, Novos Negócios',NULL,NULL,'Agência de Empregos','Não','Não tenho expectativa, o que me pagarem é bom','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Bom, falarei um pouco de mim.
Meu nome é Rafaela, tenho 15 anos, moro com a minha mãe, estudo no período da tarde na escola patrulhense (mas não será problema porquê se eu começar a trabalhar eu consigo trocar de turno). 
Não fiz muitos cursos mas tenho vontade de fazer, sou ótima no português e adoro uma tarefa nova, algo que eu não saiba fazer, é como se fosse um desafio que eu preciso cumprir, atendo bem as pessoas, trabalho muito bem em grupo e tenho bastante tempo disponível…','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-09T12:48:00.000Z'::timestamptz),
  ('Gabriel Medina Ferreira','gabrielmedina2456@gmail.com',NULL,'51998525997','2006-02-02',20,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Oc7kzOEZ5pgwRMPnlcRjZoTPhXuhXnNN',NULL,'Ensino Médio Completo','E.E.E.M Patrulhense','2023-12-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Estourou me candidatando para meu primeiro emprego','Terceiro ano do ensino médio',NULL,'Estágio',NULL,NULL,'Indicação','Não','690','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-09T13:18:00.000Z'::timestamptz),
  ('Eduarda Agliardi da Silva','eduardaagliardidasilva@gmail.com',NULL,'51995177082','2006-04-07',19,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1aR2_arb7Wo6IYpGPM0vTIXf7k47k0BRU','Estou cursando o ensino médio.','Ensino Médio Completo','E.E.E.M Profª Gregória de Mendonça',NULL,'Não, no momento pausei/parei por um período.','Mundo Office Qualificação Profissional: 
Estagiária-Secretária
(Abril/2022)-(Julho/2022)
Realizava o controle financeiro da escola e monitorava a presença dos alunos nas aulas.

Loja Flor de Lis:
Atendente e modelo 
(Julho/2022)-(Outubro/2022)
Organizava a loja, recepcionava as clientes e tirava fotos das roupas para as redes sociais da loja.','(Cursando) Trainee Coaching 2 (Designer gráfico) para Marketing Digital e
Desenvolvimento Humano.
Carga Horária: 80h.
Instrução: Mundo Office.
(Concluído) Trainee Coaching 1 (Administração informatizada)
Administração - Secretariado - Vendas - Marketing - Contabilidade -
Internet e Drive - Pacote Office e Desenvolvimento Humano.
Carga Horária: 80h.
Instituição: Mundo Office.
(Concluído) Inglês
Carga Horária: 80h.
Instituição: Mundo Office.',NULL,'Administrativa, Estágio, Financeiro, Marketing','https://drive.google.com/open?id=1CfJP_TP-f0uI7YLtpt33VnJzMW1eBu0a',NULL,'Indicação','Não.','Como jovem aprendiz algo por volta de 600 reais.','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Como diz no meu currículo, concluí o curso de pacote office e no momento estou cursando a segunda parte que é sobre designer gráfico. Também, concluí o nível básico de inglês. Tenho breve conhecimento com planilhas, pois já trabalhei com este tipo de sistema. Sou dedicada, esforçada, e tenho fácil habilidade em aprender coisas novas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-09T13:40:00.000Z'::timestamptz),
  ('Tainá Andrade da Silva','andradetaina347@gmail.com',NULL,'51980553787','2006-04-26',19,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1KjjQaNXpea5YN46NG-F9lQXdqsubi36T',NULL,'Ensino Superior Incompleto','E.E.E.M Gregória de Mendonça',NULL,'Não, no momento pausei/parei por um período.','Já trabalhei na empresa macrobala,sendo abastecedora de partileiras,trabalhei entre 5 e 6 meses,lá eu fazia de tudo um pouco sempre tentava melhorar e aprender mais','Estou cursando o 3 ano do ensino médio,já fiz alguns cursos online sobre algumas informações de serviços.',NULL,'Administrativa',NULL,NULL,'Indicação','Não','Não sei muito bem sobre isso,quero mesmo trabalhar.','Não',NULL,'Estágio Financeiro','Sou uma pessoa muito paciente,gosto de lidar com o público gosto de fazer coisas novas e adoro atividades físicas como futebol.Gosto muito de aprender sou uma pessoa que dependendo da explicação pego muito rápido,sempre fui uma pessoa interessada e que quando quer uma coisa vai atrás.Em questão de idiomas sei um pouco de inglês e espanhol nas aulas que tenho na escola.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-09T14:09:00.000Z'::timestamptz),
  ('Matheus Silva de Oliveira','oliveiramatheus44687@gmail.com',NULL,'+5551996704327','2008-02-05',18,'União estável','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1LzKt0qhDK8jYrsb3IfVyLvtyWIIgPfoj','não tenho','Ensino Superior Incompleto','escola patrulhense','2025-12-23','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','primeiro emprego','não tenho nenhum','não tenho','Administrativa, Comercial, Marketing',NULL,'https://drive.google.com/open?id=1wT4F78HKMiDFtoSvdCanRK9-zCk1Myko','Indicação','não,foi pela minha diretora da escola','600+','Não','doces seleção','Quero inscrever-me no banco de talentos da Young!','quero esse emprego para adquirir minhas coisas, como é meu primeiro emprego não tenho nenhuma experiência ainda mais quero uma oportunidade para pode demonstrar meu talento, tenho fácil comunicação, faço minhas tarefas perfeitamente como devem ser feita, fácil entretenimento e tudo que vocês pedirem vou tentar ajudar com o maior gosto','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-09T15:25:00.000Z'::timestamptz),
  ('Jeferson Pires Padilha','jefersonpirespadilha@gmail.com',NULL,'51980475794','1987-02-04',39,'Solteiro(a)','0','Sim','São Leopoldo/rs','https://drive.google.com/uc?export=view&id=1MqqVL1s3QQp4eGVVpdqaY-eiqdapEnLQ','Engenharia Civil','Pós-graduação Completa','Ulbra - Universidade Luterana do Brasil','1987-02-04','Sou formado','•	Outubro/2021 – Dezembro/2022– CPFL Energia
•	Cargo: Engenheiro Civil Principais atividades:
-	Engenheiro civil no Contrato BRR (Base de Remuneração Regulatória), responsável pelo gerenciamento de 40 obras civis e de infraestrutura, capex de 45 milhões.
-	Definição de de escopo das obras, acompanhamento de serviços, medições, alinhamento com terceiros, elaboração de planejamento de planejamento das obras e  cronogramas de ataque, planos de ação, reuniões de kick off .
-	Acompanhamento e validações das documentações e atividades de obras na CPFL- Infra (RGE).
-	Implementação dos programas de gestão de riscos para atendimento ao cliente.
-	Acompanhamento do PCMSO, analise de riscos e medidas de proteção coletiva e individual na obra, monitoramento e elaboração de indicadores, normas e procedimentos técnicos.
-	Elaboração de relatórios e pareces técnicos, tratativas de não conformidades, implementação de procedimentos exigidos pela CPFL.
-	Analise    e	implementação    das    exigências    contratuais	dos	serviços	prestados para empreendimentos.

•	Fevereiro/2019 – Setembro/2021 – ESI Empreendimentos
Cargo: Engenheiro Civil Orçamentista Principais atividades:
- Análise de oportunidades de licitações publicadas e privadas.
-	Análise de documentações e editais.
-	Leitura e interpretação dos projetos, levantamento de quantitativos e de custos, montagem de Curva ABC de serviços e insumos, cotação de materiais e serviços, montagem de composições de serviços, elaboração de cronograma macro, cronograma detalhado,  detalhamento  de  custos  e prazos de obra, responsável pela análise de viabilidade da obra.
-	Apoio ao departamento jurídico com parecer, impugnações, recursos e contrarrazões.
 
•	Agosto/2017 – Junho/2018 – ENERPLAN Engenharia e Construções
Cargo: Auxiliar de Engenharia Principais atividades:
- Acompanhamento dos serviços de fundação, estruturas de concreto armado, alvenarias e fechamentos, montagem de estrutura metálica e instalações prediais.
-	Apoio na elaboração de planejamento das obras (escopo,cronograma,programação de compra, fluxo de caixa).
-	Acompanhamento físico e financeiro das obras.
-	Acompanhamento de medições de obras, equipamentos e terceiros.
-	Elaboração de orçamentos para obras públicas e privadas com base no SINAPI.
-	Responsável pela cotação, equalização e contratação de materiais e mão-de-obra.

•	Maio/2015 – Julho/2017 – Mastermold Construções Eirele
Cargo: Auxiliar de Engenharia Principais atividades:
-	Acompanhamento de obras (acompanhamento dos serviços executados, gestão de cronogramas das obras e gestão de equipes de trabalho).
-	Quantificação de materiais e serviços para composição de orçamentos.
-	Elaboração de orçamentos para obras públicas e privadas com base PLÉO e SINAPI.
-	Responsável pela cotação, equalização e contratação de materiais e mão-de-obra.
-	Análise e compatibilização de projetos.
-	Atendimento pós-obra.','MBA - Incorporação e Negócios da Construção Civil',NULL,'Novos Negócios, Engenharia','https://drive.google.com/open?id=177qEDeB1zdYO2_LrvPl-2ttlWRQaz1Hb',NULL,'Agência de Empregos','Não.','6000','Sim','Luiz Cantalejo - 14 99646 0850','Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-09T15:54:00.000Z'::timestamptz),
  ('Rafaela Bremm','rafa-bremm@hotmail.com',NULL,'55999496961','1998-01-14',28,'Solteiro(a)','0','Sim','Santo Ângelo/rs','https://drive.google.com/uc?export=view&id=1WVMmZXTp6_EvufI7EkFSIxNt7FZj_rAK','Engenharia Civil','Pós-graduação Incompleta','URI Santo Angelo','2021-01-09','Sou formado','1) MAURO MARCHETTI ENGENHARIA, Estagiária, 10/2019 – 08/2020, Responsável por regularização e criação de projetos residenciais, PPCI, projetos de sinalização de trânsito, memoriais descritivos. Atendimento de clientes e comunicação com a área de Engenharia e Projetos na Prefeitura Municipal.
2) ESTACASUL/BCS ENGENHARIA, Estagiária, 08/2020 – 11/2020, Estacasul: acompanhamento da execução das fundações do Edifício Residencial Costa Bonini em Santo Ângelo;  BCS Engenharia: Realização e regularização de projetos arquitetônicos e complementares (elétrico e hidrossanitário), de casas e prédios residenciais e comerciais, juntamente de acompanhamento de obras residenciais e comerciais.
3)  WS ENGENHARIA, Estagiária, 09/2020 – 03/2021, Atendimento e apresentação de projetos para clientes, comunicação cliente-projetista e projeto-prefeitura, de modo que o projeto satisfaça as necessidades do cliente e que seja aprovado na primeira vez no órgão
competente. Responsável por quantitativos, orçamentos e compras de materiais dos projetos e obras vendidas.
4) WS ENGENHARIA, Técnica orçamentista, 03/2021 – 07/2022, Elaboração de planilhas para controle de orçamento, controle de colaboradores. Gerenciamento e criação de projetos residenciais de baixo e médio padrão; elaboração de projetos arquitetônicos, elétricos e hidrossanitários pelo software Revit, projetos estruturais em alvenaria estrutural com modelagem pelo software Revit e cálculo por planilha Excel. Acompanhamento no canteiro de obras.','Atualmente estou fazendo pós-graduação em Avaliações e Perícias de Engenharia, online no instituto IDD, de Curitiba/PR',NULL,'Novos Negócios, Engenharia','https://drive.google.com/open?id=1-4BD_rKqa5SvKnBQFK6RtK1aqJfC95D-',NULL,'Agência de Empregos','Não','R$3.500,00','Sim',NULL,'Engenheiro Civil','Sou do tipo que enquanto faz, sabe fazer. Por exemplo, tive um breve contato com alguns softwares de projeto como o TQS ou QiBuilder, na época "me virava" bem, mas depois de um tempo já não lembro mais, se precisar de novo, terei que relembrar. Entretanto, acredito que aprendo rápido, e se sou motivada sempre dou meu melhor. Possui inglês intermediário, pois fiz curso quando adolescente, mas considero que aprendi mais sozinha com mídia do que com o curso, e assim foi com o Revit, o software que mais utilizo. Claro que tenho muita coisa pra aprender ainda, mas não tenho medo de coisas novas, ainda mais se tenho suporte.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-10T13:35:00.000Z'::timestamptz),
  ('Patricia Nunes de Oliveira','paa-oliveira@hotmail.com',NULL,'55996880303','1996-01-10',30,'Solteiro(a)','0','Sim','Santo Augusto','https://drive.google.com/uc?export=view&id=113LHNjN_K8Hp_NNOOGRLVfkwld1qPKns','Engenharia Civil','Pós-graduação Completa','Universidade Regional do Noroeste do Estado do Rio Grande do Sul (UNIJUI)','2020-03-07','Sou formado','Empresa: Taís Fucilini - Engenheira Civil;
Cargo: Projetista de Autocad;
Data: Ago de 2020 - Mar de 2021;
Principais Atividades: Análise e Medições de imóveis;
Elaboração de Projeto Arquitetônico, Elétrico, Hidrossanitário e PPCI; 
Modelagem 3D e Renderização;
Realização de Orçamentos e Quantitativos.
Domínio em AutoCad, SketchUp, Lumion e Pacote Office.','Pós graduada em Engenharia de Segurança do Trabalho;
Pós graduanda em  Projeto, Dimensionamento e Modelagem de Estruturas e Fundações.','Graduação em Eng. Civil; Pós Graduação em Eng. de Segurança do Trabalho; Cuso Autocad; Curso Sketchup.','Engenharia','https://drive.google.com/open?id=1HjNnNvSE976bhUkI2BfnkqJB9r9Fzwc4',NULL,'Agência de Empregos','Não','3500','Sim',NULL,'Auxiliar de Engenharia','Olá,
Meu nome é Patricia Nunes de Oliveira, sou Engenheira Civil formada no início de 2020 e pós graduada em Engenharia de Segurança do Trabalho.
Estou em busca de uma nova oportunidade de trabalho.
Possuo experiência em escritório, com projeto arquitetônico, elétrico, hidrossanitário e PPCI, conforme a legislação atual; modelagem 3D e renderizações, também em orçamentos e cronogramas.
Na área de medicinal ocupacional, como engenheira de segurança do trabalho.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-13T11:13:00.000Z'::timestamptz),
  ('Yuri Lopes Lamarão','yurilamarao94@gmail.com',NULL,'91985339734','1994-12-29',31,'Casado(a)','3','Sim','Pelotas/rs','https://drive.google.com/uc?export=view&id=1AdsbuCXNRwMwGBM_2HJvaartUsYP69cb','Engenharia Civil','Ensino Superior Completo','Faci Wydem','2021-08-22','Sou formado','Empresa: Midas Macedo Industria e Comércio
Função: Cadista Responsável pela produção de estruturas de Ferro e aço
Periodo: 4 mesês

 Empresa: Intranorth Cursos
Função: Instrutor dos cursos de AutoCad e Sketchup e Promob Periodo: 2 anos e 6 mês

 Empresa: Desenvollva Projetos Função: Projetista - Cadista Periodo: 2 anos e 1 mês

 Empresa: Layout 3D Cursos
Função: Instrutor dos cursos de AutoCad e Sketchup Periodo: 3 mêses

 Empresa: Lamar Surf Shop Função: Supervisor de vendas Periodo: 1 ano e 2 mêses','Olá!
Me chamo Yuri Lamarão, sou Engenheiro Civil e Projetista.
Possuo experiência com obras e em projetos, softwares CAD, Revit, Cálculo Estrutural, Renderizações, 
Sou instrutor de cursos de softwares CAD, Projetos Arquitetônicos e Estrutural
Tenho disponibilidade para viajar com urgência para vaga
CNH A e B
CREA Ativo',NULL,'Arquitetura, Comercial, Engenharia','https://drive.google.com/open?id=1a0wfSV2SoY3_G1Y8syXohWgh5uqejxIH','https://drive.google.com/open?id=158gSfWkG2XmncO4XxbpDTq_Ic5Fyw3Bv','Agência de Empregos','Não','3.500,00','Sim',NULL,'Engenheiro Civil','Organizado;
Empenhado para exercer as ativadas da melhor maneira;
Pontual com os compromissos;
Capacidade de liderança sempre em busca de aperfeiçoamento nesta área;
Experiência com trabalho em grupo.

Pós Produção de imagens no PhotoShop
Operador de computador: Digitação/ Windows / Word/ Excel/ Power Point/
Internet','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-13T12:34:00.000Z'::timestamptz),
  ('Guilhermo Gabriel Barrios Jaime','guillejaime@gmail.com',NULL,'51991520244','1978-09-21',47,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1osGG5mQAmNCnREn5SKc1t764ja6YPg0n','Engenharia Civil','Ensino Superior Completo','Uniftec','2019-08-03','Sou formado','Experiência de 12 anos em atendimento ao público e gerenciamento de conflito,
Atuação como desenhista projetista arquitetônico. Atualmente como assessor de vendas setor encanamentos na Leroy Merlin','Sistemas Construtivos de Edificações - Anhanguera - Cursando',NULL,'Administrativa, Arquitetura, Engenharia','https://drive.google.com/open?id=1qO1mBNReGQvbzyncs6ifPyPGFg-J2RoM',NULL,'Agência de Empregos','Não','3500','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Olá gestores, meu nome é Guilhermo Jaime e inicialmente quero agradecer a oportunidade de me apresentar. Sou um profissional multidisciplinar com habilidades em Revit e AutoCad. Possuo uma mente criativa, sempre em busca de desafios e oportunidades para aplicar minhas habilidades. Acredito que minha experiência diversificada me permite ter uma visão ampla para solucionar problemas e alcançar resultados. Tenho formação em engenharia civil, atualmente cursando sistemas construtivos de edificações na Anhanguera. possuo conhecimento em AutoCad, Revit, Word e Excel. Idiomas espanhol fluente. 
Agradeço novamente e aguardo o retorno de vocês!  Abraços 

Guilhermo Jaime','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-13T16:53:00.000Z'::timestamptz),
  ('VIRNA MOTA LIMA','virnalima987@gmail.com',NULL,'88992845028','1999-01-24',27,'Solteiro(a)','0','Sim','Ceará','https://drive.google.com/uc?export=view&id=12DYG5tEphUube7-aMcgf4Kt_U69vgxrO','Engenharia Civil','Pós-graduação Completa','IFCE- INSTITUTO FEDERAL DO CEARÁ','2022-06-01','Sou formado','EXPERIÊNCIAS

ENGENHEIRA CIVIL (vistoriadora de imóveis) || Agrocivil Engenharia -Jul/2022 a atual (freelance)

-Realização de vistorias de imóveis na Serra da Ibiapaba para a empresa AgroCivil Engenharia de Uberlândia/MG;
- Análise de características e estados de conservação/funcionamento de imóveis comerciais e residenciais, novos e usados;
-Identificação e observação dos materiais, acabamentos, instalações elétricas e hidráulicas,
mobília e demais itens do imóvel;
-Execução de testes em equipamentos, verificação de danos, funcionamento e condições do ambiente em geral;
-Atividade de vistorias de saída, efetuando comparações minuciosas com base em relatórios e documentos anteriores;
-Registro das informações captadas em documentos técnicos com fotos para elaboração do relatório de vistoria.

PROJETISTA DE CONSTRUÇÃO CIVIL- B&F Construtora e Incorporadora- Set/2021 - Jan/2023

-Criação de projetos de obras, coletando dados e elaborando anteprojetos;
-Atuação regional (estado do Ceará), realizando viagens para análise de terrenos, viabilidade de obras, fiscalizações técnicas e acompanhamento de cronogramas, entre outras atividades;
-Especificação de materiais e assessoria completa à equipe técnica;
-Suporte ao desenvolvimento dos projetos, elaborando estimativas para propostas e
realizando visitas em campo;
-Elaboração de planilhas de materiais, cálculo de quantidades com base nos desenhos e
projetos, apoiando todas as etapas do planejamento;
-Levantamento de campo e participação em reuniões internas e externas com os clientes;
-Elaboração de desenhos de projetos básicos e executivos em 2D e 3D (em Autocad);
-Cumprimento de cronogramas de obras, detalhamento e atualização de projetos executivos;
-Atuação em projetos arquitetônicos, elétricos e hidrossanitários de indústrias, cálculo de
redes de esgoto utilizando o AutoCAD e outros.

ESTAGIÁRIA DE ENGENHARIA CIVIL - B&F Construtora e Incorporadora- Ago/2021 a Set/2021

-Elaboração de projetos arquitetônicos, hidrossanitário e elétrico. Visita em campo e
acompanhamento de obra.
-Medições das unidades, elaboração de relatórios técnicos para a validação do Engenheiro
Civil, comunicação com prestadores de serviços e atividades administrativas;
-Estudo de cronogramas de entregas e sugestão de melhorias para o fluxo da obra;
-Leitura dos projetos e acompanhamento das execuções em campo;
-Realização de trabalhos em Autocad.

ESTAGIÁRIA DE ENGENHARIA CIVIL- Secretaria da Infraestrutura e do Desenvolvimento
Industrial - Abr/2021 - Set/2021

Acompanhamento de obras e serviços de rotina administrativa;
Desenvolvimento de orçamentos de obras e serviços, além de projetos 2D e 3D em Autocad;
Confecção de relatórios, memoriais descritivos, pedidos de materiais e equipamentos;
Comunicação direta com as obras para verificação de materiais, EPI''s, etc;
Fiscalização de mão de obra nos locais das obras em suporte direto ao Responsável
Técnico;
Vistorias supervisionadas para levantamento de dados in loco e posterior orçamento;
Auxiliar no desenvolvimento das atividades e das metodologias aplicadas;
Movimentação entre obras, criando roteiros e verificando rotinas;
Estagiária de Administração - Evolution Contabilidade - Jun/2016 - Dez/2016
Controle e execução de trabalhos contábeis e de controladoria financeira;
Registro de documentos, escrituração de livros contábeis, classificação de despesas, análise
e reconciliação de contas;
Elaboração de balancetes, demonstrativos de Lucro Real, Presumido e Simples SPED
Contábil, F-cont, preenchimento e transmissão de declarações contábeis.','Sou uma jovem profissional com experiência na área de construção civil, sobretudo como
Projetista. Com ênfase em atividades de projetos arquitetônicos e elétricos, levantamento e quantitativos de projetos, cronograma de obras, projetos industriais para indústrias de lacticínios, frigoríficos, abatedouros, indústrias de polpas, entre outras. Engenheira de Produção Civil (CREA ativo) e com Pós Graduação em Engenharia de Estruturas e Concreto Armado, atuei em empresas como Agrocivil e B&F Construtora,
onde desenvolvi projetos para aprovação em órgãos como S.I.F.-MAPA, S.I.E, SISB,
S.I.M e outros. Como soft skills relevantes, destacam-se capacidade analítica, aprendizado rápido, proatividade, dinamismo, comunicação, organização, liderança, relacionamento interpessoal e gestão do tempo, os quais complementam o perfil.','Fundamentos de dados - Coursera - 2023 Cert. A1 Beginner - EnglishBay - 2023 Análise de dados no Power BI e no Excel - Simplifica Treinamentos - 2023 Construção Virtual com Revit - Udemy - 2020 Planejamento e Gestão de Projetos - Udemy - 2020 Liderança e Gestão de Pessoas - Udemy - 2020 AutoCad Avançado Pacote Office e Excel avançados','Arquitetura, Engenharia','https://drive.google.com/open?id=1aKcAZ1bMHvgC7ihX1RFjJ9Z_CpIoS0fQ',NULL,'Agência de Empregos','NÃO','3500','Sim','SEINFRA- SÃO BENEDITO/CE. Contato: (88) 9 9985-2937. Eng Rosane Marques','AUXILIAR DE ENGENHARIA','Me formei em junho do ano passado, entretanto já trabalho na área da construção civil há mais de 2 anos, pois sempre estive em busca de experiências novas e conhecimentos na minha área. Sempre tive espírito de liderança e de ser gestora de projetos rs, desde meu ensino fundamental que me destaco como lider de sala, por exemplo. Até mesmo na faculdade, fui vice-presidente do Centro Acadêmico do meu curso e participei, voluntariamente, de um projeto onde lecionava calculo I para os calouros das Engenharias e os ajudavam na dificuldade em matemática (diga-se de passagem, tenho muito orgulho de fazer parte dessa história pois adoro ajudar as pessoas). Fora dormir, que é meu hobby preferido (rs), adoro ler, principalmente livros de romance ou autoajuda, depende do meu estado de espírito. Meu livro preferido é Senhora Einstein pois aprendi mais ainda a não se anular por causa de um parceiro amoroso. E também adoro ver vídeos e documentário de serial killer, acredito que nos ajudam a sempre tomar cuidado com qualquer pessoa duvidosa kkk. Desde a minha formação, precisei batalhar pelo que quero e ir atrás dos meus sonhos e é por isso que busco novas oportunidades até mesmo fora do meu estado, pois zona de conforto nunca combinou comigo. Tenho muito orgulho da minha história e de tudo que ja superei para hoje estar enviando esse texto para vocês. No mais, é isso.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-13T20:19:00.000Z'::timestamptz),
  ('Fabi Alessandra Oliveira da Silva','alessandrafabi54@gmail.com',NULL,'51995029445','2001-08-06',24,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1w8OGbsFAZLJGDy0u_9lrF9nXLmg-OciZ',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','RR VIA UNO
Montador 
Setembro 2021/ outubro 2021

Gráfico Delta
Marketing e atendimento 
Janeiro 2022/ março 2022

Top Guarda Segurança Patrimonial
Atendimento e monitoramento
Maio 2022/setembro 2022

Márcio lanches e pizzaria 
Atendimento 
Estou no momento','Administração e informática',NULL,'Administrativa, Marketing','https://drive.google.com/open?id=1tObYGldApbHGFLgqMMV5xp8VvNCskxLo',NULL,'Agência de Empregos','Nao','1.400,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-14T13:54:00.000Z'::timestamptz),
  ('Eduardo Machado Rodrigues','michelimachadoferreira@gmail.com',NULL,'51997802899','2007-03-18',18,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Aj5mPGo4jhqzVU_aoQrh0vdBfR3znAWv','Cursando ensino medio','Ensino Médio Completo','Escola Gregória','2025-12-26','Não, no momento pausei/parei por um período.','Trabalhei empresa de fabricação de alimentos e em marketing digital',NULL,NULL,'Marketing',NULL,NULL,'Facebook','Sim','690.00','Não',NULL,'Que me for ofertado',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-14T14:00:00.000Z'::timestamptz),
  ('Leonardo da cunha de Souza','leonardodacunhadesouza1011@gmail.com',NULL,'51997641836','2006-11-10',19,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1u6wRRsOsD6IKZLcAADkmK68XCJMAqURe',NULL,'Ensino Superior Incompleto','Estadual','2024-11-10','Não, no momento pausei/parei por um período.','Estagiei na Corsan durante um ano. Lá atendi ao público, e fazendo as funções no sistema conforme cliente solicitava.','Estou cursando ensino médio, sei um pouco de informática básica e estagiei na Corsan durante um ano, atendendo ao público etc.',NULL,'Estágio','https://drive.google.com/open?id=17U0WxdPeqvi41UDqe9QtTPp-QOB4sONw',NULL,'Indicação','Nao','650 ou 700','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Gosto muito de aprender coisas novas, cozinhar, jogar vôlei e gosto de conhece pessoas novas','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-14T14:02:00.000Z'::timestamptz),
  ('Morgana dos santos martins','Morganamartins2030@gmail.com',NULL,'995272445','2004-04-03',21,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1KUYTo6FvVz-L_RoDX_sh6e1U2CaRje5q','Nao tenho','Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Portal pedras, aux de escritório,  duração 7 meses 
Pedras multt, aux de produção,  duração 1 ano e 3 meses','Nao tenho no momento',NULL,'Administrativa, Comercial, Financeiro, Marketing',NULL,NULL,'Agência de Empregos','Nenhuma indicação','2000','Não',NULL,'Escritório de administração,  contabilidade','Sou uma pessoa muito prestativa , tenho vontade e facilidade de aprender coisas novas , tenho curso de informática , gosto de trabalhar em equipe.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-14T14:17:00.000Z'::timestamptz),
  ('Maria luciana barsfeldt emcke','luciana.barsfeldt@gmail.com',NULL,'51980513287','1995-11-02',30,'Casado(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1JFAwWNhDce0pAMNfbKgtmh_cLX3nTHgw',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Supermercado gomes 2 anos e meio. Auxilar de padaria.',NULL,NULL,'Administrativa, Comercial, Novos Negócios, Engenharia',NULL,NULL,'Agência de Empregos','Grupo de empregos','1600 a 2000','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-14T14:21:00.000Z'::timestamptz),
  ('Giovanna Cristine Costa Rodrigues','giovannacosta480@gmail.com',NULL,'51997380292','2003-08-21',22,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1ZfemwZm2PlMzX09ooaNilUD44hnb-o1U',NULL,'Ensino Médio Completo','Jovem profissional',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Prefeitura Municipal de Santo Antônio
2) Estágio na junta militar 
3) 05/2021 - 11/2021
4) Responsável pelo atendimento e realização dos alistamentos. Quando não haviam alistamentos para realizar ajudava em outras atividade da gestão de contratos ou organizando planilhas com materiais que haviam de ser comprados ou já existentes no almoxarifado. 
Fiquei apenas os 6 meses de estágio, pois já estava finalizando o ensino médio.

1) Açorina 
2) Operador de caixa 
3) 12/2021 - 03/2022
4) A principal atividade era o atendimento no caixa, em dias de menos movimento podia auxiliar na limpeza de casa prateleiras afim de verificar datas de validade, organização dos freezers e recebimento de mercadorias.
Fiquei este período, pois era um vaga temporária.

1) Supermercado Santo Antônio 
2) Operador de caixa 
3) 03/2022 - 01/2023
4) Incialmente entrei como operadora de caixa, mas logo passei a cuidar dos pedidos que eram feitos pelo WhatsApp ou Instagram, pedidos de lanches, ranchos ou quaisquer outra encomenda. Também sempre auxiliando em tudo que fosse necessário como alguns dias de limpeza ou até mesmo ajudar algum cliente a fazer suas compras. 
Acredito que foi onde mais aprendi a lidar com o público, tive que sair por alguns motivos pessoais','Me formei no ensino médio no colégio Santa Teresinha e no momento estou cursando técnico de enfermagem na jovem profissional, no turno da noite! Tenho alguns outros cursos como informática essencial, secretariado administrativo e contábil na instituição Mundo Office e fotografia com o Édipo Matos.',NULL,'Administrativa, Comercial, Marketing','https://drive.google.com/open?id=1Z_qOZVjXZTgYX0XSXpawfCiaoHmpEY5Z',NULL,'Agência de Empregos','Não','Acredito que na base de um salário mínimo, ou o que estiver à disposição da empresa','Sim','Henrique, gerente do mercado Santo Antônio 
51 984055286','Quero inscrever-me no banco de talentos da Young!','Faço curso na área da saúde, mas sou uma pessoa que gosta de váriasss áreas! Já fiz diversos cursos como teatro e cinema em Porto Alegre, designer de sobrancelha, atendente de farmácia, entre outros que já citei anteriormente. 
No ensino fundamental já fiquei em terceiro lugar na feira ciências, o que acho muito interessante, pois tinha apenas 12 anos. Gosto bastante de trabalhar seja qual for o cargo, para mim poder estar crescendo profissionalmente, como pessoa, e sempre tendo novas experiências é ótimo! Procuro sim um lugar mais fixo, onde eu possa permanecer e dar o meu melhor. Sou uma pessoa muito pró ativa e sempre busco auxiliar em tudo que posso.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-14T14:25:00.000Z'::timestamptz),
  ('Lavínia dos Santos Souza','dlavinia194@gmail.com',NULL,'995676019','2006-03-06',19,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1xyHad6TmVn5h6_Y_I9bjjhgyTVr4MiDk',NULL,'Ensino Médio Completo','Escolha Estadual Professora Gregória de Mendonça',NULL,'Não, no momento pausei/parei por um período.','Meu primeiro emprego foi na loja mercado das tintas.
Meu cargo era vendedora, eu fazia vendas online.
Meu segundo emprego foi na farmácia Muniz.
Meu cargo era de atendente.
Eu atendia no balcão e fazia as arrumações das prateleiras e entre outras coisas.','Meu objetivo é conseguir um emprego, para que eu possa ter uma oportunidade de aprender coisas novas, e ter novas experiências e conseguir completar o ensino médio e assim cursar a faculdade de Direito, e conseguir ser uma juíza bem sucedida!!',NULL,'Estágio',NULL,NULL,'Agência de Empregos','Não','650','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Eu sou uma pessoa muito alegre e comunicativa.
Me dedico muito as minhas tarefas.
Quero muito conseguir um emprego para conseguir novas experiências e pode me dicar bastante e assim crescer dentro da empresa, e desta maneira pode ajudar a empresa no que for preciso.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-14T14:31:00.000Z'::timestamptz),
  ('Kerulyn Santos Schenkel Chaise','kerulynschenkel@gmail.com',NULL,'51999120240','1999-10-09',26,'Casado(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Rdx6Ev0t-BPKtvyhb7h7ekSvcvIBeseu','Psicologia','Ensino Superior Incompleto','FACCAT',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Centro de Atenção Psicossocial-CAPS (2019/2022)
Recepcionista e Auxiliar Administrativo.','Formada no Magistério e cursando o 8º semestre de Psicologia.
Cursos de Módulo Operacional; Operador de Micro; Redes Sociais e Rotinas Administrativas;',NULL,'Administrativa, Marketing',NULL,NULL,'Indicação','Não','R$ 1.500,00 (aproximadamente)','Sim','CAPS- 3662 6772','Quero inscrever-me no banco de talentos da Young!','Dinâmica, comunicativa, responsável, organizada e proativa. Experiência no uso de computadores, atendimento ao público, conhecimento do pacote office, formatação de texto e envio de e-mails.
Interesse na área da Psicologia Organizacional e Marketing.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-14T15:29:00.000Z'::timestamptz),
  ('Pietra Lara Florisbelo da Silveira','pietrasilveira1703@gmail.com',NULL,'51995565094','2008-03-17',17,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=13Hi3oPAzXxyKkUEWFPEdLs96JWKrkwFy',NULL,'Ensino Médio Completo','Escola Estadual de Ensino Médio Patrulhense',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Sem experiência','Estou cursando o 1 ano do ensino médio',NULL,'Estágio',NULL,NULL,'Indicação','Não, não fui','500 reais','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa muito comunicativa, gosto de trabalhar em equipe e sempre dou o meu melhor em todas as tarefas!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-14T15:38:00.000Z'::timestamptz),
  ('Júlia Jesus Messaggi','juliamessaggi1@gmail.com',NULL,'51998362329','2004-07-04',21,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1fiC39-TETPPCBULGvccAY7n5T6Je8Y2J',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Consultório de Fisioterapia e Pilates - Carem Rizzi
Secretária. Toda parte administrativa era somente comigo.',NULL,NULL,'Administrativa, Comercial, Marketing',NULL,NULL,'Agência de Empregos','Não fui','800','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-14T16:14:00.000Z'::timestamptz),
  ('Danielly Paula da Silva','daniellypauladasilva049@gmail.com',NULL,'95991395579','2006-07-15',19,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=18EDvOf7T9cAZMJNi8qWc9ZyfDWmniEIn','não sou formada em nenhum, apenas no ensino médio','Ensino Médio Completo','E.E.E.F Jovelino Theodoro','2020-12-20','Sou formado','não tive empregos em empresas','no momento não','não tenho','Comercial, Estágio','https://drive.google.com/open?id=1PRQmzKSDw5AHtYZcwKxmDh1r2iIVg-9t',NULL,'Indicação','não,não fui','acho que 300 reais','Sim','não, por enquanto sou eu','Quero inscrever-me no banco de talentos da Young!','bom,no momento tô com alguns pensamentos apenas mas nada em prática nenhum por conta financeira,mas pretendo fazer academia, aula de dança e curso de psicologia','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-14T16:19:00.000Z'::timestamptz),
  ('Nikison Portalli','portalli2007@gmail.com',NULL,'51996852037','2007-07-21',18,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1hiPkK1mOoUXhW2VowqJJJK1c4sKylXFS',NULL,'Ensino Médio Completo','Escola estadual de ensino médio patrulhense',NULL,'Não, no momento pausei/parei por um período.','Não passei por nenhuma empresa,estou em busca do meu primeiro emprego.',NULL,NULL,'Marketing',NULL,NULL,'Agência de Empregos','Não','600 reais','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-14T16:44:00.000Z'::timestamptz),
  ('Jean Lucas de Oliveira dos Santos','jean86273@gmail.com',NULL,'55992325445','2005-12-07',20,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=16EhSpl1mEug2RRZYUbJ1l7it1zAOiVUh',NULL,'Ensino Superior Incompleto','Ieesa',NULL,'Não, no momento pausei/parei por um período.','.',NULL,NULL,'Administrativa, Estágio, Financeiro','https://drive.google.com/open?id=1MBaJyUyAjAdl1UovYUgh59gPrcVvO8b8',NULL,'Agência de Empregos','Não','De jovem aprendiz','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-14T16:59:00.000Z'::timestamptz),
  ('Lavínia Dorneles Cardoso','lavinia1dorneles@gmail.com',NULL,'51999497491','2006-12-10',19,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1iOTshxCj9qiWSAImO_4OO9MvL8Ate8Ij',NULL,'Ensino Superior Incompleto','Instituto estadual de educação santo Antônio','2024-12-23','Sou formado','1:Nome da empresa :Colégio Santa Terezinha
2: cargo que ocupei: auxiliar de educação infantil
3: data de início e fim: do dia 22/02 ao dia 07/03
Tive que sair de lá pois CIEE cancelou o meu contrato e como não pode trabalhar sem contrato me mandaram embora','Eu estou no segundo ano do ensino médio cursando o Magistério vou me formar daqui a dois anos não tenho quatro anos completos mas estou cursando',NULL,'Estágio','https://drive.google.com/open?id=1TttQQ08mQMwAuZZN3qYyjwZoSGmTPmwm',NULL,'Indicação','Não','700','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Eu sou uma pessoa muito carismática Eu gosto bastante de estudar agora que eu estou no magistério eu tô gostando bastante de ampliar meus conhecimentos nessa área e eu considerei bastante de aprender coisas novas Eu gosto muito de sair gosto muito de mim sério com meus amigos com meu namorado então tem alguns conhecimentos básicos software e idiomas o seu básico de inglês e é isso','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-14T17:14:00.000Z'::timestamptz),
  ('Ana Clara Magni de Souza','anaclaramagni88@gmail.com',NULL,'51995677862','2007-09-16',18,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1AcVxS7p9HPiT-9mwKu3sci13S2QOLl-Z',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Ainda não tive meu primeiro emprego','Estou cursando o ensino médio','Não','Administrativa, Comercial, Estágio, Financeiro','https://drive.google.com/open?id=1nc2Cxv8pjUu29ri0kGYQ5KqS83nfoc7G',NULL,'Facebook','Não','600','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou divertida,organizadora,e simpática','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-14T19:01:00.000Z'::timestamptz),
  ('Luan Dias Pedroso','carlaisabel12@hotmail.com',NULL,'51998775346','2007-06-27',18,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1y-nStsXdl6smehBCMx9xms4l11i7b9df',NULL,'Ensino Médio Completo','E. E. E. M. Patrulhense','2025-12-20','Não, no momento pausei/parei por um período.','Só curso o ensino médio','Por enquanto tô cursando o ensino médio, mais quero crescer na vida',NULL,'Estágio','https://drive.google.com/open?id=1Bw1EdmRC97B3T1rh0fnFE1EbMCdTdKda',NULL,'Indicação','Não','O que me for proposto','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou um menino esforçado dedicado, estou disposto a trabalhar em qualquer vaga, para ganhar experiência','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-14T19:27:00.000Z'::timestamptz),
  ('Maria Eduarda Killip dos Reis','eduardakillip@gmail.com',NULL,'51996494708','2004-11-23',21,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1RmhMUWhTrlmVi1aAZFkygIGQ5xNYJDRi',NULL,'Ensino Médio Completo','Instituto Estadual de Educação Santo Antônio',NULL,'Não, no momento pausei/parei por um período.','Loja Impacto Moda Atual
Vendedora e caixa
Contratada para final de ano
Agosto/2019 a Dezembro/2019

Loja Impacto Moda Atual
Vendedora e caixa
Contratada para final de ano
Agosto/2021 a Dezembro/2021

Clínica Médica Alfa
Estagiária e Recepcionista 
Abril/2022 a Junho/2022','Estou cursando Magistério pós médio a noite!',NULL,'Estágio, Marketing',NULL,NULL,'Agência de Empregos','Não','690','Não','Clínica Médica Alfa
3662-4000','Vaga para jovem aprendiz','Sou uma pessoa bem comunicativa, que adora ajudar os outros e trabalhar em equipe!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-14T20:08:00.000Z'::timestamptz),
  ('Carla Chaiane Gomes de Souza','carlachaianegomes@gmail.com',NULL,'51998117481','2003-05-24',22,'Solteiro(a)','1','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1XYnXL4KEU59v4Nnn7FbmyPP6ytKXfi0Q','Administração de empresas','Ensino Superior Incompleto','Uniasselvi','2025-12-16','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Casa do sonho 
Garçonete 
21/10/2020 a 19/04/2022
Atendimento ao público.','Curso de rotinas administrativas, Excel e informática básica.','Curso de Rotinas administrativas','Administrativa, Comercial, Financeiro','https://drive.google.com/open?id=1oE2-k4iRkLOhG8Af-BISzkFpNtx1iFkk',NULL,'Instagram','Não','1.800','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Estou a procura de oportunidades na aérea que estudo, tenho facilidade em aprender e boa relação em grupo.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-14T21:16:00.000Z'::timestamptz),
  ('Maria Eduarda Muniz Fofonka','dudamuniz1130@gmail.com',NULL,'996468380','2007-06-07',18,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1X_iFI_OVumynyKNrbC5_r7sNMjGoUCk0',NULL,'Ensino Médio Completo','Escola Estadual de Ensino Médio Patrulhense',NULL,'Não, no momento pausei/parei por um período.','Estou me candidatando ao primeiro emprego.','Sou estudante de Ensino Médio, e desejo a vaga de Jovem Aprendiz.',NULL,'Administrativa, Estágio, Marketing','https://drive.google.com/open?id=1PR5X9mc-svoTq_I-BGEbW1aYCoV1L87O',NULL,'Agência de Empregos','Não','690','Não',NULL,'Jovem Aprendiz','Estou em busca do meu primeiro emprego, sou totalmente sociável, tenho facilidade em me comunicar, estou cursando Ensino Médio, quero fazer alguns cursos de informática, inglês…  
Gosto muito de estar com a família e amigos, tenho uma paixão por animais, gosto de estar perto deles.
Nasci em Porto Alegre, mais sempre morei em Santo Antônio da Patrulha, conclui meu Ensino Fundamental na Escola Nossa Senhora de Fatíma e atualmente estudo na Escola Patrulhense.
Vejo como nossa cidade está crescendo cada vez mais e as empresas estão tendo um papel fundamental neste processo, como moro perto da “Young Empreendimentos “ vejo claramente a estrutura e desenvolvimento da empresa, por estes e outros motivos gostaria de me candidatar à vaga de Jovem Aprendiz, sou cadastrada ao CIEE-RS.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-15T00:57:00.000Z'::timestamptz),
  ('Laura Cristina Zago Crotti','laura_crotti@hotmail.com',NULL,'+5543996455285','1996-12-02',29,'Solteiro(a)','0','Sim','Londrina/pr','https://drive.google.com/uc?export=view&id=1dMBYfAx9cZn5rnmG8J7dZn8zfECMsWs1','Engenharia Civil','Ensino Superior Completo','Unopar','2021-03-01','Sou formado','1- Aciem 2- Assistente de analista financeiro
3- 13/06/2022 emprego atual 
4- Empresa de consultoria financeira,  qundo entrei fazia doto faturamento para empresas que nos comtraram em BPO. Logo depois comecei cuidar do contas à receber e pagar de outra empresa que pretavamos serviço. Nessa empresa realiza compras,  negociação ( cobrança como pagamentos pendentes), e conciliação bancária para análise.','Pós graduação em gestão de pessoas e projetos incompleto','Diploma','Administrativa, Financeiro, Engenharia','https://drive.google.com/open?id=1UU5jvYvRv5WPtDc9zhFV9tysRkq_bdGb',NULL,'Agência de Empregos','Não','R$4.000,00 ABERTO A NEGOCIAÇÃO','Sim',NULL,'Engenheiro Civil','Gostaria de um chance na área de engenharia civil, não tenho experiência em obras. 
Tenho experiência no setor financeiro e em compras. Preciso apenas de uma chance, para assim adquirir conhecimento.

Agradeço.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-15T04:09:00.000Z'::timestamptz),
  ('Jardel Luiz Silveira da Silva Filho','jardelluizfilho@gmail.com',NULL,'51996841882','2005-11-18',20,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1V68WtpbIuaZMTRL26bI8OHlv_OFb4tR1',NULL,'Ensino Médio Completo','E. E. E. M. Patrulhense',NULL,'Não, no momento pausei/parei por um período.','1) zemaq móveis para escritório
2) auxiliar administrativo e auxiliar no transporte de mercadorias 
3) de 2019 até os dias atuais
4) Aulixar no transporte, montagem e organização das mercadorias, auxiliar no setor administrativo e demandas gerais (limpeza, organização e gestão do escritório)',NULL,NULL,'Administrativa, Estágio, Marketing, Novos Negócios','https://drive.google.com/open?id=1peqkc0A0O4hfx-oAPPSL4ki-Zj8h6VeC',NULL,'Indicação','Não','R$600,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Estou cursando o 3° ano (terceiro ano) do ensino médio. Tenho facilidade com informática no geral e possuo um nível intermediário de inglês.
Futuramente pretendo cursar ciência da computação na Universidade Federal do Rio Grande do Sul (UFRGS).','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-15T11:54:00.000Z'::timestamptz),
  ('Marcela de Barcelos Selbach','marcelaselbach49@gmail.com',NULL,'51995905887','2006-08-17',19,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1gOnFSPfyZH1ALRcSyM1joWTBBdSI5Fb-','Ainda não entrei na faculdade.','Ensino Médio Completo','Colégio Santa Teresinha',NULL,'Não, no momento pausei/parei por um período.','Não trabalhei antes, estou me candidatando ao meu primeiro emprego.','Cursando o ensino médio no colégio Santa Teresinha, fazendo curso de técnico em administração do senac e com certificado de empreendedorismo digital do senac também.',NULL,'Administrativa, Estágio, Financeiro',NULL,NULL,'Indicação','Não','Não tenho.','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Eu faço curso de inglês, tenho domínio do pacote básico Office, tenho curso de empreendedorismo oferecidos pela escola com certificado.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-15T11:59:00.000Z'::timestamptz),
  ('Dionathan Silva Pesenti','dionathansilvapesenti@gmail.com',NULL,'51996032746','2006-03-12',19,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1q7Rm_lm6o211HotxSBTynompxaCdwius',NULL,'Ensino Médio Completo','Escola Patrulhense','2023-03-15','Não, no momento pausei/parei por um período.','Estou me candidatando ao meu primeiro emprego',NULL,NULL,'Administrativa, Estágio','https://drive.google.com/open?id=1O6deogzW586p87LMEPMpi4aFx6f2SQpU',NULL,'Indicação','Não','R$ 500,00 até R$ 7000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Eu tenho facilidade em usar o windows e alguns programas de edição como o Photopea  e o Canva','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-15T18:19:00.000Z'::timestamptz),
  ('João Vitor Pias Lima','jvpiaslima@gmail.com',NULL,'51996884484','2004-06-06',21,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=11na6o8DRzVogWBrWzPRjGKJTUURS0kM4','Psicologia','Ensino Superior Incompleto','UNICNEC - OSÓRIO',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','ESTOU ME CANDIDATANDO AO PRIMEIRO EMPREGO','CURSO TÉCNICO EM INFORMÁTICA INCOMPLETO',NULL,'Administrativa, Estágio, Marketing','https://drive.google.com/open?id=1l9eBIDT25pyWHEpbyzvmbyjnIhvZ9LpF',NULL,'Indicação','DAIELI FERREIRA','SALÁRIO MINIMO','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','GOSTO DE INFORMÁTICA, SEI FALAR EM INGLÊS ASSIM COMO ESPANHOL','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-15T20:14:00.000Z'::timestamptz),
  ('Grazieli brito da silva','graziellisilva95@gmail.com',NULL,'989375640','1995-07-09',30,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1qCExKmyHhQh5c1g_ahR9w-x5BKjkiE1P','Não tenho','Ensino Médio Completo','Instituto Estadual de Educacão Santo Antônio','2014-12-23','Não, no momento pausei/parei por um período.','Trabalhei na empresa Samuel Rodrigues dos Santos desde 2014 ate 2022 como operadora de caixa
Trabalhei na empresa MF Gomes e cia Ltda
De maio de 2022 ate dezembro de 2022 como operadora de caixa
Trabalhei na empresa Bijuterias Santo Antônio como vendedora','Curso de Rotinas administrativas','Tenho curso Rotinas Administrativa','Estágio','https://drive.google.com/open?id=1zjof-7IMmjr22LkSXzjNxFURVgxFCr9p',NULL,'Facebook','Não','1800','Não','996766451 Empresa Samuel Rodrigues dos Santos','Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa bem tranquila gosto muito de trabalhar com vendas 
Quando nao estou trabalhando estou nas redes sociais ou procurando aprender','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-16T14:00:00.000Z'::timestamptz),
  ('Sara Carolina da Silva Oliveira','saracarolinadbv70@gmail.com',NULL,'51995774329','2002-03-25',23,'Casado(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1g1IA_BC54-tqK7iNOQ_3BPAwXuFbmkcr',NULL,'Ensino Superior Incompleto','Uniasselvi',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Confecções Diju Modas. 2019 - 2020 
Serviços gerais
Gerenciamento em geral de peças de roupas em seu processo de fabricação.

E.M.E.F Madre Teresa. 2021
Estagiária/Monitoria. 
Auxiliando crianças com algum tipo de deficiência ou dificuldade na aprendizagem.
E.M.E.F José de Anchieta. 2022
Estagiária/Monitoria.
Auxiliando crianças com algum tipo de deficiência ou dificuldade na aprendizagem.
Substituição de professores em todas as matérias.
Auxiliando na secretaria escolar.

E.E.I. Nana Nenê. Atualmente 
Auxiliar de Educação Infantil
Meio turno. Ajudando na rotina da crinaças, como troca de fraldas, alimentação, entre outras coisas.','Oficina de Embelezamento - 110h - CRAS - 2016.
Primeiros Socorros nas escolas - 40h - Uniasselvi - 2021.
Reinventando novas e velhas práticas - 10h - Uniasselvi - 2021.
Atendimento educacional especializado - 20h - SEMED - 2021.
Método 10 - Automaquiagem - 12 h - Karol Resende - 2022. 
Autismo - precisamos falar sobre isso - 8h - AMP - 2022
Brinquedoteca: a prática do curso de Pedagogia - 30h - Uniasselvi - 2022. 
Informática Básica - 40h - Uniasselvi - 2022. 
Word Básico - 10h - Uniasselvi - 2022.
Alfabetização na Prática - 4h - Profª Fernanda Dias - 2023.',NULL,'Estágio','https://drive.google.com/open?id=1i8wYo87evyjeTBYg5vMXP5tem8tCcY3D',NULL,'Agência de Empregos','Não','700','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Me chamo Sara Carolina, tenho 20 anos e sou casada a 2 anos.
Sou Adventista do Sétimo Dia, me identifico muito com essa religião, o que fez eu ser o que sou hoje, "trabalhei" por anos na sonoplastia da igreja, na secretaria (aprendi muita coisa nesse cargo), e principalmente no clube de Desbravadores. Faço pedagogia, além de me identificar muito na área da educação, gosto muito de trabalhar como secretária também. Gosto de aprender coisas novas, sou muito dedicada em cada área da minha vida.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-16T14:22:00.000Z'::timestamptz),
  ('Heider Duarte Lacerda','heider.lacerda@hotmail.com',NULL,'51998931547','1989-03-13',36,'Casado(a)','1','Sim','Glorinha/rs','https://drive.google.com/uc?export=view&id=1Sd-gDtIeQ4g152AF0jhyjKD0-s23Pp6t','Não sou formado ainda , mas com intenção de cursar .','Ensino Médio Completo',NULL,NULL,'Sou formado','Vendedor interno com larga experiência em vendas , habilidades : Emissão de nfs , experiência em sistema SAP , Manutenção preventiva , resposta atempada a situações de emergência , Detecção de problemas , flexibilidade , espirito de iniciativa , pensamentos estratégicos e líder da loja por 3 anos  . Atualmente trabalho na HANSA-FLEX DO BRASIL FILIAL EM SANTO ANTONIO DA PATRULHA - RS , Data que fui admitido 12.03.2018 .',NULL,'Curso de 200 HORAS Eletricista - SENAI','Comercial','https://drive.google.com/open?id=1QEzFj51fmeTuzhuJjkw-rpAiv368PjH7','https://drive.google.com/open?id=1_RdiHszAI7s_B2_VsXE-hIy93rw7ti6I','Indicação','Não','A combinar com a empresa .','Sim','Drebes e cia ltda loja em Glorinha - RS (outubro de 2016 até 05.12.2018)(Motivo da minha saída foi uma oportunidade melhor que recebi da HANSA-FLEX ) Na loja  realizava vendas direta , Organização de setores , vm , e reposição de produtos .Administrando minhas metas individuais , sempre entregando resultados , priorizando um bom atendimento aos meus clientes , fidelizando , enviando telemarketing com lançamentos .','Comercial','Tenho muita disposição para aprender , quero muito poder crescer profissionalmente e estou disposto a estudar ou cursar para ter mais conhecimentos .','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-16T18:54:00.000Z'::timestamptz),
  ('Gabriela Silva dos Passos','gabrielapassos857@gmail.com',NULL,'996620719','2004-09-27',21,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1ILAcwCJXv7kc60zzOUS7BZo8O7cvwRTC','Administração','Ensino Superior Incompleto','Uniasselvi',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Agropecuária Passos; atendente e caixa; período de 2018- 2019, totalizando 2 anos sem registro em carteira de trabalho; realização de controle de estoque, saídas e entradas de notas, cuidando de todo sistema em geral.

Fame Sistemas de segurança; secretaria; período de 2021-2022, fechando o total de 1 ano e 4 meses; controle de contas a pagar, cadastros em sistema e realizações de notas.','Instituto Federal Sul Rio Grandense- assistente financeiro- 160 horas.
Instituto Federal Sul Rio Grandense- Educação financeira- 40 horas.
Instituto Federal Sul Rio Grandense- Assistente de contabilidade- 160 horas.','Apenas carta de recomendação.','Administrativa',NULL,NULL,'Instagram','Não','Salario em média 1.400,00','Não','99867-1895- Enecildo, agropecuária Passos
99968-8231- Fame sistema de segurança','Vaga para administração ou financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-17T00:05:00.000Z'::timestamptz),
  ('Lidiane da Silva Silveira.','lidysilva2006@gmail.com',NULL,'996711751','2006-04-28',19,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1NzJ0nP8GX-eDuT5oWzw6QYR6hBciffQM',NULL,'Ensino Médio Completo','E.E.E.M. Patrulhense',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Trabalho na empresa Santo Açaí Patrulhense com atendimento ao público, parte financeira e divulgação dos produtos da empresa.
Dei início em 02/10/2022 e trabalho atualmente somente aos domingos e feriados.','Concluí dois cursos de informática onde teve duração média.',NULL,'Estágio',NULL,NULL,'Facebook','Não','R$800,00','Não',NULL,'Estágio Financeiro','Habilidades
Computação
Financeira
Atendimento ao público
Artes marciais - Judô 

Certificados
Unialcance na área de informática - Redes Sociais
Unialcance na área de informática - Photoshop
Prêmio Jovens Talentos como aluna destaque
Jovem cientista','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-18T14:30:00.000Z'::timestamptz),
  ('Carlos Germano da Silva Lima','silvagermanolima@gmail.com',NULL,'51996571916','2006-11-12',19,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1LAt1mBdfBQo2uvFu8dd-o0ggf9XVm39T',NULL,'Ensino Médio Completo','E.E.E.M Patrulhense','2024-12-10','Não, no momento pausei/parei por um período.','Alugar (firma de parente): assistente em serralheria, serviços de Marketing é serviços bancários...','Estou cursando o Ensino médio na escola Patrulhense,estudando matérias que me despertaram interesses de trabalhar na empresa, por meio de Jovem aprendiz',NULL,'Estágio, Financeiro, Marketing','https://drive.google.com/open?id=1yBrdS7LqXamgr0-8ANIbh4AEOTDEu4I6',NULL,'Facebook','Não fui.','Salario de jovem aprendiz, de R$ 600,00  a R$ 800','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Eu Sou Germano, tenho 16 anos e desde sempre fui apaixonado por esportes e computadores, aprendi o pacote office na marra, sozinho, informática em geral,  apenas assisntindo videos, fiz Jiu-jitsu por 5 anos e tenho troféus e medalhas em futebol e maratona. Sou um garoto bem eclético, amo desafios, muito falante e adoro desafios, gosto muito de me expressar e conversar bastante.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-18T17:08:00.000Z'::timestamptz),
  ('Felipe Ambrosini da Silveira','felipefreefire982@gmail.com',NULL,'996136287','2008-07-12',17,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1-bxAP_dph6VMRsbUPkHcbc9VjSk7IK7P',NULL,'Ensino Médio Completo','Escola estadual nsa. Sra. Fátima','2023-12-20','Não, no momento pausei/parei por um período.','Jovem aprendiz',NULL,NULL,'Estágio',NULL,NULL,'Facebook','Não','R$600,00','Não','Davila auto peças e mecânica','Jovem aprendiz','Gostaria muito de uma oportunidade de emprego para iniciar no mercado de trabalho. 
 Sou esforçado, aprendo fácil e preciso trabalhar para ajudar minha mãe.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-18T20:12:00.000Z'::timestamptz),
  ('Nicoly Dorneles','nicollydorneles89@gmail.com',NULL,'5551998666733','2006-07-13',19,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1W45wlpFec6GPBjsWJ3PCyulRbqopsd43',NULL,'Ensino Médio Completo','E.E.M Prof Gregória de Mendonça',NULL,'Não, no momento pausei/parei por um período.','1) RR Shoes 2) trabalhador polivalente 3) 16/01/23 e 13/03/23',NULL,'Não','Estágio',NULL,NULL,'Facebook','Não','De acordo com minhas experiências profissionais','Não',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-19T20:04:00.000Z'::timestamptz),
  ('Pamela souza da Silva','ps6989903@gmail.com',NULL,'19984442930','1996-08-09',29,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1oKrb8wwmRJjGVKCHWLndq1KiD0Ila6AK',NULL,'Ensino Superior Incompleto',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','No momento, estou atualmente em uma indústria alimentícia, Doces Santo Antônio. Na área da produção, e estou à 9 meses.','Estou cursando técnico de administração e marketing. E curso graduação de Nutrição na universidade.',NULL,'Administrativa, Comercial, Marketing, Engenharia','https://drive.google.com/open?id=1qH5_sURUsunGiS2PTkay2LMHcYywgx9B',NULL,'Google','Nao.','2.000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Olá, tudo bem?
Bom, sou uma pessoa proativa, esforçada,tenho facilidade em aprender,sou simpático, educada,tenho empatia e sei lidar com pessoas. Estou estudando administração e marketing e acho que a Young seria lugar ideal para começar a trabalhar nessa área.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-19T21:27:00.000Z'::timestamptz),
  ('Pedro Henrique Krech da Silva','pedrohenriquekrech@gmail.com',NULL,'51995424030','2006-08-29',19,'União estável','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1gytAn-U3Mc3e_5Xg-iD-spStBQRhEZXe',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Trabalhei como cuidador de menores
Limpeza de banheiros
Afiliado digital
Ajudando de vendas.',NULL,NULL,'Estágio, Financeiro, Marketing, Novos Negócios','https://drive.google.com/open?id=1OmCM60Q38KrQ3C1Hj_uwgJMP-MO8kYrU',NULL,'Indicação','Não foi indicado por ninguém.','600 ou mais.','Sim',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-20T04:27:00.000Z'::timestamptz),
  ('Giovane silveira oliveira','giovanecremonini@gmail.com',NULL,'55981176645','1996-04-03',29,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=130Js0IA8EX6VLQ4ZxCrD8EGNCiy_-xTS','Ajudante de produção','Ensino Médio Completo',NULL,'2023-03-20','Não, no momento pausei/parei por um período.','Benapar geotecnia',NULL,'Nr 10','Engenharia','https://drive.google.com/open?id=11a4eBnLFymhNLrHRL648TldZmS7GidlH','https://drive.google.com/open?id=1Mif2fZ2vKdZa_6tYIUM0JGH6YKYrZZyI','Agência de Empregos','Não','Mais de um ou dois salários','Sim','Diego lautert +55 42 8836-7404','Fazer parte da empresa','Nao','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-20T12:11:00.000Z'::timestamptz),
  ('luisa tedesco Santos','tedescosantosluisa@gmail.com',NULL,'51995221125','2006-02-18',20,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1QvcFdScbPJXeFSfOwkAnyVSb3aNe4lHh','Nao tenho','Ensino Médio Completo','Nao tenho',NULL,'Não, no momento pausei/parei por um período.','na primeira empresa que eu trabalhei e única eu vendia Internet fibra ótica','Não tenho','Nao','Marketing',NULL,NULL,'Indicação','nao','eu ganhava 600 a 700 reais por que era só meio turno','Não','Não','nao','bom eu sou uma pessoa que gosta de falar bastante, sou muito comunicativa,sou uma pessoa calma ,estou terminando o ensino médio agora,estou a procura de desafios e conhecimentos!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-20T16:25:00.000Z'::timestamptz),
  ('Jaqueline Garcia de Fraga','jaquelinefraga37@gmail.com',NULL,'51980432957','1992-08-03',33,'Solteiro(a)','1','Sim','Caraá/rs','https://drive.google.com/uc?export=view&id=1vviUhdyHx-vvfpiBBrflLet4kiqf_6R7',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','RR Braga 
Fábrica de calçado 
Duração: 3 anos',NULL,NULL,'Novos Negócios',NULL,NULL,'Facebook','Não','1800','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Hoje estou a procura de uma vaga de emprego diferente do que sempre trabalhei. Que foi em fábrica de calçado.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-20T21:10:00.000Z'::timestamptz),
  ('Vanessa Dias Borba','vanessadiassap@gmail.com',NULL,'51998954730','1988-03-01',37,'Solteiro(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1TwZujFL8a18L83qxJXgfPc-6RX2cMDNB','Ciências Contábeis','Ensino Superior Incompleto','EEF Riachuelo','2015-12-12','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','RH da prefeitura de Xangrilá, assistente administrativo pousada',NULL,NULL,'Administrativa, Estágio, Financeiro, Novos Negócios','https://drive.google.com/open?id=1CjbxmXOs6SUMpbvClclZSmWNf9fR9AA4',NULL,'WhatsApp','Não','A combinar','Sim','Prefeitura municipal de Xangrilá','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-21T14:53:00.000Z'::timestamptz),
  ('Vanessa de Oliveira Jannuzzi','vanessa.ol.jannuzzi@gmail.com',NULL,'21983821844','1992-05-17',33,'Solteiro(a)','0','Sim','Niterói/rj','https://drive.google.com/uc?export=view&id=1oldhGxhYz-iNAtVSciu1yrK3Zv81gb0v','Engenharia Civil','Ensino Superior Completo','Universidade do Estado do Rio de Janeiro','2022-02-08','Sou formado','Analista de engenhariaAnalista de engenharia
Prefeitura de Niterói - SMA · Tempo integralPrefeitura de Niterói - SMA · Tempo integral
abr de 2018 - o momento · 5 anosabr de 2018 - o momento · 5 anos
Niterói, Rio de Janeiro, BrazilNiterói, Rio de Janeiro, Brazil
Atuando com georreferenciamento e geoprocessamento de dados para lançamentos e manutenção da plataforma pública Civitas (https://geo.niteroi.rj.gov.br/civitasgeoportal/) no setor de arborização urbana. Controle de atividades, serviços executados e acompanhamento de obras.

Estagiária de engenhariaEstagiária de engenharia
Prefeitura de Niterói - SMA · Meio períodoPrefeitura de Niterói - SMA · Meio período
jan de 2016 - fev de 2018 · 2 anos 2 mesesjan de 2016 - fev de 2018 · 2 anos 2 meses
Niterói, Rio de Janeiro, BrazilNiterói, Rio de Janeiro, Brazil
Estagiária de engenharia civil no setor de manutenção asfáltica na Secretaria de Conservação de Serviços Públicos (SECONSER). Vistorias, requisição de materiais e relatórios diários em obras de pavimentação, recapeamento, terraplenagem e drenagem. Acompanhamento de obras de desenvolvimento urbano com o projeto "Prefeitura presente".',NULL,NULL,'Comercial, Novos Negócios, Engenharia','https://drive.google.com/open?id=1edSSpmVb02UvRBdcvLJy2BjLsGxX6Zau',NULL,'Agência de Empregos','Não.','3000','Sim',NULL,'Engenheiro Civil','Formada em Engenharia Civil, com ênfase em construção civil, pela Universidade do Estado do Rio de Janeiro (UERJ). Estagiei por dois anos na prefeitura de Niterói, no setor de manutenção asfáltica, acompanhando obras de pavimentação, terraplenagem, macrodrenagem, recapeamento e desenvolvimento urbano com o projeto "Prefeitura Presente". Atualmente trabalho com georreferenciamento e geoprocessamento de dados na área de arborização urbana na prefeitura de Niterói visando o levantamento censitário para controle e planejamento de serviços. 
Sou comunicativa e focada em desempenhar bem minhas funções com o objetivo de adquirir novas experiências almejando o desenvolvimento profissional.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-21T15:37:00.000Z'::timestamptz),
  ('Lithyeli Santos Messaggi','lithyelimessaggi@gmail.com',NULL,'51997400522','2006-11-24',19,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1D_kOX1xL8Zpq4ejXiMQ6IxTGlE3K_DTl','Não tenho.','Ensino Médio Completo','Escola Estadual Ensino Médio Patrulhense',NULL,'Não, no momento pausei/parei por um período.','INSTITUTO NACIONAL DO SEGURO SOCIAL- INSS, cargo serviços de administração pública, comecei em janeiro de 2023 como estagiária, e estou até o presente momento, atividades realizadas: recepção, senhas e passo informações/orientações.','Trainee Coaching 1 (administração informatizada)
Língua Inglesa- Nível Básico','Trainee Coaching 1 (administração informatizada) Língua Inglesa- Nível Básico','Administrativa, Comercial, Estágio, Financeiro',NULL,NULL,'Por Ser Próximo A Minha Residência E Por Conhecidos Que Trabalham Na Empresa.','Giulia','Não tenho  um salário inicial em mente.','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-21T20:11:00.000Z'::timestamptz),
  ('Maria Clara da Silva Medeiros','mariaclarasilvamedeiros88@gmail.com',NULL,'999204030','2008-05-12',17,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1u5jwWr7psCJz7URTPQ5o_5pR0xiPkPb3',NULL,'Ensino Médio Completo','Escola Municipal de Ensino Fundamental Nossa Senhora de Fátima','2023-12-20','Não, no momento pausei/parei por um período.','Jovem aprendiz, tentando vagas',NULL,'Não tenho','Administrativa, Marketing','https://drive.google.com/open?id=1o-fUV-uq3y9xO8NJoCwe4U7eo4YPrio6','https://drive.google.com/open?id=1EAthQcB6XPwZdbfLWo2O2s1lPsr9WTtJ','Facebook','Não','610','Não','Não tenho','Jovem aprendiz','Tenho uma expectativa de conseguir uma vaga de emprego nesta empresa, para me inserir no mercado de trabalho, buscando minha primeira experiência profissional.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-21T21:15:00.000Z'::timestamptz),
  ('Henry Jerônimo','kelithayla8@gmail.com',NULL,'51997974793','2008-05-06',17,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1TADDq492XT3FmgE1edoEmwxbJox2ul3v',NULL,'Ensino Médio Completo','Escola Estadual de Ensino Medio Patrulhense',NULL,'Não, no momento pausei/parei por um período.','Estou me candidatando aos meu primeiro emprego.',NULL,NULL,'Administrativa, Marketing',NULL,NULL,'Instagram','Não','À combinar','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Eu tenho habilidades em desenho e em softwares de edição, sou uma pessoa que aprende muito fácil e gosto de trabalhar em grupo pra aprender com os outros.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-22T00:04:00.000Z'::timestamptz),
  ('Anne Caroline dos Santos Braga','annebraga2004@gmail.com',NULL,'998847021','2004-06-22',21,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1CJX03Cv0JuUvOp6DmCbysRklU0IoPbek',NULL,'Ensino Médio Completo','Instituto Estadual de Educação Santo Antônio','2022-12-17','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Estou me candidatando ao meu primeiro emprego.','-Curso de inglês básico Unialcance (concluído em 2016);
-Curso de Telemarketing e Call Center/35 horas por Certificados de Cursos Online (concluído em 2023);
-Curso de Atendimento ao Cliente/30 horas por Certificados de Cursos Online (concluído em 2023).',NULL,'Estágio',NULL,NULL,'Facebook','Não','R$600,00','Não',NULL,'Estágio Financeiro','- Cuidadora de crianças (2017);
- Monitora de transporte escolar (2020);
- Habilidade em auxiliar de cozinha e confeitaria.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-22T23:20:00.000Z'::timestamptz),
  ('Manuella de Almeida Dos Santos','manukawaii2008@gmail.com',NULL,'51991340946','2008-10-01',17,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1NfOmROsYDu6vtCvXWDDC5dmqOWq4b7A9',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','procuro meu primeiro emprego como jovem aprendiz.',NULL,NULL,'Estágio','https://drive.google.com/open?id=1VlSkrBe6YkIIFFZszv6_xQZLypmN6TZD',NULL,'Instagram','Não','Desejo apenas iniciar no mercado de trabalho','Não','Maurilio - 51999871997 - Simpay','jovem aprendiz',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-22T23:54:00.000Z'::timestamptz),
  ('Manuela Adam','manuadam959@gmail.com',NULL,'51995500784','2006-11-06',19,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=169i7UYwQoE1Kfko6M9lsrp9YWNSoRJFS',NULL,'Ensino Médio Completo','E.E.E.M Patrulhense','2024-12-15','Não, no momento pausei/parei por um período.','Estou me candidatando para primeiro emprego.','Tenho um curso chamado Trainee Coaching, no qual inclui, secretariado, contabilidade em Excel e pacote Office, além de preparo para empresas e treinamento de vendas. Também possuo inglês intermediário e estou aprimorando-o com um curso online com duração de 1 ano.','Ainda não.','Estágio','https://drive.google.com/open?id=1ZHAm5SQ-AFvgpS_Ugt1PJjUoLl8t147k',NULL,'Instagram','Não.','600','Não','No momento ainda não possuo nenhuma referência.','Quero inscrever-me no banco de talentos da Young!','Então, sou muito comunicativa, tenho habilidades com relacionamentos interpessoais e tenho muita facilidade em criar novos vínculos. Sou dedicada e cumpro com as demandas designadas a mim. Consigo trabalhar em grupo e auxiliar na criação de novos projetos, sempre prezando a evolução mútua.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-23T02:22:00.000Z'::timestamptz),
  ('Pedro Guimarães Ourique','pedro.g.ourique@gmail.com',NULL,'51980584781','2005-09-24',20,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=12C9lmJP9Ge4e2scoN9shpVl2V_GyWzTA','Economia','Ensino Médio Completo','E.E.E.M Patrulhense','2024-12-15','Não, no momento pausei/parei por um período.','Estou me candidatando ao meu primeiro emprego.','Inglês fluente (English Place, conclusão em 2019) ;
Curso de Extensão de Banco de Dados 1: fundamentos (Instituto Federal RS, conclusão em 2022);
py4e101x: Programming for Everybody (University of Michigan, conclusão em 2022);
2 anos de curso Técnico em Informática Integrado ao Ensino Médio Instituto Federal RS (2021 e 2022);
Fundamentals of digital marketing (Google Digital Garage, cursando);
Understand the basics of code (Google Digital Garage, conclusão em 2023);',NULL,'Estágio','https://drive.google.com/open?id=1oltdBvImLTqib8prOCcKoE9F2hpMhwNu',NULL,'Instagram','Não.','R$600,00 á R$700,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho vasto conhecimento na área de TI, e conhecimento superficial na área de programação em JAVA e Python. Domino tanto o portugês quanto o ingles. Durante o meu tempo livre faço academia e gosto de tocar violão e guitarra. Quando me resta um tempo mesmo depois de realizar as tarefas que citei anteriormente, gosto de programar coisas simples no computador. Viajei diversas vezes aos Estados Unidos, por isso acabei me tornando fluente em ingles muito cedo, o que me fez terminar o meu curso junto com pessoas bem mais velhas, o que na época era impressionante.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-23T02:36:00.000Z'::timestamptz),
  ('Manuella Vargas Rosa','manuellavargasrosa@gmail.com',NULL,'51980140832','2002-06-09',23,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=11r0kV6gU2DuICsHJfT0ChMSLgsIxvGm1',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Supermercado Sabiá
Cargo: operadora de caixa
Fazia um pouco de tudo lá 
Data: 10/05/2021 até 01/07/2021
Acerte atacado e varejo
Cargo: operadora de loja 
Ficava no atendimento
Data: 02/12/2021 até 04/11/2022',NULL,NULL,'Administrativa, Comercial, Financeiro',NULL,NULL,'Facebook','Não','Um salário base','Sim',NULL,'Administrativo','Sou uma pessoa mais timida, mas me saio bem em trabalho com público ou sozinha. Quero fazer um curso na área de saúde. Procuro esse emprego pra adquirir novas experiências','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-23T14:49:00.000Z'::timestamptz),
  ('João Vitor bicca','joaoconsultorfoes@gmail.com',NULL,'5198865157','1998-04-13',27,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=135c6LRxIC2rEOanCrYBsjYJd3Scy1UEz','Ecommerce','Ensino Médio Completo','Unifael','2025-02-04','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Realiza imobiliária',NULL,'Excel, word','Comercial','https://drive.google.com/open?id=1R9hAKyYVrhXT2JQz6EMdPyxkfIf3Lz6m',NULL,'Agência de Empregos','Não','Salário do comércio','Não',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-23T14:49:00.000Z'::timestamptz),
  ('Kwellry Priscila Oliveira Da Silva','pkwellry@gmail.com',NULL,'996460174','2005-09-01',20,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1dO_zKzqknG1TxfMrQeICOoN9WEe290dg',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Banco do Brasil 
Organização do setor, Arquivos e trabalho ao público .','Não fiz curso','Não','Administrativa','https://drive.google.com/open?id=1V_UlUfWYV3F3okA56ZKg19ox1igTENDD',NULL,'Indicação','Não','700R$','Não','Eliminar (993698118)','Arquivar/ organizar','Eu sou extrovertida, sou paciente, com pessoas que eu não conheço fico tímida,porém puxo conversa, também tenho força de vontade de aprender coisas novas, gosto bastante de conversar, eu danço em CTG','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-23T15:42:00.000Z'::timestamptz),
  ('Giovane silveira oliveira','giovanecremonini@gmail.com',NULL,'55981176645','1996-04-03',29,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1inl7S-0RD6VSpX3O38rU3j8beKFmfE7_','Ajudante de produção','Ensino Médio Completo','Doutor Abreu fialho','2023-03-23','Não, no momento pausei/parei por um período.','Benapar geotecnia',NULL,'Nr10 nr 16','Engenharia','https://drive.google.com/open?id=1JaYoDXvFGsJM6m9HN10D3nHn_vaewlJw','https://drive.google.com/open?id=1e0rJiYZJDYwUsKaiwz-7efNlHeN1XHDS, https://drive.google.com/open?id=1OSM4yMa70IMWMm0wgZWb5ieb_qr16QTR, https://drive.google.com/open?id=1L8hnqC8Vjo21MulkFQKuEQZIQ6DHKE-1','Facebook','Não','Acima de dois salários mínimo','Sim','+55 42 8836-7404 meu encarregado','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-23T16:03:00.000Z'::timestamptz),
  ('Maria Eduarda Ribeiro dos Santos','eduardarsantos21@gmail.com',NULL,'51980282471','2000-01-21',26,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1BcW9ZVJpL1nVJJ_rtdT5t_Iix1sOo5El','Administração de empresas','Ensino Médio Completo','Uniasselvi','2025-03-23','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Supermercado Gomes
Atendente de padaria
Agosto/2020 a Março/2021 
Ajudava no atendimento ao cliente, organização do ambiente de trabalho.

Adocei confeitaria
Auxiliar de confeitaria
Setembro/2022 a Abril/2023
Auxiliava nas encomendas, organização de ambiente de trabalho.',NULL,NULL,'Administrativa, Comercial, Marketing','https://drive.google.com/open?id=1F8f22lseTAqX3cQ_FfGUqlxjE1OV9sJR',NULL,'Facebook','Nao','1.500,00','Sim','Adocei confeitaria
51 999738375','Quero inscrever-me no banco de talentos da Young!','Tenho curso de design de sobrancelhas, sou muito comunicativa, tenho muita vontade de aprender coisas novas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-23T16:22:00.000Z'::timestamptz),
  ('Diesica da Silva Maciel','dihhsilva305@gmail.com',NULL,'51992508305','1995-09-27',30,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1kLVPhHdnCIOHAVK6vAVvIdpWPR46Klox',NULL,'Ensino Médio Completo','Escola jovem profissional','2023-01-30','Não, no momento pausei/parei por um período.','RR shoes-colador de taloneira 
Ab calçados-colador de taloneira','Básico em informática',NULL,'Administrativa, Comercial, Financeiro',NULL,NULL,'Facebook','Nao','1700','Não',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-23T19:04:00.000Z'::timestamptz),
  ('Mariana Janaína Dias da Cunha','eumarianacunha@gmail.com',NULL,'51997508593','2001-02-02',25,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1hdfFE2olX7wdHVfcj3Wo-1e3POhAxYr3','Administração de empresas','Ensino Superior Incompleto','Universidade Federal do Rio Grande','2024-12-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','RR Shoes Via Uno - Analista de Sistema de Gestão Integrado - Jan de 2020 á Março de 2023
Atividades: Sistema de Gestão da Qualidade, Gestão de Auditorias de Responsabilidade Social (Trabalhista, Meio Ambiente, Saúde e Segurança) Gestão de Projetos, Desenvolvimento de Controles, Indicadores de Gestão, Compliance e Treinamentos.','Sou estudante de Administração na Universidade Federal do Rio Grande e iniciei o curso de Gestão de Recursos Humanos na UniCesumar em fevereiro de 2023.
Tenho conhecimento e vivência nona utilização do pacote office, gestão de treinamentos, em rotinas administrativas, análise de dados e gestão de projetos.
Atualmente busco uma oportunidade dentro da área que estou estudando.
Fiz cursos na área de Gestão e de Pessoas como: Liderança de Alta Performance e Ferramentas de Gestão.','Gestão de Pessoas, Sebrae, 2022.','Administrativa, Estágio, Licenciamentos, Engenharia','https://drive.google.com/open?id=14PB2Ge6Wi23gp1n7yu6UynRinNLbL2YH',NULL,'Facebook','Não','A combinar','Sim','Fabiani Adam - Gestora de RH Via Uno (trabalhou como minha supervisora inicialmente) Contato: (51)991890951
Simone Manica - Gestora de RH (trabalhou como minha supervisora diretamente depois da Fabiani) Contato: (51)991353389
Sandro Felicetti - Diretor de Operações, contato: (51)999073031','Quero inscrever-me no banco de talentos da Young!','Tenho facilidade em comunicação, sou comprometida, metódica e busco incansavelmente por melhores resultados.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-23T19:51:00.000Z'::timestamptz),
  ('Verônica Meregali de Oliveira','veehmeregali@gmail.com',NULL,'51999920665','2004-06-18',21,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1YhZZ3d6eBExADhSWHvRA1Y7l5Eeie0eJ',NULL,'Ensino Superior Incompleto','FACCAT',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Natural light aonde trabalho atualmente no cargo de vendedora desde o dia 15/01/2021, meu cargo seria de vendedora porém já pratiquei todos os cargos da empresa desde caixa, marketing até estoquista.','Estou cursando faculdade de enfermagem, no terceiro semestre e também um curso de APH (Atendimento pré hospitalar) e BLS (Suporte Básico de vida), que consiste basicamente em ser socorrista após a formação, que para mim será no dia 01/04/23.','Tenho alguns cursos estão deixarei meu curriculo anexado abaixo para maior praticidade de vocês.','Administrativa, Comercial, Financeiro, Marketing',NULL,'https://drive.google.com/open?id=1o0Sik2bHh-al1OdnZc0UmsqWZjtgrDB8UhiAAaogAew','Instagram','Não.','2.000,00','Sim',NULL,'Consultor de vendas','Eu diria que sou multiuso, pois adoro fazer tarefas diferentes e faço de tudo um pouco, mais principalmente adoro culinária eu diria que para mim cozinhar é terapia e sou extremamente comunicativa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-23T23:19:00.000Z'::timestamptz),
  ('Francine Mattos','francinemattos.sts@gmail.com',NULL,'51996441098','1993-08-18',32,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=17oqFSzoJwtrAy5eH-h2nhkvLz8qmkx9a',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Rafão Imóveis - Corretora - Novembro 2022 à Dezembro 2022 : Prospecção de clientes, oferta ativa, plantão de vendas, intermediação de conversas para permuta, estudo de áreas, visitação a imóveis. 

SX Imóveis - Estagiária - Julho 2021 à Novembro 2021 : Adquiri uma visão geral de todas as atividades e requisitos que compõem a profissão de intermediação imobiliária, me preparando assim para atuar na área.','Atendimento ao Cliente - Liderança, Motivação e Inspiração','Curso Técnico em Transações Imobiliárias','Comercial','https://drive.google.com/open?id=1pXp9HnDqPiu2unymfkv77TYLF9vFr2ND',NULL,'Indicação','Sim, Giulia.','R$2.500,00','Sim','Jaqueline Altenetter - (51) 99903-3616','Comercial','Trabalho Voluntário Sítio ONG 4 Patas','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-24T01:26:00.000Z'::timestamptz),
  ('Renata Rothen Prudente','renatarothenprudente@gmail.com',NULL,'51980237322','1987-01-19',39,'Casado(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1sVXUlKiMj9RoRAeOF7Sohd3Hxgp4L5_0',NULL,'Ensino Superior Incompleto','UNIASSELVI','2024-01-08','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Comércio,vendas, tenho vários cursos no sebrae referente a vendas, já fui gerente por 8 anos também, fazia vendas, compra de mercadorias, serviços bancários, análise de planilhas , entre outros serviços, já trabalhei também na prefeitura de Novo (RH)','Tenho creci ativo também, mais no momento gostaria de uma oportunidade de estagiário, ou jovem aprendiz, pois me mudei a pouco para a cidade','Tenho curso de técnico de transações imobiliárias, vários cursos do sebrae na área de vendas e área administrativa','Administrativa, Comercial, Estágio, Financeiro','https://drive.google.com/open?id=1dlHTyFd-vRcFoLkE1Pxt0fGqC1Jwu_Q4',NULL,'Tenho Terreno Aí Na Ilha Dos Açores, Comprei Com Vocês','Não','A combinar','Não','Prefeitura Municipal de Novo Hamburgo (35949906) Diretora Daniela','Estágio Financeiro','Meu currículo tá o endereço de Novo Hamburgo, mais me mudei q pouco aqui pra Santo Antônio da Patrulha.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-24T13:10:00.000Z'::timestamptz),
  ('Hello,My,name is tatieli de Almeida klimick','tatielaklimick@gmail.com',NULL,'51993990154','2006-02-28',19,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1jFRUUmIgO2aqkcdycKqyYBHesZtKRrfZ','Tenho um curso extra curricular de administração','Ensino Médio Completo','Mundo oficce','2021-12-09','Não, no momento pausei/parei por um período.','Eu não tenho experiência pois nunca trabalhei,estou na busca do primeiro emprego.','Não possuo','Sim','Estágio','https://drive.google.com/open?id=1M3c4vZ7veDDzX8NEyvwPG9L5GwfkltgR',NULL,'Indicação','Não','900','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Olá ,me chamo tatieli de Almeida klimick,estou no 3° ano do ensino médio tenho 17 anos e estou atrás de um emprego meio período por conta que eu estudo na parte da manhã ,não tenho experiência pois nunca trabalhei ,tenho um cursinho de administração ,e espero conseguir está oportunidade!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-24T15:44:00.000Z'::timestamptz),
  ('Renata Rothen Prudente','renatarothenprudente@gmail.com',NULL,'51980237322','1987-01-19',39,'Casado(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1vcFGTQrc2H2T9rnGZRtiCSzAGcrbWBwe','Administração de empresas','Ensino Superior Incompleto','UNIASSELVI','2024-01-08','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Já trabalhei no comércio na área de vendas, fui gerente por 9 anos em uma farmácia, trabalhava com serviços bancários, compras de mercadorias, negociações com fornecedores, vendas e entregas de mercadorias, trabalhei também na prefeitura municipal de Novo Hamburgo( RH)','Possuo creci ativo, e tenho vários cursos que fiz no sebrae de venda e curso na área financeira e administrativa','Cursos de técnico em transações imobiliárias, curso de vendas sebrae, entre outros cursos do sebrae','Administrativa, Comercial, Estágio, Financeiro','https://drive.google.com/open?id=15obSB-SXOWFqSfh3vVWpgkZ4tHQvgnEo',NULL,'Instagram','Não','A combinar','Não','Prefeitura Municipal de Novo Hamburgo(35949906) Daniela','Consultor de vendas','Meu endereço no currículo consta como Novo Hamburgo, mais me mudei a pouco pra Santo Antônio da Patrulha.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-24T16:01:00.000Z'::timestamptz),
  ('Muriel Assis da Cunha','murielassisdacunha10@gmail.com',NULL,'992881788','1985-03-10',40,'Casado(a)','2','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1J7o4OGeZdOpsPjZArIjDuFF_rSBSx19E','Licenciatura plena em Matemática','Ensino Superior Completo','Uniasselvi','2015-03-14','Sou formado','➢ Empresa: Terra Sul Agropecuária.
Ramo da Atividade: Auxiliar Administrativo.
Função: Todas as funções destinadas a manter os registros, os arquivos de 
documentações, além de notas fiscais eletrônicas, separar e conferir pedidos, 
prestação de contas, organização, etc.
➢ Empresa: Rapadura da Gostosa.
Ramo da Atividade: Auxiliar Administrativo / Controle de Qualidade.
Função: Todas as funções destinadas a manter os registros, os arquivos de 
documentações, além de notas fiscais eletrônicas, separar e conferir pedidos,prestação de contas, organização, e todos os cuidados para um bom controle de 
qualidade.
➢ Empresa: Escola Municipal José Inácio Machado Ramos.
Ramo da Atividade: Secretária Escolar
Período: 2012/2014
Função: Todas as funções destinadas a manter os registros, os arquivos de 
documentações dos alunos e dos funcionários além de comunicados e expedições para 
apoiar o desenvolvimento do processo escolar bem como Matrícula, Rematrícula, 
senso escolar, prestação de contas, atas, organização, etc.
➢ Empresa: Prefeitura Municipal de Santo Antônio da Patrulha 
Ramo da Atividade: Escola de Educação Infantil Pequeno Aprendiz. 
Função: Professora de Educação Infantil nas Turmas Maternal I e Berçário
Período: 2012/2015
➢ Empresa: Prefeitura Municipal de Santo Antônio da Patrulha 
Ramo da Atividade: Setor de Compras da Secretaria Municipal de Educação 
Função: Auxiliar Administrativo 
Período: 2017/maio2018
➢ Empresa: Secretaria da Educação do Estado do Rio Grande do Sul
Ramo da Atividade: Escola Estadual de Ensino Fundamental Manoel Luís
Função: Professora área I – Anos Iniciais
Período: Junho 2018/2019','➢ Ensino Aprendizagem Novos Olhares
Carga Horária: 40 horas
➢ Semana Acadêmica da educação do Campo- Ciclo de Palestra
Carga Horária: 08 horas
➢ Capacitação para Preenchimento do Censo Escolar
Carga Horária: 04 horas
➢ Como Organizar Orçamento Escolar
Carga Horária: 12 horas
➢ Sustentabilidade, um valor para a nova geração: Orientações para Professor do 
Ensino Fundamental. 
Carga Horária: 15 horas
➢ Formação Continuada Metodologias do Ensino de Artes
Carga Horária: 30 horas
➢ Oficina de Pedagogia “Reinventando Novas e Velhas Práticas”
Carga Horária: 20 horas
➢ Curso de Formação Continuada sobre Inovação na Educação e nas 
Organizações
Carga Horária: 20 horas
➢ Curso de Formação Continuada sobre Tópicos em Educação I
Carga Horária: 30 horas
➢ Curso de Formação Continuada sobre o Brincar
Carga Horária: 30 horas
➢ Curso Noções Básicas de Redação Oficial (Escolas do Governo)
Carga Horária: 4 horas',NULL,'Administrativa, Financeiro','https://drive.google.com/open?id=1UeD06xB15vBPbJDQPIkeQHIunUJzqxbd','https://drive.google.com/open?id=16_a3IO6akJ_H2lQgqsM68CTWcX0fWiLVABeYssEiZ4Y','Indicação','Nao','2000','Não','Prefeitura Municipal de Santo Antônio da Patrulha.','Quero inscrever-me no banco de talentos da Young!','Boa tarde, sou uma pessoa bem comunicativa, organizada, responsável, gosto de trabalhar em equipe, etc.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-24T16:47:00.000Z'::timestamptz),
  ('Loriana Aquino Almeida','lorianaaquinoalmeida@gmail.com',NULL,'55991716385','2000-03-17',25,'Casado(a)','1','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1cKoh65Vw2BGd_EA24fFDuzG0qQL-8vA_',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Supermercado baklizi, operador de caixa',NULL,NULL,'Comercial, Financeiro','https://drive.google.com/open?id=1pLVUiuDXl4ukbi0H5aj-Ia0A7ipiVh2R',NULL,'Facebook','Não','A combinarmos','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-24T18:20:00.000Z'::timestamptz),
  ('Júlia Goularte Rupp','juliagoularterupp@gmail.com',NULL,'51997505231','2003-08-12',22,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1W2NE2AHI8NIfM6P0YEdDedo9ehvjbeD-',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Por volta do final de 2021 ingressei na empresa Guimarães alimentos, infelizmente não trabalhei na parte do escritório e sim dentro da fábrica, auxiliando a produção em algumas coisas e também na parte administrativa, mas não ingressei muito nessa parte porque saí de lá porque queria arrumar um serviço de experiência um pouco melhor pra mim. Saí no começo de 2023, ingressei 1 ano na empresa. Fechado em dezembro. 
Depois trabalhei de freelancer na papelaria ABC, ajudando na parte das redes sociais. 
Sim tenho experiência em alguma coisa, porém infelizmente não tive das melhores oportunidades na área de trabalho e gostaria de mudar isso, como conseguindo um serviço de jovem aprendiz com vocês e ter uma boa experiência profissional.',NULL,NULL,'Administrativa, Comercial, Marketing','https://drive.google.com/open?id=1qAW0PIKQtnVKE7iHFoQT9zKH7Qggtx2Z',NULL,'Facebook','Não, só chamai vocês no WhatsApp, mas não sei quem me respondeu.','Como é jovem aprendiz uns $650','Sim','Vou coloca o contato da ABC onde trabalhei de freelancer, (51) 99997-9736 Michele.','Jovem aprendiz','Infelizmente esse não é meu currículo atual de agora é de dezembro, o de agora não consegui por, peço mil desculpas, porém não muda muita coisa, só muda o fato que trabalhei na abc de freelancer e fechei 1 ano na Guimarães. 
A sim antes trabalhei em vendas de telemarketing na BT, porém acho que essa empresa nem existe mais 😅, fiquei 1 mês e depois saí, tive até uma experiência interessante e quis por no currículo. 
Enfim atualmente comecei cursa inglês na  Schoenardie School cidade alta, quero também cursa algum curso de marketing digital pra ter mais alguma experiência e quero fazer minha CNH B logo logo se Deus quiser 🙏🏻. 
Já fiz também cursos de teatro on-line e presencial, que me ajudaram bastante na perda da timidez e se comunicar, pretendo volta futuramente pra aperfeiçoar mais a minha comunicação. 
E quem sabe fazer algum curso de administração se eu pega gosto, que já está nos meus planos aliás e também até pra conseguir uma boa oportunidade de serviço né. 
Enfim obrigada pela sua atenção se leu até aqui, mesmo se eu não for chamada, agradeço pela sua atenção e pela chance de mostrar um pouco de mim. 🥰😘','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-24T19:08:00.000Z'::timestamptz),
  ('Cleonice de Souza Silva','cleo68201@gmail.com',NULL,'51999626816','1990-05-12',35,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1GdfKSRjcYGsEG_MRfXXJZQ6ZDAnKC6of',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Última empresa foi uma ótica, consultora de vendas.','Inscrita fiscal, técnico de contabilidade não concluído, informática básica.',NULL,'Comercial','https://drive.google.com/open?id=1eK_7oLHmYAy0XoA1bA8ncFiESH56zFvh',NULL,'Agência de Empregos','Não','Compatível com a vaga.','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Me chamo Cleonice, estou interessada na vaga referente a vendas na empresa Young. Gostaria muito de fazer parte da equipe e agregar com os meus conhecimentos tenho um ano e quatro meses de experiência como consultora ótica.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-25T00:19:00.000Z'::timestamptz),
  ('Leda Caroline da Silva Borba','ledinhadasilvaborba@gmail.com',NULL,'51996303865','1999-07-06',26,'União estável','1','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Lbe118s79YElWRCNJW8sB-h5F3It9Mu5','Pedagogia','Ensino Superior Completo','Uniasselvi','2022-07-22','Sou formado','PM calçados praparadora de calçados (dois anos)','Curso em libras, informática...',NULL,'Estágio',NULL,NULL,'Facebook','Não','1.800,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-25T11:54:00.000Z'::timestamptz),
  ('Rafael Sabatini Amaral','eng.sabatiniamaral@hotmail.com',NULL,'55991689619','1988-04-18',37,'Solteiro(a)','1','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1dkMD3ti5KG-Hiqgjp2lQnqr7qnOcQ2SF','Engenharia Civil','Pós-graduação Completa','Universidade da Região da Campanha','2018-08-16','Sou formado','1)Escritório de Engenharia Civil Rafael Sabatini Amaral. 2)Engenheiro Civil. 3)07/08/2018 até o momento 4)Elaboração de projetos de engenharia, gestão, planejamento, fiscalização e execução de projetos de construção.','Pós graduado em Engenharia Ambiental e Saneamento Básico',NULL,'Arquitetura, Licenciamentos, Engenharia','https://drive.google.com/open?id=1NrsGLtDsDgW3Y0QLAmK75z1b9zG29iR8',NULL,'Instagram','Não','R$6.000,00','Sim',NULL,'Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-25T19:06:00.000Z'::timestamptz)
;

INSERT INTO young_talents.candidates (full_name, email, email_secondary, phone, birth_date, age, marital_status, children_count, has_license, city, photo_url, education, schooling_level, institution, graduation_date, is_studying, experience, courses, certifications, interest_areas, cv_url, portfolio_url, source, referral, salary_expectation, can_relocate, professional_references, type_of_app, free_field, status, tags, origin, created_by, original_timestamp)
VALUES
  ('Gustavo Bisso Teixeira','gustavobisso31@outlook.com',NULL,'51999032506','1982-06-22',43,'União estável','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1l2NQ8t-RnEK6JDGFC_-5l-axQvP221yX','Gestão de Recursos Humanos','Ensino Superior Incompleto','Uniasselvi','2023-06-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Prefeitura municipal de Santo Antônio da Patrulha - setor de patrimônio e almoxarifado, recebimento de produtos, lançamento de NF, tombamento de materiais permanentes entre outras tantas funções administrativas.',NULL,NULL,'Comercial',NULL,NULL,'Facebook','Não','3.000,00','Não',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-26T17:03:00.000Z'::timestamptz),
  ('Francine dos santos menezes','franmenezes.127@gmail.com',NULL,'51992031775','1995-03-27',30,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1sIl5Sh5YJxw0MlgCW9zOxRiBAMLoMn-2','Tecnico de enfermagem','Ensino Médio Completo','Jovem profissional',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1 santa economia
2vendedora
3fiquei quase um ano',NULL,NULL,'Administrativa, Comercial','https://drive.google.com/open?id=1OlPLxesTxzERC-PVN4jM0fMi7VrD2fGx',NULL,'Instagram','Nao','1400','Sim','Santa economia','Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-26T18:00:00.000Z'::timestamptz),
  ('Alissom salmentão da silva','alissomsiiilva@gmail.com',NULL,'55997035744','2000-10-31',25,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1LwnBacNl-RsjZYYBVHjU4YoMSzmK4ams',NULL,'Ensino Médio Completo','Ciryno luiz de azevedo','2016-11-24','Não, no momento pausei/parei por um período.','Grupo toniatto, conferte, 14 meses. Recebimento e cargas de produtos inflamáveis, onde era responsável pelas cargas e descargas 
 Irigaray comércio de produtos naturais. Vendedor - entregador.  8 meses. Executar vendas e fazer entregas para clientes com pequenas e grandes empresas','Logística 
Vendas','Curso de logistica','Administrativa, Comercial',NULL,NULL,'Agência de Empregos','Não','2.000','Sim','55 o97035744','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-26T21:59:00.000Z'::timestamptz),
  ('AMANDA FONTOURA ROCHA','amandarocha53569@gmail.com',NULL,'55996867159','2004-12-04',21,'Solteiro(a)','0','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1YJND7VcY_7p-5BIcf8XckJMJaPdERSdp','Gestão Ambiental','Ensino Médio Completo','Uergs polo são Borja','2026-12-18','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Não tenho experiência','Técnico em administração liderança e gestão de pessoas
Informática',NULL,'Administrativa, Comercial, Estágio, Marketing','https://drive.google.com/open?id=1sCywLL5KJ0xfBOvbZH5lJShH6Dp0Ru7-',NULL,'Instagram','Não','1.200','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou dedicada, comprometida e estou em busca de uma oportunidade do primeiro emprego','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-26T23:13:00.000Z'::timestamptz),
  ('Julio Rodrigues da silva','juniorsylva2011@hotmail.com',NULL,'51995092078','2008-02-17',18,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=10111gLMvNtYs93OJe64TQg-6jrWDBKWP','Cursando gestao industrial','Ensino Superior Incompleto',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Nao tenho experiencia mas estou a procura?da 1 experiencia','Gestao',NULL,'Estágio',NULL,NULL,'Facebook','Nao','R$1.000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-27T15:18:00.000Z'::timestamptz),
  ('Nicole Gonsalves Nunes','nicolegonsalvesnunes@gmail.com',NULL,'51985297754','2006-11-15',19,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1mYvYQ5G3JN4Q822qtOFpueFXn8lR5fH5',NULL,'Ensino Médio Completo','Escola Estadual de Ensino Médio Patrulhense','2024-12-13','Não, no momento pausei/parei por um período.','Não possuo experiência',NULL,NULL,'Administrativa, Comercial, Marketing, Novos Negócios','https://drive.google.com/open?id=16PZ2Yl5zjOHCVHwbPSDwhkSTxg4BUBKM',NULL,'Indicação','Não','Salário compatível com jovem aprendiz','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Bom eu adoro ler, gosto bastante de estudar, principalmente se for matemática ou algo envolvido com essa área, adoro aprender coisas novas e sempre estou tentando me desafiar, sou muito organizada e perfeccionista, aprendo fácil e sou uma pessoa muito dedicada em tudo que faço.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-27T16:33:00.000Z'::timestamptz),
  ('Emily Thaissa Silva de Oliveira','aaemily666@gmail.com',NULL,'51991517182','2004-03-05',21,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1y8EQRlcKL3cSZE_WuJKfzp-0nXuLJSOA','Estudo Design','Ensino Superior Incompleto','Faculdades integradas de taquara - Faccat',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Empresa Jr Lima, costureira de calçados, julho de 2022 até os dias atuais','Meu curso é amplo, estudo quatro áreas do Design, podendo atuar em qualquer uma depois de formada, sendo elas Design Gráfico, de produto, interiores e Design de moda, caso queira existem pós para se especializar em algumas delas, mas não é necessário','• Assessoria de comunicação - Polo sap • Informática - Unialcance','Arquitetura, Estágio, Marketing, Engenharia','https://drive.google.com/open?id=15eDddk-hyj1vn9lyOfTT9Sf8LboS7V_k',NULL,'Instagram','não','Meu salário atual é 1.700 não espero ganhar menos pela mesma carga horária','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Eu não tenho muita experiência de trabalho, mas dou o meu melhor no que me proponho a fazer e tenho força de vontade para aprender, trabalhei por alguns meses no escritório da Jr Lima, mas na falta de costureira, como estudo moda e sei costurar, uma coisa levou a outra... Gosto de muitas coisas, arte principalmente e maneiras inteligentes de usar a criatividade pra resolver problemas (aprendi em uma disciplina na faculdade que eu amo), sou pontual e organizada, tento ser cada dia melhor, tanto como pessoa quanto profissional. Acho que é isso, prazer!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-28T15:31:00.000Z'::timestamptz),
  ('HUMBERTO FRANCIS GONÇALVES','humbertofrancisgoncalves@gmail.com',NULL,'16991612389','1991-09-15',34,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1iTWbYpn9IWyJkA1QDL_9I9_qLA6rwpE-','Eng. Mecânica','Ensino Superior Completo','UNIFRAN','2019-03-23','Sou formado','Engenheiro fiscal – SolarGrid Energia Solar Ltda. (Março/2023 – Atual)
Atribuições:
● Participação no desenvolvimento de projetos, determinando especificações,
desenhos, técnicas de execução, recursos necessários e demais requisitos, para
possibilitar a construção, montagem, funcionamento e manutenção dentro dos
padrões técnicos.
● Apoio e assistência no desenvolvimento de modificações e melhorias em
instalações existentes para novos projetos, avaliação, implementação e
monitoramento.
● Geração de especificações técnicas, planos e procedimentos operacionais
aplicados em projetos desenvolvidos pelo departamento de engenharia.
● Elaboração de relatórios técnicos e medições visando acompanhar o
desenvolvimento de todos os setores da obra.
● Fiscalização da qualidade e normas técnicas das atividades executadas em
campo.
● Apoio no setor de operações mantendo o cronograma e custos planejados.
● Fiscalizar obras para verificação das fases em sua plenitude
● Coordenar revisão técnica detalhada de engenharia, revisão de planos de
construção e relatórios de projetos, para garantir o cumprimento das normas
aplicáveis.
● Elaborar relatórios semanais e mensais de progresso sobre projetos responsáveis.
● Fiscalizar medições e orçamentos, encomendas e comparar ofertas de materiais,
empresas industriais, profissionais etc.
● Fiscalizar as operações diárias e monitorar a execução de acordo com os
objetivos de escopo, custo e cronograma e garantia de qualidade. Colaboração
permanentemente com o Departamento de Engenharia para encontrar as
melhores soluções técnicas.
● Coletar imagens das obras com uso de drone.
● Gerenciar equipes','TEC. ADM, CONT.','Escrita Fiscal','Licenciamentos, Novos Negócios, Engenharia','https://drive.google.com/open?id=1v1D3trIr09d0oefjFicggdkKIkpNSPGi',NULL,'Agência de Empregos','não','6.000,00','Sim',NULL,'Vagas na area de engenharia que não seja estágio pois já sou formado',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-28T19:05:00.000Z'::timestamptz),
  ('Douglas Silva de Oliveira','douglas.1z1303@gmail.com',NULL,'51996084546','2004-03-13',21,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1bQS24FzuE-QK81ATCWKultFBys4-OM2E',NULL,'Ensino Médio Completo','Escola técnica estadual Monteiro Lobato - CIMOL - Cursando 1° ano do curso de informática',NULL,'Não, no momento pausei/parei por um período.','Tenho experiência trabalhando no Mano Despachante, porém não tenho carteira assinada.','Informática básica - Unialcance',NULL,'Administrativa, Comercial, Marketing','https://drive.google.com/open?id=1urmnGC8wBG_UJymeJyoZVKD_T9aVr2y-',NULL,'Facebook','Não','Meio turno: R$ 690,00','Não','Mano Despachante. Número de celular: 51 997186121 ou 51 997186123','Comercial','Habilidade com computadores, sou esforçado e trabalho bem em equipe.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-29T22:54:00.000Z'::timestamptz),
  ('Rayssa Muniz da Silva.','rayssamunizdasilva14@gmail.com',NULL,'980204777','2006-04-07',19,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1yAeVH_mYXfkGYHVMZhywZRrEERw3E5MM',NULL,'Ensino Médio Completo','3° ano do ensino médio',NULL,'Não, no momento pausei/parei por um período.','Farmácia, 3 dias, estoque.',NULL,NULL,'Administrativa, Comercial, Estágio, Financeiro',NULL,NULL,'Facebook','Não','800','Não',NULL,'Estágio Engenharia e/ou Arquitetura','Fiz curso de informática, sou comunicativa e espero uma vaga de emprego','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-30T01:55:00.000Z'::timestamptz),
  ('Damaris Felix da Silva','damarisfelixs93@gmail.com',NULL,'51999299144','1993-10-15',32,'Casado(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1h4vEuUiUjGCrbCpeNHCbAZdJgJ__TyLf','Direito','Ensino Superior Incompleto','Universidade Luterana do Brasil','2023-08-26','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','MINISTÉRIO PÚBLICO DO RIO GRANDE DO SUL.
Estagiária no gabinete da 1ª Promotoria de Justiça de Santo Antônio da Patrulha.
Principais atividades desempenhadas: Elaboração de minutas de peças processuais, tais como, promoções, pareceres e denúncias. Recebimento e triagem da carga processual, bem como controle de processos e prazos.
Período: 09/03/2021 à 08/03/2023.

PODER JUDICIÁRIO DO RIO GRANDE DO SUL.
Estagiária de Distribuição.
Principais atividades desempenhadas: Distribuição e alteração de processos, elaboração de minutas, emissão de certidões, atendimento ao público.
Período: 29/10/2018 à 28/10/2020.

PREFEITURA MUNICIPAL DE SANTO ANTÔNIO DA PATRULHA.
Estagiária na Procuradoria-Geral do Município e no Anexo Fiscal junto ao Fórum.
Principais atividades desempenhadas: Elaboração de petições, controle de prazos processuais, triagem de carga processual e atendimento ao público.
Período: 16/02/2017 à 24/10/2018.

MD DOS SANTOS OLIVEIRA - Assistel Portões Eletrônicos.
Auxiliar administrativo.
Principais atividades desempenhadas:
Alimentação de sistemas, controle de planilhas, controle de notas fiscais, agendamento e pagamento de contas, cadastro de entradas e saídas da empresa, atendimento ao cliente.','Estou no último semestre do curso de Direito, com formatura prevista para Agosto deste ano.',NULL,'Administrativa, Comercial, Financeiro, Licenciamentos','https://drive.google.com/open?id=1IMFR8RN4LWWPt1Dm5OB-VUtMX6Mh3Coc',NULL,'Indicação','Não.','R$ 2.500,00.','Sim','Dr. Camilo Vargas Santana, Promotor de Justiça no Ministério Público local - telefone: (51) 3662-7225.

Adelandra Cavalcanti, servidora do Poder Judiciário que me chefiou durante o estágio no Fórum - telefone: (51) 3098-5792.

Marcos Oliveira, proprietário da empresa Assistel Portões Eletrônicos - telefone: (51) 99911-2579.','Quero inscrever-me no banco de talentos da Young!','Primeiramente, estou em busca de um emprego que possa contribuir para o meu desenvolvimento pessoal, profissional e também de financeiro.
Vejo que o ramo imobiliário tem se expandido e proporcionado muitas oportunidades de crescimento profissional e financeiro nos últimos anos.
Espero poder agregar com meus conhecimentos na área jurídica e adquirir novos conhecimentos específicos na área imobiliária.
Estou sempre em busca de aprender. 
Tenho facilidade de aprendizado e boa comunicação.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-30T19:15:00.000Z'::timestamptz),
  ('Carlos Henrique cocolicchio Romualdo','texasdrive516@gmail.com',NULL,'55996417290','1997-07-11',28,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1E2w0t7szVos2mhjCYWQ16Dd9j_NFMhI4',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Lojas benoit cargo auxiliar geral trabalhava como estoquista e montador de móveis de 2017 a 2019. construção civil trabalhando como pedreiro2019 a 2021.RR bebidas trabalhando como atendente balconista 2021 a 2022. Qualipredra montador de mármores e granitos 2022 a 2023',NULL,NULL,'Comercial, Marketing, Novos Negócios, Engenharia','https://drive.google.com/open?id=1S9otjUt77IIBGHWHjuiwJSrVY6r6gXjs',NULL,'Instagram','Não','Algo entre 1.500 e 2.000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou comunicativo dedicado e muito capaz de me adaptar em qualquer função que me designarem sou pontual sério e comprometido com o trabalho.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-31T05:09:00.000Z'::timestamptz),
  ('Maria Clara Ramos Rivero','riveromariaclara@outlook.com',NULL,'51991345886','2004-05-18',21,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1X_tdNY5Xg6ljAuQZ9g96YxhnGeRBjq2s',NULL,'Ensino Superior Incompleto',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) V4 Company 2) Gestão de Tráfego 3) 03/08/22 à 05/01/23 4) A V4 é uma empresa de marketing digital onde eu exercia a função de gestão de tráfego, ou seja, cuidava da parte de publicação das campanhas de anúncio dos clientes.','Estou cursando o 1° semestre do curso de ciências contábeis na Faccat.',NULL,'Administrativa, Estágio, Financeiro, Marketing','https://drive.google.com/open?id=1hIaXr_Yfan27HgFD8h9k1AdefsVgnogl',NULL,'Indicação','Sim, Lucas Muniz','Para manter ao menos os custos da minha faculdade, transporte e alimentação, entre R$1000,00 e R$1800,00.','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Já trabalhei com algumas funções de forma autônoma, com aulas particulares de matemática, como babá e, durante dois anos, na produção e venda de trufas, organizando o faturamento e atendendo clientes; fiz alguns cursos básicos relacionados a finanças; durante o período em que trabalhei com marketing, fiz também cursos sobre o assunto, como o "Cientista do Marketing", proporcionados pela empresa. Sobre a CNH tipo B, já iniciei o processo e concluí toda a parte teórica, porém por questões financeiras, após sair do meu emprego antigo, precisei adiar a parte prática, na qual pretendo concluir assim que ingressar em um novo trabalho.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-03-31T17:56:00.000Z'::timestamptz),
  ('Humberto Francis Gonçalves','humbertofrancisgoncalves@gmail.com',NULL,'16991612389','1991-09-15',34,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1xb7PqJerniYQnhLyo6Bq-STna1Jy7qhX','engenharia mecânica','Ensino Superior Completo','UNIFRAN','2019-03-10','Sou formado','SolarGrid- Fiscal engenharia 03/03/2023- atual Como fiscal: 
● Participação no desenvolvimento de projetos, determinando especificações, desenhos,
técnicas de execução, recursos necessários e demais requisitos, para possibilitar a
construção, montagem, funcionamento e manutenção dentro dos padrões técnicos.
● Apoio e assistência no desenvolvimento de modificações e melhorias em instalações
existentes para novos projetos, avaliação, implementação e monitoramento.
● Geração de especificações técnicas, planos e procedimentos operacionais aplicados
em projetos desenvolvidos pelo departamento de engenharia.
● Elaboração de relatórios técnicos e medições visando acompanhar o desenvolvimento
de todos os setores da obra.
● Fiscalização da qualidade e normas técnicas das atividades executadas em campo.
● Apoio no setor de operações mantendo o cronograma e custos planejados.
● Fiscalizar obras para verificação das fases em sua plenitude
● Coordenar revisão técnica detalhada de engenharia, revisão de planos de construção e
relatórios de projetos, para garantir o cumprimento das normas aplicáveis.
● Elaborar relatórios semanais e mensais de progresso sobre projetos responsáveis.
● Fiscalizar medições e orçamentos, encomendas e comparar ofertas de materiais,
empresas industriais, profissionais etc.
● Fiscalizar as operações diárias e monitorar a execução de acordo com os objetivos de
escopo, custo e cronograma e garantia de qualidade. Colaboração permanentemente
com o Departamento de Engenharia para encontrar as melhores soluções técnicas.
● Coletar imagens das obras com uso de drone.
● Gerenciar equipes','Tec. Contabilidade e administração',NULL,'Financeiro, Licenciamentos, Engenharia','https://drive.google.com/open?id=1U4lw0qn0QeBzSDEL7QFaOvWIAwn2QeYk',NULL,'Google','não','6.500,00','Sim',NULL,'analista de engenharia','Atualmente busco oportunidade de trabalho que eu possa fixar residência. Trabalho com fiscalização, projetos desde a planta até a finalização da obra, tenho conhecimento de engenharia civil, mecânica e elétrica.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-04-04T17:22:00.000Z'::timestamptz),
  ('Muniz Pituco Lançanova','muniz.p.lancanova@gmail.com',NULL,'55999340407','1995-04-03',30,'Solteiro(a)','0','Sim','São Francisco De Assis/rs','https://drive.google.com/uc?export=view&id=1QGEzZzMLCS0HVzZKXYvZSjNF9elkjZ7M','Arquitetura','Ensino Superior Completo','Universidade Regional Integrada do Alto Uruguai e das Missões - URI SANTIAGO','2021-01-15','Sou formado','De 22/10/2018 a 20/10/2022   Prefeitura Municipal de São Francisco de Assis, Rio Grande do Sul, Cargo: Estagiário de Arquitetura e Urbanismo 
 De 22/03/2021 a 23/11/2022   Arquitetar Engenharia e Arquitetura',NULL,NULL,'Arquitetura, Comercial, Engenharia','https://drive.google.com/open?id=13U0Y9MtnvqdtuiJIaXrf6jry6o8_To4_',NULL,'Instagram','Não','3.000,00','Sim','Contato:(55) 99639-1027','Arquiteto e Urbanista',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-04-04T18:36:00.000Z'::timestamptz),
  ('Anderson Manuel da Silveira Soares','manueldasilveirasoaresanderson@gmail.com',NULL,'51980395415','2004-01-13',22,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1xmBf0QOQGXL7CVtWFpfxcMWwDMAbqBxQ','Ciências Contábeis','Ensino Superior Incompleto','Uniasselvi','2026-10-15','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Americanas S.A
Operador de caixa e Fiscal 
Operar em caixa;
Preencher planilha;
Alterar preços de produtos diretamente no caixa;
Conferir dinheiro do fechamento do caixa.','Excel Essencial',NULL,'Administrativa, Comercial, Financeiro','https://drive.google.com/open?id=1W061hEJxnMHzSf7Y0uhg-lSwKfDoO0RX',NULL,'Indicação','Não','10.000','Sim',NULL,'Vaga de emprego','Amo música, é onde eu me sinto livre ksks','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-04-14T22:48:00.000Z'::timestamptz),
  ('Andressa Tonin Durlo','andressa.durlo@hotmail.com',NULL,'55991502721','1995-01-12',31,'Solteiro(a)','0','Sim','Manoel Viana/rs','https://drive.google.com/uc?export=view&id=1zLXcXMSp3cPybmYIAJjB4GnCD-ezOS0u','Engenharia Civil','Ensino Superior Incompleto','UNIPAMPA - Campus Alegrete','2023-09-08','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Construtora Sotrin
2) Estágio obrigatório
3) Outubro/2022 a dezembro/2022
4) Atividades: auxílio em projetos complementares (hidráulico, elétrico), realização de quantitativo de materiais e acompanhamento de obras',NULL,NULL,'Estágio, Engenharia','https://drive.google.com/open?id=1oguS5diD971GExI2w0gVoRF_AfsdJYlb',NULL,'Indicação','Não','1500','Sim','Luis Morales
55997049235
Construtora Sotrin','Estágio Engenharia e/ou Arquitetura','Conhecimento em:
Excel/Word/PorwerPoint
AutoCAD
TQS
Revit 
Ftool

Idiomas: Inglês avançado','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-04-18T05:13:00.000Z'::timestamptz),
  ('Tiffany Pedroso Jaques','jaquest78@gmail.com',NULL,'55996795030','1999-02-09',27,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1bsLOd9S6GRdP3ECXhbld6PGwhHn7RrVS','Processos Gerenciais e Pedagogia','Ensino Superior Incompleto','Uniasselve','2024-12-10','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Professora na Escola Infantil Gente Bacana 2017/2020 Regente de Turma. 
Décima Coordenadora Regional de saúde: 10/10/2020 até  05/10/2022 
Gerente Monjua 17/10/2022 
Empreendedora na loja Tifa Semijoias a 3 anos.','Tecnico em Administração',NULL,'Comercial','https://drive.google.com/open?id=1XY0b86Xi3JuO5yL1z8Xc3INeUsIe6F_T',NULL,'Instagram','Não','3.500','Sim','Vera Fagundes 55 3422-4918 (diretora da escola )
Heili Temp 55 999748912','Quero inscrever-me no banco de talentos da Young!','Admiro a empresa e vejo grandes oportunidades de crescimento. Funcionários empregados e motivados. Busco a liberdade profissional em estar numa empresa que os funcionários trabalham com propósito realizando sonhos de pessoas e seus sonhos pessoais. Young transparece todos esses adjetivos. Tenho a certeza que empenhou e comprometimento  não irá faltar.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-04-22T22:53:00.000Z'::timestamptz),
  ('Augusto de Oliveira Messagi','augusto.messagi@gmail.com',NULL,'51997618223','1993-01-18',33,'União estável','1','Sim','Osório/RS','https://drive.google.com/uc?export=view&id=1HuLVOyN1f8CYUUbz-Czfk1Gx63-AK5tr','Engenharia Civil','Ensino Superior Completo','Unisinos','2019-08-10','Sou formado','As minhas qualificações profissionais que possam vir a interessar estão contidas na época (2013 - 2018) em que trabalhei na Prefeitura Municipal no setor de Gestão Territorial, responsável pela gestão do uso e ocupação do território urbano do município. Após formado, atuei em inúmeros casos de regularização fundiária, assessoria em novos empreendimentos (participação no Brisas Bairro Cidade, etapa de registro do loteamento) de diversos portes.','Formado em AutoCAD 2D pelo SENAC',NULL,'Arquitetura, Novos Negócios, Engenharia','https://drive.google.com/open?id=1V-aHHnf06vJ5wgbQogTmHmnauket_LLV',NULL,'Flavia Entrou Em Contato Comigo Solicitando Atualização Do Meu Cadastro.','Não','R$9.000,00','Sim',NULL,'Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-04-24T18:32:00.000Z'::timestamptz),
  ('Luama Nogy Kreche dos Santos','luamanogy@gmail.com',NULL,'5551998527646','1988-03-16',37,'Casado(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1EV8RGNNLLsdXZBXvgNTj2uU2yBpGB6Vk','Ciências Contábeis','Ensino Superior Incompleto','Uniasselvi',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Connect Seguros.
2) Auxiliar administrativo.
3) 05/11/2022 até o momento.
4) Responsável pela renovações de seguros da Corretora, atendimento ao público. 

1) M.F. GOMES E CIA LTDA - Supermercado Gomes
2) Auxiliar administrativo 
3) 05/07/2015 até 02/02/2022
4) Setor fiscal, emissão e lançamentos de NFe, NFSe. Emissão de boletos de cobranças. Lançamentos e conferência de documentos contábeis. Gestão de custo da produção da padaria e controle de preços. Lançamentos e controle de estoque de mercadoria em geral.','Ciências contábeis é um curso que me trouxe conhecimento, contábil, financeiro e fiscal, mesmo indo somente até ao 6°semestre,  através disso é possível auxiliar a empresa a se planejar para tomar decisões e também no cumprimento de obrigações legais e fiscais.',NULL,'Administrativa',NULL,NULL,'Indicação','Giullia','R$2.000,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Não tenho medo de serviço, tenho muito sonhos junto com a minha Familia e sigo com foco em realizá-los. Sempre prezo por ambiente de trabalho leve e com boa convivência com os colegas, hoje faço uma formação de conteladora familiar, com profunda intenção de entender as relações entre as pessoas e mergulhando no autoconhecimento.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-04-26T16:15:00.000Z'::timestamptz),
  ('João Dal Magro Neto','joao.dalmagro@gmail.com',NULL,'51995934557','1995-05-23',30,'União estável','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1QN6ZgUcx_wN-cyARJAIvwAZxi6AAslU7','Engenharia Civil','Ensino Superior Completo','Universidade Luterana do Brasil - Ulbra Canoas','2019-12-19','Sou formado','1)Ritt Empreendimentos Imobiliários; 2)Supervisor de Obras; 3)Jan/2022 a atual; 4)Supervisão dos serviços executados em obra, planejamento e cronograma dos serviços das obras, levantamento orçamentário, gerenciamento de equipe, materiais e equipamentos.

1)Gerdau Aços Longos; 2)Analista de Projetos; 3)Dez/2020 a Jan/2022; 4)Liberação de pedidos de corte e dobra de aços; Análise e interpretação de projetos estruturais de aço; Planilhamento e conferência de posições no software para produção do corte e dobra; Responsável pela parte técnica de pedidos de 3 unidades corte e dobra (Maringá-PR/Campo Grande-MS/Chapecó-SC).

1)Cross e Freitas Ltda; 2)Estagiário de Eng. Civil; 3)Fev/2019 a Jun/2019; 4)Orçamentos e propostas à clientes; Análise de viabilização e concorrências em licitações; Montagem de documentação para participação em licitações; Compatibilização de projetos (mecânico, elétrico e hidrossanitário); Fiscalização de obras, logística de materiais para atender as frentes de trabalho.

1)RISSI FACHADAS E ESQUADRIAS LTDA; 2) Estagiário de Eng. Civil; 3)Fev/2017 a Nov/2019; 4)Medições in loco para produção de esquadrias; Elaboração de planilhas; Gerenciamento de logística de materiais; Gerenciamento de medição financeira; Elaboração de diários de obra.

1)MAIOJAMA EMPREENDIMENTOS IMOBILIÁRIOS; 2)Estagiário de Eng. Civil; 3)Jun/2015 a Jan/2017; 4) Inspeção e acompanhamento dos serviços de acordo com projeto e cronograma; Compatibilização, em obra, dos projetos; Realização de planejamento semanal dos serviços; Levantamento de quantitativos de materiais, medições, conferências de serviços; Ajustes finais e entregas de unidades para clientes.

1)KAEFE Engenharia e Empreendimentos Imobiliários Ltda; 2)Estagiário de Eng. Civil; 3)Out/2014 a Maio/2015; 4)Verificar a qualidade dos serviços contratados e executados na obra; Acompanhamento dos resultados de qualidade dos materiais; Elaboração e gerenciamento de procedimentos de qualidade; Realização de auditorias; Controle dos padrões produtivos tais como inspeção da especificação, fluxo e movimentação de materiais; Preenchimento de planilhas e documentação técnica; Gerar e atualizar os indicadores de qualidade; Monitoramento do andamento das ações corretivas e preventivas.

1)MRV Engenharia e Participações SA; 2) Estagiário de Eng. Civil; 3) Março/2014 a Out/2014; 4) Controle de entrada e saída de NF, materiais e organização do canteiro; Conferência de elevações de alvenaria, pontos de graute, esquadro de peças, inspeção e verificação de serviços; Fechamento de medição de mão de obra própria e empreiteiros; Acompanhamento de produção de lajes pré-moldadas em obra, e içamentos das mesmas nas torres.',NULL,NULL,'Novos Negócios, Engenharia','https://drive.google.com/open?id=1vVqcQieHTzVR1P-NVJFU8YVaswsVuB1b','https://drive.google.com/open?id=1_p9eJHwm_HDLMS88D2pfvJnfCw4MyNcx','Instagram','Sim, pela Carol Volpato - Gerente Comercial','R$4.800,00','Sim','Engenheira Fernanda (51) 99828-8599 - Era minha superior no estágio em que fiz na construtora Maiojama.
Engenheira Amalia (51) 99155-1590 - Era minha gestora na Gerdau.','Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-04-26T19:11:00.000Z'::timestamptz),
  ('Ruth souza stamato','ruthstamato@gmail.com',NULL,'55996567741','2000-05-14',25,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1jw5tYhn8U-iMb2AY6TeqmF7KK2Q97nWL','Administração de empresas','Ensino Superior Completo','Unopar','2023-06-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Nome da empresa : CAAL
2)Cargo : Auxiliar administrativo e RH
3)Período : 17/08/2015 - 26/09/2016
4)Atividades: Auxiliar administrativo e de RH, atuando na área de recrutamento e arquivo de documentos internos.


1) Nome da empresa : Interneith Internet Ltda
2)Cargo : Auxiliar administrativo, financeiro e Vendas.
3)Período : 01/09/2020 - 26/01/2023
4)Atividades: Auxiliar administrativo e financeiro, controle de caixa e vendas.',NULL,'Certificação em Licitações e contratos públicos.','Administrativa, Comercial, Estágio, Engenharia','https://drive.google.com/open?id=1OnnLj-EUHmgNZm7Dz0H4Vmvgxvpya8UM',NULL,'Facebook','Não','1000','Sim','Interneith Internet Ltda
Contato : 3421-8600 Deivid','Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-04-26T20:32:00.000Z'::timestamptz),
  ('Camila Escaramusa Vaz','camilaescaramusa@gmail.com',NULL,'55999574988','1991-07-12',34,'Casado(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1LY1LG6QkHViKMJ8BG_N6pnXrYbGJsVII','Engenharia Civil','Pós-graduação Completa','UNIPAMPA','2017-08-25','Sou formado','•	Prefeitura Municipal de Alegrete-02/2013-08/2013
Estágio na Secretária de Saúde no departamento de Engenharia e Arquitetura.
Desenvolvimento dos PPCIs das Unidades Básicas de Saúde.
•	JK Engenharia 01/2017-05/2017
Estágio de acompanhamento de obras pelo financiamento Minha Casa Minha Vida.
•	EPT Engenharia e Pesquisas Tecnológicas – 05/2017 a 06/2018
Cargo ocupado: Assistente administrativo
Atuação na área de fiscalização de obras, no qual executou-se o acompanhamento obras de saneamento e reposição dos pavimentos na cidade de Alegrete, elaborou-se os diários de obras e medições.
•	Incorp – 10/2018 -04/2021
Cargo ocupado Engenheira Civil - Fiscal de Campo
Atuação na área de fiscalização de obras, no qual executou-se o acompanhamento de obras de saneamento e reposição dos pavimentos na cidade de Quaraí, elaborou-se os diários de obras, relatórios, medições, supervisão de obras e controle de materiais.
•	Consórcio Expansão Beck de Souza e Magna Engenharia- 05/2021- atualmente
Cargo ocupado Engenheira Civil - Fiscal de Campo
Atuação na área de fiscalização de obras, no qual executou-se o acompanhamento de obras de assentamento das redes coletoras de esgoto, execução das estações de bombeamento de esgoto EBE2 e EBE4 no Munícipio de Quaraí. Também foi realizada as medições, relatórios mensais e diários de obras.
•	Autônomo
Elaboração de projetos, execução e gerenciamento de obras de reformas residências e regularização de obras.','Possuo pós-graduação em saneamento, curta de duração de gestor de obras, orçamento paramétrico, bora na obra.',NULL,'Financeiro, Licenciamentos, Engenharia','https://drive.google.com/open?id=1NzveL_BcfOnpoXMpQU9p-TkoDGHWSpCq','https://drive.google.com/open?id=1cwHbyWSI77mUhK6t2fREdFU9QjRzgpav','Facebook','Não','12.000,00','Sim',NULL,'Engenheiro Civil','Possuo aptidão em gestão, fiscalização, gerenciamento  de obras, apresentação de proposta para o cliente, orçamento de obras e  em desenvolvimento de projeto. Possuo curso no excel, autocad skechup.
Gosto de fazer atividades físicas, meditar, e conviver com minha família e amigos.
Sempre que possível gosto de viajar, buscar inspiração, seja na natureza ou algum lugar que nunca fui.
No inverno gosto de tomar chimarrão ao lado de um fogão ou lareira e quando dá, dou um pulinho em Gramado.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-04-27T02:32:00.000Z'::timestamptz),
  ('Lucas Tito Vieira','lucastitov@hotmail.com',NULL,'55999322761','1996-01-13',30,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1r8P0dZmR5fKNUBrSs5WyESSIStgRWsFO','Engenharia Civil','Ensino Superior Completo','Universidade Federal do Pampa','2022-10-15','Sou formado','1) TKNK Tecnica e Engenharia
2) Estagiário / Engenheiro Civil
3) Data de início: 19/01/2021
    Data final: em exercício.
4) Orçamentos de obras de pequeno e medio porte; acompanhamento e gerenciamento de obras de pequeno e médio porte; controle de despesas e materiais de obras de pequeno e médio porte.','Cursando mestrado em Engenharia, na Universidade Federal do Pampa. Cursando pós-graduação em Engenharia de Segurança do Trabalho.',NULL,'Administrativa, Licenciamentos, Engenharia',NULL,NULL,'Instagram','Não.','Piso salarial de Engenheiro Civil','Sim',NULL,'Engenheiro Civil','Habilidade com os softwares Autocad, Revit e Excel. Formado em Inglês Avançado.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-04-27T04:20:00.000Z'::timestamptz),
  ('Priscila Sieg Lima','psieglima@gmail.com',NULL,'55991430593','1995-02-18',31,'Solteiro(a)','0','Sim','Fortaleza Dos Valos/rs','https://drive.google.com/uc?export=view&id=1SasNKLx8VrQgrZa7UjbhD48ddWrDgugj','Engenharia Civil','Pós-graduação Completa','UNIPAMPA - CAMPUS ALEGRETE','2018-02-03','Sou formado','- Escritório Análise – Contabilidade e Despachante – Fortaleza dos Valos / RS
Período: Novembro de 2018 – Abril 2020.
Principais atividades: Secretária em geral: atendimento ao publico, arquivamento de documentos.

- UNOPAR – Polo de Cruz Alta / RS
Período: Agosto de 2019 – Setembro 2021.
Principais atividades: Tutora de Engenharia Civil: Responsável pela aplicação de aulas atividades
teóricas e práticas da graduação e aplicação das provas teóricas.

- Prefeitura Municipal de Fortaleza dos Valos / RS
Período: Março de 2020 – Atual.
Principais atividades: Engenheira Civil, responsável pela elaboração de projetos elétricos, hidrossanitários, arquitetônicos, estruturais, reformas, pavimentação asfáltica e poliédrica, e planilhas orçamentárias e pela mensuração da urbanização da orla do lado do Passo Real;','Me formei em Engenharia Civil pela UNIPAMPA - CAMPUS ALEGRETE, após um tempo realizei Pós-Graduação na UNOPAR, no curso de Engenharia de Estruturas e Fundações, onde atuei também, durante um ano e meio (2019-2020) como monitora do curso de Engenharia Civil, auxiliando nas aulas práticas e exercicios das disciplinas, realizando posteriormente cursos na área da ALTOQI.','Segurança de Trabalho – 14h – SENAI; Desenho Arquitetônico – 14h – SENAI; Treinamento completo projeto estrutural com EBERICK BASIC – 75hs – INST. DE FORMAÇÃO DO CONHECIMENTO;  Treinamento completo projeto estrutural com EBERICK AVANÇADO – 150hs - INST. DE FORMAÇÃO DO CONHECIMENTO;  Software QiHidrossanitário 2021 – 30hs – ALTO QI EDUCATION S.A.  Software QiElétrico 2021 – 30hs – ALTO QI EDUCATION S.A.','Engenharia','https://drive.google.com/open?id=1gT3FG7V7GeDVVse64dDc8B6nnCAiR8cb',NULL,'Instagram','Não','5000','Sim','55 991053032 - Jairo Vanderlei Correa dos Santos - Servidor Público','Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-04-27T14:05:00.000Z'::timestamptz),
  ('Jean Menezes Andrioli Pinto','jeanmenezesjmp@hotmail.com',NULL,'63999614601','1994-10-09',31,'Casado(a)','2','Sim','Palmas Tocantins','https://drive.google.com/uc?export=view&id=11Orz11gtPJdY6r-SlqZVxRymhz_WE-GV','Engenharia Civil','Pós-graduação Completa','Universidade Pitágoras Unopar Anhanguera','2021-12-10','Sou formado','MEYER ENGENHARIA E CONSULTORIA (Abril/2023 - Atualmente) - Supervisor de Obras - Engenheiro responsável pela supervisão da obra de contenção de taludes na mineradora Aura Minerals, acompanhando o processo de execução, supervisão e coordenação da equipe responsável pelo plantio de gramas nos taludes, responsável pela conferência dos EPI ́s dos funcionários, cumprimento das normativas de segurança da mineradora, visando a entrega da obra com qualidade e segurança.

HAUSEFUL (Novembro/2022-Atualmente) - Engenheiro Vistoriador de Imóveis - Vistoriador responsável pela análise detalhista de todos os detalhes que possui no imóvel, checagem de pintura, tomadas, hidráulica, parte elétrica, portas e janelas, eletrodomésticos quando houver, e tudo que for referente a imóveis residenciais, comerciais, vistorias de saída, apontando os danos e itens que precisam de reparos, desde imóveis para venda como locação.

JEAN ENGENHARIA - AUTÔNOMO – (Janeiro/2022 - Atualmente) - Engenheiro Civil - Desenvolvimento de projetos de engenharia, execução de obras, planejamento, orçamento, coordenação a execução e manutenção das obras. Controle de qualidade dos suprimentos e serviços, elaboração de documentação técnica conforme as normas.

L2R ENGENHARIA (Junho/2022 à Outubro/2022) - Engenheiro Civil - Coordenação das atividades administrativas e operacionais do canteiro de obras, acompanhamento diário e elaboração de relatórios com informações da obra, responsável pela documentação técnica, e realizando a entrega do diário de obra. Responsável pela montagem das equipes, fazendo parte do processo de recrutamento e seleção, testes profissionais e treinamentos.

CVBRAS CONSTRUTORA LTDA (Fevereiro/2022 à Julho/2022) - Engenheiro Supervisor de Obras - Supervisão das atividades dos projetos, acompanhamento das documentações técnicas, relatórios de controle, administrando o cronograma, treinamento das equipes de obra. Responsável pela montagem das equipes, fazendo parte do processo de recrutamento e seleção.

CÂMARA MUNICIPAL DE MIRACEMA-TO (Janeiro/2021àJunho/2021) - Chefe de Controle Interno - Responsável pelas licitações e Pregões, coordenação do mapeamento e análise de fluxo de processos, acompanhamento e revisão das implementações das políticas e normativas administrativas, a fim de identificar riscos e irregularidades, promovendo eficiências operacionais.

PREFEITURA MUNICIPAL DE MIRACEMA-TO (Setembro/2017 à Janeiro/2019) - Coordenador de Obras - Gerenciamento e acompanhamento das obras públicas, coordenando as medições, planejamento, orçamento, segurança dos colaboradores. Projetos: 2Pontes, 3 Unidades Básicas de Saúde, Reformas de Escolas, Creches, Pavimentação asfálticas, e obras diversas.','Sou Engenheiro Civil e Engenheiro de Segurança do Trabalho, com pós-graduação em Engenharia de Estruturas e Fundações, MBA (Master in Business Administration) em Gestão de Projetos, MBA em Engenharia de Produção, Engenharia Elétrica, Fontes Alternativas de Energia, Gerenciamento em Obras de Construção Civil, estudante de Mestrado em Infraestrutura e Engenharia Civil.','Gestão de Projetos com Scrum, Vistorias de Entrada de Imóveis para Locação, Vistoriador de Imóveis, NR 33 – Espaços Confinados, Chefia e Liderança, NR 10, NR 10 SEP, NR 35 – Trabalho em Altura, Extensão e Especialização em Engenharia de Materiais, Estratégias em Marketing Digital, Curso Nova Lei de Licitações: Governança e Processo Licitatório, Gerenciamento de Impactos e Riscos Ambientais, Gerenciamento de Riscos em Projetos, Gestão de Projetos, Gestão de Recursos Hídricos e Bacias Hidrográficas, Gestão Estratégica da Tecnologia da Informação, Introdução a Prática de Consultoria, Análise de Investimentos, Energia Hidrelétrica e Nuclear, Informática Avançado e Montagem e Manutenção de Computadores.','Administrativa, Comercial, Novos Negócios, Engenharia','https://drive.google.com/open?id=1faUPKv_NfmK2EzfIxbEC_D_Hok69JeoR',NULL,'Agência de Empregos','Não.','R$12.000,00','Sim',NULL,'Engenheiro Civil','Olá tudo bem ? Sou Engenheiro Civil e Engenheiro de Segurança do Trabalho com especialização em Gestão de Projetos, Engenharia de Produção e Engenharia Elétrica, estudante de Mestrado em Infraestrutura e Engenharia Civil. Possuo experiência em grandes obras de mineração e segurança do trabalho, acompanhamento, desenvolvimento e atuação de projetos de engenharia e execução de obras, planejamento, orçamento, coordenação e fiscalização de contratos, tanto em empresas privadas como na rede de obras públicas. Tenho muito interesse em trabalhar na empresa, pois vejo que com meu conhecimento executarei um ótimo trabalho para crescimento tanto profissional como em prol da empresa.

Desde já muito obrigado!
Jean Menezes Andrioli Pinto','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-04-27T16:20:00.000Z'::timestamptz),
  ('Giovani Sandri','giovanisandri7@gmail.com',NULL,'51993946250','1985-08-09',40,'Solteiro(a)','0','Sim','Canoas/RS','https://drive.google.com/uc?export=view&id=10oK3p9rdbTnzhAO8G65IRA5sa9FudOmN','Engenharia Civil','Pós-graduação Completa','Unisinos','2012-12-01','Sou formado','DCS CONSTRUTORA E PAVIMENTADORA
Gerente de Engenharia – 02/2022 até o momento.
• Gerenciamento do setor da Engenharia, administração do setor de projetos, planejamento, orçamento, qualidade, operação (execução) e logística.
• Gestão de contratos das obras de infraestrutura, execução de drenagem, terraplenagem e pavimentação asfáltica (capa e restauração) e /ou blocos de concreto.
• Gerenciamento da execução de todas etapas das obras. Supervisão e controle de produção das equipes DCS e empreiteiros (terceiros).
• Responsável pela aprovação da análise de viabilidade dos contratos públicos (Canoas, Viamão, Eldorado do Sul, Gravataí e Guaíba) e contratos privados.
• Responsável pela gestão orçamentária, controle de projetos, projeção de rentabilidade dos contratos (resultados) e controle de faturamento das medições.
• Gestão, desenvolvimento e acompanhamento de cronogramas físicos e financeiros.
• Responsável pelo dimensionamento de equipes e equipamentos para execução das obras.
• Supervisão e controle de medição (produção) até aprovação e monitoramento de pagamento.
• Contato direto com clientes privados e nas Prefeituras da Região, (Prefeito, Secretário e Fiscal)
Principais realizações:
Perimetral – Viamão/RS (obra em andamento)
Loteamento Gardenville – Eldorado do Sul (obra concluída)

GRAMADO PARKS
Gestor de Planejamento e Orçamento - 01/2020 até 02/2022.
• Responsável pelo orçamento e planejamento de obras (Snowland e Acquamotion) do Grupo Gramado Parks.
• Gestão orçamentária e financeira, implantação e controle de cronogramas executivos, ao que tange a execução de obras civis e obras de infraestrutura.
• Responsável pelo desenvolvimento de orçamentos executivos, cronogramas físicos e financeiros, contratações (cotação, avaliação técnica, negociação e tramitações) de empreitadas das diversas disciplinas envolvidas na execução das obras.
• Condução de negociações técnicas e comerciais para contratações de construtoras, empreiteiras e materiais ou serviços. Gestão de contratos e fornecedores, controle de medições e pagamentos seguindo o fluxo de caixa da empresa.
• Elaboração de memoriais de orçamentação, estruturação da tomada de preços, equalização e análise de propostas e modelos de contrato.
• Elaboração do cronograma de obras visando cumprir prazo de entrega do empreendimento e dimensionamento de equipes.
• Gestão de contratos e fornecedores interagindo nas etapas de tomada de preço, equalização de propostas, acompanhamento, medições e encerramento dos mesmos.
• Análise de custos e alinhamento de cronograma junto às construtoras.
• Acompanhamento de obras afim de garantir qualidade e prazos na execução.

MILLS ESTRUTURAS E SERVIÇOS DE ENGENHARIA S/A Engenheiro de Contratos – 08/2013 a 07/2019
• Gestão da filial: gerenciamento dos custos, análise de futuros investimentos, projeções de resultados, faturamento e planejamento financeiro.
• Gerenciamento, criação e acompanhamento do forecast semanal, para atingimento de metas do orçamento inicial.
• Controle de indicadores: produção, financeiro, receita.
• Gestão, formação, treinamento e desenvolvimento, acompanhamento e qualificação de equipe: colaboradores (60).
• Fornecimento de serviços de engenharia de obras de infraestrutura.
• Gerenciamento de propostas e contratos.
• Supervisão comercial, técnica e operacional.
• Análise técnica de projetos de obras de grande porte.
• Responsável técnico e comercial de obras de infraestrutura.
• Padronização do backlog dos clientes ativos, com revisões trimestrais.
• Controle do pipeline comercial, monitorando metas e traçando estratégias comerciais.
• Supervisão e controle das medições de mão de obra.
• Gerenciamento de obras de infraestrutura, direção e execução de projetos e administração de cronograma.
• Gerenciamento e controle de metas da equipe comercial, técnica e operacional.
Principais realizações:
Nova Ponte do Guaíba - Porto Alegre/RS – 2019
Contorno de Florianópolis - Florianópolis /SC – 2019
Ampliação Aeroporto Salgado Filho - Porto Alegre/RS - 2019
Ampliação Aeroporto Hercílio Luz – Florianópolis/SC – 2019
Moinho Isabela - Bento Gonçalves/RS – 2019
Ampliação CMPC – Guaíba/RS – 2015

ROHR S.A ESTRUTURAS TUBULARES Estagiário – 08/2004 a 08/2005
Técnico comercial – 09/2005 a 07/2012
• Verificação de projetos de escoramento metálico, andaimes e formas.
• Elaboração de propostas e contratos de locação e mão de obra no segmento: construção e rental.
• Supervisão de equipe operacional de montagem.
• Acompanhamento de obras de infraestrutura, edificações e industriais.
• Atendimento comercial interno e externo no segmento construção e rental.
• Acompanhamento de metas comerciais e medições de obras.
• Reuniões com clientes estratégicos e preferenciais.
Principais realizações:
Ponte Anita Garibaldi - de Laguna/SC – 2009','Gestão de Pessoas e Gestão Empresarial',NULL,'Novos Negócios, Engenharia','https://drive.google.com/open?id=1WpNOFbiLVLVaoLIdh8pYvFTtkRI9fA37',NULL,'Agência de Empregos','Não','Negociável (Tipo de contratação e benefícios)','Sim','Vitor Hugo da Silva - Empresa ROHR - 51 984073433','Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-04-27T17:44:00.000Z'::timestamptz),
  ('Fernando Selling Cunha','fernandoselling.eng@gmail.com',NULL,'71991473375','1993-05-11',32,'Solteiro(a)','0','Sim','Salvador/ba','https://drive.google.com/uc?export=view&id=1X837sfU3UxzgNRQQsQj6X-OvLOUcL6Ng','Engenharia Civil','Ensino Superior Completo','UNIFACS','2019-01-01','Sou formado','1) ART Projetos Construções e Serviços Ltda 2) Engenheiro de licitações 3) Inicio  Janeiro 2016 final Setembro 2020 4) Atuava na realização da curadoria de editais de licitações para participação da empresa, elaboração de documentação e proposta de preço, elaboração de composição de preços unitários, planilha orçamentária e composição de BDI, elaboração de curva ABC, planejamento em MS Project, confecção recursos administrativos (quando necessário), acompanhamento de todo  processo licitatório e realizações de toda a parte burocrática até assinatura de contrato, enviando toda a documentação e seguros para a assinatura do contrato. Atuava também na manutenção de obras que ainda estavam na garantia oferecida pela empresa, verificando e analisando os problemas apresentados, liderando uma equipe de profissionais para a resolução mesmo.
1)  Construtora J Meireles Ltda 2) Engenheiro orçamentista 3) inicio Setembro 2020  final Junho 2021 4) Atuava na leitura e levantamento de quantitativos de projetos, precificação, composição de preço unitário e criação de orçamento para integrar a proposta de preços para execução de obras. Atuava também dando apoio aos engenheiros de obra, entregando levantamentos e orçamentos complementares.
1)  Engequaly Construções e Serviços 2) Engenheiro de campo 3) início Julho 2021 – Maio 2022 4) Atuava no planejamento e execução de obras e serviços de engenharia, elaborando cronogramas, planilhas de acompanhamento dos serviços e de produção, planejando e realizando compra de materiais, programação de mão de obra para execução dos serviços.
1) BMV Construções e Incorporações Ltda 2) Engenheiro de obras 3) Maio 2022 – Outubro 2022 4 ) Atuei no planejamento e execução de obras públicas, elaborando cronogramas, planilhas de acompanhamento dos serviços e de produção, realizando planejamento e controle compra de materiais e suprimentos para a realização da obra, programação de mão de obra para execução dos serviços, tratava da contratação, fiscalização e pagamento de subempreiteiros e empresas terceirizadas, tratava do relacionamento entre empresa e cliente, e fazia boletins de medições dos serviços que a empresa executou. 
1) Construtora JF Prado Ltda 2) Engenheiro de obras 3) inicio Novembro 2022 4) Atuo no gerenciamento de dois contratos da empresa com a prefeitura de Teixeira de Freitas, realizando o planejamento e executando obras públicas, elaborando cronogramas, levantamento de obra, elaborando aditivos, contratando mão de obra, levantando materiais para compras, solicitando e fiscalizando a compra de materiais para a obra, contratação, fiscalização e boletim de medição de subempreiteiros, além de boletins de medição, relatórios diários de obra da empresa e trata e tratava do relacionamento empresa e cliente',NULL,NULL,'Administrativa, Comercial, Engenharia','https://drive.google.com/open?id=1vqnWAs9zVbmms1D9ykoQwbY4yovbIKqG',NULL,'Agência de Empregos','Não','R$6.500,00','Sim',NULL,'Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-04-27T19:07:00.000Z'::timestamptz),
  ('Antônio Luis Mariani Dörr','antoniolmdorr@gmail.com',NULL,'51999379611','1960-10-11',65,'Casado(a)','1','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1QztBT1-FeeeFbIkr4PXfw9l0HtIAuNOk','Engenharia Civil','Ensino Superior Completo','PUC RS','1985-12-28','Sou formado','Principais cargos : 1) Engenheiro Civil Responsável Técnico na Associação Deseret - Multinacional de Construção Civil Norte Americana, com sede no Brasil em São Paulo SP. Atuando no Planejamento e Execução de 25 Templos Mórmons em cidades do RS, SC, PR e SP.  Periodo 01 de Outubro de 1997 a 25 de Abril de 2006.
2) Engenheiro Civil  Responsável Técnico na Doblewe Empreendimentos Imobiliários Ltda - Atuando no Gerenciamento de Projetos, Planejamento e Execução de 5 edifícios residenciais de alto padrão de acabamento nos Bairros Petrópolis e Bela Vista - Porto Alegre/RS. Periodo 01 de Dezembro de 2009 a 30 de Janeiro de 2020.','Eletrotécnica, Ms project, Lean Constrution, Projeto e Execução de Sistemas Fotovoltaicos','Eletrotécnica, Ms Project, Projeto e Execução de Sistemas Fotovoltaicas','Engenharia','https://drive.google.com/open?id=1x8_9TxSvHpkfDomB2wCrUzkIots91szV','https://drive.google.com/open?id=1gxd2rOZJFK9KTB_FxROIBCrQxzgpEM_H, https://drive.google.com/open?id=1ISKHoAT4BiV_R9BpMVUMB9EHK9jy4ECg, https://drive.google.com/open?id=1u1TDcHm6CfQyKpGhco2grsPerjJdicXk, https://drive.google.com/open?id=1y9QHcXr7bXiDYyzt5VYVSV_hbvhvciky, https://drive.google.com/open?id=1b31zeyjV1nau1SYbJg2rxMygf0jYtTel','Agência de Empregos','Não','10000,00 PJ','Sim','Eng. Luiz Fernando Wolf - Diretor da Doblewe Empreendimentos Imobiliários Ltda . Fone 051 993544234','Engenheiro Civil','Domínio do Ms Project, Auto Cad 2D e 3 D, office . Possuo formação pedagógica para aulas de matemática e física. Faço musculação e corrida de rua.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-04-27T19:18:00.000Z'::timestamptz),
  ('Leonardo Vicente','leonardovicente94@hotmail.com',NULL,'51984101139','1994-11-27',31,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1zx5K1-50TH-D6YBfIiP2M5rttMDg7crk','Engenharia Civil','Ensino Superior Completo','UniRitter','2018-12-28','Sou formado','Engenheiro Civil, PROFISSIONAL LIBERAL em Rio Grande do Sul, Porto Alegre - RS
07/2020 - 10/2022

Engenharia - Engenharia Civil (Coordenador)

Realizar visitas técnicas para supervisão das obras residenciais;Implementação de Dashboard em POWER BI visando a otimizar a gestão visual dos resultados, objetivos e planejamento das obras em tempo real;Orientar equipes de trabalho para assegurar a qualidade, segurança e cumprimento dos prazos na realização das obras;Revisão dos projetos complementares;Elaboração dos orçamentos para cotação das obras e definição das EAP para planejamento de execução;Responsável pela criação das apresentações dos estudos de viabilidades dos empreendimentos para os clientes;

Engenheiro Civil, Construtec MS Construtora em Rio Grande do Sul
06/2019 - 07/2020

Engenharia - Engenharia Civil (Coordenador)

- Engenheiro Líder responsável direto pela execução das obras;- Coordenar as tarefas administrativas e operacionais no canteiro de obras;- Elaboração de cronograma físico-financeiro das obras;- Elaboração de Roap-Map de execução das atividades, junto da equipe de engenharia do órgão responsável- Acompanhamento da execução da obra com foco no custo, qualidade e prazo- Gestão dos fornecedores e empresas terceirizadas;- Gestão de contratos;- Monitoramento, gestão e engajamento das equipes;- Garantir a fiel execução dos projetos recebidos do setor de engenharia do órgão responsável;- Gestão das equipes de trabalho própria e terceirizada; - Orientação técnica referente a boas práticas de execução - Garantir equilibro financeiro entre o previsto e realizado;- Planejar a compra dos materiais, junto do setor de compras;- Assegurar medidas de segurança do trabalho, junto do técnico de segurança do trabalho

Estagiário obra, Ministério Público do Rio Grande do Sul em Rio Grande do Sul, Porto Alegre - RS
12/2017 - 01/2019

Engenharia - Engenharia Civil (Estagiário)

- Auxiliar na execução das medições da obra para engenheiro fiscal responsável; - Elaboração de relatórios dos serviços executados e vistorias na obra; - Análise de propostas de licitação; - Analisar a compatibilidade de projetos e memória de cálculo feita pelo setor de orçamentos com a execução in loco; - Revisão completa das medições e quantitativos de materiais de todo o empreendimento;- Trazer previsibilidade das medições e controle de avanço físico-financeiro da obra;- Acompanhamento e fiscalização da obra para garantir a qualidade dos serviços prestados.

Estagiario Obra, SOMMER & SOMMER CONSTRUTORA em Rio Grande do Sul
06/2016 - 06/2017

Engenharia - Engenharia Civil (Estagiário)

- Fiscalização e execução de serviços para obra de Alto Padrão;- Acompanhamento e montagem de cronogramas para respectivas entregas e metas;- Controle e gestão de pedido de materiais;- Demonstrar previsibilidade das frentes de trabalho;- Organizar as equipes e frentes de trabalho junto do mestre de obras e engenheiro;- Acompanhamento direto das equipes de trabalho a fim de garantir o controle de qualidade e o desperdício nas atividades a serem executadas e na logística do canteiro de obras- Co-responsável direto pela execução das tarefas na ausência do engenheiro residente- Realização de conferência de todos os serviços executados na obra;- Realização das medições de toda obra;

Estagiario Obra, Nex Group em Rio Grande do Sul
09/2014 - 02/2016

Engenharia - Engenharia Civil (Estagiário)

- Atividades de controle de Qualidade e Produção;- Preenchimento das fichas de verificações de serviço;- Acompanhamento de cronogramas estipulados pelo engenheiro residente da obra e o setor de planejamento;- Cubagem de concreto e acompanhamento de concretagens;- Conferência de níveis das formas das lajes, pilares e vigas;- Conferência das ferragens, lajes, vigas, e pilares;- Conferência de instalações elétricas e hidrossanitárias;- As conferências estruturais eram acompanhadas pelo mestre de obras;-Suporte ao mestre de obras,contramestre e técnico de edificações;- Conferência dos serviços de alvenaria;- Conferência dos serviços de reboco interno e externo;- Conferência de serviços de acabamento;-Entrega de apartamentos aos clientes finais;

Estagiario Obra, SIPAR SOCIEDADE DE INCORPORAÇÕES E PARTICIPAÇÕES em Rio Grande do Sul
03/2013 - 08/2013

Engenharia - Engenharia Civil (Estagiário)

Funções exercidas diretamente no Canteiro de Obras. Auxiliar nos projetos arquitetônicos; auxiliar na identificação dos procedimentos realizados na unidade concedente, auxiliar em compras autorizadas de itens; auxiliar na elaboração de projetos.','Área de Estudos - Execução de Obras e Planejamento
Formação: Engenharia Civil
Cursos de curta e média duração - Planejamento no MS Project, Power BI para Engenharia Civil

Desejo me tornar um futuro Gestor de Projetos - PMP',NULL,'Engenharia','https://drive.google.com/open?id=1sdjpWp2m7tIIoD3vKE-zERPVxYmVsXXH',NULL,'Agência de Empregos','Não','R$ 6000 a 9000','Sim','Eng Pedro Sommer - Construtora SOMMER&SOMMER -51-99239-7890
Marcio - Construtec MS Construtora - 51-98144-0860
Allan Souza - SA Engenharia - 51-998991286','Analista de Engenharia Civil ou Engenheiro Civil','Planejamento Intermediário - MS Project

Inglês Intermediário (Sonho chegar a Fluência e apresentar um pitch de vendas em outro idioma)

Comunicativo, Criativo e Entusiasmado;

Gosto de ler livros (desenvolvimento pessoal, comunicação, criatividade, psicologia, marketing)

Gosto de praticar musculação 5x na semana e Corrida aos finais de semana.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-04-27T22:14:00.000Z'::timestamptz),
  ('Bernardo Martins Guimarães','bernardo.eng@outlook.com',NULL,'55984381180','1997-11-20',28,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1Mhz9SPHy9wF3h6aEZiAD5UbM-4IfNrUq','Engenharia de Produção','Pós-graduação Completa','Engenharia de Produção pela Unifacvest e Engenharia Civil pela UCA-Universidade Católica Paulista','2021-08-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','(03/2021 até 05/2022) – Gestão Produção/Contratual/Planejamento – Camargo Correa Infra Construções S.A.

Projeto 1 – LOTE 21 DA LINHAS DE TRANSMISSÃO DE ENERGIA EM SC - Execução, na modalidade turn-key, de obras civis, abertura de acessos, terraplenagem, levantamentos de campo, suprimentos de equipamentos, ferramentas, materiais, insumos e mão de obra para instalação e montagem de linha de transmissão de energia elétrica.
Consistiu na entrega de uma linha em 525kV de 250 km de extensão e outra de 230kV e 6 km de extensão, conectando uma subestação já existente à nova SE Siderópolis 2, proporcionando maior capacidade de suprimento e confiabilidade na região.

Projeto 2 – TRECHO NORTE DO CONTORNO DE FLORIANÓPOLIS - Implantação de rodovia em pista dupla, incluindo serviços de geotécnica, terraplenagem, drenagem e pavimentação nos dois sentidos (Norte e Sul). Implantação e conclusão dos serviços residuais no Contorno Viário da Grande Florianópolis, via de escoamento de tráfego urbano alternativo à BR-101 com o objetivo de reduzir congestionamentos e tráfego intenso entre Santa Catarina e Rio Grande do Sul.

•	Responsável pela execução, fiscalização e medição das obras, garantindo as medidas certas;
•	Levantamento de quantitativos de insumos, mão de obra, materiais e equipamentos para obra;
•	Elaboração de cronogramas para o acompanhamento das atividades a serem realizadas;
•	Confecção de relatórios diários para acompanhamento das obras, reportando para gerência;
•	Administração e revisão de contratos, analisando e garantindo as informações corretas;
•	Realização de cadastro, atualização e inclusão de informações em sistema interno SAP;
•	Criação de planilhas em Excel para controle interno, facilitando em 100% a busca de dados;
•	Participação na obra do lote 21 (linha de transmissão de energia), e também dá obra do contorno viário de Florianópolis, sendo responsável pelos recursos humanos, físicos e financeiros da obra;
•	Criação de sistema de cronograma enxuto com acompanhamento da produção e atualização em alta rigorosidade, maximizando a produção em torno de 30% no lançamento de cabos.


(11/2018 até 07/2019) – Atendimento – Flex Gestão de Relacionamentos S.A.

•	Atendimento/suporte aos clientes para apresentação e comercialização dos cartões de crédito;
•	Elaboração de estratégias e ações de marketing, aumentando em média 5% das vendas;
•	Atuação como conselheiro de vendas, devido ao bom desempenho e alta performance.

(02/2017 até 01/2018) – Gerente de Projetos – Everto Farina.

•	Gerenciamento de carteira com aproximadamente 10 empresas, realizando consultorias de planejamento estratégico, gerindo os projetos e equipes, em torno de 50 colaboradores por empresa;
•	Contato com os clientes para alinhamento de informações e ações de melhorias no projeto;
•	Acompanhamento de processos, identificando falhas e criando planos preventivos e corretivos.

(01/2015 até 02/2016) – Administração Geral – Nova K Portões Eletrônicos Ltda.

•	Gerenciamento de processos e equipes, sendo responsável por 5 colaboradores;
•	Emissão, lançamento e conferência de notas fiscais, analisando e garantindo os dados certos;
•	Recebimento, conferência, separação, movimentação e armazenagem de mercadorias;
•	Apoio no planejamento, programação e controle da produção, garantindo o prazo de entrega.','Graduação em Engenharia de Produção – Centro Universitário Unifacvest (08/2021).
Graduando em Engenharia Civil – Faculdade Católica Paulista (12/2023).
MBA em Gestão de Projetos - Centro Universitário Leonardo da Vinci - Pós-Graduação (06/2023)
MBA em Gestão de Processos - Centro Universitário Leonardo da Vinci - Pós-Graduação (06/2023)
Especialização em Docência no Ensino Superior – Centro Universitário Leonardo da Vinci (01/2022).','CREA SC 184633-4','Administrativa, Engenharia','https://drive.google.com/open?id=1rdrm0BQCwGlWTpqYYw1dm_BNyY5xQo99',NULL,'Indicação','Não','6.656,72 devido ser o piso da profissão, porém sou volátil considero muito o valor que tem agregado em fazer parte da equipe Young.','Sim','48 996630104 - Maria Alejandra Fortuny - Gestora da Camargo Correa Infra Construções S.A.

49 998170608 - Enio Gabriel - Instrutor da Flex Gestão de Relacionamentos S.A.

55 996026499 - Francisco Delmar - Proprietário Nova K Portões Eletrônicos.','Engenheiro Civil','Sou muito proativo e apaixonado por produção, devido ter atuado na construção civil tenho essa mistura da engenharia da produção (voltada bastante à indústria) em conjunto com a engenharia civil, ter atuado em uma das maiores construtoras do brasil fez com que eu optasse por este nicho de obras.
Sou um filantropo nato, cristão, amo ajudar o próximo e agregar na vida de todos à minha volta, gosto de atividades físicas, as quais pratico todos os dias possíveis. Sou muito flexível e acredito que um propósito bem definido facilita a motivação de todos.
Gosto de me especializar sempre nos meus próximos objetivos, para que seja realizado com sabedoria e maestria.
São Borjense, nascido e criado aqui, ganhei bolsa de estudos e fui cursar engenharia em Santa Catarina, estou de volta desde janeiro deste ano procurando uma oportunidade de realizar aquilo que sei fazer.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-04-28T03:31:00.000Z'::timestamptz),
  ('Bruna Cardoso da Silva','brunynhacardoso@yahoo.com.br',NULL,'51.995.683.822','1992-09-21',33,'Solteiro(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1k5ATp-UtZ5b9bSfgNczqMDqQ1an41OMa','Técnico de Transações Imobiliárias','Ensino Superior Incompleto','Unigran EaD (Ciências Contábeis) e Rede Mônaco Escola Técnica (TTI)','2021-09-08','Não, no momento pausei/parei por um período.','Farmácias São João - Balco Farmacista;
Período - 2017 à 2019;
Funções - atendimento ao público, vendas com cumprimento de metas, lançamentos, conferências e auditoria.

Savale Imóveis - Aux. Administrativo;
Período - 2019 - até o momento;
Funções - atendimento ao público, atividades comerciais no Dep. Locações, lançamentos eventos no sistema, confecção de contratos e vistorias,  captação de imóveis, cobrança de inadimplentes, intermediação entre locador / locatário e  avaliação de imóveis para locação.','	CORONAVÍRUS - Os Impactos no Direito e no Ambiente de Negócios (05/2020);
	DECLARO - Curso On-line Declaração de Imposto de Renda – UNIGRAN (abril/2021);
	Educação Financeira – Inst. Federal Sul-Rio-Grandense (junho/2021);
	Empreendedorismo - Inst. Federal Sul-Rio-Grandense (junho/2021);
	Gestão Financeira - Inst. Federal Sul-Rio-Grandense (junho/2021);
	Atualização, Ressignificação e Desenvolvimento de Competências Profissionais – UNINASSAU (agosto/2021);
	Os Saberes Integrados das Licenciaturas – UNIGRAN (agosto/2021);
	Noções de Gestão Pública – Unypós (setembro/2021);
	Dominando a LGPD – Alice Ferreira (setembro/2021);
	Desenvolvimento Profissional e Equilíbrio Pessoal – UNESC DIGITAL (setembro/2021);
	Desafios do Amanhã: Liderança, Empreendedorismo e Diversidade – UNINASSAU (outubro/2021);
	Liderança, Capacidade de Aprender e Resiliência – PUCRS (novembro/2021);
	Descomplicando a Locação – Rafael Sieiro (fevereiro/2022);
	Despachante Imobiliário – Portal Curso EaD (março/22);
	Documentação Imobiliária – Luana Stein (março/22);
	Liderança saudável: transformando pessoas e empresas – PUCRS (março/2022);
	DECLARO – PF  - UNIGRAN (abril/2022)','	CORONAVÍRUS - Os Impactos no Direito e no Ambiente de Negócios (05/2020); 	DECLARO - Curso On-line Declaração de Imposto de Renda – UNIGRAN (abril/2021); 	Educação Financeira – Inst. Federal Sul-Rio-Grandense (junho/2021); 	Empreendedorismo - Inst. Federal Sul-Rio-Grandense (junho/2021); 	Gestão Financeira - Inst. Federal Sul-Rio-Grandense (junho/2021); 	Atualização, Ressignificação e Desenvolvimento de Competências Profissionais – UNINASSAU (agosto/2021); 	Os Saberes Integrados das Licenciaturas – UNIGRAN (agosto/2021); 	Noções de Gestão Pública – Unypós (setembro/2021); 	Dominando a LGPD – Alice Ferreira (setembro/2021); 	Desenvolvimento Profissional e Equilíbrio Pessoal – UNESC DIGITAL (setembro/2021); 	Desafios do Amanhã: Liderança, Empreendedorismo e Diversidade – UNINASSAU (outubro/2021); 	Liderança, Capacidade de Aprender e Resiliência – PUCRS (novembro/2021); 	Descomplicando a Locação – Rafael Sieiro (fevereiro/2022); 	Despachante Imobiliário – Portal Curso EaD (março/22); 	Documentação Imobiliária – Luana Stein (março/22); 	Liderança saudável: transformando pessoas e empresas – PUCRS (março/2022); 	DECLARO – PF  - UNIGRAN (abril/2022)','Administrativa, Comercial, Financeiro, Novos Negócios','https://drive.google.com/open?id=1-2g-YbRi7dsZX66TzJCWxaSeeZilNs6q',NULL,'Instagram','Não','R$ 2300,00 - R$ 2800,00','Sim','Viviane - 51 9. 9602-5899 - Gestora Farmácias São João (SAP)','Quero inscrever-me no banco de talentos da Young!','Gostaria de utilizar esse espaço, para  falar um pouco de mim!! Sou bem comunicativa, gosto de trabalhar com pessoas. Respeito o processo hahahaha ou seja, sou meio metódica. Amo estudar e aprender sempre para ter conhecimentos aleatórios ou me aprofundar na atividade em que estaria desenvolvendo. Tenho expectativas de crescimento, gosto muito de trabalhar, estudar, sair, beber (porque ninguém é de ferro hahaha), dançar... Me dou bem em trabalho de equipe, sou pró ativa e procuro sempre melhorar como pessoa e como profissional. Nas horas vagas, procuro aproveitar ao máximo minha filha que tem 12 anos. Saímos, brincamos, tomamos chimarrão ao sol... E é isso!!!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-04-28T12:37:00.000Z'::timestamptz),
  ('Matheus dos Santos faccini','matheus.faccini33@gmail.com',NULL,'51980494030','1997-02-23',29,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1kvZHrZ3XDgr_5RKkpLDVde-Cg91mTz7Z','Gestão comercial','Ensino Médio Completo','Unicesumar',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Viu Internet Provedora de Acesso, Trabalho com vendas Ativas e receptivas.',NULL,NULL,'Comercial','https://drive.google.com/open?id=1DGEtsFgl7D-rH56fE7m7tHqmlwnoSPPD',NULL,'Instagram','Não','1.900','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-05-02T11:48:00.000Z'::timestamptz),
  ('Andressa Muniz','andressadebmuniz@gmail.com',NULL,'51998504465','2000-05-02',25,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Au1I_tO6MneDjzpJ9Oqsangm1s2Of9H6','Engenharia de Produção','Ensino Médio Completo','Furg','2028-12-01','Sou formado','Contabilidade Fahrion
   Razão Social: Dmaf Serviço LTDA.
   Cargo: Auxiliar Departamento Pessoal. 
   Tempo: 09/01/2019 a 22/12/2021.

   RR Shoes Comércio e Fabricação de Calçados- EIRELI
  Cargo: Preparadora de Calçados (Qualidade)
  Tempo : 11/07/2022 - 14/10/2022.

  Clínica Médica Dentária Santo Antônio da Patrulha Ltda.
Cargo : Recepcionista de Consultório Médico ou Dentário.
Tempo : 19/11/2022 - 16/02/2023.','Vou começar a cursar Engenharia de Produção',NULL,'Administrativa','https://drive.google.com/open?id=1qwwEXNLDAnjz7rKyLyaMjnNDn0wXb-Cx',NULL,'Instagram','Não','1800','Sim','Contabilidade Fahrion
   Razão Social: Dmaf Serviço LTDA.
   Cargo: Auxiliar Departamento Pessoal. 
   Contato: 5199975-4455','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-05-02T16:42:00.000Z'::timestamptz),
  ('Luiza Silveira da Rocha','luizasrocha@hotmail.com',NULL,'51999687349','1996-07-11',29,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1y3Khb_T5ds2OYNo47GOqidKvu2ePxQoj','Engenharia Civil','Ensino Superior Completo','Universidade do Vale do Rio dos Sinos - UNISINOS','2022-02-18','Sou formado','1. Prefeitura Municipal Santo Antônio da Patrulha/RS - Estagiária Engenharia Civil - 03/2014 a 08/2015.
Principais atividades: Graficação de projetos no AutoCAD; acompanhamento em
aprovações de projetos; arquivamento, atendimento ao público.

2. Espácio Arquitetura e Design - Estagiaria Engenharia Civil - 08/2015 a 07/2020.
Principais atividades: Graficação de projetos no AutoCad, acompanhamento de
projetos na prefeitura municipal, atendimento aos clientes, serviços bancários.

3. Construtora Panassolo - Osório/RS - Estagiária Engenharia Civil - 03/2021 a 01/2022.
Principais atividades: Acompanhamento de obras residenciais de casas e
prédios, acompanhamento de execução de obra de condomínio, acompanhamento de fabricação de peças pré-moldadas, orçamentos,
compras e recebimentos de materiais.

4. Masal S/A Indústria e comércio - Engenheira Civil - 08/2022 (atual)
Principais atividades: Execução de obras novas e reformas, orçamentos, contratação e gerenciamento de mão de obra e compras.',NULL,NULL,'Engenharia','https://drive.google.com/open?id=1EMNFfaidtme0eBSgRLbjVOJ_L4OUgXbS',NULL,'Instagram','Não','5.000,00','Sim','Construtora Panassolo 
Rafael Panassolo - (51)98117-4846','Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-05-03T13:26:00.000Z'::timestamptz),
  ('Júnior Melo Oliveira','juniormelooliveira22@gmail.com',NULL,'51998100177','2003-05-22',22,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=17kr4SHYmPTyFcWjoATl5AZduMp5xOlgQ','Economia','Ensino Superior Incompleto','Universidade do Vale do Rio dos Sinos (Unisinos)','2027-12-03','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Maxxi Econômica Farmácias . Aprendiz
09/2018 - 10/2019
Na farmácia minhas responsabilidades eram a parte de venda de todo o tipo de medicamento e perfumaria, também realizava o trabalho de estoquista, organizando o estoque e repondo a falta de produto.

Fórum Santo Antônio da Patrulha . Estágio
12/2019 - 12/2020
Eu era responsável pelo atendimento ao público, onde eu transmitia certas informações sobre o andamento de processos e direcionava o público aos devidos setores, também cuidava do recebimento de processos e da baixa dos mesmos. Por um curto momento trabalhei na 1ª Vara do Forum, realizando a juntada de documentos e atendimentos específicos. 

OAB Santo Antônio da Patrulha . Secretário
01/2021 - 12/2021
Na OAB eu trabalhava sozinho, ou seja, fazia todos os tipos de serviços. Realizava o atendimento de advogados e de outras pessoas, fazia diligências para os advogados (seria a retirada de processos no Fórum e a digitalização dos mesmos). Outras das minhas funções era o controle de caixa e o fechamento do caixa ao final do mês, e também a responsabilidade por cuidar da manutenção do prédio e do pátio, contatando os devidos profissionais para o serviço. 

Brasil RH . Estágio
11/2021 - 05/2022
A Brasil RH é uma empresa que presta serviços de HR para outras empresas. Eu como funcionário da Brasil, era responsável pela HIAB Brasil, local onde eu trabalhava presencialmente. Também prestei serviços para a MAGNA Cosma, trabalhando presencialmente na empresa.
Minha função era cuidar dos funcionários que possuíam contrato temporário. Eu realizava a assinatura da carteira de trabalho e do contrato de trabalho, era responsável pelo controle dos pontos, envio de contracheques, assinatura de férias e também assinatura das rescisões contratuais.

HIAB Brasil . Estágio
06/2022 - 05/2023
Devido ao meu Técnico em Mecânica, me foi oferecida a oportunidade de trabalhar no setor de Engenharia da HIAB Brasil.
Minhas funções eram o controle de planilhas, detalhamento de desenhos técnicos e principalmente os estudos de integração veicular, onde por meio de um software é analisado todas as informações dos guindastes e dos caminhões, como pesos permitidos por lei, estabilidade, distribuição de peso, entre outras diversas informações de cada caminhão e guindaste que influenciam no estudo de montagem.','Cursando Bacharelado em Ciências Econômicas (Economia), presencialmente na Universidade Unisinos;

Finalizando o Curso Técnico em Mecânica na insituição de ensino CIMOL. (Falta entregar os papéis assinados referente ao desempenho do estágio e retirar o diploma);

Curso de Informática Básica e Intermediária, realizado na instituição de ensino Mundo Office;

Inglês Básico, realizado na instituição de ensino Wizard.',NULL,'Administrativa, Comercial, Financeiro, Marketing','https://drive.google.com/open?id=1xEDY_ChhXKvWKB8l4Nzms5eEjc2-mgAG',NULL,'Instagram','Não','R$1.800,00','Não','Julio Cesar - OAB
51 99117-7031

Natalia Rolim - HIAB
51 99223-8633 ou 3662 7781','Consultor de Vendas. Também desejável área comercial.','Tenho facilidade em me comunicar com as pessoas, muito devido as minhas experiências e trabalhos passados. Tenho boas habilidades com planilhas, sou uma pessoa focada e procuro sempre aprender e ter uma boa relação com meus colegas de trabalho.
Nas horas vagas gosto de praticar esportes como basquete e jiu-jitsu, também tenho muito interesse em vídeos e livros sobre empreendedorismo e conversar sobre o futuro profissional. 
Nos finais de semana gosto de passar o tempo com a minha família e amigos.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-05-04T01:24:00.000Z'::timestamptz),
  ('Giovana Bitencurt Pereira','giovanabitencourt134@gmail.com',NULL,'51995261670','2003-11-01',22,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Pgb1ZrZv3vwshCIx9fg0Ye7afEXsu8ra',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Farmácia Maxxi Econômica- atendente de farmácia.
Data de início: 23/11/2022 
Data fim: 06/02/2023',NULL,NULL,'Administrativa, Comercial, Estágio, Financeiro','https://drive.google.com/open?id=1GcKWFHcvgs_UEHVPOeSyyjDeZhsGTVDD',NULL,'Instagram','nao','1.500','Não',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-05-05T18:31:00.000Z'::timestamptz),
  ('Gabriela Costa Peres da Silva','gabrielacosta.peres@gmail.com',NULL,'51996987411','1988-11-17',37,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1ex8yJRCdOxIuyP6j_Zt0n5a6ZFn2lSSm','Direito','Pós-graduação Completa','Uniritter','2016-02-20','Sou formado','• Assembleia Legislativa - 2008 a 2010 
- Atendimento ao público, atividades administrativas e organizacionais e cadastramento de eleitores.

• Secretaria de Acessibilidade e Inclusão Social - 2010 a 2012
- Coordenadora de equipe. Atendimento ao público para encaminhamento e concessão de benefícios para pessoas com deficiência. Análise jurídica para viabilidade de acesso aos benefícios assistenciais e sociais (p. ex. Carteira de passe livre, isenção de impostos para pessoas com deficiências e etc.).  

• Câmara de Vereadores - 2012 a 2017
- Atendimento ao público, estudo para elaboração de projeto de lei, elaboração de relatório e coordenadora de equipe. 

• Companhia de Processamento de Dados de Porto Alegre - PROCEMPA - 2017 a 2021
- Assessora Jurídica - advogada no contencioso trabalhista da empresa (atuando em audiências, negociações coletivas com os funcionários e sindicato da categoria). Análise de contratos e elaboração de relatórios.

• Urbanni Ateliê - Acessórios Artesanais 
Sócia fundadora - 2021 atual
- Loja online especializada em acessórios artesanais. Sou responsável pela área comercial e financeira. Atuo à frente da empresa nas redes sociais, realizando vídeos para stories, fotos para catálogo e divulgação. Atendimento aos clientes, venda e pós venda. 
Realização de eventos e participação de feiras onde apresentamos o nosso produto.','• Pós-graduação em Direito Social do Trabalho, Processo do Trabalho e Direito da Seguridade Social. 
• Superpoder do Paulo Cuenca - Curso de Marketing e posicionamento nas redes sociais
• Método Riva 3.0 - Curso de marketing e posicionamento nas redes sociais','OAB/RS 114334','Comercial','https://drive.google.com/open?id=1eSzRdGgu-c56pgeWiXoThzKwHjoSl51E',NULL,'Indicação','Sim, Giulia Andriotte','Entre R$ 3mil e R$ 4mil.','Não','Silvio Ungaretti - 99969-5359','Comercial','No ano de 2020 movidas pelo sonho de empreender, minha irmã e eu, fundamos a Urbanni Ateliê. Inspiradas pela nossa avó paterna, diante da sua paixão por acessórios e joias, desenvolvemos uma loja virtual para comercializar os produtos produzidos por nós mesmas no ateliê montado em casa. Desta forma, gostaria de aproveitar a experiência em vendas e atendimento ao público adquirida em nossa loja, para aplicá-la também no ramo imobiliário.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-05-08T03:17:00.000Z'::timestamptz),
  ('Bruna Souza da Silva','hibrunasouza@gmail.com',NULL,'51997146793','2006-05-11',19,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1fdZ0QwxULQEcZ_NwC8ivhIEgXyJjKpgy',NULL,'Ensino Médio Completo','Escola Estadual de Ensino Médio Patrulhense',NULL,'Não, no momento pausei/parei por um período.','1) Açaí da Moah. 
2) Auxiliar de cozinha / caixa.
3) 13 de janeiro de 2023 - 22 de janeiro de 2023
4) Ajudava no preparo da montagem de açaí e ficava no caixa.

1) Mundo Office Estágios e Qualificação Profissional.
2) Secretária.
3) 27 de fevereiro de 2023 - PRESENTE.
4) Administro toda a parte de secretariado da escola e da agência de estágios, como: arquivamento de documentos, geração de boletos, notas fiscais, cálculos de rescisões e de cursos, recibos, cobrança, etc.',NULL,NULL,'Administrativa, Estágio, Financeiro, Engenharia','https://drive.google.com/open?id=1Kv6TEwuGC_lCmnCDqbS3mI1xGUJLQm_V',NULL,'Google','Não','Se a contratação fosse por estágio, no mínimo R$600,00. Se fosse contratação salarial, espero receber um salário mínimo.','Não',NULL,'Quero uma vaga na área administrativa, pois é uma área que tenho mais experiência. Entretanto, me disponho a aprender novas coisas e, quem sabe, atuar em uma área diferente.',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-05-08T18:33:00.000Z'::timestamptz),
  ('Nycolas Freitas dos Reis','nycolasfreitasdosreis@gmail.com',NULL,'51980465710','2000-05-15',25,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1uV15EPO-AWg-2H1Blt7u-vkw_awiDCWn',NULL,'Ensino Superior Incompleto','Uninter','2025-06-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Jovem aprendiz: tele marketing de fevereiro de 2021 a abril de 2021 
Estofaria JR: recepcionista de janeiro de 2022 a dezembro de 2022 
Ceo FMR marca de roupa: de setembro de 2020 e estou até o momento. 
Tenho facilidade e experiência em vendas, atendimento ao cliente, comunicaçãoe persuasão.',NULL,NULL,'Estágio, Marketing','https://drive.google.com/open?id=18CDlG4QFtufYU6KqGXEMmhZ1PJdXYVTZ',NULL,'Pela Minha Faculdade','Andrei Nunes dos Santos','Entre 1.400 a 2.500','Sim','Fmr: 51 980465710
Estofaria JR: 51 998231529','Comercial','Eu sou uma pessoa com bastante defeitos, mais que sempre tem metas e objetivos assim como todo mundo, meu objetivo é viver da minha marca de roupa, estou com ela a 2 anos e meio no mercado e estou aprendendo muito no ramo do empreendedorismo, estou fazendo faculdade de publicidade e propaganda por que tenho paixão pelo marketing no geral, conceito de campanha, conversas com clientes, conhecimentos trocados e claro o fechamentos de vendas. Estou a procura de um trabalho ou de um estágio nessa área comercial/vendas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-05-10T03:31:00.000Z'::timestamptz),
  ('Cleonice de Souza Silva','cleo68201@gmail.com',NULL,'51999626816','1990-05-12',35,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1FkfzwbL8Krh95bsslhHziubZv4Sm3d0e','Informática básica, inscrita fiscal e técnico de contabilidade incompleto','Ensino Médio Completo','Mundo Office, Jovem Profissional e Furgs',NULL,'Não, no momento pausei/parei por um período.','Piccadilly 7anos, auxiliar de produção.
Kallango 8 meses, costureira.
Via Uno 9 meses, auxiliar de produção.
Saboia & Auler 1ano e vc 6 meses, consultora ótica.',NULL,NULL,'Comercial',NULL,NULL,'Instagram','Não','Salário considerável com a função.','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-05-10T23:32:00.000Z'::timestamptz),
  ('Jeferson Luiz Peixoto Espindola','jpeixoto86@yahoo.com.br',NULL,'51999242517','1986-07-18',39,'União estável','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1V08fuW4OC15TxLu63czs2A1Wunk4By9g',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Cooperativa Agro Industrial Cooperja 
De 09/11/2015 até 14/12/2022 

Última Função: Compras 

Responsabilidades: Determinar especificações das compras, atendimento e prospecção de novos fornecedores, negociação de termos e condições de aquisição, emissão de notas, transferências e requisições de uso e consumo entre filiais. (compra de ferramentas, maquinas, EPIs, solicitações e negociação de manutenções e etc.)

Outras funções exercidas:

Operador de Maquinas de Beneficiamento de Produtos Agrícolas 
Responsabilidades: Operar, regular, fazer manutenção e limpeza de Secadores de arroz/milho/soja, Maquinas de Pré-limpeza (peneiras) de arroz/milho/soja
 
Auxiliar no Controle e gerenciamento de estoque de insumos 
Responsabilidades: Contabilizar insumos para produção, verificação de validade dos mesmos e agregando ao setor de compras adquirir insumos de acordo com o gerenciamento feito sobre o estoque existente além de produção de relatório semanal para a gerência.

Coringa
Responsabilidades: Substituir durante o período de férias ou afastamentos de Chefes de Setor, Balança e Estoque   
-------------------------------------------------
Lojas Taqi (Global Distribuidora de Bens de Consumo
De 18/06/20114 até 03/11/2015 

Última Função: Vendedor

Responsabilidades: Atendimento, consultoria e vendas diretas ao consumidor de bens variados (construção, maquinário mecânico, ferramentas, eletrodomésticos, móveis e eletro eletrônicos), organização de setor eletrônico encomendas e logística de entrega','Informática básica – Data control
Office -- Microlins  
Técnico em informática – Senac
Rotinas administrativas (Word, Excel intermediários) – Instituto Bradesco 
Liderança Comunicação e Relacionamento Interpessoal – SEBRAE/SC
Gestão de Processos – SEBRAE/SC',NULL,'Administrativa, Comercial, Financeiro, Marketing','https://drive.google.com/open?id=1nY0D9K35vGrEdFMsQLMrtIJNxmWGZ2H7',NULL,'Facebook','não','R$2200,00 -- R$3000,00 ou de acordo com a função, salvo se o cargo oferecer comissão ai não há limites','Não','Sonia Santos – Chefe de RH
Cooperativa Agro Industrial Cooperja 
Contato: (51) 999313589  (51) 3662 1313 Ramal: 706','Quero inscrever-me no banco de talentos da Young!','Sou hábil com pessoas tenho varias habilidades muito bem desenvolvidas, persuasão, empatia, trabalho em equipe, perspicácia, aprendizado rápido, criatividade e de pensamento acelerado, bom em criação de soluções para as adversidades que se colocam no dia -a- dia também tenho muita afinidade com maquinas, computadores e novas tecnologias em geral.
consigo me adaptar facilmente a situações e ambientes diferentes, tenho varias outras experiências tanto pessoais quanto profissionais que me ajudam a fazer a diferença onde eu estiver por exmeplo: 
- fui ator amador de teatro duarante 3 anos
-trabalhei como auxiliar de bombeiro hidráulico (encanador) 
- Auxiliar de chaveiro
-Auxiliar de eletrecista residêncial
-entregador 
-Pratiquei Karatê e Muay Tay
-trabalho esporadicamente como garçom e de Barman ( faço alguns Drinks)
-trabalhei como suporte e vendas e pós venda e fiz algumas automações de recuperação de clientes para um site de Dropshipping
essas entre outras experiências variadas','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-05-11T00:19:00.000Z'::timestamptz),
  ('Gabriela Zemolin Righi','gzrighi@gmail.com',NULL,'55997196029','1998-02-07',28,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1Pu1Hxi8e6H-hmj9bsx78m2yWyjMs-1-P','Engenharia Civil','Ensino Superior Completo','Universidade Federal do Pampa','2023-04-28','Sou formado','Minhas únicas experiências profissionais foram por meio de estágios realizados durante o período da graduação.
- A primeira experiência foi no setor público, na Prefeitura Municipal de Alegrete, sendo contratada como estagiária de engenharia civil. Meu período de trabalho se estendeu de Janeiro de 2021 até Agosto de 2022. As atividades desenvolvidas lá envolveram projetos para reformas municipais, sendo a maioria projetos arquitetônicos e alguns projetos complementares, além disso, obtive experiência na parte orçamentária, utilizando a planilha SINAPI para elaboração de orçamentos, composições de serviços e cronograma físico-financeiro.
- A segunda experiência foi em um escritório de engenharia na cidade de Alegrete, LFN Engenharia, sendo contratada como estagiária de engenharia civil e o período de trabalho foi de Outubro de 2022 até Janeiro de 2023. Lá trabalhei em alguns projetos arquitetônicos e projetos elétricos, também realizava levantamento de quantitativos para obra, para fazer a compra destes materiais e possuía contato direto com fornecedores. Além disso, também tive a oportunidade de acompanhar algumas obras, sendo elas, em maior parte, reformas residenciais, e com isso, ganhando mais experiência na execução de obras e contato direto com a mão de obra.','Para minha formação em engenharia civil, realizei meu trabalho de conclusão de curso na área de estruturas, analisando o comportamento de um edifício em concreto armado utilizando a interação solo-estrutura. Desde então, venho realizando alguns cursos por conta, e por enquanto, estes cursos são mais voltados para a área de estruturas, assim como cursos de softwares específicos utilizados atualmente na engenharia.',NULL,'Engenharia','https://drive.google.com/open?id=1jJv5eJUg4MjF8ERFVHZzt_sCTCYQR3qe',NULL,'Indicação','Não.','R$ 3500.00 - R$ 4000,00','Sim','Érica de Vargas: (55) 99659-9354 - Engenheira Civil na Prefeitura Municipal de Alegrete','Engenheiro Civil','Sou uma pessoa mais caseira, de poucos e bons amigos. Me considero uma pessoa dedicada, organizada e proativa e gosto de estar sempre estudando, aprimorando meus conhecimentos seja com cursos ou vídeos no youtube. No meu momento de lazer gosto de uma boa leitura ou assistir filmes e séries, passeios ao ar livre com o namorado e também gosto de conhecer novos restaurantes e experimentar novas comidas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-05-12T02:08:00.000Z'::timestamptz),
  ('Franciele Roberta Munieweg','francielemunieweg1267@gmail.com',NULL,'55996275691','1982-10-21',43,'Solteiro(a)','1','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1BpXR-aZnX5SxshNo00uUMlSij5f6a3t8','Engenharia Cartográfica e de Agrimensura','Ensino Superior Incompleto','Unipampa','2023-08-18','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','O boticário, vendedora, 2001/2003; Agropecuarista, 2004/2012;  Mundo do brinquedo, proprietária, 2012/2017; CRVA-DETRAN, Auxiliar de escritório, 2021/2022;   Estudante, curso de Engenharia Cartografica e de Agrimansura, UNIPAMPA-ITAQUI, 2017/2023;',NULL,NULL,'Administrativa, Comercial, Financeiro, Marketing','https://drive.google.com/open?id=1FyHg3e8CRuhBYykg7F-reOHpMR58_1JU','https://drive.google.com/open?id=1rGecHSYP9tzJkg9YL5ywgNHytZV5FLOg, https://drive.google.com/open?id=1RPR84txH8z2rIjMDopVDCkBL9wc4P4C2','Indicação','Ariel Brandão','Salário base de estagiário de engenheiro','Sim',NULL,'Estágio Engenharia e/ou Arquitetura','Sou mãe de uma filha, Bianca, hoje com 18 anos e já na Unipampa cursando Geologia; tenho 40 anos e gosto de aprender e não tenho vergonha nenhuma de perguntar.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-05-13T03:45:00.000Z'::timestamptz),
  ('Gabriel Grandini Braga','gabrielgrandini@hotmail.com',NULL,'51999485945','1983-10-27',42,'Solteiro(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1FDnwRbg_I0DfG4h1qr3VjomZAMLIicJw','Engenharia Civil','Ensino Superior Completo','Universidade Luterana do Brasil - Ulbra Canoas','2022-03-05','Sou formado','Trabalho na Reozi engenharia desde a formação, atuando na área de projetos complementares, elaboração de memoriais descritivos e planilhas orçamentárias, acompanhamento de obras, auxilio na elaboração de PPCI, regularização de imóveis e projetos.',NULL,NULL,'Licenciamentos, Novos Negócios, Engenharia','https://drive.google.com/open?id=1etTnEvPp7grKVKWm9CpPs8M3pDBMciRo',NULL,'Indicação','Fabiani Adam','piso salarial da categoria','Não','Acessório D’avila
Função: Venda de peças (Período – 2016 à 2017)
Fone 51- 3662 3571

Comercial de Ferragens Grandini
Função: Venda Externa (Período – 2017 à 2022)
Fone 51- 3434 0069

Reozi Engenharia
Função: Engenheiro civil (Período – atualmente)
Fone 51- 3662 2323','Engenheiro Civil','Tenho experiência em vendas externas, boa comunicação, domínio de técnicas de controle de qualidade na construção civil, domínio do uso de AutoCad para projetos.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-05-16T22:53:00.000Z'::timestamptz),
  ('Alan rosa de pinto','alanrpinto2021@gmail.com',NULL,'51995584441','1994-09-20',31,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Xy79dteEfh1Ja-BljQUe7EkAk8uNkbr7',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Não lembro',NULL,NULL,'Novos Negócios',NULL,NULL,'Facebook','Não','2500','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-05-17T01:52:00.000Z'::timestamptz),
  ('HUMBERTO FRANCIS GONÇALVES','humbertofrancisgoncalves@gmail.com',NULL,'55996956189','1991-09-15',34,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1J1mszi_hdYoKh-Bh1VHGS6q_rR9Epqvf','ENG. MEC','Ensino Superior Completo','UNIFRAN','2019-03-30','Sou formado','Solar Grid, Site manager e Fiscal de obras e projetos, 03/2022 até agora.
Engenheiro fiscal – SolarGrid Energia Solar Ltda. (Março/2023 – Atual)
Atribuições:
● Participação no desenvolvimento de projetos, determinando especificações, desenhos,
técnicas de execução, recursos necessários e demais requisitos, para possibilitar a
construção, montagem, funcionamento e manutenção dentro dos padrões técnicos.
● Apoio e assistência no desenvolvimento de modificações e melhorias em instalações
existentes para novos projetos, avaliação, implementação e monitoramento.
● Geração de especificações técnicas, planos e procedimentos operacionais aplicados
em projetos desenvolvidos pelo departamento de engenharia.
● Elaboração de relatórios técnicos e medições visando acompanhar o desenvolvimento
de todos os setores da obra.
● Fiscalização da qualidade e normas técnicas das atividades executadas em campo.
● Apoio no setor de operações mantendo o cronograma e custos planejados.
● Fiscalizar obras para verificação das fases em sua plenitude
● Coordenar revisão técnica detalhada de engenharia, revisão de planos de construção e
relatórios de projetos, para garantir o cumprimento das normas aplicáveis.
● Elaborar relatórios semanais e mensais de progresso sobre projetos responsáveis.
● Fiscalizar medições e orçamentos, encomendas e comparar ofertas de materiais,
empresas industriais, profissionais etc.
● Fiscalizar as operações diárias e monitorar a execução de acordo com os objetivos de
escopo, custo e cronograma e garantia de qualidade. Colaboração permanentemente
com o Departamento de Engenharia para encontrar as melhores soluções técnicas.
● Coletar imagens das obras com uso de drone.
● Gerenciar equipes

Site Manager – SolarGrid Energia Solar Ltda. (Março/2022 a Fevereiro
2023)
Atribuições:
● Gerenciar os contratos necessários (materiais, empresas industriais, profissionais etc.)
para a execução material da obra e coordenar todos esses contratos, garantindo o
cumprimento dos objetivos estabelecidos de planejamento, custos e qualidade da
operação em coordenação com as compras e logística de insumos e serviços
subcontratados.
● Coordenar revisão técnica detalhada de engenharia, revisão de planos de construção e
relatórios de projetos, para garantir o cumprimento das normas aplicáveis.
● Elaborar relatórios semanais e mensais de progresso sobre projetos responsáveis.
● Supervisionar medições e orçamentos, encomendas e comparar ofertas de materiais,
empresas industriais, profissionais etc.
● Supervisionar as operações diárias e monitorar a execução de acordo com os
objetivos de escopo, custo e cronograma e garantia de qualidade. Colaboração
permanentemente com o Departamento de Engenharia para encontrar as melhores
soluções técnicas.
● Garantir a segurança e saúde de todos os funcionários responsáveis, de acordo com
as regras do país ou região.
● Diálogo diário de segurança com os colaboradores alertando-os sobre os possíveis
riscos presentes nas atividades a serem executadas.
● Coordenação e gestão da transferência do projeto para a O&M, no âmbito do período
de garantia do projeto.','Sou formado em eng. mecânica, mas tenho experiência em civil e elétrica. Também tenho cursos de informática e área administrativa.',NULL,'Administrativa, Arquitetura, Engenharia','https://drive.google.com/open?id=14SGXBXiq78eKTyuYFvQUZ7ySc5MnyJGd',NULL,'Google','não','7.000,00','Sim',NULL,'analista de engenharia','Estou trabalhando em uma vaga a qual não me permite fixar residência, pois mudo de cidade a cada 4 meses. Busco uma oportunidade em local fixo, não tenho problemas em viajar a trabalho, mas desejo ter uma moradia em uma cidade.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-05-17T15:49:00.000Z'::timestamptz),
  ('Eduardo das Neves Guimarães','duguimaraes2003@gmail.com',NULL,'51996334811','2001-03-20',24,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=14v6WPH0ZXPCGbN0uBFpTkJG_J4YADI9-',NULL,'Ensino Médio Completo','Instituto estadual de educação Santo Antônio','2019-12-25','Não, no momento pausei/parei por um período.','Guimarães, embalador e mão, 2018 a 2021
Fibraplac, operador de produção, 2022 a 2023',NULL,NULL,'Administrativa, Estágio','https://drive.google.com/open?id=1thG8FxX60MP1DcNX4SpmWZQJbY8vGEM0',NULL,'Facebook','Não','1800','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-05-17T17:41:00.000Z'::timestamptz),
  ('Yasmin Souza dos Santos','yasminsouza.santos.2001ys@gmail.com',NULL,'51998162099','2001-08-29',24,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1ipKBlJMW-TKAoGTcj-zjw9dgfRnGhe5P',NULL,'Ensino Médio Completo',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1 ano e meio na Escola Santa Teresinha auxiliar de educação infantil , 6 meses na escola Costinha, estagiária. Atualmente na Escola Maria Celma, Glorinha, estagiária a 1 ano e três meses.','Sou formada em magistério desde 2020 e atualmente faço pedagogia cursando o quinto semestre',NULL,'Administrativa, Estágio, Marketing',NULL,NULL,'Facebook','Não, mas conheço quem trabalha','expectativa positiva, que seja um salário de acordo com a vaga disponível','Não','Todas as minhas experiências foi através de processo seletivo e Ciee.','Qualquer estágio que tiver disponível','Trabalho a bastante tempo na área da educação, porém agora quero mudar, quero ter novas aprendizagens, conhecimentos, começar digamos que uma nova etapa na vida. Me considero bastante simpática, comunicativa, aprendo as coisas rapidamente, gosto de ajudar o próximo, estou sempre disponível. Espero ter uma oportunidade de conseguir dar esse passo para a nova etapa na minha vida.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-05-18T19:17:00.000Z'::timestamptz),
  ('Igor Rafael Muniz','igormunizempresa@gmail.com',NULL,'51999327965','1991-04-17',34,'União estável','2','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Bl3byf2S-oxC0bCEUsumCp7IBsn1BUZ9',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Supermercado Cesto Basico
Função: açougueiro
Data inicio: 14/10/2022

Supermercado União
Função: açougueiro
Periodo: 5 anos em 2 passagens 

De Mello Alimentos Ltda
Função: auxiliar de compras 
Periodo: 1 ano e 6 meses 
Organizar almoxarifado. Fazer compras para uso de materiais internos e externos','Administração de recursos humanos,
auxiliar administrativo
 tecnicas de venda e gestão comercial','Todos os certificados dos cursos acima citados','Administrativa, Comercial, Engenharia',NULL,NULL,'Facebook','Nao','A que estiver ao alcance de meu desempenho dentro da empresa.','Sim','Almir gerente União 998782922
Rafael 981737722','Quero inscrever-me no banco de talentos da Young!','Me chamo Igor Rafael Muniz.
Casado com Tais Silva Santos 
Pai das gemeas Yasmin Santos Muniz e Rafaela Santos Muniz.
Filho de Irio Viana Muniz e Eliane Maria Muniz ambos residentes em Santo Antônio Da Patrulha. 
Nas horas vagas pratico Jiu Jitsu na Escola Schubert Sap com o professor faixa preta Robson Mesquita. Onde tambem sou competidor de campeonatos de Jiu Jitsu nacionais e internacionais.
Tenho cursos nas areas citadas que fiz on line durante a pandemia. 
Quero ingressar num mercado de trabalho que abranja as areas que estudei. 
Sou uma pessoa muito extrovertida e de bem com todos ao meu redor. Procuro vestir a camisa da empresa e fazer sempre o que é melhor para a empresa. 
Isso é um pouco do que sou.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-05-19T01:06:00.000Z'::timestamptz),
  ('Andressa de Borba Muniz','andressadebmuniz@gmail.com',NULL,'51998504465','2000-03-02',25,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1fQjeFyVuPcoBrxb8CHLzxsLjas2Zazhj','Engenharia de Produção','Ensino Superior Incompleto','FURG','2027-05-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Contabilidade Fahrion
   Razão Social: Dmaf Serviço LTDA.
   Cargo: Auxiliar Departamento Pessoal. 
   Tempo: 09/01/2019 a 22/12/2021.

   RR Shoes Comércio e Fabricação de Calçados- EIRELI
  Cargo: Preparadora de Calçados (Qualidade)
  Tempo : 11/07/2022 - 14/10/2022.

  Clínica Médica Dentária Santo Antônio da Patrulha Ltda.
Cargo : Recepcionista de Consultório Médico ou Dentário.','Carteira de Habilitação –  Categoria  B
    Informática – Easycomp
    Administrativo – Easycomp
    Auxiliar Administrativo – Unialcance',NULL,'Estágio','https://drive.google.com/open?id=10oIpvhtSVTPwRMPvaZ3KXHFdzLPbze5i',NULL,'Instagram','Não','1500','Não','Contabilidade Fahrion
   Razão Social: Dmaf Serviço LTDA.
   Cargo: Auxiliar Departamento Pessoal. 
   Tempo: 09/01/2019 a 22/12/2021.
Contato :5199975-4455','Estágio Engenharia e/ou Arquitetura','Disponibilidade para qualquer cargo, em busca de oportunidade para desenvolver e melhorar meus conhecimentos, e também algo que possa-me instruir de forma crescente e continuar visando sempre o crescimento entre eu e a empresa .','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-05-20T12:13:00.000Z'::timestamptz),
  ('Kizy dos Santos Monteiro','kizymonteiro@hotmail.com',NULL,'21979311708','1986-08-20',39,'Solteiro(a)','0','Sim','Capão Da Canoa/rs','https://drive.google.com/uc?export=view&id=1JJQwh5W6n6vc8Bw-FSry-CtIg63-YCQi','ADM Recursos Humanos','Pós-graduação Completa','Universidade do Grande Rio -UNIGRANRIO','2011-03-16','Sou formado','1)CYMI CONSTRUÇÕES E PARTICIPAÇÕES
2)Analista Controle e Gestão Pleno (atual) iniciei como Analista de Controle de Custos Jr
3)Início 19/03/2013 (emprego atual)
4)Controle Financeiro de notas fiscais e documentação suporte de Fornecedores e Subcontratados.
 Análise financeira e gestão do contratos dos prestadores de serviços, registro contábil no sistema operacional (Navision) de todos os pagamentos direcionados a SPE do Empreendimento. Report ao setor contábil atraves de controles em excel de contas a pagar.  apoio ao setor jurídico nas elaborações de contratos, minutas e controles de Garantias e Fianças junto aos Subcontratados e Fornecedores, realização de memória de cáculo e acompanhamentos dos indicadores projetados para o Empreendimento.
Apoio em reuniões da diretoria com organização e apresentação. 
Gestão da agenda mensal e semanal da diretoria (compra de passagens aéreas, reservas em hoteis, programação de férias e viagens a trabalho).','MBA em Gestão e Engenharia de Custos (IBEC - 2022), MBA em Gestão Empresarial (UNIGRANRIO-2013), Pós Graduação em Gestão Financeira e Controladoria (UNIGRANRIO-2017)','DELE B2 Instituto Cervantes de Ensino','Administrativa, Financeiro',NULL,NULL,'Agência de Empregos','não','3.500,00','Não','Evelin Almeida (Supervisora de Subestações) (21) 98160-7483
Alyson Borges (Coordenador de Linha de Transmissão) (34) 9 9971-0912
Rodrigo Sena (Diretor de Projetos-Comercial) (31) 99155-6110','Vagas na área administrativo/Financeiro','Cursos livre - Pacote Office completo (Curso JFW), Espanhol intermediário. Sou muito organizada e dedicada ao trabalho, calma e centrada. Nas horas vagas e finais de semana pratico corrida como esporte principal e pedal (Instagram Kizzy_Monteiro). 
Estou buscando uma oportunidade pois, irei casar e residir como definitivo em Capão da Canoa, e o cargo que ocupo na empresa não possui estabilidade geográfica, tenho que mudar de cidade a cada 3 anos.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-05-23T11:35:00.000Z'::timestamptz),
  ('Eduarda Vilalba Queiroz Cézar','vilalbaeduarda@gmail.com',NULL,'51996027312','1999-09-29',26,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1X1YDjPw0dNrQhp3SfbDpNamTcHJF3sKF','Relações Internacionais e Comércio Exterior','Ensino Superior Incompleto','UNINTER','2025-06-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','TWIN CONSULTORIA ADUANEIRA E TRIBUTÁRIA.
Assistente de Importação.
DEZ 2022 - FEV 2022.

Prestar suporte no contato com agentes de carga parceiros no exterior e no Brasil;
Realizar contato com armadores e companhias aéreas;
Auxiliar no follow-up de embarques marítimos e aéreos (do embarque no exterior até a chegada no Brasil, incluindo a liberação documental para os clientes);
Prestar suporte na cotação de fretes internacionais;
Lançar custos do embarque no sistema;
Elaborar relatórios para encaminhamento a clientes e equipe de gestão;
Apoiar na aprovação de documentos de embarque;
Promover apoio aos analistas na execução de procedimentos de liberação de documentos pré e pós-chegada das cargas



DSV GLOBAL TRANSPORT AND LOGISTICS.
Estagiária.
OUT 2021 - OUT 2022.
Suporte na coordenação de embarques de exportação marítima da coleta à chegada da carga no importador.
Contato com armadores;
Solicitação de bookings.
Emissão de HBL, MBL, envio de draft, AMS, ISF e demais rotinas.
Atendimento com foco no cliente.
Follow up do embarque com o cliente e exterior.
Alimentação do sistema Cargo Wise com informações atualizadas do embarque.','Inglês intermediário (cursando);
Espanhol básico (cursando);
Pacote office;',NULL,'Administrativa, Comercial, Estágio, Financeiro','https://drive.google.com/open?id=1_yRn0JP7sjI_9U8d1G8LIz9j0SXlGkNy',NULL,'Agência de Empregos','Não','1000','Não','Laila Umann. 
DSV GLOBAL TRANSPORT AND LOGISTCS
(51) 98545-1175

Pedro Gerkhe.
TWIN CONSULTORIA ADUANEIRA E TRIBUTÁRIA
(51) 99935-5778','Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-05-23T13:05:00.000Z'::timestamptz),
  ('Rui de Oliveira Lopes Filho','rui.oliveira.lopes@hotmail.com',NULL,'51995359574','1996-09-07',29,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1cdWFsIcMCLwfmRTtzfJX-d48R8fwMoGE',NULL,'Ensino Superior Incompleto','UNIASSELVI',NULL,'Não, no momento pausei/parei por um período.','América Imóveis, recepção, 2013 - 2015, agendamento com clientes e visitas.
Lojas LEBES, consultor de vendas, 2015 - 2018, vendas, operações de cobrança e administrativo.
Lojas TAQI, consultor de vendas, 2019 - 2021, vendas de materiais de construção, móveis e eltro e captação de clientes.
Lojas LEBES, consultor de vendas, 2021 - 2022, vendas e captação de clientes.
D''Ávila Mecânica, Elétrica e Auto Peças, consultor de vendas, 2023, vendas.

Foi através da indicação do Máximo.',NULL,'PRONATEC, Marketing e Vendas','Comercial','https://drive.google.com/open?id=1O_q9xhJGed3xd0DIjlk1j_Ye-sg3yqmE',NULL,'Facebook','Máximo.','Aquilo que o meu desempenho corresponder na função.','Não','Gerente Lojas TAQI - Clenir 51 996226068','Comercial','Tenho conhecimento intermediário sobre o inglês onde gosto de estar sempre em aprimoramento, tenho o gosto por atividades físicas como musculação, lutas como muay thai e jiu jitsu e aos finais de semana gosto de descansar em casa ou sair com a família.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-05-23T17:53:00.000Z'::timestamptz),
  ('Juliandres rodrigues garcia','juliandres2010@yahoo.com.br',NULL,'55984093053','1986-09-21',39,'Casado(a)','1','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=18mL4ORum3PJPdBoywNiA3utd6_g9O4QS','Gestao publica','Pós-graduação Completa','Unipampa','2020-05-31','Sou formado','Prefeitura de s do livramento cargo:escriturário
Trabalho com tributos e parte financeira','Pós graduação MBA em Administração financeira',NULL,'Administrativa, Comercial, Estágio, Financeiro',NULL,NULL,'Facebook','Nao','Acima de 1500','Não','P de santana do livramento','Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-05-24T20:25:00.000Z'::timestamptz),
  ('Robert otaviano Barreto','fariabarretoengenharia@gmail.com',NULL,'37988421514','1978-10-20',47,'União estável','1','Sim','Divinópolis/mg','https://drive.google.com/uc?export=view&id=1KdNBE5Qp5-u5wM0Y855iZb1uCyWlSS_l','Engenharia Civil','Pós-graduação Completa','Universidade Estadual de Minas Gerais','2005-07-08','Sou formado','Faria Barreto engenharia. Prestação de serviços em engenharia consultiva, tanto técnico como tecnológico em diversos segmentos sendo;
assessoria, avaliação de imóveis urbanos e rurais, inspeção, estudos de viabilidade, projetos básico e executivos,
gerenciamento, supervisão e fiscalização de obras. 7 anos.','Mestrado completo em engenharia civil','Avaliador e perito imobiliario. Engenheiro de producao com enfase em BIM.','Arquitetura, Engenharia','https://drive.google.com/open?id=1tgQOk8OyHTszVWwtqGKWjOz1AsRXbx5j','https://drive.google.com/open?id=1Xo46SgakDVlJV800JwWtlsBf51QGzqbO','Agência de Empregos','Não','8000','Sim',NULL,'Engenheiro Civil','Engenheiro civil, especialista em vistorias imobiliárias e avaliação de imóveis MCMV e Casa verde e amarela (À serviço
da Caixa Econômica Federal e Banco do Brasil), especialista em engenharia de Produção, MBA em BIM Manager e Mestre
em engenharia civil com enfase em solos. Atualmente cursando ciências da computação. Atuação como professor
acadêmico: disciplinas lecionadas: (Mecânica dos Solos I e II, Projeto de Fundações e Projeto de Estradas). Experiência em
gestão, coordenação, supervisão e liderança de pessoal. Vasto conhecimento do programa habitacional (Casa verde e
amarela) e PBQP-H. Habilidade em cursos de especialização de formação específica através de processos E-Learning e/ou
Online, sendo: curso de TQS, AutoCAD, Microsoft Project 2016, SiSDEA, Power-BI, Qground control, Agisoft Metashape.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-05-26T19:27:00.000Z'::timestamptz),
  ('Eduardo Jose touzo Hernandes','eduardotouzohernandes@gmail.com',NULL,'32998083727','1991-03-16',34,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1uZBHp5hISKbaPcWwPevBTofFszE5DAyR','Engenharia Civil','Ensino Superior Completo','Feap - fundacao educacional de alem paraiba','2013-12-10','Sou formado','Arteng engenharia, em 2015, trabalhei como engenheiro civil, durante uma obra curta de 3 meses como responsável da obra, no canteiro, fazendo medição de terceirizados, administrando o canteiro de obra, cronograma físico financeiro.

Trabalhei antes em 2014 como almoxarife e auxiliar técnico de engenharia na RD Campos em duas obras do minha casa minha vida em Sapucaia-rj e Rio das Ostras. Como auxiliar trabalhei diretamente com o engenheiro responsável em conjunto habitacional.

Atualmente trabalho em uma cooperativa da rede sicoob, como agente de atendimento.','Formação em administração',NULL,'Administrativa, Arquitetura, Engenharia','https://drive.google.com/open?id=1nx8HuqhE94WHNim5yLEF4au87kG-uCH4',NULL,'Agência de Empregos','Flavia B Cardeal - através de contato no LinkedIn','6000.00','Sim','Guilherme, meu gestor na época de Arteng Engenharia e Rd Campos Construtora. Telefone DDD 21 98355 0728','Engenheiro Civil','Tenho conhecimento em AutoCad, ms Project, básico de cypecad, gosto de trabalhar em equipe, tô em busca de novos desafios,  não tenho problema com mudanças.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-05-26T22:24:00.000Z'::timestamptz),
  ('Michel Renan Santos Ferreira','ferreira-michel@hotmail.com',NULL,'51997181378','1988-05-03',37,'Solteiro(a)','1','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1sKOnIe0NvE_pqmCJkFQJ1qjZ6dHWV7DQ','Engenharia Civil','Pós-graduação Completa','PUCRS','2018-08-11','Sou formado','•        BSC Nova Ipanema
7 anos 2 meses
Engenheiro civil 
fevereiro de 2019 - dezembro de 2022 (3 anos 11 meses)
Principais atividades: Planejamento de obras; desenvolvimento de planos e métodos de trabalho para orientar o andamento das obras de acordo com os padrões técnicos adequados; gerenciamento da obra, medições de serviços executados, levantamentos matérias e equipamentos, controle do cronograma físico-financeiro; contratação de mão de obra, fiscalização das atividades executadas no canteiro de obra, conferência e controle de contratos de empreiteiros. Apoio na elaboração dos projetos de prédios comerciais e de casas condominiais; Execução de as built; Acompanhamento de execução de projetos de infraestruturas (redes: água, esgoto, elétrica e telefônica, e pavimentação) de loteamento e condomínios urbanos, casas e prédios comerciais; responsável pela manutenção de prédios comerciais (Salas comerciais, supermercados e posto de gasolina). 

•        Assistente de engenharia civil na BSC Nova Ipanema
janeiro de 2018 - janeiro de 2019 (1 ano 1 mês)
Principais atividades: Participação no desenvolvimento de planos e métodos de trabalho para orientar o andamento das obras de acordo com os padrões técnicos adequados; Gerenciamento da obra, medições de serviços executados, levantamentos matérias e equipamentos, controle do cronograma físico-financeiro; Contratação de mão de obra, fiscalização das atividades executadas no canteiro de obra, conferência e controle de contratos de empreiteiros.

•        Estagiário de engenharia civil na BSC Nova Ipanema
novembro de 2015 - dezembro de 2017 (2 anos 2 meses)
Principais atividades: Realização de orçamentos das obras; adjunto na elaboração do planejamento de execuções de obras e reformas com foco no cronograma estabelecido, de prédios comerciais e residências; Apoio na elaboração dos projetos de prédios comerciais e de casas Condominiais; Execução de as built; Acompanhamento de execução de projetos de infraestruturas (redes: água, esgoto, elétrica e telefônica, e pavimentação) de loteamento e condomínios. Fiscalização de obras.

•        Squadra Engenharia Ltda.
Estagiário de Engenharia Civil
março de 2014 - setembro de 2015 (1 ano 7 meses)
Principais atividades: Controle da medição de serviço no canteiro de obras de empreiteiros; encarregado pelo recebimento, fiscalização e rastreabilidade do concreto; responsável pelo preenchimento de planilhas nos padrões de qualidade da empresa; acompanhamento do cronograma e planejamento da obra; fiscalização da execução de serviços das etapas da construção; estagio realizado em uma construção de edificação de alto padrão. 
•        Kátedra Engenharia Construções
Estagiário de Engenharia Civil
novembro de 2013 - março de 2014 (5 meses)
Principais atividades: Controle da qualidade de serviço; incumbido pelas medições dos serviços prestados dos empreiteiros; responsável pelos levantamentos quantitativos; controle e pedidos de materiais e equipamentos; apoio ao planejamento de serviços; fiscalização do andamento da obra; estagio realizado em uma construção de edificação de alto padrão.

•        MRV Engenharia
Estagiário de engenharia civil
abril de 2013 - setembro de 2013 (6 meses)
Principais atividades: Apoio ao engenheiro responsável nas várias etapas de execução da obra; fiscalização do andamento dos trabalhos de fundação, estrutura, alvenaria, acabamento, hidráulica, elétrica, telefonia, incêndio; participação da definição do cronograma, planejamento e execução da obra; estagio realizado em um empreendimento popular.

•        Ferramentas Gerais Com. Ind. S/A
Assistente de Compras
janeiro de 2010 - março de 2013 (3 anos 3 meses)
Principais atividades: Acompanhamento das requisições de compras; contratação de fornecedores; negociação de preços; controle de pedidos e orçamentos na área; planejamento de suprimento; realização elaboração das planilhas cotações e relatórios de compra.','Sou formado em Engenharia Civil pela PUCRS, fiz especialização em Gerenciamento de Obra na IPOG - Instituto de Pós-Graduação, também fiz um curso Dominando a Engenharia de Custos – Terraplenagem do instituto Aldo Mattos, também participei Workshop de Geotecnia da PUCRS, possui conhecimento em Ms Project, Excel, Autocad, Revit, Métrica Topo.','MBA em Gerenciamento de obra, IPOG - Instituto de Pós-Graduação e Graduação.','Engenharia','https://drive.google.com/open?id=11YZiHeF2c6D2C1bvs6XUJaZrFYGZQ7gR',NULL,'Site da Empresa','Não','10.500,00','Sim','Sim, Renan Anzolch 51 984175674, Carol Bottini 51 984179675, 51 984175682','Engenheiro Civil responsável técnico para as obras de urbanização.','Um breve resumo da minha trajetória profissional começou no Exército Brasileiro (EB), onde eu fiz cursos no senai voltado para fiscalização de obras, trabalhei no setor de manutenção predial do EB. Trabalhei na Ferramentas Gerais, inicie como estoquista, após um ano fui promovida a Assistente de Compras, onde trabalhei com orçamentos de empresas da construção civil, após me dediquei afazer estagio de engenharia civil, e fiz nas empresas MRV, Katedra, Squadra Engenharia e BSC Nova Ipanema, onde nessa última, fui promovido para assistente de engenharia e após fui promovido novamente a Engenheiro civil.
Sobre as minhas habilidades que me destaco são comprometimento com todo, desde do início da obra até a venda do produto, organização do trabalho, capacidade resolução de problemas, buscando soluções práticas e seguras, gosto de produtividade consiste e efetiva, procuro ter uma gestão de pessoas dentro do canteiro, pra mim é de umas etapas primordial para o andamento do empreendimento.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-06-01T00:28:00.000Z'::timestamptz),
  ('Rafaela Podilchuk Ferreira','rafaelapofe@gmail.com',NULL,'51980547798','2004-06-04',21,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1cIjFToocoabfjdMD2dctomco_mL_GKZ7',NULL,'Ensino Superior Incompleto',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Prefeitura de Santo Antônio da Patrulha, Secretaria Municipal da Saúde /  Estágio 
Período de estágio: 25/01/2021 até dezembro de 2021.
Atividades desempenhadas: Atendimento aos cidadãos prestando as orientações necessárias, auxiliar nas tarefas administrativas, arquivamento de documentos, entrega e recebimento de documentos intersetorial, atendimento telefônico, agendamentos.
Setores: Telefonia e Transporte.

Masal S/A Indústria e Comércio / Jovem aprendiz 
Período de estágio: De julho de 2022  até outubro de 2022.
Atividades desempenhadas: Organização e arquivamento de documentos, atendimento aos colaboradores, conferir e armazenar produtos e materiais, alimentar sistema para elaboração de relatórios, transportar correspondências, documentos e materiais.

Mania de Loja / Vendedor 
Período de trabalho: De novembro de 2022 até dezembro de 2022.
Atividades desempenhadas: Vendas, atendimento ao cliente, negociação, auxílio com possíveis dúvidas, atendimento virtual, responder mensagens e comentários nas redes sociais. 

Relojoaria e Ótica Aliança / Vendedor 
Período de trabalho: De janeiro de 2023  até maio de 2023.
Atividades desempenhadas: Atendimento ao público, vendas, desenvolver publicações para redes sociais, alimentar planilhas e relatórios, atendimento virtual.','No momento estou cursando o primeiro semestre em Administração na Universidade Federal do Rio Grande (FURG).',NULL,'Administrativa, Marketing','https://drive.google.com/open?id=1fV0IBOX-jkCtz1TyhiqWsz8zXUKERRSd',NULL,'Instagram','Não','R$1.500,00','Não','Cássio Renck 51999534115 
Relojoaria e Ótica Aliança','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-06-02T17:06:00.000Z'::timestamptz),
  ('Renilto Cesar Gonçalves Ferreira','reniltocesar@gmail.com',NULL,'54999070184','1968-12-17',57,'Casado(a)','2','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1rB3JHckVbPTZRfF6M77CcdMgcr5fExpP','Pedreiro e secador','Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Cooperativa cortrisal ( secadorista ) 
Pedreiro 15 anos','Secadorista e pedreiro profissional',NULL,'Engenharia',NULL,NULL,'Agência de Empregos','Nao','2500','Sim',NULL,'Pedreiro','Procuro emprego tenho experiência e sou dedicado e responsável.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-06-06T04:25:00.000Z'::timestamptz),
  ('Claudia Maiara Lino da Silva','claudia.silva@educasap.com.br',NULL,'51980261559','1993-08-18',32,'Solteiro(a)','2','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1N1PZxfEIYx7ou6GZQg05SonUs6TATkrO','Pedagogia','Ensino Superior Incompleto','Uniasselvi','2024-02-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Atualmente trabalho no Polo da Unicesumar
Tutora gestora de polo
Inicei dia 05/01
Cuido do parte de gestão do polo , e dos alunos que vem fazer prova,  e suporte aos alunos.',NULL,'Apenas na área da educação.','Administrativa, Comercial','https://drive.google.com/open?id=1LWWNLWXBVPSTGmuM52iJZIuZtHbRqQRR',NULL,'Facebook','não ninguém','2.000,00','Sim',NULL,'Comercial','Sou muito determinada e pro ativa, mergulho de cabeça no meu trabalho e minha maior motivação é o reconhecimento. Acho que seria que eu gostaria de fala. Precisando entre em contato comigo.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-06-07T13:09:00.000Z'::timestamptz),
  ('Mariane Souza dos Santos','marianesouzamkt@gmail.com',NULL,'51999005003','2002-10-15',23,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1wzGDrYZuHAFDxat3FC3IqfibN8pS1ahz',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','DeMello Alimentos LTDA, aprendiz em serviços administrativo 04/06/2018 - 13/05/2019.

Doces Dacosta, auxiliar administrativo 19/08/2019 - 15/05/2021.

Relojoaria e Ótica Aliança LTDA, vendedora 01/06/2022 - 01/06/2023.',NULL,NULL,'Administrativa, Comercial','https://drive.google.com/open?id=1Mxi46QQiLAMX6v_Wq2pjJftEGzFl8O07',NULL,'Facebook','Não.','1400','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-06-07T18:23:00.000Z'::timestamptz),
  ('Giocemar Nunes Santos Corrêa','giocensc@gmail.com',NULL,'51996191277','1977-12-16',48,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1jqzlu5Q6RwBZ18_n2P3KhYAFnR3I7C3b','Técnico segurança do trabalho, filosofia e psicologia','Pós-graduação Completa','Fadergs','2023-06-30','Sou formado','Atuei no chão de fabrica calçados por 10 anos finalizando no setor de corte. Depois na produção  frigorífica operador de máquinas. Atuei e atua com vendas e consultoria home office. Professor de filosofia( 2022). Técnico de segurança do trabalho em hospital e na nossa prefeitura o último trabalho registrado.2023. Atualmente trabalho com vendas home office.','Sou da área das humanas. Trabalho com o público. Atendimento, consultoria financeira e educacional. Além da área da educação e saúde.','Professor de filosofia, e técnico de segurança do trabalho','Administrativa','https://drive.google.com/open?id=1IOlYB3EyvWBrhZVFieOVPy3l_7TXWGaz',NULL,'Indicação','Não','2000','Não','Prefeitura de Santo Antonio','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-06-07T19:19:00.000Z'::timestamptz),
  ('Jaqueline Garcia de Fraga','jaquelinefraga37@gmail.com',NULL,'51980432957','1992-08-03',33,'Solteiro(a)','1','Sim','Caraá/rs','https://drive.google.com/uc?export=view&id=1UoBCuUrvF2V42dK3X7Gb6NiPdGLzh_nN',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Trabalho de calçadista na RR Braga 
Sou costureira faz uns 7 anos 
Hoje procuro uma outra oportunidade de emprego',NULL,NULL,'Novos Negócios',NULL,NULL,'Instagram','Não','1800','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa bem comunicativa. Tenho facilidade em aprender coisas novas. E procuro uma chance de trabalho em uma nova área .','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-06-08T11:41:00.000Z'::timestamptz),
  ('Rodrigo de Oliveira pires','lrodrigo.pires@gmail.com',NULL,'51982394161','1995-11-27',30,'Solteiro(a)','0','Sim','Canoas/RS','https://drive.google.com/uc?export=view&id=1ZaZ8R6gEv83jtbgvThaxm-F_BNq5FeGm','Engenharia Civil','Pós-graduação Completa','Ftec Faculdades','2017-12-17','Sou formado','Nome da Empresa: Construvale Materiais de Construção            Período: de 03/04/2023 a atualmente
Cargo: Fiscal de Obras
Atividades desenvolvidas:
- Conferencia do andamento e execução das obras; 
- Elaboração de relatórios;
- Controle de pagamento dos serviços executados;
- Garantir que projeto e especificações técnicas sejam seguidos;
- Solicitação de materiais para compra;
- Solicitação de pagamento de etapa junto ao cliente;
- Suporte às equipes.

Nome da Empresa: Skycompany infraestrutura para TI                Período: de 08/04/2021 a 31/03/2023
Cargo: Técnico operacional
Atividades desenvolvidas:
- Agendar, acompanhar e finalizar atividades desenvolvidas pelas equipes;
- Análise e validação de relatórios operacionais;
- Análise e planejamento de projetos;
- Coordenação e distribuição de atividades para equipes técnicas;
- Pagamento a equipes terceirizadas;
- Suporte e apoio às equipes.

Nome da Empresa: Watt Tecnologia                                                Período: de 16/11/2020 a 13/02/2021
Cargo: Supervisor de Saneamento
Atividades desenvolvidas:
- Acompanhar produtividade diária das equipes;
- Análise de desempenho das equipes em campo;
- Análise de relatórios operacionais;
- Análise e acompanhamento de resultados nos aspectos de produtividade e qualidade;
- Criação de processos operacionais de forma a agilizar a saída à campo;
- Desenvolvimento de procedimentos e instruções para alcançar metas e objetivos;
- Detectar e solucionar falhas nos processos operacionais;
- Monitoramento de rota;
- Participação em processo seletivo;
- Realização e controle de quantitativos para medição 
- Suporte e apoio às equipes.

Nome da Empresa: SBS Engenharia e Construções                        Período: de 05/07/2018 a 07/05/2020
Entroncamento da RS 040 X RS 118. 
Cargo: Auxiliar de Engenharia
Atividades desenvolvidas:
- Acompanhamento das atividades da obra;
- Conferências de projetos.
- Controle de produção de Muro de Muro de arrimo;
- Controle dos ensaios tecnológicos;
- Elaboração de relatórios para a liderança;
- Elaboração dos diários de obra;
- Elaboração dos quantitativos para as medições;
- Encarregado de execução de Muro Terra Armada;
- Inspecionar os serviços e materiais da obra.
Resultados: 
- Desenvolvi uma planilha no Excel para os ensaios do solo resultando em mais agilidade para o laboratorista verificar as camadas. 
- Fui responsável por utilizarmos na obra resíduos de materiais a principio sem função, assim diminuindo custo e o tempo de execução.

Nome da Empresa: Prefeitura Municipal de Canoas                      Período: de 21/03/2016 a 20/03/2018
Departamento de Esgotos Pluviais
Cargo: Estagiário
Atividades desenvolvidas:
- Auxilio em orçamentos;
- Controle de arquivos de redes de drenagem pluvial;
- Elaboração de desenhos técnicos;
- Levantamento de quantitativos de rede.
Resultados: 
Para o trabalho de conclusão de curso da faculdade fiz a analise, em um software de modelagem, a simulação do escoamento em uma nova rede de drenagem projetada a fim de verificar possíveis pontos de extravasamento.

Nome da Empresa: Habitar Projetos e Construções                Período: de 04/01/2016 a 26/02/2016
Cargo: Estagiário
Atividades desenvolvidas:
- Acompanhamento de obra.
- Elaboração de projetos arquitetônicos, hidráulicos, elétricos e estruturais em AutoCAD.
- Levantamento de quantitativos para os orçamentos das obras;',NULL,NULL,'Administrativa, Engenharia','https://drive.google.com/open?id=1BOj0uCZ9IgRiTGRqCPcg-1sKP4GWRKKm',NULL,'Indicação','Não','3500','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-06-08T20:58:00.000Z'::timestamptz),
  ('Rober Luís Henrique Machado','rober2010rober@hotmail.com',NULL,'51998134554','1976-06-24',49,'Casado(a)','3','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=195TmFirViJMnw1gnSW0YTpVcV36juLPe',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Contribeta Ltda, 2005 a 2008
Cargo supervisor elétrico, executava e supervisionava projetos elétricos em residências construídos pela empresa',NULL,NULL,'Engenharia','https://drive.google.com/open?id=1DfpNm9rFP2D5jsQRmDQ7wAX-npHfjROS',NULL,'Facebook','Não','Na minha área, +- R$ 3,500,00','Sim',NULL,'Parte elétrica','Atualmente estou morando em santo Antônio, trabalho na área da elétrica 💡, trabalhei por 10 anos concursado na prefeitura de encruzilhada do sul , talvez pra vocês eu não me encaixe no perfil "vendas" mesmo já trabalhando com vendas pra lojas mas se surgir algo na área elétrica podem me chamar que não terás arrependimento','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-06-12T10:32:00.000Z'::timestamptz),
  ('Rafael Bortolotto Ilha','rafaelilha.11@gmail.com',NULL,'51982304512','1982-03-09',43,'Solteiro(a)','2','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1SqOmEhshVpnOFZrG4tRp68wgCKNqxZeJ','Engenharia Agroindustrial','Ensino Superior Completo','FURG','2021-12-20','Sou formado','Instrutor de  agroindústria (SIM) SAP fiscalização/verificação de instalações de agroindústrias, auxilio nas tarefas administrativas, acompanhamento em abates animais, produção de alimentos oriundos da agricultura familiar processados e não processados ago/2021
Recepção de hotel e serviços administrativos/auditorias e atendimento ao público 2004/2008
Produtor rural/nativo
Bolsista Cnpq - verificação em instalações e adequações de agroindústrias, análises e produtividade/qualidade de solos da região de SAP-RS 2014-2021,
Análises de dados e soluções analíticas diversas em pacote office...controle de qualidade.','Yellow belt/ferramentas de qualidade e ágeis - análises de solos - hotelaria/administrativo e recepção - gestão da qualidade - processos e produção  de alimentos, instalações industrias, outros.',NULL,'Administrativa, Comercial, Novos Negócios, Engenharia',NULL,'https://drive.google.com/open?id=1NLj98FUVAeVhZ_4mxa0mR-F7_oVjFqBL','Facebook','Não','a combinar','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-06-12T18:31:00.000Z'::timestamptz),
  ('Adriano Rodrigues da Silva','adrianords1994@gmail.com',NULL,'51994788610','1994-11-15',31,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1cS7c6VrVNNwg1Xt_DDrmc7YFWeqxY49s','Engenharia Civil','Pós-graduação Completa','Centro Universitário Dinâmica das Cataratas','2017-12-15','Sou formado','1) DCS Construtora e Pavimentadora
2) Supervisor de Engenharia (9 meses - atual) / Engenheiro de Obras de Infraestrutura (7 meses)
3) 03/2022 - atual
4) Gestão de contratos públicos (medições, orçamentos, análise de viabilidade, controle de custos); Execução de obras, com controle de equipes, equipamentos e materiais + serviços terceirizados; Controle tecnológico e de qualidade; Planejamento curto, médio e a longo prazo. 

1) Uniritter 
2) Professor de Pós-Graduação
3) 02/2022 - atual 
4) Professor dos módulos de controle e planejamento de obras 

1)Fundação Escola de Engenharia
2) Especialista em Patologia das construções 
3) 02/2021 a 03/2022
4) Fiscalização de projetos; elaboração de laudos técnicos, identificação e estudo de manifestações patológicas

1) MB Pavimentação 
2) Engenheiro Civil 
3) 01/2018 a 02/2019
4) Execução de obras de infraestrutura e construção civil; gestão de equipes e equipamentos; Controle de serviços terceirizados;

1) Steffens Engenharia 
2) Auxiliar de Engenharia / Analista de Engenharia 
3) 01/2012 a 12/2017
4) Elaboração de projetos; acompanhamento de execução de obra e implantação de loteamentos; desenvolvimento de orçamentos e cronogramas.','Mestrado em Engenharia Civil - UFRGS; MBA Gestão e Execução de Obras - UDC',NULL,'Engenharia','https://drive.google.com/open?id=1BVrtYZd5nq6C5Ds5PX7xWjB4jSvu4DZz','https://drive.google.com/open?id=1p_CfdvYG9LYSjkjiQBpSOYnZWv3TqIMn','Indicação','Não.','R$10.000,00','Sim','Giovani Sandri; +51 99394-6250, Urbia Parques; Gesley Freitas, +51 99646-1097, Fraport - Brasil','Engenheiro Civil','* Conhecimento em AUTOCAD, PROJECT, sistemas ERP; 
* Campeão do premio de empreendedorismo UFRGS
* Amante de natação e de um pedal no final de semana.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-06-12T23:49:00.000Z'::timestamptz),
  ('Bruna Rodrigues Pereira','brubs.rp21@outlook.com',NULL,'51980534946','1999-06-10',26,'Solteiro(a)','0','Não','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1C4hIuSaTt7IUKyMEjUG24rzgKXInzbnA',NULL,'Ensino Médio Completo','Estácio','2027-03-10','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Estou me candidatando para a minha primeira vaga de emprego.','Estou cursando engenharia civil, tenho certificado de em informática básica.',NULL,'Estágio','https://drive.google.com/open?id=1XRByn2sHTX46CEcyy6Oq8H0VKX7OPJte',NULL,'Instagram','Não','1000','Sim',NULL,'Estágio Financeiro','Sou boa em aprender rápido, trabalho bem em equipe, sou proativa, sou boa no office, nível intermediário em inglês e espanhol.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-06-17T00:58:00.000Z'::timestamptz),
  ('Caroline Salbego Pinheiro','carolinesalbego@gmail.com',NULL,'55981373166','1996-01-16',30,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1lVPIyBf7njA46eMIZlu504q_XtHneYCu','Engenharia Civil','Pós-graduação Incompleta','Universidade Federal do Pampa','2023-04-27','Sou formado','Na área de engenharia civil, atuando como engenheira, estou me candidatando ao meu primeiro emprego. No entanto, gostaria de mencionar os locais nos quais passei como estagiária e minhas funções. 

1) Prefeitura Municipal de Alegrete | Secretaria de Planejamento|
Setor de Engenharia e Arquitetura| Estagiária de Engenharia Civil | Fev 2020 - Fev 2022
Funções: Levantamento de dados e medições em campo; Elaboração de projetos de pavimentação de vias urbanas do município com pavimento flexível de bases granulares e
revestimento asfáltico ou com blocos intertravados; Elaboração de projetos de macrodrenagem e microdrenagem de vias urbanas do município; Elaboração supervisionada de projetos de sinalização de vias urbanas do município; Elaboração de projetos de calçadas e acessibilidade para o município; Elaboração de projetos complementares (hidrossanitário e elétrico), detalhamentos e especificações de construção
civil de edificações municipais:  
- Projeto de Quadra Poliesportiva;
- Projeto de Reforma e Ampliação de Banheiros e Vestiários de Estádio de Futebol;
Elaboração de orçamentos de obra no padrão Caixa Econômica Federal (CEF) utilizando como base de dados orçamentária o Sistema Nacional de Pesquisa de Custos e Índices (SINAPI) em multiplanilha de Excel; Elaboração de orçamentos de obra no padrão do Sistema Integrado de Monitoramento Execução e Controle (SIMEC) utilizando como base de dados orçamentária o SINAPI em multiplanilha de Excel e cotação regional com diversos fornecedores de insumos locais. Elaboração de memoriais descritivos, memoriais de cálculo e relatórios de obra; Elaboração de Planilha de Levantamento de Eventos (PLE) e Quadro de Composição de Investimento (QCI) no padrão
CEF; Acompanhamento das etapas de execução de obras públicas de pavimentação asfáltica e intertravado junto ao fiscal da obra; Elaboração das atas das reuniões do Conselho do Plano Diretor do município no período de maio a julho de 2020; Organização de pastas administrativas referentes aos processos de propostas cadastradas em andamento/finalizadas no período de maio a julho de 2020.

2) Construtora SOTRIN Ltda. | Estagiária de Engenharia Civil | Jan 2017 - Fev 2020
Funções: Levantamento de dados e medições em campo; Realização de análises para projetos arquitetônicos; Elaboração de projetos complementares; Elaboração de documentos e memoriais; Acompanhamento e fiscalização da fase de execução de
obras residenciais unifamiliares/multifamiliares e comerciais; Elaboração de quantitativos de materiais de construção civil; Elaboração de quantitativos de materiais para PPCI.

3) ASSISTENTE DE PROFISSIONAIS INDEPENDENTES DE ENGENHARIA CIVIL | Alegrete | desde 2018 
Funções: Idealização e elaboração de projetos arquitetônicos; Elaboração de projetos complementares (hidrossanitário, elétrico e estrutural); Elaboração de projetos e atualização de Plano de Prevenção e Proteção Contra Incêndios (PPCI); Documentação para a aprovação de projetos de regularização, ampliação e novas edificações junto a Prefeitura Municipal; Modelagem Realista 3D.

Já como experiência administrativa possuo o período no qual passei pelo IBGE.
1)Instituto Brasileiro de Geografia e Estatística - IBGE | AGENTE DE ADMINISTRAÇÃO E INFORMÁTICA - ACAI | Censo Demográfico 2022| Maio 2022 - Março 2023
Funções: Gestão administrativa de agentes censitários supervisores e recenseadores das cidades de Alegrete, Manoel Viana e Quaraí; Controle e gestão da distribuição de equipamentos eletrônicos para as cidades de Alegrete, Manoel Viana e Quaraí; Adoção das providências relativas à contratação, prorrogação de contratos e desligamento de censitários; Colaboração na organização e na administração dos Postos de Coleta de Coordenação de Subárea; Auxilio à Coordenação Estadual de Informática no preparo, instalação e configuração de equipamentos de informática, pontos de rede (dados e voz) hardwares e softwares nos Postos de Coleta e Subárea; Suporte ao coordenador de informática, coordenador de recursos humanos, coordenador da subárea ou coordenador censitário de subárea, prestando suporte na instalação e manutenção da infraestrutura necessária ao funcionamento dos recursos de informática, de forma a assegurar o adequado desenvolvimento das atividades censitárias; Administração operacional do sistema administrativo interno, inserção de dados e emissão de relatórios nos
sistemas informatizados; Protocolar, arquivar, conferir e expedir documentos e
materiais; Treinamento geral e especial das equipes de Recenseadores para as cidades de Alegrete, Quaraí e Manoel Viana; Atuação na gestão de qualidade da pesquisa por meio do
acompanhamento direto no Sistema Integrado de Gerenciamento e Controle.','Desenvolvi durante a graduação pesquisa relacionada a área de pavimentação, especificamente com método de estabilização de vias não pavimentadas. Realizei estágios no setor privado e público, desta forma possuo experiência profissional na área de construção civil e pavimentação. Desde que comecei os estágios vinculados a faculdade, busquei por outras experiências profissionais e desde então atuo também como assistente de profissionais de engenharia civil em diversos setores da área fazendo projetos complementares. No ano de 2022 iniciei a pós-graduação em Engenharia como aluna especial e busquei pelo desenvolvimento de relações humanas. Então, junto as disciplinas conciliei o cargo de Agente de Administração e Informática no IBGE para Censo Demográfico e adquiri experiências de gestão e administração, pois era responsável por três municípios da subárea.',NULL,'Administrativa, Arquitetura, Engenharia',NULL,'https://drive.google.com/open?id=1PE4NJ3txRhg-7mRj37TH0TzJYTbSFdSs','Indicação','Não, já tive colegas que trabalharam na Young e recomendaram a empresa.','3500','Sim','Érica Vargas - Prefeitura Municipal de Alegrete - (55) 996599354
Luis Francisco Morales - SOTRIN - (55) 997049235
Andressa Trindade - Profissional Independente - (55) 996965217
Nayra Consentino - Profissional Independente - (55) 984473983','Engenheiro Civil','Gosto de fazer projetos realistas, para isso utilizo o software Revit. Tenho conhecimento de AutoCAD e Sketchup para projetos arquitetônicos, mas prefiro o Revit por ser o mais realista e completo das opções. No Revit desenvolvo projetos elétricos, hidráulicos e sanitários também. No caso de projeto estrutural prefiro o software TQS por possuir uma maior detalhamento das etapas do dimensionamento. Amo tecnologia e aprender softwares novos, por isso me dediquei a aprender sobre renderização de ambientes no Enscape e na nuvem da Autodesk. 
Tenho muito cuidado para que o meu desenvolvimento pessoal evolua junto com o técnico. Desta forma, gosto de ler livros de filósofos sobre o comportamento humano e frequentar as palestras disponibilizadas pela PUC de gestão de pessoas e liderança com palestrantes como o professor Leandro Karnal e a ativista de direitos humanos Malala Yousafzai. 
Gosto de participar de projetos que contribuam positivamente na vida das pessoas. No ano de 2022, por exemplo, integrei uma equipe de um projeto que utilizava o material das caixas de leite para vedação de casas de madeira de famílias de baixa renda durante todo o inverno. 
Sou entusiasta da busca por novos conhecimentos e gosto muito de motivar as pessoas ao meu redor a buscarem por isso também. Possuo conhecimento intermediário de inglês e frequento aulas de conversação para praticar sempre que posso. Todo ano aprendo um esporte novo, atualmente estou me dedicando ao boxe, mas pratico vôlei e tênis.
Acredito que o meu perfil entusiasta e dedicado me proporciona grandes desafios, mas gosto de enfrentá-los. Se preciso desenvolver alguma habilidade técnica em pouco tempo ou me preparar para uma mudança de perspectiva profissional, estou sempre pronta para ir atrás do que for preciso. Gosto de fazer parte de uma equipe e vê-la crescer, participar das conquistas e sempre que possível ouvir o que todos tem a dizer para que possamos melhorar.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-06-19T23:27:00.000Z'::timestamptz),
  ('Bruno dos Santos Muniz','bruninhodsm10@gmail.com',NULL,'51996308699','2005-03-17',20,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1mW_J65LodhICI2uM1BNc3ahIb4Zv_YE5','Administração de empresas','Ensino Superior Incompleto','FACCAT','2028-01-15','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Bellatech 2020 - 2021 
Função: Fiscal de qualidade
Fiscalização de produtos, montagem e elaboração de pareceres técnicos.

Multipassaros 2021-2023 
Função: Auxiliar administrativo
Administração de protocolos e arquivos, expedição de documentos e controle de estoques.','Cursos complementares:
Simplifica Excel Dash Boards - Kultivi
Informática - Kultivi
Inglês - Kultivi',NULL,'Administrativa, Financeiro','https://drive.google.com/open?id=1jcFm9MMg2gRWnGEbjYEXPsdIM-dphq9X',NULL,'Indicação','Não','1.600','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Excelente capacidade de comunicação, empático, proativo, organizado, com ampla experiência em trabalho em equipe, grande facilidade de aprendizagem e capacidade de mediação. Busco crescer profissionalmente e ampliar meus conhecimentos, desenvolvendo minhas habilidades e contribuindo para o sucesso da empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-06-20T19:31:00.000Z'::timestamptz),
  ('Carine Rosa de Quadros','carinerosaq@gmail.com',NULL,'55996532421','2000-05-20',25,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1CcBvp-kAS84lrFbx7WBo1pX85TLIhW5M',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Buscando primeiro emprego','Curso Básico Pacote Office',NULL,'Administrativa, Comercial, Estágio','https://drive.google.com/open?id=1mWak4s3JV_cAuDOXKSJ5CpfSmN8Ghtc6',NULL,'Google','Não','1200','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-06-20T23:33:00.000Z'::timestamptz),
  ('Rafael Pitaluga Jardim','rafaelpitaluga@hotmail.com',NULL,'55999723361','1993-04-09',32,'Solteiro(a)','1','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1Hf5pX7jCxT8xg1NALn-G6QHECDYOnUS-',NULL,'Ensino Superior Incompleto','Emilio Zuneda','2011-12-30','Não, no momento pausei/parei por um período.','1) Profarma Distribuidora
2) Representante Comercial de Medicamentos
3) Inicio- 20/05/2022 Final- 30/04/2023 
4)Atendimento ao Publico e vendas.Experiencia com plano de ação e gestão comercial e prospectando mais clientes na areá, realizava visitas comerciais em todas as farmacias da fronteira-oeste','Tenho curso de Tec. Informatica, na Profarma tive varios cursos que ensinavam a vender e eu particularmente estudava mais e fiz um curso de marketing para complementar as minhas vendas.','Tec em Informatica','Comercial, Financeiro, Marketing, Novos Negócios','https://drive.google.com/open?id=16GQO3TQVQ_t2bjYlSkfUFExG2MMd5dF3',NULL,'Agência de Empregos','Ninguem','1900','Não','Willian meu supervisor - (51) 992670070','Quero inscrever-me no banco de talentos da Young!','Sou um cara que busco sempre dar 110% em meus trabalhos nos quais trabalho, como disse tenho conhecimento em computação, planilhas de Exel, Word e Power Point pois montava planos de ação para vender mais para clientes e procurar cliente inativados para reativalos, aprendi com isso tambem marketing aonde montava as mideas que mandava para meus clientes, eu montava e mandavam para meus colegas do setor aonde qual eu trabalhava','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-06-21T14:33:00.000Z'::timestamptz),
  ('Leonardo Falavigna Scapinelli','leonardofscapinelli@gmail.com',NULL,'54996092920','1998-10-15',27,'Solteiro(a)','0','Sim','Capão Da Canoa/rs','https://drive.google.com/uc?export=view&id=1AdQPEcKUi7GVO_Mr20XmFK9987VmJ-Az','Engenharia Civil','Pós-graduação Incompleta','Universidade Federal do Rio Grande','2023-03-25','Sou formado','1) Laike Engenharia e Construção Ltda - Estagiário de Engenharia (fev/2020)
Atividades desempenhadas:
- Análise de projetos de edificações construídas na cidade de Caxias do
Sul, para regularização de PPCI;
- Auxílio no desenvolvimento de projetos arquitetônicos, conforme os
padrões de desenho da empresa - AutoCad;
- Auxílio em especificações básicas de PPCI.

2) Erenge Construções e Incorporações Eireli - Estagiário de Engenharia (out/2020 - mar/2021 e jul/2021 - set/2021)
Atividades desempenhadas:
- Acompanhamento da obra de ampliação do setor industrial da
empresa Bianchini S/A - execução de silos, subestações, moegas,
tombadores, túneis e galerias;
- Auxílio no controle e rastreio do concreto;
- Realização de ensaios de abatimento (Slump), moldagem de corpos de
prova e acompanhamento dos resultados;
- Auxílio no desenvolvimento de projetos de segurança (andaimes,
escadas e linhas de vida);
- Auxílio na conferência de armaduras, para liberação das concretagens;
- Auxílio na gestão de planejamento da obra;
- Acompanhamento da execução e controle dos materiais;
- Preenchimento de relatórios de obra - relatório diário, semanal,
memorial de medição e aditivos de contrato;
- Atualização de cronogramas - MS Project.

3) Bianchini S/A - Indústria, Comércio e Agricultura - Estagiário de Engenharia / Assistente Equipe de Projetos (out/2021 - mar/2023)
Atividades desempenhadas:
- Auxílio no desenvolvimento de projetos e dimensionamento de
estruturas metálicas - coberturas, acessos, plataformas e demais
demandas de manutenção da fábrica (AutoCad 3D);
- Auxílio no desenvolvimento de projetos para obras civis e estruturas em
concreto armado;
- Auxílio na gestão e planejamento dos projetos de manutenção internos;
- Auxílio na atuação do setor de Conservação Predial - controle de
solicitações de serviço e compras de material;
- Auxílio no controle de medições referentes a serviços prestados por
empresas terceiras;
- Acompanhamento de obras, reformas e ampliações da fábrica.

4) RGS Engenharia - Auxiliar de Engenharia (vigente)
Atividades desempenhadas:
- Auxiliar na obra pública de execução das redes coletoras e EBE''s
remanescentes no município de Imbé - RS;
- Auxílio na gestão de planejamento da obra;
- Acompanhamento da execução e controle dos materiais;
- Preenchimento de relatórios de obra - relatório diário, semanal,
memorial de medição e aditivos de contrato;
- Assistência nas medições dos serviços executados para pagamento das
empresas terceirizadas;
- Assistência e orientação nos serviços que regem a execução de
estruturas em concreto armado.','Cursando MBA em Projeto, detalhamento e desempenho das estruturas e fundações.',NULL,'Engenharia','https://drive.google.com/open?id=1PhaoMNVR5RdJvlBrHyrUpU2OowWZAhzy',NULL,'Instagram','Não','3500','Sim',NULL,'Auxiliar de Engenharia','Tenho muito foco em meus objetivos e busco continuamente manter um aprendizado gradativo e crescimento profissional. Desempenho minhas atribuições com responsabilidade e forte dedicação. Sou uma pessoa comunicativa e tenho muita facilidade em desenvolver relações nos ambientes que frequento. Adoro conhecer novas pessoas e aprender com as vivências de cada um, sempre respeitando e mantendo a relação profissional no ambiente de trabalho.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-06-21T22:14:00.000Z'::timestamptz),
  ('Giulianna Cauduro Poncio','giuliannacp@hotmail.com',NULL,'51998228659','1996-05-02',29,'Solteiro(a)','1','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1vxGbn8S8Tz7TUZm-hwHXumW87N17g1xG',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Wizard Santo Antônio da Patrulha - escola de idiomas
Período: março/2015 até janeiro/2021.
Recepcionista e auxiliar administrativo 
- Responsável pelo atendimento ao cliente durante toda sua trajetória acadêmica; Gerenciamento das agendas dos setores pedagógico e comercial; Responsável pela parte financeira de cobrança e emissão de notas fiscais. 

Unisinos - Polo EAD Santo Antônio da Patrulha
Período: Janeiro/2021 até Setembro/2021.
Auxiliar administrativo 
- Responsável pelo atendimento ao cliente durante toda sua trajetória acadêmica; Captação de novos alunos; Contato com empresas locais para fechar parceria/convênio;


RR Shoes
Período: Setembro/2021 até Outubro/2022.
Auxiliar de almoxarife
- Responsável pelo recebimento e emissão de notas fiscais; Emissão de ordens de compra; Auxílio no controle de estoque e inventários; Contato com fornecedores e ateliers;

Masal 
Período: Outubro/2022 até o presente momento.
Auxiliar de almoxarife 
- Responsável pelo recebimento e conferência de mercadoria; separação de peças para setor de montagem; lançamento de notas fiscais de entrada; auxílio no controle de estoque e inventário.',NULL,NULL,'Administrativa, Financeiro','https://drive.google.com/open?id=1S8r_Y_S8EAD-YLqJ4nMWaKp6D-VIc9bp',NULL,'Indicação','Jaqueline Altenetter','Acima de R$ 2.000,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-06-26T23:50:00.000Z'::timestamptz),
  ('Éverton Luiz Oliveira das Virgens','everton.virgens@gmail.com',NULL,'51998126075','1979-09-22',46,'Casado(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Ho84ocby4z3gqHLkIpomrvvq0YL1j--4','Administração de empresas','Pós-graduação Completa','Faculdade São Judas Tadeu- POA','2002-01-10','Sou formado','De 2017 até 30/04/23 - Coordenador da F. Airoldi Beer Brewing Ltda. 

- Responsável pelas áreas de produção, Supply chain (gestão de estoques e identificação de insumos, organização dos mesmos para produção, controle de qualidade dos produtos e matérias primas, saída de produtos), rotinas  administrativas (gestão financeira- controle de contas a pagar e contas a receber, DRE, ROI, TIR, PAYBACK descontado e simples, índices financeiros e analíticos, gestão e planilhamento de custos/tributos fiscais referentes aos produtos, cálculo e precificação para vendas).
-Experiência em planejamento de compras, recebimentos e conferências; 

- Vivência na captação de novos clientes, gestão de pessoas, atendimento a clientes internos e externos, elaboração de estratégias para aprimoramento de processos, viabilidade financeira de novos processos,  higiene e saúde no trabalho.


2005 a 2014 - ÁGATA COML COMBUSTÍVEIS E TRANSPORTADORA
Cargo: Coordenador Geral

- Responsável por diversas áreas da empresa, pois era uma empresa familiar (recursos humanos, projetos, auditoria, qualidade e administrativo/financeiro);
- Atuação nos resultados mensuráveis correspondentes às atividades, responsável pela área de produção, gerenciamento de equipe, controle do fluxo de serviço por base de relatórios e  coordenação de atividades do departamento financeiro da empresa;
- Experiência no planejamento de compras e estratégico da empresa, implantação de controles, formação de custos, gastos, fluxo de caixa, lucro, tributação, aproveitamento de impostos e plano de negócios;
- Vivência na captação de novos clientes, atendimento a clientes internos e externos, controle da segurança, higiene e saúde no trabalho.


Outras experiências:

-Vivência e conhecimento em planejamento  de compras e comercialização de materiais de construção.','MBA em Gestão Financeira e Auditoria- Uninter 2021; Curso de  Power BI (Básico ao avançado)- UDEMY 2023; Análise de Viabilidade Financeira de Projetos- FGV 2012; Segunda graduação em andamento: Tecnologia em Análise e Desenvolvimento de Sistemas- IFRS.',NULL,'Administrativa, Financeiro, Novos Negócios, Engenharia','https://drive.google.com/open?id=1lDLfm9va8V25zABFUdk-tIJSrLCEY-Oy',NULL,'Indicação','Sim, pela colaboradora Elen Janaína','Entre R$ 3.000,00 a R$ 4.000,00','Sim','Fernanda Airoldi- (51) 984080234- F. Airoldi Beer Brewing LTDA','Quero inscrever-me no banco de talentos da Young!','Gostaria de compartilhar que sou uma pessoa organizada, focado nas atividades a mim designadas, com bom relacionamento interpessoal e boa comunicação. Estou sempre em busca de aperfeiçoamento e atualizações.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-06-29T18:06:00.000Z'::timestamptz),
  ('Felipe Barcella dos Santos','felipebarcella604@gmail.com',NULL,'51997539112','2004-03-15',21,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1xrdM4x5AvT0nWHSc7gPBezCMKLyimn_6',NULL,'Ensino Superior Incompleto','CENTRO UNIVERSITÁRIO LEONARDO DA VINCI - UNIASSELVI','2026-12-21','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Parque da Guarda.
2) Ocupo o cargo na área administrativa da empresa.
3) Dei início na empresa no dia 01/05/2023.
4) No setor em que trabalho, fico responsável por fazer contratos, atender ao público e receber pagamentos.','Atualmente estou no segundo semestre do ensino superior, cursando Ciências Contábeis, sempre gostei de cálculos e me saia super bem na época de escola, possuo conhecimento com pacotes do Office 365, mas sendo auto didático.',NULL,'Administrativa, Comercial, Estágio, Financeiro','https://drive.google.com/open?id=1rwNZD064T7kewrzQTTWyofSQxnwZF4w9',NULL,'Indicação','Antonio José Alves Ferreira','Em torno de R$1600,00/R$1700,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Além de Contábeis, outra carreira que gostaria muito de seguir é na área da tecnologia, sempre me interessei pelo assunto e dominei super bem o que era voltado à essa área, tendo bastante facilidade em alguns programas, tais eles, como do Office 365, que, eu mesmo procurei conhecimento. Possuo um bom trabalho em equipe e me desenvolvo super bem com os demais colegas da empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-07-05T02:47:00.000Z'::timestamptz),
  ('Elizandra Correa de Oliveira','elizandraoliveira@sou.faccat.br',NULL,'+5551998577367','1989-03-21',36,'União estável','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1L0FTU2v6EbLg_5uwj0U0y9KpaoY1DGf7',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Empresa: Silvio Thomaz de Oliveira ( D’FRIOS) 
Período: de 02/05/2011 à 18/11/2015 
Cargo exercido: Auxiliar de escritório 
Funções desempenhadas: Emissão e controle de notas fiscais, emissão e controle de boletos, atendimento ao telefone e aos clientes no local. 
Empresa: Higienize Comercial LTDA
Período: de 01/07/2016 à 15/07/2022 
Cargo exercido: Auxiliar Administrativo (Televendas) 
Funções desempenhadas: Vendas internas, central telefônica, central de emails e call center, whatsapp e demais redes sociais. Também auxílio à equipe externa com suas atividades, como a confecção de orçamentos, contatos com clientes e resolução de problemáticas.',NULL,NULL,'Administrativa, Comercial, Novos Negócios',NULL,NULL,'Instagram','Não','2500','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Gosto muito de estar em contato com as pessoas sou muito empata, faço alguns serviços voluntários na comunidade. 
Campanha do agasalho para famílias carentes, festa de natal para as crianças carentes da comunidade.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-07-05T16:12:00.000Z'::timestamptz),
  ('Mariana Janaína Dias da Cunha','eumarianacunha@gmail.com',NULL,'997508593','2001-02-02',25,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1NECLe27KMNgJokja4Zwlq1vn0gQpdSfJ','Administração de empresas','Ensino Superior Incompleto','Universidade Federal do Rio Grande','2025-06-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Via Uno 
2) Analista de Qualidade/Sistema de Gestão Integrado 
3) 06/01/2020 a 23/02/2023
4) Gestão de Qualdiade, Gestão de Indicadores, Treinamento e Desenvolvimento, Gestão de Projetos e Auditorias de Terceira Parte','Gestão de Pessoas - Sebrae, 2022.
Responsabilidade Social Empresarial - Sebrae, 2022.
Inteligência Emocional - Prime Cursos, 2022.','White Belt em Lean Six Sigma, Yellow Belt em Lean Six Sigma, Auditora Interna de SGI','Administrativa','https://drive.google.com/open?id=1is410GpXlFO-xop-ZCW4f9F_IoBcVjPn','https://drive.google.com/open?id=1XemwBoehkdahL0dudPLULlG_UP3SQou_','Facebook','Não','Salário a combinar','Sim','Fabiani Adam - Gestora de RH (Via Uno) contto: (51)991890951 
Sandro Felicetti - Diretor Industrial (Via Uno) Contato: (51)999073031','Quero inscrever-me no banco de talentos da Young!','Sou comunicativa, gosto de aprender coisas novas e de novos desafios. Estou disposta aprender e a me desenvolver.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-07-05T20:26:00.000Z'::timestamptz),
  ('Juliana marques boeno','mbjuliana2022@gmail.com',NULL,'51993995007','2002-05-06',23,'Solteiro(a)','0','Não','Osório/RS','https://drive.google.com/uc?export=view&id=114KC_2NK41VJj5pqAp7o3pL-sx9G4Ul5','Administração','Ensino Superior Incompleto','Uniasselvi polo IEPARSUL',NULL,'Não, no momento pausei/parei por um período.','Star profissões- cursos profissionalizantes 
Cargo: secretário 
Função: vendas,gerenciamento de redes sociais, cobrança judiciais,compras de itens  utilizados em cursos, pagamento de funcionários, realizações de certificados, contabilidade dos gastos da empresa

Câmara municipal de osorio
Cargo: SECRETÁRIA de gabinete 
Funcao: atendimento e apoio a clientes,gerenciamento de redes sociais, acompanhamento de reuniões com o vereador, escrivã de doc colocados em pauta em sessão ordinárias.',NULL,'Atendimento ao público- miranda informatica secretáriado administrativo e contabil - digital ti operador de caixa- digital ti','Administrativa, Estágio, Marketing, Novos Negócios','https://drive.google.com/open?id=1Og8Brnx2PNzCAQby3FBGpMAkboIs8cXH',NULL,'Instagram','Nao','Salario compatível com a função','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Domino bastante a área de manicure, faço isso em horários livres, danço em CTG, adoro ficar com a família, todos os meses eu doou uma quantia para uma ONG que cuida de cães, sou apaixonada pelos animais.
Utilizo bastante meu Instagram, sei usar execel,Word','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-07-05T20:29:00.000Z'::timestamptz)
;

INSERT INTO young_talents.candidates (full_name, email, email_secondary, phone, birth_date, age, marital_status, children_count, has_license, city, photo_url, education, schooling_level, institution, graduation_date, is_studying, experience, courses, certifications, interest_areas, cv_url, portfolio_url, source, referral, salary_expectation, can_relocate, professional_references, type_of_app, free_field, status, tags, origin, created_by, original_timestamp)
VALUES
  ('Leandro Júnior De Matos','juniormattos210@gmail.com',NULL,'51996786162','2004-02-18',22,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1SY7mZVRCQzBKj3woCwPwkQEgcP4PELz-','Engenharia de software','Ensino Médio Completo','Estácio','2027-04-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Primeira empresa:VERO INTERNET
AUXILIAR DE ESTOQUE-JOVEM APRENDIZ
Início: 23/03/2020
Final: 23/05/2022
Atividades exercidas: Administração de inventário, contagem e organização de estoque, manutenção e atualização de equipamentos, identificação e criação de planilhas para transferência via sistema.
Segunda Empresa:SUPER MERCADO GOMES
VENDEDOR E-COMERCE
Início: 15/08/2022
Final: 05/01/2023
Atividades exercidas: Separação de compras para clientes.
Atual emprego: IMAP
AUXILIAR DE DATA INTEGRITY
Inicio: 09/02/2023
Atividades exercidas: Auditoria de estoque, contagem cíclica, organização de prateleiras e atividades sistêmicas, como: Ajuste de estoque, atualização de inventário e conferencia de razão, auditoria de empresas terceiras e organização de planilhas.','Estudo engenharia de software, é algo que me identifico e também será de grande necessidade no futuro. Entrei nessa área por muitos desistirem no começo, então queria me desafiar e ver quais obstáculos estariam no meu caminho.','Administração Arcos Ocupacionais','Administrativa, Comercial, Financeiro, Engenharia','https://drive.google.com/open?id=1QX2S4xK1ct7mNE8le4P4by9VXrYbU714',NULL,'Instagram','Não','1800','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Me chamo Leandro Júnior de Matos, tenho 19 anos, curso engenharia de software. Tenho grande facilidade em adaptação e em comunicação, sou bastante proativo. 
Tenho facilidade em tomada de atitudes e sempre estou visando melhoria pessoal e profissional.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-07-06T11:52:00.000Z'::timestamptz),
  ('Fábio Suyan','fs.suyan2001@gmail.com',NULL,'51999827499','2001-04-22',24,'Casado(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=16NvpqMsJgAnp6D7H9ZDHQSHs95PzTinF',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Trabalhei na RR shoes, como almoxarife do ano de 2018 até 2020 e Hoje estou na coperativa cooperja  desde 2020',NULL,NULL,'Comercial',NULL,NULL,'Facebook','Não','2000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-07-06T14:31:00.000Z'::timestamptz),
  ('Tamires Fernandes','tamifernandes12@gmail.com',NULL,'51996718187','1990-08-03',35,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1so8_qWUck1-Ys5Ib6N9KmACxJESgOYjQ','Ciências Contábeis','Ensino Superior Incompleto','ETEP','2008-06-30','Não, no momento pausei/parei por um período.','Sempre trabalhei na área administrativa. Trabalhei no setor financeiro, onde sozinha administrava o financeiro de 3 empresas. Tenho plena capacidade de exercer qualquer função que me for dada',NULL,NULL,'Administrativa, Financeiro','https://drive.google.com/open?id=12wKi8LpQnPRLBZRvXECCWgFPv1Q9s84j',NULL,'Google','Não','R$2.300,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-07-06T14:35:00.000Z'::timestamptz),
  ('Vanessa Ramos dos santos','vava67331@gmail.com',NULL,'51997568098','1998-01-08',28,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=13tUbuM-PRS1TVhZYc4KhRugep0RYcFz_',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Sonho de criança-gerente de loja 
Magazine Luiza- vendedora caixa e estoque',NULL,NULL,'Administrativa, Comercial','https://drive.google.com/open?id=1cd4Ujbb_CVC8YPX8CSusx6LBytRBJ2Uv','https://drive.google.com/open?id=1NhFQPR9LRXskKTXOimmInxmHmP04JapR','Instagram','Não','Apartir de 2,200','Sim','Sonho de criança- Jessica fraga 998875699
Magazine Luiza- Luana 996563932 gestora','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-07-06T17:53:00.000Z'::timestamptz),
  ('Melina Pedroso Lino','melinap1821@gmail.com',NULL,'51996997880','1997-01-20',29,'Solteiro(a)','2','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1HCG0TDNlrvfVriS-NtNAI4UUSqVtaY_O',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Unicesumar
Tutor/gestor de polo
Área administrativa e comercial 
02/04/2023 a 02/06/2023

Distribuidora de Alimentos Sptiznagel
Auxiliar administrativo 
Emissão de notas fiscais/atendimento/administrativo 
2013 a 2015',NULL,NULL,'Administrativa',NULL,NULL,'Instagram','Não','1.800','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa pro ativa, ágil, organizada, gosto de trabalhar em equipe, sempre tive um bom relacionamento com colegas/clientes, estou sempre em busca de novos aprendizados. No momento não curso em nenhuma faculdade, pois ainda não encontrei a área desejada, mas pretendo cursar em breve.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-07-07T02:21:00.000Z'::timestamptz),
  ('Maria Eduarda de Fraga','duda.fraga17@icloud.com',NULL,'51997113199','2002-07-09',23,'União estável','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1SFhf7gOz4rRAm0XxTogDkEVyqheeOmIc','Gestão Comercial','Ensino Superior Incompleto','Estácio de Sá','2024-06-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Autônoma em venda de Doces
Auxiliar Administrativo em Redemac
Autônoma em comércio de cosméticos 
Auxiliar Jurídico na Prefeitura Municipal
Supervisora Comercial em Nacional G3
Aux. Operações Bancárias em Santander
Gestora Comercial em Daniela Rocha Advogada','Tenho diversos cursos de baixa e média carga horária nas áreas: administrativa, liderança de equipes, vendas, atendimento ao cliente, etc - O mais longo desses cursos foi o de Rotinas Administrativas (100 horas). Tenho inglês fluente.',NULL,'Comercial','https://drive.google.com/open?id=1IXNQtQAE64eKOQ5lwRn1woFenOimYyU7',NULL,'Instagram','Não','2.000,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Olá, tudo bem?
Primeiramente obrigada pela oportunidade, gostaria de me disponibilizar para testes e reuniões para mostrar um pouco do meu trabalho.  Me comprometo totalmente em garantir à empresa um expressivo salto em resultados comerciais e me disponho diariamente em aprender novas coisas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-07-07T11:13:00.000Z'::timestamptz),
  ('Rafaela Podilchuk Ferreira','rafaelapofe@gmail.com',NULL,'980547798','2004-06-04',21,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1MaVg3_5c1IDSuY3sviA43t0gH9Lj8xLu','Administração de empresas','Ensino Superior Incompleto','Universidade Federal do Rio Grande do Sul - Furg',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Prefeitura de Santo Antônio da Patrulha, Secretaria Municipal da Saúde / Estágio
Período de estágio: 25/01/2021 até dezembro de 2021.
Atividades desempenhadas: Atendimento aos cidadãos prestando as orientações necessárias, auxiliar nas tarefas administrativas, arquivamento de documentos, entrega e recebimento de documentos intersetorial, atendimento telefônico, agendamentos.
Setores: Telefonia e Transporte.

Masal S/A Indústria e Comércio / Jovem aprendiz
Período de estágio: De julho de 2022 até outubro de 2022.
Atividades desempenhadas: Organização e arquivamento de documentos, atendimento aos colaboradores, conferir e armazenar produtos e materiais, alimentar sistema para elaboração de relatórios, transportar correspondências, documentos e materiais.

Mania de Loja / Vendedor
Período de trabalho: De novembro de 2022 até dezembro de 2022.
Atividades desempenhadas: Vendas, atendimento ao cliente, negociação, auxílio com possíveis dúvidas, atendimento virtual, responder mensagens e comentários nas redes sociais.

Relojoaria e Ótica Aliança / Vendedor
Período de trabalho: De janeiro de 2023 até maio de 2023.
Atividades desempenhadas: Atendimento ao público, vendas, desenvolver publicações para redes sociais, emissão de notas e documentos, alimentar planilhas e relatórios, atendimento virtual.',NULL,NULL,'Administrativa, Comercial, Estágio','https://drive.google.com/open?id=1SLYolGgKEN3KljRoZ7mTBhXnTeDXSE_2',NULL,'Instagram','Não fui indicada por nenhum colaborador da Young.','R$1.500,00','Não','Cássio Renck (51 999534115) Relojoaria e Ótica Aliança','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-07-07T21:34:00.000Z'::timestamptz),
  ('Thiere da Motta Bueno','thierebueno@gmail.com',NULL,'55999258129','1996-01-06',30,'União estável','1','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1Em_-EcwvEnD6gYBjJucomkc-8V-7ibrO','Administração de empresas','Ensino Superior Completo','Unopar','2017-08-26','Sou formado','Editora Nemitz
Março 2013 a novembro 2016
Criação e arte final e atendimento

Alenro Gráfica e Comunicação Visual
Maio de 2017 até o momento 
Criação e arte final atendimento e funções administrativas em geral',NULL,NULL,'Administrativa','https://drive.google.com/open?id=17z3Hhr_10GifruIYgahVn6I_IBStON2U',NULL,'Google','Não','2500','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Exercer atividades na área administrativa, afim de desenvolver e aprimorar os conhecimentos adquiridos, bem como satisfazer os objetivos pessoais e profissionais.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-07-11T15:39:00.000Z'::timestamptz),
  ('Mario Cesar Michielon Rech','mariorech.covado@gmail.com',NULL,'54999783500','1959-10-16',66,'Casado(a)','1','Sim','Caxias Do Sul/rs','https://drive.google.com/uc?export=view&id=1ItpdKz8Qi9k-7_uZac7C7UPDniVK6UY_','Engenharia Civil','Pós-graduação Completa','Unisinos','1993-07-23','Sou formado','Prefeitura de Nova Pádua ( 1/2 turno )
Ocupei o cargo de Engenheiro Civil por 28 anos ( aposentado )
07/07/1994 até 07/05/2022
As de engenheiro civil do município.

Tondo SA ( 1/2 turno )
Exercia o cargo de Engenheiro de Segurança do Trabalho
01/11/2016 até 01/01/2021
As de engenheiro de Segurança do Trabalho em uma indústria de alimentos.

Circulo Operário Caxiense ( 1/2 turno )
Exercia o cargo de Engenheiro de Segurança do Trabalho
01/08/2008 até 01/12/2012
As de engenheiro de Segurança do Trabalho em uma empresa de saúde.

Mastertech ( grupo Randon e Eissemann ) 1/2 turno
Exercia o cargo de Engenheiro de Segurança do Trabalho
01/05/2005 até 01/07/2008
As de engenheiro de Segurança do Trabalho em uma empresa de pintura de peças.','Fiz os cursos de Eng. de Segurança do Trabalho,  e de Gestão Ambiental.',NULL,'Arquitetura, Licenciamentos, Engenharia','https://drive.google.com/open?id=1AZYP628vsHRWMvJ3RUhw3i_hAvvFEvTo',NULL,'Google','Não','9.000,00','Sim','Prefeitura de Nova Pádua
Celso Chiarani , secretário de obras
(54) 3296-1600 / 99168-4814','Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-07-11T18:25:00.000Z'::timestamptz),
  ('Adriano Santos da Silva','adrioss@hotmail.com',NULL,'51998849529','1989-10-18',36,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1wteueWf_1bYhs2nYwa60E9k7qMoqjVL6','Gestão financeira','Ensino Superior Completo','Unimar','2023-03-16','Sou formado','Cosma do Brasil, técnico de manutenção e programador, de 2019 até 2023.','Técnico em Transações Imobiliárias',NULL,'Comercial','https://drive.google.com/open?id=1rYVKpiWAR_Q8sqXNPUENp7S77reyShOy',NULL,'Instagram','Não','Comissionado por vendas','Sim',NULL,'Estágio obrigatório para adquirir meu CRECI','Excel avançado, cursando preparatório para certificação CEA Anbima, cursando TTI no IBREP','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-07-11T18:59:00.000Z'::timestamptz),
  ('Andressa Haut Oliveira','andressahaut@gmail.com',NULL,'55991649198','1995-04-11',30,'Solteiro(a)','0','Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1CfrkwvXW1-do95sAj6baaEQbjyvo8sYw','Administração de empresas','Ensino Superior Completo','Uri campus Santiagp','2017-08-04','Sou formado','.',NULL,NULL,'Administrativa, Comercial, Marketing, Engenharia','https://drive.google.com/open?id=1hW-HYCz6tCSbc5zWao2xuxYkw3GOyayj',NULL,'Google','Não','R$2.000,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Boa tarde.

Venho por meio deste encaminhar  meu currículo para apreciação.

Tenho experiência em rotinas administrativas hospitalar, práticas comerciais, marketing, e relacionamento corporativo | Vivência em execução de projetos.

Desde já agradeço a atenção, e me coloco à disposição para esclarecimentos adicionais.


Atenciosamente
Andressa Haut Oliveira
(55) 991649198
https://www.linkedin.com/in/andressa-haut-oliveira-6aaa93124','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-07-17T18:46:00.000Z'::timestamptz),
  ('Rodrigo Cunha de Souza','comercial.rodrigo@hotmail.com',NULL,'51998676044','1995-01-20',31,'União estável','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1GTQKawCijDgtMCQ59JYgTG4w9Rm1HXXz','Administração de empresas','Ensino Superior Incompleto','UNIPACS TAQUARA','2018-01-16','Não, no momento pausei/parei por um período.','Calçados Bugor do Brasil, auxiliar de compras, inicio 04/01/2021 atualmente desempenhando funções no setor de compras, geração de ordens de compras, cadastro de fornecedores, solicitação de orçamentos, elaboração de tabelas de valores, acompanhamento e desenvolvimento de matérias-primas, programação de pagamentos de fornecedores, montando a logística de coletas de materiais.',NULL,'•	Dicção, Oratório e Desinibição – CDP Leoclides Marcon.','Administrativa, Comercial, Engenharia','https://drive.google.com/open?id=1tCukCDIc1PFoxmgncYR4y-Qs1Q42FtJe','https://drive.google.com/open?id=17OrRQjHaIqBTEKEgXXK9ypQ8K8NDu4jz','Instagram','Não.','Acredito em projetos.','Sim','Leandro Souza, 51 991661733, Sócio Calçados Bugor do Brasil.
Anderson Ripper, 51 998783536, Proprietário Injeppel Calçados.
Juarez Pereira, 51 9978 0159, Comprador Viauno.','Quero inscrever-me no banco de talentos da Young!','Desde já obrigado,

Agradeço a oportunidade, gostaria muito de fazer parte de grande equipe que vem revolucionando o mercado imobiliário no Sul do Brasil, conheço minhas capacidades e dedicação, resiliência e pode junto agregar a essa grande intuição.

Att.
Rodrigo Cunha de Souza.
Santo Antônio da Patrulha.
18 de Julho de 2023.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-07-18T20:25:00.000Z'::timestamptz),
  ('Laís Ribeiro de Lima','lais.lima0693@gmail.com',NULL,'51980429339','1993-06-08',32,'Divorciado(a)','3','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1ojUoIIeEduDNfKi8nZyRsqd6p4OV2j9m','Ciências Contábeis','Ensino Superior Incompleto','Uniasselvi',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Loja Pompéia ( Santo Antônio da Patrulha), Vendedora, 01/12/2020 - atividade ativa.Trabalho com vendas direto com o público, organização da loja.
2) Supermercado Kuchak, operador de caixa, 10/08/2020 - 21/10/2020, Loja de Ijuí/RS. Trabalhava direto com o público, abertura e fechamento de caixa.
3) Padaria Santa Cecília ( Santo Antônio da Patrulha), atendente de balcão, 01/11/2018 - 28/06/2019, atendimento ao público, organizar e limpeza de balcão.',NULL,NULL,'Administrativa, Financeiro',NULL,NULL,'Instagram','Não','3500','Não',NULL,'Estágio Financeiro','Sou uma pessoa proativa, sei trabalhar em equipe e amo novos desafios. Estou cursando o segundo semestre de Ciências Contábeis, escolhi essa área pq estou sempre envolvida a ajudar a família e amigos em questões bancárias e trabalhistas, busco sempre estar informada. Meu hoob preferido é montagem de móveis, fiz curso de montador, é mais por paixão em ver as coisas construindo. Minhas férias de inverno gosto de aproveitar melhor a família.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-07-20T19:50:00.000Z'::timestamptz),
  ('Larissa camille oliveira haack','camillelarissa107@gmail.com',NULL,'51995479394','2002-02-04',24,'Solteiro(a)','2','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1E4IM8V2iegMfwzkFFjl463OVRr_tNOLa','Superior em tecnologia da qualidade','Ensino Superior Incompleto','uninter','2025-01-25','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','seria a primeira vez trabalhando assim, pois eu era autónoma',NULL,NULL,'Estágio',NULL,NULL,'Facebook','Nao','1,8','Não','Não tenho referência','Estágio Financeiro','Bom eu tenho 21 anos, faz pouco que terminei meus estudos pois quando era pra estudar não estudei, perdi um ótimo serviço por falta deles,então resolvi terminar o ensino médio ano passado, e nesse meio tempo acabei ficando grávida da minha filha, então quando ganhei ela decidi retomar, pensei em varias coisas mas VI que oq eu queria e gostava era esse meio  administrativa, coloborar com alguma ideia, dar alguma opinião quando possível, e ver oq pode ser melhorado. Foi quando eu me inscrevi no curso de superior da tecnologia da qualidade, e bom eh isso tenho interesse gostaria de ter mais informações e se for do bom gosto de vcs poder colaborar com a empresa ;)','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-07-22T01:25:00.000Z'::timestamptz),
  ('Pâmela Souza da Silva','ps6989903@gmail.com',NULL,'019984442930','1996-08-09',29,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=14j9XSbZvEPM1dE6eS5y-sLyZYpCD_mjt','Nutrição','Ensino Superior Incompleto','uniasselvi','2025-07-10','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Meu último cargo foi em uma indústria alimentícia, na produção.','Estou cursando administração e marketing, são cursos técnicos. Pelo Estudo flex',NULL,'Administrativa, Comercial, Marketing, Engenharia',NULL,NULL,'Instagram','nao','20000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Olá, sou uma pessoa esforçada, organizada, que tem força de vontade em tudo que faz,  sou proativa, comunicativa, lido muito bem com o próximo. Me identifiquei com essa vaga e adoraria fazer parte da equipe. 
Aguardo o retorno de vocês!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-07-24T15:44:00.000Z'::timestamptz),
  ('Gleitimar Pereira da Silva','pereiragleitimar@gmail.com',NULL,'999116278','1996-03-28',29,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1SzET4cMBL8-zvpPIFekdLAWvXRZaoqZL',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','1) Ecosol soluções ecológicas
2) Auxiliar Data Integrity
3)Abril 2022/ Julho 2023
4) Inventários em geral',NULL,NULL,'Administrativa',NULL,NULL,'Instagram','Não','$2.000/$2.300','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-07-24T18:42:00.000Z'::timestamptz),
  ('Eduarda de Campos Rojas Nolibos','eduardarojas@outlook.com',NULL,'55996357401','1999-01-12',27,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1WCc9DZp8HfqkzVz5e9q8VE4VOYDKrW-O','Direito e Gestão de recursos humanos','Pós-graduação Completa','Universidade regional integrada do alto Uruguai e das missões - Santiago','2022-01-05','Sou formado','Último trabalho foi no Banco da Omni 
Fui assistente jurídico, trabalhava na área de busca e apreensão.','Bacharel em direito, pós graduação em direito trabalhista, penal e imobiliário.
Atualmente sou estudante de gestão de recursos humanos.',NULL,'Administrativa, Comercial, Estágio, Novos Negócios','https://drive.google.com/open?id=1Ui0LcY-hijq6B18aNrI3UROINMetLWWs',NULL,'Instagram','Nao','2000','Sim',NULL,'Comercial','Sou Eduarda, e adoraria conhecer vocês e fazer parte dessa empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-07-25T19:52:00.000Z'::timestamptz),
  ('Jaíne Fernandes Keplin','fernandeskeplin@gmail.com',NULL,'55996034010','2000-11-07',25,'Solteiro(a)','0','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1r6-BwXUu-g6Y4KlwTpKxK1HMskWeHCa_','Ciência da Computação e Análise e desenvolvimento de sistemas','Ensino Superior Incompleto','Unifacvest','2025-05-21','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Mr grupo educacional - Monitora em laboratório de Informática
Camil alimentos: Alimentador de linha de produção
Subli Arte Gráfica - auxiliar administrativo e designer',NULL,NULL,'Administrativa, Estágio, Marketing','https://drive.google.com/open?id=1Sbsnrds5znfyW0-fOpL0YbtFvfuHwmQJ',NULL,'Google','Não','1500','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-07-25T22:30:00.000Z'::timestamptz),
  ('Leandro batista figueiredo','batistaleandrobatista907@gmail.com',NULL,'21973878762','1988-07-21',37,'Divorciado(a)','0','Não','Japeri Rj','https://drive.google.com/uc?export=view&id=10szoFzlvW3mZB9ABlh2FKdP_xmO3D9Za','Engenharia Civil','Pós-graduação Incompleta','Colegio estadual joao santos souto','2003-07-28','Não, no momento pausei/parei por um período.','Rio service terceirização',NULL,NULL,'Engenharia','https://drive.google.com/open?id=1-icjWZGdOrbyQodIsGr5INv1RFJ0Sb-M',NULL,'Google','Nao','Ate 2 mil','Sim',NULL,'Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-07-26T12:16:00.000Z'::timestamptz),
  ('Andressa Tonin Durlo','andressa.durlo@hotmail.com',NULL,'55991502721','1995-01-12',31,'Solteiro(a)','0','Sim','Manoel Viana/rs','https://drive.google.com/uc?export=view&id=1dr6Q4Cd-7bX4PDXSxis7V-hXy0ZO4vc5','Engenharia Civil','Ensino Superior Completo','Universidade Federal do Pampa','2023-08-25','Sou formado','1) Construtora Sotrin Ltda (Alegrete)
2) Estagiária (estágio obrigatório)
3) Outubro e Novembro de 2022 
4) auxiliar em projetos complementares, quantitativos e acompanhamento de obras',NULL,NULL,'Engenharia','https://drive.google.com/open?id=1V831bvOFyOvDlS0QjRN8AcHAVXG8QSKO',NULL,'Indicação','Não','R$2.000','Sim',NULL,'Auxiliar de engenharia',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-07-27T14:16:00.000Z'::timestamptz),
  ('Lidiane da Silva Machado','lidiane.machado44@gmail.com',NULL,'51995169536','2001-12-31',24,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Viol3DR7feD1ccdGvm2vH4zNxOSi96Aa','Administração de empresas','Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','1º: 1) DeMello Alimentos, 2) Auxiliar Administrativo, 3) 23/10/2020 - 05/05/2021, 4) Atendimento ao cliente, organização de documentos, emissão de notas, responder e-mails, solicitação de matérias, entre outros. 

2º: 1) Drebes e Cia Ltda, 2) Caixa operadora, 3) 24/10/2023 - atual, 4) atendimento ao cliente, cobrança ao cliente inadimplente, entrega de mercadorias, organização de notas, entre outros.',NULL,'Operador de Microcomputador, Assistente Administrativo.','Administrativa, Comercial, Financeiro, Marketing',NULL,'https://drive.google.com/open?id=1-gjzd893nxscXpqJ6suG84Gksv4MAOqJ','Facebook','Não','R$2.000','Não','Alexandre Melo, número (51) 3662-3100','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-07-31T01:20:00.000Z'::timestamptz),
  ('Henrique Santos Dias','diasssantosh01@gmail.com',NULL,'51984568668','2002-11-01',23,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Unj8qU0ovuy6vZMJxM8tozeU1vLoWxyP',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Comecei a trabalhar com 17 anos na Doces Seleção e estou lá até hoje, comecei em agosto de 2020, trabalhei um ano de freelancer e depois assinaram a carteira, fazia um pouco de cada coisa, como atender no caixa, fazer revendas, contagem no estoque, atender na loja, fazer reposição de produtos, entregas, fabricação de cachaças, tive apenas uma falta em 3 anos de empresa, por causa de uma virose',NULL,NULL,'Administrativa, Comercial',NULL,NULL,'Indicação','Elen Janaina','2000 mil reais','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa muito extrovertida, sempre de bom humor e uma pessoa também muito focada no que faz, se me entregarem algum serviço vou fazer de tudo pra entregar ele dá melhor forma possivel, sou bastante responsavel com minhas responsabilidades, como horario e respeito dentro da empresa','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-07-31T14:59:00.000Z'::timestamptz),
  ('Isadora Ribas Rosa','isadoraribasrosa@gmail.com',NULL,'51980483883','2001-11-28',24,'União estável','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1puGEs-1ZtkvcnXKf9ao6wRwu5YpDfn8q',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','1 - Magna Cosma do Brasil 2 - auxiliar administrativo (jovem aprendiz) 3 - 2 anos 4 - Auxílio na administração da produção da empresa , planilhas de excel, folha ponto de funcionários.

1- Clínica Luz 2- Secretária e auxiliar do Médico Mauro Luz 3- 1 ano 4- Organização de agenda, atendimento ao cliente, auxiliar nas ecografias e digitação de laudos, organizar fichas e prontuários, esterilização de materiais de ginecologia e dentista.

1- Vida Rara Center 2- Financeiro 3- 1 ano 4- Financeiro da empresa, digitalização de documentos, atendimento na recepção, pagamento de boletos, contatos com outras empresas, cálculos de lucros e despesas, atendimento ao cliente, marketing digital.

1- Autonoma 2- Social Midea 3- 4 anos 4- Criação de logotipos, gestão de redes sociais, vídeos interativos, fotos de produtos e produções, edição de vídeos e fotos, estudo de conteúdos, análise de perfis.',NULL,NULL,'Administrativa, Financeiro, Marketing',NULL,NULL,'Indicação','Rodrigo Ribas Ferreira','1.800,00','Não','Ros Meri Bestetti (51995505737) CEEO VIDA RARA CENTER','Assistente Comercial','Sou uma pessoa muito comunicativa, sem problemas com pessoas novas e me adapto muito bem a lugares novos, sou muito organizada com minhas coisas e meu local de trabalho, tenho iniciativa em agregar com a empresa e sempre busco conhecimento para ficar por dentro da atualidade. Gosto de conhecer pessoas novas e sou conhecida por ser muito simpática e sorridente, ao mesmo tempo matura e educada. Meu hobbie favorito também é meu trabalho, o mundo digital me chama muita atenção. Para me conhecer precisaria de um dia me ouvindo ou muito elétrica, sempre no 220v e sem café hahaha','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-07-31T22:32:00.000Z'::timestamptz),
  ('Tauãne Oliveira do Nascimento','tauanenascimento76@gmail.com',NULL,'55999248398','2002-10-13',23,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1_Kwa8huluFzS8g3MmanoA9bm1bG_1q4R','Administração','Ensino Médio Completo','Universidade Federal do Rio Grande - FURG',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Sensatio Brigadeiros Gourmet - Caçapava do Sul
Meu primeiro emprego, era chamada apenas quando havia alta demanda, mas foram 4 anos auxiliando na produção, apenas saí quando me mudei para Porto Alegre.
Fazia bolos, brigadeiros e diversas outras variedades de produtos, também limpava e mantinha a organização da cozinha.

La Fortezza Restaurante e Pizzaria - Caçapava do Sul
Trabalhei como garçonete, servia o buffet, limpava o salão, atendia as mesas, mas tive que sair, pois eles queriam contratar e na época atuava apenas como freelancer. 

Pedruzzi e Bonorino Advogados - Porto Alegre 
Atuei por alguns meses auxiliando o escritório na digitalização de documentos, saí para cursar Administração na FURG de Santo Antônio.

Prefeitura de Santo Antônio da Patrulha
Estou estagiando na prefeitura, minha principal função é realizar orçamentos para a compra de produtos e contratação de serviços.','Estou cursando Administração no turno da noite.',NULL,'Administrativa, Comercial, Estágio, Marketing',NULL,NULL,'Instagram','Não.','R$2.000,00','Não','Alessandra Bonorino - 5181048035
Marina Huerta - 5596551724','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-07-31T23:35:00.000Z'::timestamptz),
  ('Vitória Petró Ramos','vitoriapetro0@gmail.com',NULL,'51995146387','2001-07-19',24,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1E_0cdN4Z3WDIKUGTxqhpMSel2vrks1Ro','Administração de empresas','Ensino Superior Incompleto','Uniasselvi',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','FARMÁCIA SANTO ANTÔNIO  
ATENDIMENTO AO PÚBLICO 
Período: 03/2019 A 10/2019

Atividades:
Compra de medicamentos e organização dos mesmos;
Abertura e fechamento da farmácia; 
Contas à pagar e receber; 

LOJAS POMPÉIA 
AUXILIAR DE LOJA                                                                        Período: 12/2019 A 08/2022

Atividades: 
Abertura e fechamento de loja;
Contas a pagar e receber;
Auxiliar de escritório;
Controle Almoxarifado;
Lançamento de nota fiscal; 
Gerenciamento de e-mails;
Realização de atendimento a clientes;
Controle de estoque;
Fechamento cofre;

MUNDI A PRIMAVERA  
OPERADORA DE CAIXA                                                              Período: 08/2022  A ATUALMENTE

Atividades: 
Contas à receber;
Realização de cobrança de clientes inadimplentes;
Realização de atendimento à clientes;
Emissão de nota fiscal;
Lançamento de nota de devolução dos pedidos;',NULL,NULL,'Administrativa, Comercial, Financeiro, Engenharia',NULL,'https://drive.google.com/open?id=1jM-ymjysXvNmsPmbFtcfPQsR611fW3v4','Instagram','FLÁVIA','1.500,00 a 2.000,00','Sim','Farmácia Santo Antônio (Igor) 51 3662-3694','Quero inscrever-me no banco de talentos da Young!','Após trabalhar quase 4 anos em comércio, estou a procura de novos desafios, para que possa ter novas experiências em novas áreas. Sou uma pessoa tranquila, mantenho ótima convivência com os colegas e tenho facilidade na aprendizagem. Busco trabalhar em um lugar onde posso firmar uma boa relação de trabalho, e assim, evoluir como profissional ao mesmo tempo em que colaboro para o crescimento da empresa. Espero que eu tenha conseguido ressaltar os motivos pelos quais me considero uma boa escolha para ocupar esse cargo! 
Irei aguardar a resposta.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-07-31T23:53:00.000Z'::timestamptz),
  ('Daniel Albani Pisoni','dpisoni.adm@gmail.com',NULL,'51996030139','2000-04-06',25,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1DbuuBkKzG1P6BQrc6ru0C_8XkrrMs6gU','Administração de empresas','Ensino Superior Incompleto','Uniasselvi','2023-12-10','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1)Ateliê de calçados Iaronka - 02/07/2017 a 30/11/2018. Preparador de calçados: Realizou procedimentos de análise de qualidade das peças que iriam para produção; tinha função de contar e, separar os lotes de peças de cada modelo para somente o necessário ir para a produção, não podendo haver desperdício de material. Ter agilidade para realizar a função no menor tempo possível.
2) Banco do Estado do Rio Grande do Sul - Banrisul - 06/12/2018 a 06/12/2020. Estagiário: Atendimento ao público em geral; atender ligações telefônicas e efetuar os devidos encaminhamentos quando necessário; auxiliar ao público geral nas salas de autoatendimento, cashs eletrônicos; comparecer aos órgãos da administração pública estadual, federal, municipal; contatar e atender os clientes pelos diversos canais de comunicação; fotocopiar, digitalizar, digitar documentos em geral; organizar e arquivar.
3) Vero Internet S/A - 17/02/2020 até o momento. Técnico de apoio ao usuário (helpdesk) 17/02/2020 a 01/02/2021: Atendimento ao cliente via telefone, identificar e solucionar o problema da conexão de Internet do cliente. 01/02/2021 a 01/03/2022 - Técnico de apoio ao usuário B2B: atendimento especializado e centralizado ao cliente empresarial (B2B), auxiliando em configurações remotas, identificando perda de tráfego, prestando suporte remoto ao cliente. 01/03/2022 a 10/03/2023 - Analista Centro de controle de Operações: montar e acompanhar a agenda de visitas, despachar ordem de serviço, montar rotas para atendimento técnico, organizar planilhas, controlar fluxo de visitas de acordo com efetivo em campo. 10/03/2023 até o momento - Supervisor de Centro de Controle de Operações: supervisionar e liderar o time de Call Center, organizar planilhas, ajustar o ponto dos colaboradores, ajustar férias dos colaboradores, entrevistar e selecionar membros para equipe, buscar soluções entre a operação e o call Center.
4) I-Conte Assessoria Contábil e Empresarial - 01/10/2021 a 10/01/2023. Societário: Atendimento ao Público, e experiencia na área de Societário, realizado abertura, alteração e fechamento de empresas, alterações de contrato social, auxílio em licitações municipais e emissão de alvarás e licenças. Na parte fiscal com a emissão de notas fiscais, e nas regras tributárias das empresas, com analise de empresas enquadradas em Simples Nacional ou em Lucro Real.
5) Prefeitura Municipal de Caraá - 19/01/2023 a 13/03/2023. Assistente administrativo Compras: Responsável pelos pedidos de compras, licitações, dispensa de licitações e compras diretas realizadas pela prefeitura, realização de orçamentos, conversa com fornecedor, organização da logística e prazo de entrega dos produtos.','Excel intermediário','Certificação de conclusão de curso realizado pela Unialcance (Escola Técnica Jovem Profissional), curso na área de Hardware e Software, com carga Horária de 50 horas, realizado no ano de 2015. Certificado de conclusão do curso de Microsoft Office, Microsoft Windows avançado, realizado pela Master Informática, em dezembro de 2014 com carga horária de 62 horas. Certificado de conclusão de curso de Excel Básico, com carga horário de 10 horas, realizado pelo Centro Universitário Leonardo da Vinci – UNIASSELVI.','Administrativa, Financeiro, Novos Negócios','https://drive.google.com/open?id=1EEuGl_ILsCmjo9QYLT6OP0708HdOC9Xi',NULL,'Instagram','Não fui indicado, mas tenho uma prima que trabalha na Young e fala muito bem da empresa, nome dela é Daiane Monticelli Pisoni.','De 2800 a 3700','Sim','Marcelo Pacheco dos Santos - +55 (51) 99510-5828
Alberto Medeiros - +55 (51) 9674-8339
Magdiel dos Santos Silva - +55 (51) 9732-9988','Quero inscrever-me no banco de talentos da Young!','Sou natural de Santo Antônio da Patrulha, criado em Caraá, nascido em 06 de abril de 2000, comecei minha carreira profissional já aos 16 anos, no atelier de calçados Iaronka conclui o ensino médio em 2017, no ano seguinte já ingressei na faculdade onde estou em formação, no oitavo semestre para ser mais específico, comecei a trabalhar na empresa Banco do Estado do Rio Grande do Sul no final de 2018, onde foi minha segunda experiência profissional. Ainda trabalhando no Banrisul, comecei a fazer um expediente na Vero Internet (Na época ainda chamada de INB Telecom) e ao final de 2020 encerrando meu estágio no Banrisul segui na empresa Vero Internet apenas. Em agosto de 2021 comecei uma experiencia no escritório de assessoria contábil Pacheco e Passos (Somar Assessoria Contábil e Eco Urbanística), onde segui até Janeiro de 2023 juntamente com meu cargo na Vero Internet, fazendo uma jornada de 3 turnos. Ainda trabalhando em período noturno na Vero Internet, iniciei uma experiência na Prefeitura Municipal de Caraá, no setor de compras, onde foi uma baita experiência para somar tanto pra minha vida profissional e também para minha vida pessoal, porém devido ao uma promoção na empresa Vero internet, onde passei a ser responsável por uma equipe como supervisor do time de centro de controle de operações, tive de abrir mão do meu cargo na prefeitura, ficando assim apenas na empresa Vero internet, onde estou até o momento. Me adapto bem a ambientes novos, sou centrado no atendimento ao cliente, na eficiência e na realização de objetivos e metas que são propostas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-08-01T03:00:00.000Z'::timestamptz),
  ('Luisa Cardoso Bandeira','luisacardosobandeira@gmail.com',NULL,'998900743','2003-09-08',22,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1eVrtL4OhIuUCZNF-1d8JEfcU6pUhpNwd','psicólogia','Ensino Superior Incompleto','faccat','2028-08-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Masal S/A, auxiliar administrativo, 03/2022 a 08/2022,  serviço no banco, armazenamento de documentos, arquivamento de boletos, relatórios, serviço no computador.',NULL,NULL,'Administrativa, Comercial, Estágio, Marketing','https://drive.google.com/open?id=1lR5F_yDRNQbZMEgaGsApAvsFdyrTj0rY','https://drive.google.com/open?id=1oBLyd7dn8dOLmidJKePfVBJx7h-iVN5W','Agência de Empregos','não','R$ 1000 e R$ 1400','Não',NULL,'Estágio Financeiro','Gostaria de pedir uma oportunidade de emprego, pois quero construir uma carreira de trabalho, onde eu possa ser responsável, eficiente e aprender a como trabalhar. Conheço a empresa e gosto do trabalho que faz, acredito que eu posso ser uma pessoa boa para o cargo, obrigada pela atenção, e talvez pela oportunidade!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-08-01T18:48:00.000Z'::timestamptz),
  ('Eduarda da Silva','duda258046@gmail.com',NULL,'51998203314','2000-11-22',25,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Zq6xuj-_KKjfhfS7dZlRMMuxey2cU7bT','Pedagogia','Ensino Superior Incompleto','Unifacvest','2023-11-25','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Escolas de educação infantil do município, Atendente de relojoaria, auxiliar de cozinha.',NULL,NULL,'Administrativa, Financeiro, Marketing',NULL,NULL,'Agência de Empregos','Não','1.700,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-08-01T22:44:00.000Z'::timestamptz),
  ('Kelim Rejane zanotto','kelim.zanotto@gmail.com',NULL,'51986860514','1980-02-12',46,'Solteiro(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1cCRTqm00ysg2dK-dFPvq-ZMuF-ac8fan',NULL,'Ensino Superior Incompleto',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Apl arrecadação de pedágio 3 meses','Estou cursando investigação forenses e perícia criminal',NULL,'Administrativa, Comercial, Financeiro, Marketing',NULL,NULL,'Agência de Empregos','Não','2000 a 2500','Não','Loja moda viva Alice 997227227 eu era gerente de compras.','Auxiliar administrativo','Fiz curso básico de  espanhol, faço academia e sou uma empreendedora autônoma de roupas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-08-02T01:07:00.000Z'::timestamptz),
  ('Kelim Rejane zanotto','kelim.zanotto@gmail.com',NULL,'51986860514','1980-02-12',46,'Solteiro(a)','1','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1KMsX_kMpEGBIjBwoTVBtKYrPAt4kKU2h',NULL,'Ensino Superior Incompleto',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Apl arrecadadora temporária 3 meses. E sou vendedora autônomo de roupas.',NULL,NULL,'Administrativa, Comercial, Marketing',NULL,NULL,'Agência de Empregos','Nao, participo do grupo de empregos do veredoror Gabriel Diedish','2000 a 2500','Não','Loja moda viva gerente de compras Alice 997227227','Assistente de vendas','Fiz curso básico de espanhol, faço academia e sou empreendedora autônoma vendo roupas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-08-02T01:30:00.000Z'::timestamptz),
  ('Roberta dos santos Rocha','robertasrch.brock@gmail.com',NULL,'51995553945','1997-11-14',28,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Geljy9uOF-cBtJXZLgyo8ycdlInOUtax',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Construtora Silva e Dias, assistente administrativo, início 27/02/2023',NULL,NULL,'Administrativa',NULL,NULL,'Instagram','Giulia Andriotte','R$2.000,00','Não',NULL,'Assistente',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-08-02T02:20:00.000Z'::timestamptz),
  ('Igor Maciel Niche','igormacini@hotmail.com',NULL,'55984654680','1996-01-13',30,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1XmrLiztVjY7qV4iCjLc6QyubZEypPY3V','Engenharia Civil','Ensino Superior Completo','Urcamp',NULL,'Sou formado','NP Empreendimento Imobiliários (09/2022 - 03/2023)
Engenheiro Civil
Gerenciamento de projetos de construção, incluindo supervisão de equipe e coordenação de dentro do canteiro de obras, negociação com fornecedores, análise e interpretação de projetos de engenharia e de arquitetura, responsável pela elaboração de orçamentos e planejamento de cronogramas de obras.


Macini Engenharia – Autônomo 
Engenheiro Civil
Projetos de incêndio, regularização de imóveis, projeto e execução de obras, laudos.

Urbano Construções e Incorporações LTDA (02/2019 - 04/2020)
Estágio
Analisar e acompanhar a execução de obras de acordo com os projetos; controle, medição e fiscalização de produção dos colaboradores da empresa e de terceirizados; analisar documentos; realizar a digitação em planilhas e laudos; auxiliar na elaboração de orçamentos. Rotina administrativa, contas a pagar, receber, fechamento de caixas, relatórios administração de obra usando o sienge.

Secretaria Municipal de Habitação e Assuntos Fundiários (09/2016 - 09/2018)
Estágio
Projetos de Assistência Técnica Gratuita, atendimento ao público, acompanhamento do tramite interno de documentos, cadastros em programas federais (MCMV, cartão reforma), Projetos de Proteção contra Incêndio.',NULL,NULL,'Administrativa, Licenciamentos, Engenharia',NULL,NULL,'Instagram','Não','3000','Sim',NULL,'Engenheiro Civil','Fluente em espanhol, atualmente estou prendendo a usar revit. Conhecimento em cad, sienge, pacote office','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-08-02T02:51:00.000Z'::timestamptz),
  ('Giovanna Silva da Silveira','giovannasilveira364@gmail.com',NULL,'51999004779','2003-05-24',22,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1sEgfCM6E2qWpGpDeECYGrar3tQ66DcmT','Administração de empresas','Ensino Superior Incompleto','Uniasselvi','2025-12-05','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Supermercado sabiá, auxiliar em administração e operadora de caixa (março de 2022 á maio de 2023)','Curso de informática, realizado na mundo Office e curso de auxiliar em administração na mundo Office também','..','Administrativa',NULL,NULL,'Facebook','Nao','Salário minimo','Sim','..','Quero inscrever-me no banco de talentos da Young!','Estou disponível para eventuais vagas e entrevistas','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-08-02T12:56:00.000Z'::timestamptz),
  ('Cecília Damascena da Silva Sena','ceciliadamascenass@gmail.com',NULL,'61996234244','2001-02-04',25,'União estável','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1SE8r5T2anY8ofDsVQXG-v8Dk8f_2kMmp','Administração e publicidade e propaganda','Ensino Superior Incompleto','Furg / estácio','2027-12-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Vero internet - operadora de telemarketing 18/04/2022 - contato direto com os clientes resolvendo dúvidas financeiras, auxiliando na rede wi-fi.','Curso administração na federal do Rio grande em santo Antônio da patrulha, sou apaixonada por moda, cores, aspirante a consultora de imagem, curso também publicidade e propaganda, e me arrisco em criar design para rede social, cartões de visita, visagismo, e persona empresarial, além de trabalhar em um projeto lindo inclusão da diversidade - mulher, história e ciências, atualmente sou bolsista desse projeto onde crio cartilhas, organizo reuniões, busco ajudar mulheres, mães, pessoas com deficiência, pessoas em vunerabilidade a encontrar uma forma de permanecer na faculdade e não desistir dos sonhos, muitas vezes encaminhando a assistência social, e prestando auxílio além dos curso universitário, na vida pessoa também, fiz uma breve passagem no curso de engenharia agroindustrial agroquímica também na federal do Rio grande, onde tive que trocar pela carga horária necessária para concluír o curso, sou apaixonada por pessoas, trabalho com inclusão, e amo ajudar quem precisa',NULL,'Administrativa, Comercial, Estágio, Marketing',NULL,NULL,'Instagram','Não','Salário mínimo','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-08-02T13:28:00.000Z'::timestamptz),
  ('Renata Rothen Prudente','renatarothenprudente@gmail.com',NULL,'51980237322','1987-01-19',39,'Casado(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1pk8Hzb6CDstR8ey31YuEWboAQ67i_EMp','Administração de empresas','Ensino Superior Incompleto','UNIASSELVI','2023-10-07','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Já trabalhei com vendas, trabalhei de gerente de farmácia por 9 anos, trabalhei como recepcionista, telefonista, na Comur em Novo Hamburgo, já trabalhei no RH da prefeitura de Novo Hamburgo,no momento faço estágio na prefeitura de Santo Antônio da Patrulha.','Tenho curso de técnico em transações imobiliárias também, tenho creci.','Sim, tenho vários cursos do sebrae pra vendas','Administrativa, Comercial, Estágio, Financeiro','https://drive.google.com/open?id=1nejzvher3h5EFSgqct1-auYsv7mvaPRY',NULL,'Indicação','Não','A combinar','Sim','5135949999, pedir pra falar com Claudia da Semad( administração)','Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-08-02T17:54:00.000Z'::timestamptz),
  ('Katlem Cristiane Fonseca Basso','katlembasso45@gmail.com',NULL,'51999306782','1997-07-01',28,'Casado(a)','3','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=13WZc7hq-ZOon5in7DyyJK1zL0XiaBoFz',NULL,'Ensino Médio Completo','Neejacp Rizoma Santo Antônio da Patrulha','2023-06-01','Não, no momento pausei/parei por um período.','Não tenho experiência.','Cursos:
Assistente Administrativo
Excel Básico 
Recepcionista 
Administração de Recursos Humanos.
Auxiliar Pedagógico
Planilhas Eletrônicas
Nivelamento da Nova Reforma Ortográfica',NULL,'Administrativa, Comercial, Novos Negócios, Engenharia','https://drive.google.com/open?id=1S3DSQ4Saz1tIzGlzslSf7AI9eiEsdSwf',NULL,'Agência de Empregos','Não','A Combinar','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa muito comunicativa,tem facilidade em lidar com pessoas. Sou atenciosa, prestativa e paciente. Estou a procura do meu primeiro emprego,sei que já tenho uma idade um pouco avançada para ser primeiro emprego,mas conclui esse ano muitos ciclos importantes,terminei meus estudos,tirei minha CNH cat A,que para mim são grandes realizações e para meu ano ficar mais que realizado somente me falta a oportunidade de emprego. Já fui em várias empresas,mas como sempre pedem experiência,e como não tenho acabo ficando mais uma vez sem a oportunidade de mostrar minha capacidade.
Gosto muito de lidar com pessoas,lido diariamente com jovens e crianças nos grupos da igreja e costumamos realizar destruição de roupas e alimentos para moradores de rua. Acredito que lidar com público é meu forte. E como sempre não só de qualidades que vivemos, acredito que meu maior defeito seja ser muito ansioso e falar um pouquinho demais. Obrigada pela atenção.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-08-02T18:11:00.000Z'::timestamptz),
  ('Guilherme Ferri de Oliveira','guilherme.gaveta@hotmail.com',NULL,'51998666547','1992-11-12',33,'Casado(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=14KxWV9-y14LoBUH0i5t7hjZJN9i7Vaej',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Minhas experiências profissionais são voltadas para atuação em indústrias ou com atendimento ao público, percorri por diversos setores: produção, administrativo, atendente, qualidade, logística, estoque, frotas. Desenvolvendo habilidades e me adaptando aos mais diversos desafios e dificuldades, com dedicação e procurando desempenhar as atividades na mais alta excelência.


Sempre me dei bem com as equipes as quais trabalhei, procuro tratar as pessoas de forma respeitosa. Vejo que pude também  desenvolver habilidades de organização com os trabalhos em logística e estoques, bem como, visão analítica, com um olhar sempre atento ao bom atendimento e a satisfação de clientes, tanto externos, quanto internos.',NULL,NULL,'Administrativa, Comercial, Marketing, Novos Negócios',NULL,NULL,'Instagram','Não','R$2.500,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-08-02T21:10:00.000Z'::timestamptz),
  ('Bruna Maier dos Santos','maierbruna@outlook.com',NULL,'51999073842','1999-11-02',26,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1--7PeB5NUGY7MPGTUBkWx5H4S_iy9Qcl','Serviços juridicos','Ensino Superior Completo','Unigran','2021-12-17','Sou formado','1) Super mercado Gomes; 
2) Operadora de caixa/fiscal de caixa/ balconista padaria e produção;
3) 06/11/2018 á 15/07/2022;

1) Lojas Por menos;
2) Operadora de caixa/repositora/vendedora/layout de exposição dos produtos/ cobrança / metas;
3) 10/09/2022 - atualmente.','Informatica basico, design gráfico e web desing, montagem e manutenção de micro, administração.',NULL,'Comercial',NULL,NULL,'Facebook','Não fui.','R$2.000,00 á R$2.500,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou bastante organizada, gosto de aprender coisas novas, inclusive tenho ingles intermediário e tenho habilidades com desenho e pintura. Gosto se viajar, ja conheci varios lugares aqui do Rio grande do sul.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-08-03T13:23:00.000Z'::timestamptz),
  ('Thais rafaela abreu de souza','thaissouzaa241199@gmail.com',NULL,'51997752265','1999-11-24',26,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1ZUKDlk-xcMqZp6kDZ3j4dK6fkxBBDw0Y',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Experiências Profissionais:
° 03/2017 – 10/2018 – Via Unio – RR Shoes Com e Fabrica calçados
- Preparador de calçados
° 04/2019 – 03/2021 – Gemeascel Ltda
- Atendimento ao público / Vendas Balcão
° 11/2021 – 03/2022 – J. Equipamentos e Montagens LTDA
- Almoxarifado – relatórios, conferencia e controle geral de almoxarifado.
° 03/2022 – 09/2022 – J. Equipamentos e Montagens LTDA
- Auxiliar de Escritório – Conferência e relatórios de notas de entrada, emissão de notas fiscais  de saída,auxiliar de compras e suprimentos.
° 10/2022 – 01/2023 – Macrobala Distrubuidora de Alimenticios LTDA
- Repositor de Mercadorias',NULL,NULL,'Administrativa','https://drive.google.com/open?id=1ava-RA2VzO50XSUTrvZjuePkMkVtXT_2',NULL,'Facebook','Não, por ninguém','1.800,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Eu sou uma pessoa bem comunicativa, aprendo rápido, sempre na dúvida pergunto não faço sem saber o correto, entre outras coisas que to sempre disposta a aprende o novo.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-08-04T15:05:00.000Z'::timestamptz),
  ('Mariana Janaína Dias da Cunha','eumarianacunha@gmail.com',NULL,'51997508593','2001-02-02',25,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=18yz5VWkbVBJ5CMPyAOTH7-_wIEL16Rt7','Administração de empresas','Ensino Superior Incompleto','Universidade Federal do Rio Grande','2025-09-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Via Uno, Analista de Sistema de Gestão Integrado (Qualidade e Auditorias) de Janeiro de 2020 a Março de 2023 
Gestão de Indicadores, Gerenciamento e Implementação de Projetos, Gestão de Planos de Ações, Gestão de Auditorias de Responsabilidade Social e Negociação com Clientes','Inteligência Emocional, Prime Cursos 
Coach, Prime Cursos 
Responsabilidade Social Empresarial, Sebrae 
Gestão de Pessoas, Sebrae 
Formação de Auditor interno ISO 45001:2018 Saúde e Segurança, Undemy
Corporate ESG and Sustainability - 101 Level Masterclass, Undemy
ESG: Um novo Jeito de Investir, B3 Educação','White e Yellow Belt em Lean Six Sigma, Auditora de Sistema de Gestão Intgrado','Administrativa, Comercial, Marketing, Novos Negócios','https://drive.google.com/open?id=1zc-bC9TEuRZNcldMMCYqGrSR9R2BZ-7u','https://drive.google.com/open?id=17Rl9UbVX6ZVsxaTu6lsUr0cbAn-b7qhC','Instagram','Não','A combinar','Sim','Fabiani Adam - Coordenadora de RH contato: (51)991890951
Simone Manica - Coordenadora de RH contato: (51)991353389','Quero inscrever-me no banco de talentos da Young!','Sou comunicativa, gosto de novos desafios, gosto de praticar esportes, de ler e de estudar. 
Atualmente busco uma oportunidade que contribua para o meu desenvolvimento pessoal e profissional.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-08-06T22:33:00.000Z'::timestamptz),
  ('Arthur Ferreira da Costa Nunes','arthur-nunes01@hotmail.com',NULL,'55999519641','1990-07-12',35,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1Xtd3wu13rT1lK4mndB4RzODW2kBrA2KW','Direito','Pós-graduação Completa','Universidade da Região da Campanha','2016-08-25','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Atualmente trabalho como corretor de imóveis autônomo sob nº 72009 F, auxiliando 2 imobiliárias em suas vendas.','Especialista em Direito imobiliário e pós graduando em direito civil: negócios, obrigações e contratos.','Técnico em Transações imobiliárias','Comercial','https://drive.google.com/open?id=1Dmgbui4rFECsPQvlvceCxdNKlwPD6YOo','https://drive.google.com/open?id=1La0IqYzNEl41prCqdOPOilyoWbX48NCQ','Instagram','Não','1.500,00 à 2.500,00','Sim','Imobiliária São Jerônimo (Alegrete) nº 3422-1450 e Refazenda Negócios Rurais nº 99952-6812','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-08-07T20:27:00.000Z'::timestamptz),
  ('Rafaela Olivar Torres','rafa.olivar@hotmail.com',NULL,'55996581201','1996-02-03',30,'União estável','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1x0Aoxej2XMexJSyaCJoP4AaeJsvor-Ya','Administração de empresas','Ensino Superior Incompleto','Estácio','2025-03-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','10a CRS - Secretaria de Saúde do RS
Estagiária do Setor Administrativo 
Início 18/02/2022 - Atual
Função: Auxiliar na identificação dos procedimentos realizados na unidade concedente de estágio; acompanhar pagamentos; auxiliar nas atividades administrativas; auxiliar nas demais atividades ligadas à RH e administração de pessoal.',NULL,NULL,'Administrativa, Comercial, Estágio, Financeiro','https://drive.google.com/open?id=14CG55ziCW4SY19TzTkfLoF_xByg7FAyq',NULL,'Instagram','Não','De acordo com a categoria.','Sim','10a CRS 
(55) 3422-4801','Quero inscrever-me no banco de talentos da Young!','Me inscrevo para o Banco de Talentos da Young Empreendimentos com o intuito de acrescentar na empresa. Responsabilidade e dedicação sempre se fizeram presente na minha rotina de trabalho e hoje procuro um lugar onde tenha perspectiva de crescimento e possibilidade de trilhar uma carreira de sucesso.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-08-08T21:50:00.000Z'::timestamptz),
  ('Kaline dos santos silva','kassantos498@gmail.com',NULL,'51994079544','1999-05-31',26,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1xTjJmJ8mqaLX0UXY_UAHYg_isi_0oxd7','Administração','Ensino Superior Incompleto','Estacio','2026-08-10','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Trabalhei no ministério público de Porto Alegre','Formada em marketing',NULL,'Administrativa, Estágio',NULL,NULL,'Google','Nao','1.200','Não',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-08-10T16:59:00.000Z'::timestamptz),
  ('Milena Gomes Vidal','milenagomes21061998@gmail.com',NULL,'51980413297','1998-06-21',27,'Solteiro(a)','2','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Xc159Uu8lGpksLvivWyG3O2PxjtkP4Ic',NULL,'Ensino Médio Completo','Unipacs','2018-04-11','Sou formado','Com vendas somente',NULL,'Formada em técnico de enfermagem','Administrativa, Financeiro, Marketing, Engenharia','https://drive.google.com/open?id=1vXCopoBa1tinzCuI2EjPH4EyZakGAeQV',NULL,'Instagram','Não','2500','Não','Lojas Pompéia vendedora, secretaria na secretaria de saúde','Quero inscrever-me no banco de talentos da Young!','Quero muito conseguir essa vaga, pra seguir no ramo administrativo ou engenharia','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-08-16T14:22:00.000Z'::timestamptz),
  ('Maria Antônia Conceição Rocha','maricrocha2307@gmail.com',NULL,'51995857876','1999-10-31',26,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1vbUMosxhmu0d2PvUh3eaO7zqgrBDOPDK','Direito','Ensino Superior Incompleto','Universidade do Vale do Rio dos Sinos - UNISINOS','2024-03-08','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Prefeitura Municipal de Santo Antônio da Patrulha
Cargo: Estagiária
Dezembro/2016 – Novembro/2018 – 
Principais atividades: atendimento ao público, peticionar em processos de cunho mais simples, arquivamento e alimentação do sistema, auxilio dos advogados.
 
Poder Judiciário - Gabinete da 2ª Vara Judicial da Comarca de Santo Antônio da Patrulha
Cargo: Estagiária
Novembro/2018 – Novembro/2020
Principais atividades: confecção de despachos e sentenças, movimentação cartorária e demais atividades de auxilio ao juiz.

MPRS - Gabinete da 1ª Promotoria de Justiça do Ministerério Público da Comarca de Santo Antônio da Patrulha
Cargo: Estagiária
Dezembro/2020 – Novembro/2022
Principais atividades: confecção de petições de meio, iniciais, memoriais, recursos e demais peças; recebimento e organização processual; confecção de demais documentos e acompanhamento de procedimentos administrativos.',NULL,NULL,'Administrativa, Comercial, Estágio',NULL,NULL,'Indicação','Luiza Tebaldi','R$2.500,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-08-24T13:42:00.000Z'::timestamptz),
  ('Lohrana Quadros de Oliveira','lohranaoliveira2015@gmail.com',NULL,'51980273739','1999-05-18',26,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1EPlpi6UsX1Zdd9FKGqyTdbqk9wIfnwDj','Tecnologia em Gestão de Recursos Humanos','Ensino Superior Incompleto','Uninter','2024-06-10','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Recepcionista de Consultório Médico e Odontológico- Clínica Luz
Início março 2022- atualmente
Principais atividades: Recepcionar os pacientes, realizar o registro de entrada dos pacientes pelo Excel. Realizar o atendimento via whatsapp, Instagram, Facebook, email e ligações. Realizar a organização das fichas dos pacientes. Organizar a documentação e as contas da Clínica.
Neste período que trabalho na Clínica Luz recebo feedback de pacientes em relação a forma como eles são tratados, como eles se sentem acolhidos e tem suas dúvidas sanadas. Também expandimos nossas redes sociais em prol de trazer mais informações sobre os atendimentos prestados e dar mais praticidade para o nosso cliente na hora de agendar seu horário.

Vendedor - Cacau show
Início junho 2021- dezembro 2021
Principais atividades: Realizar o levantamento de mercadorias, analisar notas fiscais, organizar mercadorias . Realizar atendimentos em loja e via canais de comunicação.
Neste período que trabalhei na loja Cacau show tive experiência em trabalhar com o público, trabalhar com metas de venda.

Aplicador de Cola Adesiva - Picadilly Calçados
Início janeiro 2018- abril 2020
Principais atividades: Aplicador de cola adesiva e serviços gerais.
Na Picadilly Calçados foi meu primeiro emprego formal onde eu tive a oportunidade de conhecer muitas pessoas, trabalhar em equipe, conhecer inúmeras pessoas com personalidade diferentes e aprender a lidar com elas.','Curso de Rotinas Administrativas - 100 horas cursadas - 2020-2021 - Faculdade Jovem Profissional',NULL,'Administrativa, Comercial, Financeiro','https://drive.google.com/open?id=16BRMTZ0q-2281kpoXT2MunKD0JTKQQLf',NULL,'Instagram','Não','1800','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Olá, estou em busca de uma nova vaga no mercado de trabalho, gostaria de um oportunidade. Gosto de estar sempre aprendendo coisas novas, sou muito responsável, gosto de pessoas, vocês não vão se arrepender se me contratar.
Para mim vai ser bom trabalhar perto da minha casa, pois compramos um lote na Ilha dos Açores e construiremos lá a nossa futura casa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-08-24T18:25:00.000Z'::timestamptz),
  ('Maria Luisa de Carvalho Freitas','maria.luisaphreitas@gmail.com',NULL,'51996692086','1982-11-03',43,'União estável','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1R6CLlUj6YaQOmdbx6_FqGLWuOhoOUksW','Administração de empresas','Ensino Superior Incompleto','FADERGS','1982-11-03','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','2019-2021 Delegacia de Policia Civil de Santo Antônio da Patrulha.Rua Marechal Floriano Peixoto; 297-Cidade Alta- Santo Antônio da Patrulha/RS Cargo: Secretara Administrativa..
2017-2019 Banco do Estado do Rio Grande do Sul. Rua Santo Antônio; 15- Centro- Santo Antônio da Patrulha/RS Cargo: Escriturario Junior.
2012-2013-Empreza Trabalho Temporário LTDA. Rua 135;187 qd 74LT 50-Setor Marista-Goiânia/GO Cargo: Assistente de Processos.
2011-2012-PAC Administração de Credito. Sete de Setembro.1096-Centro-Porto Alegre/Rs Cargo: Recuperadora de Credito.
2011-2011- Hoepers Recuperadora de Credito. Rua onze de agosto.66-São João-Porto Alegre/RS Cargo; Recuperadora de Credito.
2009-2010 - TNL Contax. Travessa São José; 455 - Navegantes – Porto Alegre/ RS Cargo: Atendente de Telemarketing Receptivo.',NULL,NULL,'Administrativa, Comercial, Financeiro','https://drive.google.com/open?id=1qWHjWzbmLKOG6lBaJzxB4M1-NQqKVWRK',NULL,'Facebook','Não','2.000,00','Sim','Valdernei Tonete; Delegado da Polícia Civil de SAP: Fone 5136621166.','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-08-29T14:55:00.000Z'::timestamptz),
  ('Vitoria Petro Ramos','vitoriapetro0@gmail.com',NULL,'51995146387','2001-07-19',24,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1btyD5pq2_7FP1EtGUZtWLM603A0SaS_W','Administração de empresas','Ensino Superior Incompleto','Uniasselvi',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','MUNDI A PRIMAVERA                                                               Período: 08/2022  A 08/2023

OPERADORA DE CAIXA
Contas à receber;
Realização de cobrança de clientes inadimplentes;
Realização de atendimento à clientes;
Emissão de nota fiscal;
Lançamento de nota de devolução dos pedidos; 


LOJAS POMPÉIA                                                                          Período: 12/2019 A 08/2022

AUXILIAR DE LOJA
Abertura e fechamento de loja;
Contas a pagar e receber;
Auxiliar de escritório;
Controle Almoxarifado;
Lançamento de nota fiscal; 
Gerenciamento de e-mails;
Realização de atendimento a clientes;
Controle de estoque;
Fechamento cofre;


FARMÁCIA SANTO ANTÔNIO                                                       Período: 03/2019 A 10/2019

ATENDIMENTO AO PÚBLICO
Compra de medicamentos e organização dos mesmos;
Abertura e fechamento da farmácia; 
Contas à pagar e receber;','Informática básica',NULL,'Administrativa, Comercial',NULL,'https://drive.google.com/open?id=1uRYLQ5MLXZb5AJUhQfRw30nA70NOyb_l','Instagram','Flávia','0','Sim','Farmácia Santo Antônio: Igor 36623694','Quero inscrever-me no banco de talentos da Young!','Desejo fazer parte do time da empresa, oferecendo o melhor. Sou muito dedicada e comprometida com as atribuições que são dadas a mim.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-09-01T18:02:00.000Z'::timestamptz),
  ('Gabriel Gustavo Mato Blanco','gabom85@gmail.com',NULL,'54996912211','1985-11-05',40,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=12AwPRnORHFUtjM93qa0LyE12zLtwJAOh','Engenharia Civil','Ensino Superior Completo','URCAMP livramento','2008-12-26','Sou formado','Arcari; engenheiro residente; 2010 a 2012; acompanhamento de obra e gestão de qualidade.
Engeporto; engenheiro sênior; 2012 a 2014; acompanhamento de obra e modificação de projetos.
Marchet/M91; engenheiro sênior; 2015 a 2018; coordenador de obra.
Urbano; engenheiro sênior; 2019 - atual; coordenador de obras.',NULL,NULL,'Engenharia',NULL,NULL,'Instagram','Não foi indicado','7000','Não',NULL,'Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-09-04T19:29:00.000Z'::timestamptz),
  ('Pablo Fernando Farias','ff7071639@gmail.com',NULL,'51998196016','2004-11-16',21,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1xkyE79McMCaPQfEOLjp_Tfgure1bgLrt','Infraestrutura em ti','Ensino Médio Completo','Unicesumar','2024-10-23','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Expedição e logística na empresa RR SHOES 09/2021 até 05/2023 e fiz estágio na Netcomet 03/2019 até 11/2019','Tenho muita história em tecnologia como mini concursos,cursos de curto tempo e estou cursando agora buscando mais conhecimento nessa área',NULL,'Estágio, Marketing',NULL,NULL,'Facebook','Não','2,5','Sim',NULL,'Estágio Financeiro','Estou me abrindo para mais conhecimentos em novas áreas agora quero entender como funciona tudo na prática pois teoricamente acho que estou pronto pra explorar novos horizontes.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-09-05T11:43:00.000Z'::timestamptz),
  ('Diego Ribeiro Belleza','engdiegobelleza@gmail.com',NULL,'55981424079','1996-06-07',29,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1Gjd7Qv1mBOIL2AUuF8ztz72V6h1vJfWB','Engenharia Civil','Pós-graduação Incompleta','Universidade Federal do Pampa','2023-02-11','Sou formado','1 - Urbano Construção e incorporação LTDA - Sant''Ana do Livramento-RS (estagiário de engenharia) - 07/2021 - 04/2022
Gestão de obra, controle no serviço de qualidade dos empreiteiros, apoio ao setor administrativo. 
1 - Prefeitura Municipal de Alegrete - Alegrete RS - Segurança pública, mobilidade e cidadania (Estagiário de engenharia) - 05/2022 - 11/2022
Atuação na mobilidade urbana da cidade de Alegrete-RS na parte de projetos para melhor viabilização do trânsito. Como implementação de rotatórias e mudanças de sentidos nas ruas e avenidas.
1 - Urbano Construção e incorporação LTDA - Sant''Ana do Livramento-RS (Engenheiro Civil) -  01/2023 - Presente
Gestão de obra, controle no serviço de qualidade dos empreiteiros, apoio ao setor administrativo, controle de estoques e compras, cronogramas. Atuação no canteiro.','Atualmente cursando pós graduação pela Anhanguera em Engenharia de Avaliações e Perícias. Atuo desde os estágios e formação no canteiro de obra, no controle do serviço de qualidade executado e na gestão.',NULL,'Engenharia','https://drive.google.com/open?id=1TRK9p90wQsNf_mVB5udhsO8EU4kcBNY4',NULL,'Indicação','Não','R$ 3.500 - R$ 4.000','Sim',NULL,'Engenheiro Civil','Habilidades com o software TQS, Revit e AutoCAD.
Inglês básico / Espanhol intermediário.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-09-14T17:01:00.000Z'::timestamptz),
  ('João Pedro Flores Portal','jackportal92@gmail.com',NULL,'51996455748','1992-12-22',33,'Solteiro(a)','2','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Pk3T5WsWdt920hR1Pa5SjgtnXQtMPogs',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','BENOIT ELETRODOMÉSTICOS LTDA
Vendedor comissionado
20/11/2013- Atual emprego',NULL,NULL,'Novos Negócios',NULL,NULL,'Instagram','Nao','$5.000.00+','Não','Nilson Nyland - Supervisor Regional
51994081347','Vendas/ corretor',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-09-19T17:20:00.000Z'::timestamptz),
  ('Cassiano Meneghetti Soares','cassianomeneghetti2@gmail.com',NULL,'51998902092','2001-11-08',24,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1zvIeHBmasBjWrekljtknB_Rt32W_KuwQ','Cursando análise e desenvolvimento de sistemas','Ensino Superior Incompleto','Uniasselvi','2025-08-13','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Vero internet - Suporte ao cliente - atendimento ao callcenter

RR Shoes - Suporte ao usuário - atendimento ao usuário, formatação de computador/ manutenção/ auxílio ao sistema e etc..','Excel 20 horas
Python 40 horas 
Segurança da informação 20 horas
MySQL 40 horas
HTML E CSS 80 horas',NULL,'Administrativa','https://drive.google.com/open?id=1CRWmnBDLAGEFgIZFsG-gahyUbNvcCdRF',NULL,'Indicação','Não','2300 ( mas aceito outras propostas sou flexível)','Não','Ademir ( gerente da TI da RRshoes) - 5180427049','Quero inscrever-me no banco de talentos da Young!','Eu sou extremamente competente, comunicativo, criativo organizado e responsável. Tenho facilidade em aprendizagem, trabalho bem em grupo, possuo domínio em informática, MySQL, Python, HTML, CSS e montagem de computadores, eu adoraria ter uma oportunidade para mostrar o meu desempenho.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-09-21T15:00:00.000Z'::timestamptz),
  ('Emanuel Luis Trindade Souza','emanueltrindade543@gmail.com',NULL,'55984634183','2000-07-06',25,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1KZpXH8hgR5pUmjFL6-9OTnaLu81JDxoY','Ciências Econômicas','Ensino Superior Incompleto','Universidade Federal do Pampa','2026-07-11','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Star Solution-Autorizada da Claro (NET)/ Função:Consultor de Vendas Externas 
Data de início:04/08/2021','Ax.admistrativo, Informática básico','Ax.admistrativo e Informática','Administrativa, Comercial','https://drive.google.com/open?id=1KywHZ8vjAVOVkaHaqCtVgpQBTp06nray',NULL,'Instagram','Não','R$1.660,00','Sim',NULL,'Comercial','Ler','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-09-22T20:35:00.000Z'::timestamptz),
  ('Mariana Arboite Azambuja','mariarboitee@gmail.com',NULL,'51996893583','1999-07-15',26,'Solteiro(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1ig9F3Z3nuowZqquMOxJAvij-PmRwHv-Q',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Inicialmente trabalhei na loja Bazar Cinderela no município de Osório - RS, de Janeiro de 2016 a Janeiro de 2021. 
Do ano de 2017 até 2020 entrei no período de maternidade, posteriormente, veio a pandemia, então como tinha suporte familiar me dediquei aos cuidados de minha filha. 
No início de 2021 trabalhei informalmente na Loja Blake Store como vendedora, após, tive minha carteira assinada em Novembro de 2021 onde efetuei meus serviços até Junho de 2022.
Neste mesmo mês, Junho de 2021, recebi a oportunidade de emprego na empresa VERO Internet como Operador de Telemarketing, a qual atuo até o período atual.
Estou me candidatando a essa vaga de emprego pois tenho como objetivo crescer pessoalmente e profissionalmente, também, me profissionalizar na área mediamente a minha adaptação. 
Sou prestativa, pró ativa, tenho facilidade em aprender novas tarefas, sei lidar bem com pessoas e estou disposta a me dedicar e entregar o meu melhor se essa oportunidade for concedida.',NULL,NULL,'Administrativa, Comercial, Financeiro, Engenharia','https://drive.google.com/open?id=1Swl6YVh2V2X0Hbqb_663ASzI0A0xBC-Z',NULL,'Indicação','Sim, Flávia Braun','2.000','Sim','Kaian - 995028787','Quero inscrever-me no banco de talentos da Young!','Nasci no município de Osório-Rs, no ano 2018 vim morar em Santo Antônio Da Patrulha onde resido atualmente. 
Comecei a morar sozinha aos meus 20 anos, por isso desde nova aprendi e tenho noção das minhas responsabilidades, busco sempre ser organizada nos meus afazeres e desempenhar bem meu trabalho.
Sou extrovertida e tenho facilidade em novos relacionamentos, de coleguismo, profissionais, e me adapto bem a novos ambientes.
Sou criativa e gosto de desafios que podem me fazer evoluir, por isso, criei um e-commerce de fotos personalizadas no ano de 2020, onde especificamente faço fotos polaroid personalizadas e interativas conforme as exigências dos clientes (fui adptando ao longo do tempo), já que, ficava apenas aos cuidados de minha filha e não queria ficar parada profissionalmente.
Até hoje tenho a loja on-line, onde carrego mais como um hobbie, já que, tenho clientes que fui adquirindo durante todo esse tempo de atuação.
Passei por um longo processo de aprendizado e evolução nos últimos anos da minha vida, por isso, estou me candidatando a essa nova fase, pois, além do Feedback positivo que obtive em relação à empresa, tenho extrema vontade de crescer profissionalmente e trazer melhores resultados se me for concedida esta oportunidade.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-09-24T23:13:00.000Z'::timestamptz),
  ('ADRIANO BANDEIRA ROSCH','adrianobr@gmail.com',NULL,'55991518549','1980-10-25',45,'Divorciado(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1pdFXZqrsp-EaSRX_kH4cKAHcSjuckQiu',NULL,'Ensino Superior Incompleto','UNINTER',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','PALAPHYTA ENGENHARIA - 2009 - 2013 - TRABALHEI ALMOXARIFADO,ATENDIMENTO ESCRITORIO.
F.T CONSTRUÇOES - 2013 - 2014 .TRABALHEI EM ESCRITORIO E CONTROLE DE QUALIDADE DE OBRAS.
PREFEITURA MUNICIPAL DE SANTANA DO LIVRAMENTO - SEC.PLANEJAMENTO - CONTROLE QUALIDADE DE MANUTENÇÃO.
2021- PREFEITURA MUNICIPAL DE SANTANA DO LIVRAMENTO - 2021 - SEC. EDUCAÇÃO- CHEFE DE EQUIPE DE MANUTENÇÃO DAS ESCOLAS DO MUNICIPIO.
DALLE CONSTRÇÕES - MARÇO DE 2023 A MAIO 2023 - ESTAGIO ATUANDO NO ESCRITORIO, ALMOXARIFADO,CONTROLE E IDENTIFICAÇÃO DE CONCRETAGEM.
PREFEITURA MUNICIPAL DE SANTANA DO LIVRAMENTO - AGOSTO DE 2023 . ESTAGIO NA SEC. DE OBRAS, ATUANDO NO ESCRITORIO, ESTRADAS MUNICIPAIS E RURAIS.
AUTONOMO -2013 ATE HJ TRABALHO FAZENDO PROJETOS EM CAD E PROJETOS EM 3D.',NULL,'SIM - CURSO DE AUTO CAD','Engenharia',NULL,'https://drive.google.com/open?id=1ccBFtP1Wz4sThsu4R6jRr45vi0sTM7Qb','Facebook','ATENDENTE FLAVIA','A COMBINAR','Sim',NULL,'AUXILIAR DE ENGENHARIA','SIM, JA FIZ TRABALHO VOLUNTARIO PARA IGREJA SANTA RITA DE CASSIA, AQUI EM LIVRAMENTO,NO PERIODO DE INVERNO ESTUDEI MUITO E TAMBEM A PROCURA DE EMPREGO.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-09-25T21:02:00.000Z'::timestamptz),
  ('Jéssica Conceição Andrade','jessicaandrade.c@hotmail.com',NULL,'51996397887','2002-04-07',23,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Ftk1BG-_dR2RVO_1o0Hm-vkxttQb-qIm','Administração de empresas','Ensino Médio Completo','ULBRA','2026-02-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','AGS Hidráulicos - ( 26/02/201 a 30/09/2023 )
Cargo: compradora I
• Solicitar pedido de cotações;
• Emissão de pedidos de compra;
• Acompanhar e cobrar fornecedores sobre a entrega de materiais não recebidos;
• Auxiliar o departamento nas diversas áreas do setor

AGS Hidráulicos - ( 26/08/2020 a 25/02/2021 )
Cargo: Estágio
• Auxiliar na recepção de Clientes;
• Auxiliar e acompanhar as rotinas administrativas do setor de Gestão de Pessoas','Excel intermediário;
Pacote Office;
Inglês básico (estudei 2 anos e pretendo retomar ano que vem)',NULL,'Administrativa, Estágio, Financeiro','https://drive.google.com/open?id=1MCMlYg1OaFqb5uieTXfgqJ0jAuBhfzd0',NULL,'Instagram','Não','1.300,00','Sim','Claudiomiro - (51) 999148605','Estágio Financeiro','Tenho experiência no sistema Protheus no ambiente de compras;
Já cursei Inglês por 2 anos e pretendo retomar o curso no ano que vem;
Tenho interesse em aprofundar meu conhecimento no setor financeiro mas estou aberta a conhecer possíveis novas áreas','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-10-13T14:44:00.000Z'::timestamptz),
  ('Milena Steimmetz Costa','milenasteimmetz@hotmail.com',NULL,'51.998.137.555','1987-03-17',38,'Solteiro(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1heNuMb3XXh7ueHphGluz9pvmkgJQbIOJ','Administração de empresas','Pós-graduação Completa','2010/ ULBRA – Universidade Luterana do Brasil, Gravataí – RS','2010-06-30','Sou formado','2020 - Atualmente – Masal S/A

Assistente financeiro – Retorno e conciliação bancária, divergências do contas a receber, conferência dos extratos bancários, pagamento de contas, agendamento bancários, depósitos, transferências, pagamento de folha de pagamento, férias, rescisões, impostos. Conferência dos saldos bancários. Envio de remessa dos boletos para o banco. Negociação de pagamentos com os fornecedores. Lançamento de pagamentos e adiantamentos no sistema. Abertura de contas bancárias. Contato direto com os bancos para resolver pendências e geração de relatórios conforme necessidade. Monitoramento e acompanhamento de cobranças de clientes.

§ 2018 - 2020 – INB Telecom

Analista financeiro – Retorno e conciliação bancária, divergências do contas a receber, conferência dos extratos bancários, pagamento de contas, agendamento bancários, depósitos, transferências, pagamento de folha de pagamento, férias, rescisões, impostos. Conferência dos saldos bancários. Conferência e conciliação dos caixas das

lojas. Responsável pela conferência e depósitos do dinheiro do cofre. Envio de remessa dos boletos para o banco, inserção de débito em conta. Negociação de pagamentos com os fornecedores. Lançamento de pagamentos no sistema. Abertura de contas bancárias. Contato direto com os bancos para resolver pendências e geração de relatórios conforme necessidade. Monitoramento e acompanhamento de contratos de aluguéis, POP’s, e de serviços.

§ 2013 – 2018 – Masal S/A

Atuação na área de compras indiretas, diretas e serviços; Acompanhamento das solicitações de compras via sistema e análise da viabilidade de aquisição in loco. Cotação e negociação de preços, condições de pagamento e prazo de entrega; Monitoramento das entregas dos materiais, definindo a logística visando o melhor custo/benefício; Acompanhamento de reajustes de preços. Programação de compras conforme lead time dos fabricantes. Prospectar, avaliar e desenvolver fornecedores novos e correntes buscando parcerias; Realizar atividades de cadastro de fornecedores e tabelas de preços. Negociar e revisar contratos.

§ 2011 – 2013 – Argos Guindastes Indústria e Comércio S/A

Controle de entrada de pedidos, liberação de pedidos para produção, cadastro de clientes e pedidos, controle de comissões e montagens, liberação para o faturamento e embarque, acompanhamento da entrega, cadastro de BIN, licitações, atendimento a clientes e representantes, relatórios, dentre outras atividades pertinentes ao setor. Gerenciamento do material de marketing, desenvolvendo em parceria com agência de publicidade os materiais de divulgação, catálogos e brindes. Atualização do site; Participação de feiras, preparando a instalação, material de trabalho e divulgação. Organização de convenções, definindo local, hospedagem e transporte dos participantes, definição de palestrantes e organização geral para o bom desenvolvimento do evento.

§ 2008/ 2010 –OAB – Ordem dos Advogados do Brasil, Santo Antônio da Patrulha – RS

Efetivo - Responsável pelo setor de atendimento ao público e advogados, prestação de serviços e atividades administrativas, como: controle do caixa e contas a pagar e a receber, controle conta corrente, emitir ofícios e correspondências, arquivamento de documentos, organização de eventos.','2016/ UNINTER - MBA em Engenharia de Produção','2004/ Curso de Informática – Kaiser Informática, Windows, Word, Excel, Power Point, Outlook e Internet – 48hs.  § 2008/ Visita técnica no Porto de Rio Grande – Porto Velho e Tecon.  § 2009/ Curso Empreendedorismo individual – SEBRAE/3hs  § 2010/ Curso D-olho na qualidade – SEBRAE/16hs  § 2010/ Curso de métodos de leitura em inglês – UFPEL – 10 hs  § 2012/ Noções Básicas em Comércio Exterior – CENPEC – 8hs  § 2013/ Curso básico de Inglês – Nível I – Mundo Office  § 2013/ Curso de NF-e – Escola Unialcance  § 2013/ Curso Auxiliar de Escrita Fiscal - Escola Unialcance  § 2014/ Sei Compras – SEBRAE/5hrs § 2014/ MEG na avaliação da gestão de negócios – SEBRAE/12hrs  § 2019 – Curso Inglês inicial CB1 e CB2 – ENGLISH PLACE.  § 2022 – Curso de Analista financeiro – Pensar Cursos – 60hrs  § 2023 – Curso de Fontes de Financiamento e Capital de Risco – Pensar Cursos – 20hrs  § 2023 – Curso de Financiamentos – Pensar Cursos – 20hrs  § 2023 – Curso de Aspectos Jurídicos do Financiamento Empresarial – Pensar Cursos – 60hrs  § 2023 - Minicurso Auxiliar de Crédito e Cobrança - Pensar Cursos – 10hrs','Administrativa, Financeiro, Licenciamentos',NULL,'https://drive.google.com/open?id=14Pzmvz2HS29kak06fEQjLuEZh98pnve8','Agência de Empregos','Não','Prefiro saber o que a empresa tem a oferecer','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-10-16T16:38:00.000Z'::timestamptz),
  ('Vanderson Nunes Bueno','vandersonnb@gmail.com',NULL,'55996155934','2000-10-15',25,'Casado(a)','2','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=18iZV3UFLlojo_yBAJiUZhRIq6aVGS7yQ',NULL,'Ensino Superior Incompleto',NULL,NULL,'Sou formado','Atualmente  presto consultorias de marketing para empresas e empreendedores e trabalho na parte estratégica de Marketing com um pezinho, na produção. 

Já fiz muitos projetos, mas o que acho interessante compartilhar como case de sucesso é Samsul imóveis onde consegui implementar a parte de gestão e produção completa. Nela atuo em duas frentes: 

- Estratégico 
- Operacional 

Um exército de um homem só. Vou descrever algumas das funções que já fiz e ainda faço dentro dessas divisões que mencionei acima.


 Estratégico:

                               Quando cheguei na empresa ela não tinha tanta presença digital, então os primeiros passos foram fazer um briefing para entender as dores depois um diagnóstico da comunicação atual apontando os erros de posicionamento, após a finalização dessa etapa parti para elaboração de um planejamento contendo objetivos, metas, indicadores de sucesso, associações de marca, tom de voz, SEO e muito mais. 

Com o planejamento completo chegamos a parte da execução. Vale ressaltar que analiso os resultados semanalmente com a ajuda de dados coletados manualmente e exportados para o Google data Studio.

Operacional: 

- Copywrithing 
- Produção e direção audiovisual
- Fotografia',NULL,'Não, só tenho meus resultados.','Marketing',NULL,NULL,'Carol','Carol','5.000','Sim','Samsul imóveis, Folk, Gabriel Peccin, Paisero.','Quero inscrever-me no banco de talentos da Young!','Prontos para cansar? 

Eu gosto de me intitular como um artista disciplinar e curioso. Como vocês puderam ler na parte da experiência faço muita coisa, mas como plano de carreira quero seguir na parte estratégica, criando soluções que deem certo com base na análise de dados e a humanização de marcas.

Gosto de otimizar processos, escutar pessoas e conversar sobre a vida. Sou muito ligado em tecnologia e tudo que diminua meu tempo de trabalho melhorando a qualidade de vida.

O que me deixa bem é estar em movimento, conhecendo pessoas novas e fazendo networking. ( perfil de vendedor) 

Sempre escolho empresas que tenham dores para serem curadas, odeio entrar em algo que serei inútil. Quando entro pra algum projeto é pra dar meu melhor, mediocridade não é comigo. 

Tem muito mais coisas sobre mim. Mas isso é papo pra talvez uma reunião. Espero que essas informações tenham sido claras, e ajude vocês a entender um pouquinho de quem eu sou. Até logo.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-10-19T21:05:00.000Z'::timestamptz),
  ('Rafaela Olivar Torrey','rafa.olivar@hotmail.com',NULL,'55996581201','1996-02-03',30,'União estável','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1IcfirAo4B6ge5XlStdjs4laPo0yH-1NK','Administração de empresas','Ensino Superior Incompleto','Estácio','2025-03-24','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Assistente Administrativo | 10°CRS – Secretaria de Saúde do RS
Cargo: Estagiária 
De 18/02/2022 - Atual
Função: Auxiliar na identificação dos procedimentos realizados na unidade concedente de estágio; acompanhar pagamentos; auxiliar nas atividades administrativas; auxiliar nas demais atividades ligadas à RH e administração de pessoal.',NULL,NULL,'Administrativa, Comercial, Estágio, Financeiro','https://drive.google.com/open?id=1xDWzfDFF7-Dp2BwiKIFvgO00-bL7tNEu',NULL,'Instagram','Não','De acordo com a categoria.','Sim','Heili Temp
(55) 99974-8912
Delegada Regional de Saúde','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-10-19T22:07:00.000Z'::timestamptz),
  ('Gabriella Burin Roland','gabriellaburin@gmail.com',NULL,'559844554436','1994-08-26',31,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1MxH6Z2va5EYl4C4juar9cYB0YjZAMITw','Administração de empresas','Pós-graduação Completa','Urcamp','2018-12-31','Sou formado','Empresa: Cooparcentro – Filial Alegrete

Cargo: Auxiliar Administrativo

Período: 28/09/2023 até o presente momento;

Funções: Lançamento de pedidos de insumos agrícolas e faturamento dos mesmos, controle de estoque, conferência e controle financeiro, administração e formação de cargas de transporte e demais atividades administrativas.


Empresa: Farmácia AV Farma- A.V. Souto

Cargo: Auxiliar Administrativo

Período: 06/9/2022 até 23/9/2023

Funções: Lançamento de notas de entrada, precificação e ajuste de estoque no sistema Trier, emissão de notas de devolução, fechamento de convênios, conferência de malotes e boletos, organização de documentos e demais atividades de escritório;

Empresa: Cooperativa Agroindustrial Alegrete

Cargo: Estágio Obrigatório na área contábil

Período: 15/8/2022 a 24/8/2022

Funções: Conciliação e lançamentos contábeis.','Pós graduada em contabilidade e gestão de pessoas','Certificado destaque acadêmico reconhecido pelo CRA.','Administrativa','https://drive.google.com/open?id=1nBaQbJrhfIozkrBYk6C7lM247hrZFbXU',NULL,'Instagram','Não','R$2.200,00','Não','Flávio Luiz: Studio Flávio fotografias (55)999991618','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-10-20T00:35:00.000Z'::timestamptz),
  ('Cauana Kavitz','cauanakavitz18@gmail.com',NULL,'51980174662','2000-10-18',25,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1FQyt1vtdxYRa1OUG5J0W9XMfd-dwHARJ','Administração de empresas','Ensino Superior Completo','Uniasselvi','2023-07-01','Sou formado','Estão no LinkedIn',NULL,NULL,'Administrativa, Comercial, Marketing',NULL,NULL,'Agência de Empregos','Não','2500','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Realizei trabalho voluntário no Rotaract Club, no Sítio 4 Patas, tenho curso de fandango e adoro atividades ao ar livre.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-11-01T19:41:00.000Z'::timestamptz),
  ('Karine da Silva','karinesikva@sou.faccat.br',NULL,'51996650945','1985-04-15',40,'Solteiro(a)','2','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=15RgJWhkIJP3UL7mxxcS8xfzgsMLWfJYX','Ciências Contábeis','Pós-graduação Completa','FACCAT','2021-12-17','Sou formado','*Procor Contabil
Auxiliar fiscal – Junho 2021 até Outubro 2023
Principais atividades que exerci: Atendimento de clientes do escritório das empresas que eu cuidava (Simples Nacional, Serviços e lucro real), separar e lançar notas fiscais em sistema para apuração de impostos, planilhas de controle de lançamentos, emissão de nota fiscal eletrônica, apuração de impostos, declarações como SPED, GIA e Simples Nacional, emissão de guias para pagamentos de impostos dos clientes.

*Luiz A. M. da Silva e Filhos LTDA – Trevo Express
Assistente Administrativo – Dezembro de 2016 até o Junho de 2021.
Principais atividades que exerci: Emissão de conhecimento de transporte (3 sistemas diferentes), atendimento aos clientes (interno e externo) contas a pagar, acompanhamento e cobrança das faturas em atraso dos clientes, fechamentos diários das entregas e coletas.

*Rodasul Industria de Maquinas e Impl. Agrícolas LTDA.
Auxiliar de escritório – Abril de 2015 a Agosto de 2016
Principais atividades que exerci: Emissão de notas fiscais, cotações de frete, atendimento aos clientes - pré e pós vendas, organização e envio dos documentos ao escritório contábil.','Sou formada em Ciências Contábeis e Pós Graduada em Direito Público, estou cursando uma segunda Pós Graduação em Direito Tributário.
Tenho cursos de computação mas muito antigos, porém como trabalhei sempre em areas que necessitavam o uso constate de planilhas, eu uso o excel e outras ferramentas do windows.',NULL,'Administrativa, Comercial, Financeiro',NULL,NULL,'Indicação','Andrei','Gostaria de ter a oportunidade de conversar e saber o que a empresa precisa, e se posso contribuir antes de falar em valores.','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Eu adoro passear, adoro jogo de futebol e sempre que posso vou aos jogos do Grêmio, já trabalhei como desenhista copista (Autocad), sou muito família e coloco minhas duas filhas  (13 e 19 anos) em primeiro lugar, sou muito dedicada nas coisas que me proponho a fazer, se não sei fazer peço ajuda e tudo que sei uso para ajudar as pessoas que estão perto.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-11-03T16:43:00.000Z'::timestamptz),
  ('Thiago Barbosa Silva','tbarbosasilva39@gmail.com',NULL,'55991006909','1984-02-10',42,'União estável','2','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1_FGdxEEO_cfvsk3sEzkpRz5fBtlzFkxg',NULL,'Ensino Médio Completo','Escola:Cirino Luiz de Azevedo','1999-12-20','Sou formado','Trabalhei nós Andregretes cargo tratorista',NULL,'Não','Engenharia',NULL,NULL,'Site da Empresa','Engenheiro:Adriano Rodrigues da Silva','Acima de 2.000','Não',NULL,'Serviços gerais',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-11-03T19:25:00.000Z'::timestamptz),
  ('Rosane kainoski Santos','rosemodas1549@hotmail.com',NULL,'55997326392','1989-05-06',36,'Casado(a)','1','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1FdGakYrW4I6j0aq719IbAWE-HmtmM5jS','Gestão em recursos humanos','Ensino Superior Incompleto','IMBRA','2024-12-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1)Panificadora centra: atendente comercial 
   Ano 2004 a 2008 
   Responsável pelo atendimento e organização da equipe.
2) Lopes Rodrigues Zimmermann: atendente comercial.
  Ano de 2016 a 2018
 Vendedora de produtos automobilístico.
3) Empreendedora no salão de beleza
  Ano 2019 a 2022
  Área da beleza, cuidados estético
4) Gerente comercial ( atualmente)
  Ano 2023
  Responsável pela área financeira, pagamento, fechamento do caixa,comando e bom relacionamento em equipe.','Bom,já fiz curso em auxiliar administrativo, auxiliar em RH e também em Segurança do trabalho, atualmente atuo como gerente comercial e faço faculdade em Gestão em Recursos humanos e busco uma nova oportunidade,pois almejo meu crescimento,em uma nova empresa.Sou responsável, dinâmica,gosto de resultados e corro atrás do que eu quero,sou decidida e não desisto.','Auxiliar administrativo, Auxiliar em RH, Segurança no trampo','Administrativa, Comercial, Financeiro','https://drive.google.com/open?id=1Ms2wgb3nHpxruO-l6WUfpyqd0r27j9pt',NULL,'Indicação','Carol Volpato','Acima de 1,800.00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma mulher que sempre estou correndo atrás de algo melhor,busco oportunidade,gosto de desafios,sou responsável, honesta, valorizo a família e prezo pela competência.
Hj atuo como gerente comercial,no início tive uma dificuldade,pois a equipe que tinha no estabelecimento não aceitaram bem minha vinda,mas com  determinação, paciência,e compreendo a dificuldade de cada um, essa equipe se tornou maravilhosa, atendimento exemplar e acima de tudo respeitando as regras da empresa.
E estou aqui porque ainda busco algo melhor,em uma empresa de grande porte.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-11-03T23:47:00.000Z'::timestamptz),
  ('Elizandra Correa de Oliveira','elizandraoliveira@sou.faccat.br',NULL,'51998577367','1989-03-21',36,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1plDNK08JVvfpOqQjNKO7qcNp3rfHMy7h',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Experiências Profissionais:
Empresa: Silvio Thomaz de Oliveira ( D’FRIOS)
Período: de 02/05/2011 à 18/11/2015
Cargo exercido: Auxiliar de escritório
Funções desempenhadas: Emissão e controle de notas fiscais, emissão e controle de
boletos, atendimento ao telefone e aos clientes no local.
Empresa: Higienize Comercial LTDA
Período: de 01/07/2016 à 15/07/2022
Cargo exercido: Auxiliar Administrativo (Televendas)
Funções desempenhadas: Vendas internas, central telefônica, central de emails e call center,
whatsapp e demais redes sociais. Também auxílio à equipe externa com suas atividades,
como a confecção de orçamentos, contatos com clientes e resolução de problemáticas.',NULL,NULL,'Administrativa, Comercial, Financeiro','https://drive.google.com/open?id=1p9thZXa3c5pd6oPC1c9fqd8Aa7zz_ktN','https://drive.google.com/open?id=1J3ICNaK_gCSyojHMfNX04XvcEiPVm0ba','Agência de Empregos','Não','2000','Não',NULL,'Assistente financeiro','Faço alguns trabalhos voluntários na área da saúde voltado a saúde mental, sou graduanda em psicologia, no momento tranquei a faculdade pois estou desempregada. Sou uma pessoa muito empata me dou bem com todos a minha volta tanto nós trabalhos onde passei como na comunidade em si. Gosto muito de ler, conhecer lugares novos, amo cozinhar.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-11-07T14:57:00.000Z'::timestamptz),
  ('Amanda Padilha dos Santos','amandapadsantos@gmail.com',NULL,'51997337545','1995-06-28',30,'Casado(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1j9b53_dr8avh6FCTvEPwqBIUVqGWWTVi',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Prefeitura de Santo Antônio 2017/2021 recepcionista, auxiliar no setor de engenharia, coordenadora de fiscalização. : Auxiliar no setor responsável, auxiliar no setor de engenharia emitindo documentos como alvarás e habite-se, dando entrada em projetos, atendimento ao público, e também auxiliando na recepção. Segundo mês atuando como diretora responsável da Secretaria.
Centro clínico vida e saude. 2021/2023 recepcionista, coordenadora. Atendimento ao público, auxiliar no administrativo, controle de agendas, coordenando na recepção.',NULL,NULL,'Administrativa, Financeiro',NULL,NULL,'Instagram','Não','2.000,00','Não','Centro clínico vida e saude- Nubia 36622002
Ferulio Tedesco 999615737','Setor financeiro','Sou muito dedicada e qualquer empresa visto totalmente a camisa. Sou responsável, é extremamente dedicada aquilo que sou designada. Gosto de ajudar ONGs de animais, sou uma pessoa com muito coração, gosto de ser rodeada de pessoas, festas, jantas, ou até mesmo ficar em casa curtindo a família. Estou sempre na correria, gosto de rotina e ir na academia. Sou muito organizada então estou sempre limpando tudo.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-11-07T15:12:00.000Z'::timestamptz),
  ('Victória Duarte da Silva Espíndola','victoria.vih2015@gmail.com',NULL,'51997809584','1998-08-04',27,'União estável','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1DkE_70EfgDZp4lnmuA44OzpYx6wucbyE','Administração de empresas','Ensino Superior Incompleto','Unimar','2025-12-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Reobras Indústria e Comércio Ltda 

Cargo: Assistente Administrativo 
Funções: Emissão de notas fiscais, fechamento de mês, Emissão de boletos, contas a pagar/receber, atendimento ao cliente via e-mail/telefone, cotações.
Período:2021/2022

Unicesumar 

Cargo: Gestora de Polo
Funções: Vendas de matrículas, retenção de alunos, atendimento/suporte ao aluno e rotinas administrativas.
Período:2023','Informática avançada',NULL,'Administrativa, Financeiro','https://drive.google.com/open?id=1D0BeXSNUhr8fFI-wounC_RT-gIA_PI9C',NULL,'WhatsApp','Não','1.800 00','Não',NULL,'Assistente Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-11-07T15:34:00.000Z'::timestamptz),
  ('Gisele dos Santos Amaral','amaralgisele178@gmail.com',NULL,'51995601441','1986-03-11',39,'Casado(a)','3','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1NDUB28o6PZfgvqmMw6HxY4X95a8FKqPU',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Preparadeira de Calçados,
CLÉLIA S.F. SOARES E MORAIS
Santo Antônio da Patrulha, RS |2012 - 2013
 Preparação de calçados.

Auxiliar contábil,
GTMM IND. COM. E SERV. EM ALIMENTOS LTDA
Santo Antônio da Patrulha, RS |2011 - 2012
• Classificação e organização de documentos para contabilidade, arquivando-os em 
ordem cronológica de data ou de lançamento nos livros fiscais.
• Organização dos documentos financeiros da empresa, incluindo a classificação contábil 
e a conciliação das contas, mantendo o sistema abastecido para a geração de 
relatórios.
Auxiliar de escritório,
QUALICOCO LTDA
Santo Antônio da Patrulha, RS |2010 - 2011
• Auxílio nas rotinas do departamento administrativo, organizando documentos e 
realizando tarefas variadas como fotocópia e envio de correspondência, colaborando 
para o melhor andamento das atividades do escritório.
• Verificação dos dados de documentos e planilhas, prezando pela ausência de erros nos 
documentos e pela precisão das informações.
• Solicitação de reposição de materiais de escritório ao almoxarifado, realizando os 
pedidos conforme as necessidades de trabalho da empresa.
• Expedição de documentos internos e externos, físicos ou eletrônicos, realizando os 
protocolos de controle para consulta, caso necessário.
Empacotadora,
Lins Ferrão Artigos de Vestuário Ltda
Santo Antônio da Patrulha, RS |2005 - 2010
• Recolhimento de produtos deixados pelos clientes na loja, encaminhando os itens ao 
setor responsável pela reposição nas prateleiras.
• Conferência e empacotamento de produtos em sacolas no caixa de retirada, reposição 
mercadorias no setor de banho.
• Maio de 2007 passei a exercer a função de de vitrinista,',NULL,NULL,'Administrativa, Financeiro',NULL,NULL,'Instagram','Não','1800','Não','Qualicoco','Assistente financeiro','Gostaria de uma oportunidade de voltar ao mercado de trabalho.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-11-07T15:44:00.000Z'::timestamptz),
  ('Josué Mateus Silva Peterson','petersonjosue3@gmail.com',NULL,'51995691190','2002-04-25',23,'Casado(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1IaolKGG5trS7g7F2HRUhrwuo03fr1p2a','Se precisar eu faço','Ensino Médio Completo','Gregória de Mendonça','2019-12-20','Não, no momento pausei/parei por um período.','Pedras multi sou auxiliar de produção,faço de tudo
Comecei em 2020 e estou até hoje
Tenho CNH B',NULL,NULL,'Marketing',NULL,NULL,'Agência de Empregos','Não','.','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Gosto de aprender, quero uma oportunidade melhor e sei que vocês tem isso tudo , quero crescer na empresa,dou amigo de todo mundo','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-11-07T17:09:00.000Z'::timestamptz),
  ('Mateus Souza Porfirio','mateus.souza.porfirio@hotmail.com',NULL,'51999325571','1994-10-10',31,'Casado(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1gIajgMUunJxtHKEPD9YFrV70K66ItNGd','Administração de empresas','Ensino Superior Incompleto','Uniasselvi','2026-06-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Top Guarda Segurança Patrimonial
2) Função: Vigia
3) Nov.2014 até Nov. 2022',NULL,NULL,'Administrativa, Comercial, Financeiro','https://drive.google.com/open?id=1TXykaS3Yxh3VuIEoTBdah21RwQ4TLjZb','https://drive.google.com/open?id=1ZUeTLaxpQBcA1eG8x0j4QcvcSR3UnO0q','Instagram','Não fui indicado','R$1,80','Sim','Adilson Santos 51 99941-4081','Quero inscrever-me no banco de talentos da Young!','Busco por novos desafios que me permitam entrar no mercado de trabalho qual me identifico e possuo um melhor potencial de desenvolvimento. Trabalho desde muito cedo, estava há 8 anos na mesma empresa. Mas gostaria de sair da zona de conforto, para dar melhores condições de vida à minha família. Tenho a pretensão de ocupar a vaga disponível. Estou disposto a me especializar na área. Só preciso de uma oportunidade. Possuo disponibilidade de horário, compatível ao cargo e os pré-requisitos. Espero que minha experiência possa me fazer crescer e oferecer um serviço de qualidade, garantindo resultados positivos para empresa, vindo a somar no grupo.

Desde já agradeço pela atenção','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-11-07T17:57:00.000Z'::timestamptz),
  ('Tainara Kray da Rosa','tainarakray23@gmail.com',NULL,'51980589928','1995-07-17',30,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1cp0fpZXSqNqfDBXXqhSBPWc0lTfrgR7s','Técnico de Enfermagem','Ensino Médio Completo','Senac Taquara RS - Tecnico em Secretariado','2021-11-22','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Recepcionista - Prefeitura Municipal de Riozinho 04/01/21 à 02/01/23
* Atendimento telefônico e WhatsApp, agendamento de consultas com especialistas como:
Psiquiatra, Psicóloga, Pediatra, Ginecologista, Cardiologista, Fonoaudiólogo, Nutricionista, Enfermeira

Agente administrativo - Prefeitura Municipal de Riozinho 02/01/23 até o momento','Estagiária em Fundação Hospitalar de Rolante 
Conclusão: 15/12/23',NULL,'Administrativa',NULL,NULL,'Agência de Empregos','Não','O justo, compatível com a função','Sim','Karla Martins Nunes - Enfermeira 
(51)984927370','Vaga Administrativo',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-11-07T18:02:00.000Z'::timestamptz),
  ('Daiana Anita Kappel','daianakappel@gmail.com',NULL,'9997081726','2001-12-20',24,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=14E_JtKZekr6vQFYPtlFKdhFpXvllt8E2',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Trabalhei na empresa chamada Mercado Lena (Glorinha), ocupei o cargo de vendedora, por cerca de dois anos, 2021 - 2023. 
 Recentemente me mudei para a cidade de Santo Antônio da Patrulha, e estou em busca do meu primeiro emprego na cidade.
CNH A e B em andamento.','agosto / 2023 | execel na prática
16 horas - Fundação Bradesco (EAD)
Agosto/2023 | atendimento ao público
10 horas - Fundação Bradesco (EAD)
agosto / 2023 | técnicas de redação
10  horas - Fundação Bradesco (EAD)','agosto / 2023 | execel na prática 16 horas - Fundação Bradesco (EAD) Agosto/2023 | ATENDIMENTO aopúblico 10 horas - Fundação Bradesco (EAD) agosto / 2023 | técnicas de redação 10  horas - Fundação Bradesco (EAD)','Comercial','https://drive.google.com/open?id=1rIILlykeOTkbK0FgyQzNZ3Q_HAZIeWrX',NULL,'Instagram','Sigo uma colaborada da Young nas redes sócias, a Giulia Androotti, observei nos story dela o link para fazer a inscrição para assistente financeiro.','1.700,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa proativa, gosto de trabalhar em grupo, sou comunicativa, fácil adaptação em qualquer lugar.
Gosto de praticar esportes, sentir a emoção a adrenalina que o esporte nos trás.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-11-07T19:46:00.000Z'::timestamptz),
  ('Francieli Ribeiro Ramos','franribeiroramos14@gmail.com',NULL,'51995861831','2004-10-12',21,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=14ChLZprKfo4uj4fkAgw7H_kyN69RfaK4',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Tenho experiência na parte financeira na empresa do meu pai com a parte financeira. E também trabalho no atacado britosul com a parte financeira, administrativa, vendas e operadora de caixa desde 2021',NULL,NULL,'Financeiro','https://drive.google.com/open?id=1OqUK0jpep7Y4fdeW8XuaTBPM938Ue6w6',NULL,'Instagram','Não','2.000 ou mais','Não',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-11-08T02:32:00.000Z'::timestamptz),
  ('VANESSA GOMES BORGES','vanessagborges40@gmail.com',NULL,'51996090751','1980-08-17',45,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=16_E4iXoKhQj9sCRJ7CCDLdID7dJXaChq','Administração de empresas','Ensino Superior Completo','Faccat','2014-12-20','Sou formado','SHA Cilindros Hidráulicos Ltda 
Analista financeira 
13/10/2010- 30/09/2023 
Contas a pagar 
Contas a receber
Renegociações com clientes e fornecedores 
Envio e controle de cobrança 
Uso do sistema TOTVS ( Protheus )
Pgtos via internet banking 
Baixas do sistema 
Controle de fluxo de caixa por Excel 
Arquivo de boletos e conferência dos mesmos com o sistema 
Antecipação de recebíveis junto a FIDCS 
Contato com bancos','Oficina de fluxo de caixa sebrae 
Fluxo de caixa sebrae',NULL,'Financeiro',NULL,NULL,'Indicação','Não','4.000','Não','Claudiomiro Duarte 
SHA - 31997040','Assistente financeiro','Boa tarde Srs

Sobre a Vanessa 
É uma pessoa que gosta muito do que faz e que no atual momento está desmotivada pq a empresa a qual trabalhou e vestiu a camisa por 15 anos encerrou suas atividades . 
Sou comunicativa , respeito muito os colegas , mas se também tiver que trabalhar em uma sala sozinha também é tranquilo .
Acredito que possa colaborar com sua empresa com o que aprendi ao longo deste tempo como também aprender , afinal ninguém nasce sabendo de tudo , sempre temos algo a aprender seja profissionalmente , ou até mesmo com as pessoas a nossa volta .
Gostaria de uma oportunidade de entrevista em vossa empresa .
Desde já meu muito obrigada .
Att 

Vanessa Borges','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-11-08T19:59:00.000Z'::timestamptz),
  ('Lais Ribeiro Pedroso','laispedroso7085@gmail.com',NULL,'+5551995789470','2000-04-26',25,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=100HRNklQ7fyHz-KxWT6LFvQc79v7djrQ',NULL,'Ensino Superior Incompleto','FAEL','2023-11-08','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Prefeitura Municipal de Santo Antônio da Patrulha, estagiária no Setor de RH, 01/12/2021 - 27/06/2023 (Atendimento ao público, conferência de folha de pagamento, organização de documentos para arquivar, trabalhos bancários, orçamentos de materiais)','Curso Trainne Coaching','Técnico em Administração','Administrativa, Financeiro','https://drive.google.com/open?id=1AliHqVxejSHXKydDzkX1UtokyfzxiPP9',NULL,'Agência de Empregos','Não','1330','Não','Secretaria de Administração Cleia Juçara Airoldi, Prefeitura Municipal de Santo Antônio da Patrulha 3662 8446','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-11-08T23:15:00.000Z'::timestamptz),
  ('Janaína Gomes da Silva Marques','janainasilva9295@gmail.com',NULL,'51995201891','1992-04-06',33,'Casado(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=102MxCAxjn14dAKRgg1DZ4Gya1YF_BR1K','Administração de empresas','Ensino Superior Completo','Estácio SA','2023-04-30','Sou formado','Grupo TPC Claro POA - Assistente de RH 
Recrutamento e seleção, processos de admissão e demissão, solicitação de benefícios, controle diário do relógio ponto, compra de materiais, conferência folha pagamento, entrega de contra cheques , preposto de audiência, serviços externos e demais atividades dia a dia. 2012 a 2016. 
Savale Imóveis SAP - Recepcionista 
Atendimento ao telefone e ao cliente presencial, arquivo de documentos , manter organizado e limpo ambiente. 9 meses 2018 -2019
Gabisul Ind. E Com. Alimentos - Faturista 
Responsável pela área de faturamento, recebimento de pedidos via sistema, alteração de prazos e preços, emissão de notas ficas e boletos, cadastro de clientes novos, emissão de manifestos, contato com vendedores e expedição diariamente , relatórios quinzenais e  demais atividades dia a dia. 2019 -2023 4 anos e 3 meses','Técnico em Marketing, Profissionalizante QI , informática básica','Treinamento de RH e Bombeiros','Administrativa',NULL,NULL,'Agência de Empregos','Não','$1.800,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa responsável , pontual , organizada e persistente procura de novos conhecimentos e oportunidade no mercado de trabalho.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-11-09T17:00:00.000Z'::timestamptz),
  ('Aline de Oliveira','a.line.oliveira@hotmail.com',NULL,'51998834498','1986-11-11',39,'Casado(a)','2','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1x-wYaXyWqmkSellLPfHmMXiWtS3TFOFb','Administração de empresas','Pós-graduação Completa','ULBRA','2013-02-13','Sou formado','DACOLÔNIA ALIMENTOS NATURAIS
ANALISTA DE RH
07/2021 até 08/2023
Realizar o recrutamento e seleção de pessoal grandes volumes de vagas, captando candidatos, efetuando análise prévia através de contato telefônico e entrevista presencial, juntamente com a área solicitante. Solicitar e receber documentos dos candidatos aprovados. Efetuar a integração de novos colaboradores, preparando os documentos necessários para admissão e fornecendo orientações inerentes às políticas de RH e procedimentos internos, afim de garantir a integração dos mesmos no ambiente de trabalho. Administrar benefícios concedidos pela empresa aos empregados, providenciando a entrega e levantando informações necessárias para manutenção (inclusões, alterações e exclusões), coma finalidade de assegurar o pagamento dos benefícios aos colaboradores. Prestar atendimento e suporte aos empregados e gestores, fornecendo informações e orientações aos assuntos relacionados à folha de pagamento, procedimentos e normas internas. Conhecer a missão, valores, políticas e objetivos da empresa, atendendo às normas, instruções, procedimentos internos e do sistema de gestão integrada, garantindo a qualidade, segurança do trabalho, meio ambiente e medicina preventiva, de forma a contribuir para a valorização das pessoas, otimização dos processos, desenvolvimento sustentável e melhor atendimento aos clientes internos e externos. Prestar atendimento e realizar outras atividades profissionais correlatas e inerentes ao cargo exercido, conforme orientação e/ou solicitação do Superior imediato .Responsável pela negociação e pelos contratos de empresas terceirizadas higienização, portaria e plano de saúde. Responsável pelas ações de Endomarketing, criação, organização e execução',NULL,NULL,'Administrativa, Financeiro','https://drive.google.com/open?id=1-sFmxrNtXBTEFb6qWvjaP26IH7EmYrZX','https://drive.google.com/open?id=1lTL9QaajBQno8foE-1LzZz3pK0n7iimK','Indicação','Não','2500','Sim',NULL,'Assistente Financeiro','Não possuo experiência na área financeira, mas tenho muita vontade e disponibilidade de aprender coisas novas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-11-09T17:30:00.000Z'::timestamptz),
  ('Gabriela Santos Silveira','gabisantosth@gmail.com',NULL,'51997662947','1993-09-26',32,'Casado(a)','1','Sim','Osório/RS','https://drive.google.com/uc?export=view&id=13S_oc8-SwYIWNd4VflN4W2X42Ush49jT','Ciências Contábeis','Pós-graduação Incompleta','Centri Universitário Leonardo da Vinci','2023-10-07','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Bora bora Calçados, Auxiliar administrativo financeiro de 2010 a 2014, contas a pagar e a receber, cobrança de clientes e faturamento. Joao D A Da SIlva, Auxiliar administrativo de 2021 a 2022, contas a pagar e a receber, cobrança de clientes, faturamentoe atendimento. Estágio de assistente contabil em 2022, auxílio ao setor fiscal. Frigorífico Lagoense de 2022 ate o momento, auxiliar administrativo, contas a receber, faturamento, cobrança de clientes, atendimento ao cliente e vendas.','Atualmente fazendo pós graduação em contabilidade pública e perícia contábil',NULL,'Administrativa, Financeiro','https://drive.google.com/open?id=1u5ekNO5t2C7iE5iNMxcdriPkvlxyhKyY','https://drive.google.com/open?id=1oH7lMBwEc-xgr34l8FWAMNU4nAMXvYSb','Facebook','Não','2300','Sim',NULL,'Assistente financeiro','Sou ativa e aprendo com facilidade, sempre tenho bom relacionamento com as pessoas a minha volta. Gosto de estar em família.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-11-10T10:04:00.000Z'::timestamptz),
  ('Amanda da Cunha Muniz','amandacunhamuniz2305@gmail.com',NULL,'51998465790','1999-07-05',26,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=19-2BmTW5A2VzfR8fUKLjvrqfaxc4EP6m','Ciências Contábeis','Ensino Superior Completo','Uniasselvi',NULL,'Sou formado','TRPA DO BRASIL INDÚSTRIA DE ALIMENTOS EIRELI
Assistente administrativa 
21/07/20 até o momento
Emissão de notas fiscais, entrada de notas de compras, toda a parte financeira como pagamento de fornecedores. Compras de matérias primas.',NULL,NULL,'Administrativa, Financeiro','https://drive.google.com/open?id=11G8m55YSGNwzJpvYBvf7C6Uv_-9kBLyE',NULL,'Facebook','Não','R$2.500,00','Não',NULL,'Vaga para financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-11-11T16:51:00.000Z'::timestamptz)
;

INSERT INTO young_talents.candidates (full_name, email, email_secondary, phone, birth_date, age, marital_status, children_count, has_license, city, photo_url, education, schooling_level, institution, graduation_date, is_studying, experience, courses, certifications, interest_areas, cv_url, portfolio_url, source, referral, salary_expectation, can_relocate, professional_references, type_of_app, free_field, status, tags, origin, created_by, original_timestamp)
VALUES
  ('Alexandre santos dos santos','alexandresantosdossantos14@gmail.com',NULL,'51989990087','1999-01-13',27,'Solteiro(a)','0','Sim','Glorinha/rs','https://drive.google.com/uc?export=view&id=1i-LWYetBZrdtOVab_O8fZt2sxpD71_MI',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Experiência profissional:
Empresa: Fibraplac 
Cargo: aux. Adm jovem aprendiz
Período: 07/2016 a 06/2017
O período nessa empresa foi realizado rotinas administrativas pocos dias na empresa e mais dias realizado o curso de adm no senai. 

Empresa:Rudder 
Cargo: Asp(vigia) 
Período:11/2018 a 08/2019
Nesta empresa as atividades era zelar pelo patrimônio do cliente. No caso trabalhei pela Rudder na portaria da fibraplac, fazendo entrada e saida de entregas, acesso de colaboradores externos, vistoria em caminhões e demais veículos de acesso.

Empresa: New Téc Cell assistência técnica
Cargo: proprietário
Período: 11/2020 a 08/2023
New Téc foi um empresa que eu montei de assistência técnica de smartphone, onde eu realizava manutenção nesses aparelhos, fazia atendimento ao cliente, administrava a parte financeira da empresa, além da manutenção também realizava a venda de alguns itens acessórios para smartphone e eletrônicos. 

Empresa:Nova RH
Período: 09/2023 e atuando.
Cargo: produção
Atuando na produção industrial automotiva em santo Antônio da patrulha na magna cosma pela nova rh, operador de robô montagem de componentes automotivos.','Cursos:
Aux.adm como jovem aprendiz. 
Informática básica.
Manutenção de smartphone.
Entre outros breves.','Aux. Adm, competência transversais em empreendedorismo, informática basica, competência transversais em educação ambiental, competência transversais em legislação trabalhista, competência transversais em tecnologia da informação e comunicação, competência transversais em segurança no trabalho, análise de circuito Android e ISO e manutenção de celulares 4.0','Administrativa, Comercial, Financeiro','https://drive.google.com/open?id=1c-2eeJNARHC7-bTyCFzQ0tShYbaHYfB2',NULL,'Indicação','Everton','Entorno de R$2.500,00','Sim',NULL,'Vaga na área financeira, ou em oportunidade dentro da young',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-11-12T14:37:00.000Z'::timestamptz),
  ('Caroline Schuler Rocha','caroline.schuler@hotmail.com',NULL,'51997942990','1998-10-21',27,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1qr6Q6mZcZo7cnlsNdQ-0Ygob5EqA6KSJ','Nutrição','Ensino Superior Incompleto','Uniasselvi',NULL,'Não, no momento pausei/parei por um período.','Atendente- Farmacia Maxxi Econômica- 10/2019-10/2021 - Vendedora- Loja A Primavera- 10/2021 - 06/2022- Operador Financeiro- Facta Financeira- *Vaga Temporaria - Consultor de Credito Pessoal- Loja TaQi- *Vaga Temporaria','Assistente Administrativo, Inglês Básico, Pacote Office',NULL,'Administrativa, Comercial, Estágio, Marketing','https://drive.google.com/open?id=19Dl0MZo5NQ71yf9uBuemj-YpezReCO3g',NULL,'Facebook','Não','1500','Sim',NULL,'Assistente Financeiro','Gosto de animais, costumo fazer trabalho voluntário na Ong 4 Patas quando posso, adoro conversar sobre todos os tipos de assuntos, conhecer pessoas novas, gosto de desafios e fazer coisas diferentes no meu dia a dia','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-11-13T02:37:00.000Z'::timestamptz),
  ('Bruna Fagundes da Silva','brunafagundes8910@gmail.com',NULL,'51999648534','2001-11-09',24,'Divorciado(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1ToJhL1r1vircuZBC1XvutTjsYIzBDPnW','Secretaria Administrativa','Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Bem sorrir odontologia integrada
Secretaria administrativa 
01/05/2022
09/11/2023','Cursando Faculdade de Direito',NULL,'Administrativa',NULL,NULL,'Instagram','Não','Minima de 1.800,00','Não','Dr.Bruno Bueno +555197441116','Área administrativa','Olá sou a Bruna Fagundes tenho 22 anos moro atualmente em Santo Antônio da patrulha, costumo me dar bem em equipe, sou dedicada, e aprendo muito rápido tudo , nem tudo eu sei mas acredito que é aprendendo que se aprendi, estou disposta a aprender cada vez mais e tenho certeza que a e young tem o melhor para me oferecer, assim como eu tenho a empresa. Sou especialista em vendas,  na minha última empresa vendia no mês em torno de vinte mil em planos, e hoje tenho bem mais experiências de quando entrei no ramo de venda.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-11-13T20:56:00.000Z'::timestamptz),
  ('Wilson Jerônimo Souza','wilsonsouza3092@gmail.com',NULL,'51995320207','2003-06-27',22,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1MMtR8RYcvS_dEhGepof60vzsMaJvTOEP','Ciências Contábeis','Ensino Superior Incompleto','Centro Universitário Leonardo da Vinci - Uniasselvi','2026-12-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Atelier de Calçados Canabi LTDA
Cargo: Preparador de Calçados
Atividades: colagem de forro em injetados de EVA, PVC e ABS; introdução de cola em superfícies de sola
Período: 01/07/2019 até o momento','Técnico em Rotinas Administrativas na Escola Técnica e Faculdade Jovem Profissional:
Contabilidade; Auxiliar administrativo; Marketing Pessoal; Departamento Pessoal - (2022)

Técnico em Informática básica na Escola Técnica e Faculdade Jovem Profissional 
Pacote Office; Internet Explorer; sistema hardware e software - (2019)','CIPA - Conselho Interno de Prevenção de Acidentes (gestão 2023/2024)','Administrativa, Financeiro',NULL,NULL,'Instagram','Não','1.700,00','Não',NULL,'Assistente Financeiro','Sou uma pessoa que gosta de tranquilidade, não gosto muito de sair de casa, fico no meu quarto estudando e me planejando pra semana de trabalho e estudos, sou observador e paciente, um pouco lento pra adaptabilidade em ambientes.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-11-14T03:28:00.000Z'::timestamptz),
  ('Layana de Freitas Stecanela','lalastecanela@gmail.com',NULL,'51992064856','1997-01-23',29,'União estável','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=15PL1QIXD6rMQxS8iQ3h5BqGjKHqkjfgp','Professora/Pedagogia','Pós-graduação Incompleta','Uniasselvi','2020-03-20','Sou formado','Já trabalhei no comércio e em escolas','Estou cursando pós graduação em gestão',NULL,'Administrativa','https://drive.google.com/open?id=1LA7zvuCMNDMPo-osfrdCpBD2_QwTrqGX','https://drive.google.com/open?id=1A9Sqtcb-bekS_ckCIbon5CYMB0DgIX3H9Ph_5QmQaWA','Instagram','Não','$1.600,00','Não','Comércio e escolas','Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-11-14T04:09:00.000Z'::timestamptz),
  ('Giovana Oliveira da Silva','giovana9756@gmail.com',NULL,'51995579163','2003-04-03',22,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=11L_BNHSrvK5ey0OcrvlflKUpaZA89D-n','Cursandp Administração','Ensino Superior Incompleto','CENTRO UNIVERSITÁRIO LEONARDO DA VINCI - UNIASSELVI','2026-01-14','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Vero Internet.
Atendente de Serviço Técnico | 2023 - Ocupação atual.
Funções: Fornecer suporte e assistência aos clientes que estão enfrentando problemas técnicos ou precisam de orientação relacionada a produtos ou serviços.

HIAB Brasil Guindastes e Serviços Ltda.
Estágio no setor financeiro | 2023 - Ocupação atual.
Funções: Auxiliar no contas a pagar por um período, atualmente auxiliando no contas a receber.

Pátio Urbano.
Recepcionista | 2021-2022.
Funções: Recepcionar/atender clientes.
DeMello Alimentos Ltda.

Jovem Aprendiz | 2018 - 2020 e Auxiliar administrativo | 2020 - 2021.
Funções: Auxiliar nos setores de recepção; incorporação; cobrança de clientes e lançamento de contratos.',NULL,NULL,'Administrativa, Financeiro','https://drive.google.com/open?id=1F14PtR-jp4KeQnBnOBGuO5fICVcw-jUU',NULL,'Indicação','Rui Lopes','Aberta a propostas','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-11-14T16:58:00.000Z'::timestamptz),
  ('Michele de Fraga Anflor','michele.fanflor123@gmail.com',NULL,'51999141849','1992-01-18',34,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1ruXnSlDB1YlqGKWLx5WJTaZLTWLFCRoS',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','-	Auxiliar Administrativo na Loja Botas Rei em Santo Antônio da Patrulha/RS, onde atendia na loja, serviços de banco como pagamento de contas e depositos,emissão de notas eletrônicas.(04/2014 a 11/2015)  
  
  
  
-	Auxiliar de Escritório na Rede de Postos Charão em Osorio/RS, onde fiz conferencia de caixas, financeiro, compra de combustível e rota de distribuição.(06/2016 a 02/2018  
  
  
-	Recepcionista na London Imóveis em Capão da Canoa/RS, onde fazia atendimento por telefone, recepção de clientes, cadastro de imóveis no sistema e site.(06/2020 a 02/2021)  
  
-	Recepcionista Plantão de Vendas Condomínio Murano em Capão da Canoa/Rs, onde fazia a recepção de clientes, corretores e proprietários.(03/2021 a 08/2021)  
-	Recepcionista Centro de Distribuição Redmac Capão da Canoa/RS, onde fazia o atendimento ao cliente para retirada de material, impressão de notas fiscais.(08/2021 a 09/2021)  
  
-	Vendedora na loja Isa Festas Osório, onde fazia atendimento ao público e abastecimento de mercadorias. 
( 04/11/2021 a 01/02/2022)  
  
-	Secretaria na Imobiliaria Absoluta Imóveis Capão da Canoa/RS, recepção de clientes, negativas, cadastro de imoveis e clientes.(06/07/2022 – 03/11/2023)','Curso de Rotina de pessoal, curso de gestão financeira e curso de atendimento ao publico',NULL,'Administrativa, Financeiro','https://drive.google.com/open?id=1Y2ISu5HjZ5Avd5KFHVET0IUgdDT5yg6A',NULL,'Instagram','Não','1700','Sim','Hiago Espíndola +55 51 8229-1000 Absoluta Imoveis','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-11-15T16:36:00.000Z'::timestamptz),
  ('Maiara Ramos de Jesus','maiararamosdejesus51@gmail.com',NULL,'51992414643','2000-04-04',25,'Casado(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Qf1vuBdP2XBwD82JmLjswebbZlPz_Xf9',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Bem criança- vendedora início 13/03/22 término 13/04/23. 
HC barbearia- caixa, recepcionista e administrava também. Início 15/04/21 término 13/03/22.','Excel, finanças e inglês, cursando também cpa10 e conhecimento em NF.','Sindicato Rural e IFRS','Administrativa, Comercial, Financeiro, Novos Negócios',NULL,NULL,'Indicação','Ex colaborador - Rafael Rocha','1.900,00 a 2.500,00','Não','Mara de Borba Cunha - 51 99701-3765
Luana Oliveira -51 99788-8059
Henrique da Cunha Santos -51 99772-6135','Quero inscrever-me no banco de talentos da Young!','Sou muito ágil e me moldo a necessidades da empresa, também tenho um bom diálogo é muita disposição para aprender( inclusive gosto do que me desafia), gosto de levar o trabalho a sério mas também com uma pitada de diversão.
Sou exigente e me considero um pouco autoritária , estou sempre buscando o crescimento pessoal e profissional!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-11-16T18:53:00.000Z'::timestamptz),
  ('Daiana Anita Kappel','daianakappel@gmail.com',NULL,'51997081726','2001-12-20',24,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1jlfM2Lc-HneER6BvWuIA9xZTFZp9knNZ',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Trabalhei em um mercado chamado Mercado Lena ( Glorinha), ocupei o cargo de vendedora, atendia no caixa, no bazar, na padaria, trabalhava com atendimento ao público em geral. Fiquei na empresa de 2021  a 2023. 
Meu único emprego de carteira assinada','agosto / 2023 | execel na prática
16 horas - Fundação Bradesco (EAD)
Agosto/2023 | atendimen ao público
10 horas - Fundação Bradesco (EAD)
agosto / 2023 | técnicas de redação
10  horas - Fundação Bradesco (EAD)',NULL,'Administrativa','https://drive.google.com/open?id=1Q5fxWP256FoA0F9PUzRBDdEg3iZfe0-d',NULL,'Instagram','Não.','1.700,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-11-16T21:03:00.000Z'::timestamptz),
  ('Kauana cunha','kakascunha3010@gmail.com',NULL,'51995883690','2004-02-04',22,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1MxC9b2KxFLIhZJ3xzqEBMHXm0b83rS9K',NULL,'Ensino Médio Completo','Estadual','2021-12-20','Não, no momento pausei/parei por um período.','Estecopal escritório de contabilidade
Macrobala caixa e repositor faço de tudo','Informática
Auxiliar administrativo',NULL,'Administrativa',NULL,NULL,'Facebook','Nao','1.900,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-11-16T23:10:00.000Z'::timestamptz),
  ('Ana Beatriz Gonçalves','beatrisgonsalves50@gmail.com',NULL,'51992953757','2002-03-18',23,'União estável','0','Sim','Torres/RS','https://drive.google.com/uc?export=view&id=1pqFpalHXZx4Ub_J4wQueQhICP_Cz8kL0','Técnico em transações imobiliárias','Ensino Superior Completo','Instituto do Corretor','2023-04-06','Sou formado','Primeiro emprego.
Tive experiência de estágio não remunerado:
Imobiliária Iratan Freitas.
Imobiliária Crédito real.','Curso de captação e venda de imóveis: 160hrs
Curso de Auxiliar administrativo: 80 horas',NULL,'Administrativa, Comercial, Marketing, Novos Negócios',NULL,NULL,'Instagram','Não','5.000','Sim',NULL,'Comercial','Tenho 21 anos, estou ingressando no mercado imobiliário, sou fascinada por visitar empreendimentos, condomínios, residências particulares, prentendo ter graduação na área, trabalhei a adolescência inteira na cozinha, e dês de muito nova visei um futuro de sucesso para mim, então na primeira oportunidade que tive agarrei com todas as forças e me dediquei a estudar para mudar de área e de vida. No momento estou buscando por experiência em campo, contato com pessoas reais, e principalmente sair da minha zona de conforto, estou disposta a encarar novos desafios que possam alavancar a minha carreira, e futuramente prentendo poder dividir o meu conhecimento com outras pessoas ministrando mentorias.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-11-17T23:40:00.000Z'::timestamptz),
  ('Felipe Pontes Machado','felipepontes2@gmail.com',NULL,'51999896713','1992-07-25',33,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1i_4J0i8yoDMr7bLV4ugHgm-ZXkOcPU9I','Administração de empresas','Ensino Superior Completo','Ulbra','2017-12-15','Sou formado','General Motors 
Operador de Produção 
Entrei em 2012 e trabalho lá atualmente 
Responsável pelo processo produtivo, com enfoque em qualidade e cumprimento de metas. 

Rapaduras Gaúcha
Auxiliar de produção 
2009 - 2012
Auxiliava na produção de alimentos','Estudava inglês, tenho nível intermediário, mas dei uma pausa no curso, também fiz curso de excel nível intermediário',NULL,'Administrativa, Financeiro','https://drive.google.com/open?id=1UF_MkjjZ1FHfD9T6n5QXUtzU15riXwOd',NULL,'Instagram','Não','R$3.000,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-11-20T01:40:00.000Z'::timestamptz),
  ('Janaine Souza Brito','janabrito475@gmail.com',NULL,'51995564347','1988-10-08',37,'Solteiro(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1QhCGloi2Z0yBezahks28aM9uxKYAJ6Is',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Vendedora: Lojas Becker de 18/07/2023 até o presente
Sócia  proprietária: Padaria vc confeitaria e cafeteria irmãos Ourique, responsável por compras e produção de 24/06/2021 a 26/07/2023
Vendedora: vida leve produtos naturais LTDA de 05/08/2018 a 18/04/2019 (Maringá PR)','Curso básico de informática',NULL,'Comercial',NULL,NULL,'Instagram','Não','De acordo com a função exercida','Sim',NULL,'A vaga sitada na campanha do Instagram',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-11-21T13:42:00.000Z'::timestamptz),
  ('Liliana Aparecida Geraldo da Silveira','lilianaags97@gmail.com',NULL,'51997227931','1997-04-24',28,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Bc51ifTnBJ1-bxHJmi76IB_-Ec-stvFr','Ciências Contábeis','Ensino Superior Incompleto','Uniasselvi','2024-08-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Trabalhei no escritório Contec Contábil, onde trabalhei no setor fiscal, cobranças e arquivo.
Cereais Coface, onde realizaca emissão  de notas fiscais, pagamentos, cobranças, e acertos com fornecedores e clientes. Atualmente  sou recepcionista no Centro Clínico Vida e Saúde, onde faço atendimento  via ligação, redes sociais e presencial e opero no caixa.','Rotinas administrativas, que engloba secretariado, departamento pessoal, vendas, telemarketing, contabilidade. Concluído em março de 2019',NULL,'Administrativa, Financeiro','https://drive.google.com/open?id=1OKSfnSGt_klqjrca96ggfaj2HNlA8hhh',NULL,'Instagram','Não','1700','Sim','Cereais Coface  3662 - 2034 ou 998658738
Ambiente Móveis  995782781','Estágio Financeiro','Não  sou muito boa em me descrever, mas gostaria muito de fazer parte do quadro de e ter a oportunidade  de mostrar quem eu sou de verdade, aprender e crescer junto a empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-11-23T00:23:00.000Z'::timestamptz),
  ('Matheus de Jesus','matheusj088@icloud.com',NULL,'51993586016','2001-02-02',25,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Hqn1OSDpIDYilC__1WbLsC0zENIhQ1fi',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Atualmente trabalho na empresa Vero Internet, faço parte do time de Retenção e Cancelamento de clientes. 
Iniciei minha jornada na empresa no ano de 2019 onde estou até hoje.
Hoje no setor trato diretamente com clientes que estão insatisfeitos com o produto e desejam o desligamento da empresa, atuo para tentar reverter esses cancelamentos e passar confiança para o cliente seguir utilizando nosso serviço.','Curso técnico em Mecânica Industrial',NULL,'Financeiro, Marketing, Engenharia','https://drive.google.com/open?id=1uVVsGgNrJhC8Qwdo9ttkDe7Q-t7wz4Ci',NULL,'Instagram','Nao','1600','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-11-23T16:46:00.000Z'::timestamptz),
  ('Priscila Pazzetti da Cunha','pazzettipriscila@gmail.com',NULL,'51980566140','1993-11-01',32,'Solteiro(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1LcqAXfoJij4gJ2g0fhBcMroFA3wnw4jA','Direito','Ensino Superior Completo','Unicnec Osório','2017-08-12','Sou formado','Benditta Marcenaria, cargo Auxiliar administrativo. Início em março/20 até julho/23. Atuava na área administrativa e financeira da empresa. Responsável pelas contas a pagar e receber, folha de pagamento funcionários. Também responsável pela documentação e organização de admissões e demissões, controle de relógio ponto.','Técnico em Gestão Financeira em andamento','Desenvolvimento e Liderança - DL 106/POA -INEXH - NOV/21','Administrativa','https://drive.google.com/open?id=1XHZYcuKfqSW9y-n4WlC0C6SQ0VYhVz60',NULL,'Indicação','Nao','R$2.000,00 a R$ 3.000,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-11-23T21:04:00.000Z'::timestamptz),
  ('Ana Carolina Engelke','carolengelke2310@gmail.com',NULL,'51995114755','2003-10-02',22,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=15mdq4TFKCmtqdO3RX93DSIHHAuKMZ11q',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','- Escola de Natação e Hidroginástica Super Esporte: recepcionista; de 02/2021 até o presente; Atendimento ao público, recebimento de mensalidades, preenchimento de fichas, manuseio de máquina de cartão.
- Prefeitura Municipal de Santo Antônio da Patrulha: Instrutora de dança e ritmos em projeto social; de 10/2022 a 03/2023;  Planejamento de aula, pesquisa de atividades por idade, organização em planilhas de Excel. 
- Qualicoco LTDA: auxiliar de escritório; de 04/2023 a 10/2023; vaga de jovem aprendiz pelo CIEE (ocupações administrativas)',NULL,NULL,'Administrativa, Comercial, Licenciamentos, Marketing','https://drive.google.com/open?id=1GaUdtXcXazD_clekMlawDF13_1bM5XI9',NULL,'Instagram','Não fui indicado por colaborador.','R$ 1.500,00 a R$2.000,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho alguma experiência com Excel, sou fluente em inglês e já fiz um intercâmbio de 4 meses em Nova York voltado para estudo na área de dança. Fui bailarina a vida inteira e tenho diversos certificados de cursos em vários estados do país. Seria uma oportunidade incrível fazer parte da Young e espero ser chamada para mostrar o quanto posso contribuir para a empresa!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-11-28T22:06:00.000Z'::timestamptz),
  ('Elizeu da Silveira Florindo','elizeusilveira0312@gmail.com',NULL,'55984127418','2000-12-03',25,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1D0cb9a-z4UUEc0k7lWbuySvYuNVjgt8h',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Grazziotin SA - Operador de Caixa e Auxiliar de Loja: (julho/2022 a setembro/2023) Experiência com Vendas, Cobrança, Contabilidade e Administração por pouco tempo.',NULL,'sim, vendedor destaque do mês.','Administrativa, Marketing','https://drive.google.com/open?id=1cIaM4TgfnSbaSnebn-c8PuXoB_1VIS7R',NULL,'Indicação','não','2.000','Sim','54984037323 telefone whats da loja 042 Pormenos a qual trabalhei.','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-11-29T06:17:00.000Z'::timestamptz),
  ('Alan rosa de pinto','alanrpinto2021@gmail.com',NULL,'51995584441','1994-09-20',31,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1AWB7qYqDliAoDPzFae1tOeUgcp7RrWgs',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Buscando novas experiências',NULL,NULL,'Financeiro',NULL,NULL,'Facebook','Não','2000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-12-01T19:03:00.000Z'::timestamptz),
  ('Guilherme Coelho Cardoso','guicsilveira12@gmail.com',NULL,'51980316228','2002-08-27',23,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1PW6zsWd5zQ1NYaZhgGcOXa7Yxam9tpyR','Administração de empresas','Ensino Superior Incompleto','Faculdades integradas de Taquara (FACCAT)','2024-11-27','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Obtive experiência profissional na empresa (HIAB GUINDASTES) empresa multinacional, trabalhei no setor comercial com demandas de pedidos de clientes, comunicação com representantes, venda de peças atuando juntamente com o analista do pós vendas, atuação no sistema TOTVS plataforma ERP muito utilizado em empresas de grande porte, no começo de 2021, como estagiário, logo após fui para o setor Logístico já com novo cargo e não mais como estagiário e sim como efetivado pela empresa, onde verificava estoque, analisava compra de materiais, solicitação de compras, atuando juntamente com setores financeiros e fiscais onde tinha que ter o máximo de foco possível em planilhas e indicadores em nossa fábrica.','Graduando em administração de empresas, seguindo no quarto semestre com foco em me formar em 2024 pela faculdade Faccat, cursei língua inglesa durante 8 anos e obtive destaque na instituição Wizard e logo após com diploma considerado bilíngue, adquiri básico conhecimento em espanhol com duração de 3 meses na Universidade federal Ifsul, logo após na mesma instituição (Ifsul), fiz curso de análise de sistemas de computação e como gosto de adquirir conhecimentos em diversas áreas e ramos fui atrás de cursos na parte fiscal/financeira na plataforma (Coursera), durante 1 ano de estudos para que já estivesse preparado para futuras experiências envolvendo área administrativa.','Sim, possuo certificados em Excel avançado, Certificação língua inglesa, Língua espanhola, Finanças e certificado em Análise de Sistemas de computação.','Administrativa, Comercial, Financeiro, Marketing','https://drive.google.com/open?id=1PGocCMJHUSWTU4rnjUoJCdsa3fv6GGx6','https://drive.google.com/open?id=1sqyfigxag38wiePZQJId6VwxGlp0q6jS, https://drive.google.com/open?id=1RztvKRre8WJkoNYGC_dqcMILlHiVEd7f','Me Informei Através Do Contato Da Empresa.','Não fui indicado.','Com base na minha expectativa e realidade acredito que entorno de R$ 2.200,00.','Sim','Moisés Medeiros (51 9748-4974) Gerente Logístico 
Jeferson Airoldi (51 9980-7771) Gerente setor Compras
Diego Tressoldi (51 9668-0383) Analista','Quero inscrever-me no banco de talentos da Young!','A quem estiver interessado em me contratar saiba que o candidato Guilherme é uma pessoa simples, esforçada que não mede os limites para chegar em seus objetivos, um rapaz que preza por seus colegas e pelo lugar onde exerce sua função, ou seja quem estiver lendo essa mensagem saiba que o Guilherme caso sejas contratado será exemplo de pessoa e profissional com um ótimo carisma com todo seu time, pois é isso que preza em primeiro lugar.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-12-01T19:58:00.000Z'::timestamptz),
  ('Gisele de Lara Carneiro Perassollo','giseledelaraarquitetura@outlook.com',NULL,'55996887866','1994-07-30',31,'Casado(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1c7aNOcMJAeGViRNmtXOFy8PluD6hOU19','Arquitetura','Pós-graduação Incompleta','Universidade Integrada do Alto Uruguai e das Missões Campus Santiago','2019-12-07','Sou formado','Gisele de Lara Arquitetura e Construção- 2022- Atual
Arquiteta urbanista e proprietária/fundadora- Trabalha com projetos arquitetônicos e complementares, regularizações, projetos para financiamento, administração e gerenciamento de obras, execuções, perícias, laudos, projetos comerciais e residenciais, interiores, reformas e ampliações, projetos luminotécnicos,  projetos de acessibilidade, loteamentos, projetos urbanisticos, PPCI, consultorias, e dentre outros pertinentes da área.
Trabalhos tanto de âmbito público como particular. Orçamento, cronogramas e planilhas em geral.

Profissional liberal- 2020-2022
Arquiteta e urbanista- Trabalha com projetos arquitetônicos e complementares, regularizações, projetos para financiamento, administração e gerenciamento de obras, execuções, perícias, laudos, projetos comerciais e residenciais, interiores, reformas e ampliações, projetos luminotécnicos,  projetos de acessibilidade, loteamentos, projetos urbanisticos, PPCI, consultorias, e dentre outros pertinentes da área.  Orçamento, cronogramas e planilhas em geral.

Desenhista profissional-Cadista- 2018-2019
Auxiliar de engenheiros e arquitetos- acompanhar e fazer medições, projetos em autocad, sketchup, renderizações e dentre outros.

Prefeitura Municipal de Jaguari- 2016-2018
Estagiária de arquitetura e urbanismo- acompanhar análise de projetos, elaboração de desenhos arquitetônicos, auxiliar na elaboração e execução de projetos, relatórios de obras, orçamentos, cronogramas, medição, e dentre outros, principais obras se destacam Ponte de Rodagem de Jaguari, Nova Sede da Escola São José, Creche Doce Encanto, Reforma e ampliação da Escola Tia Mana, pavimentação Poliédrica e asfáltica, quadras poliesportivas e dentre outras.

Prefeitura Municipal de Nova Esperança do Sul- 2014-2015
Estagiária de técnico de Segurança do trabalho- acompanhar documentação de segurança do trabalho, agendar reuniões, fiscalização em obras, consultas e dentre outros.','Sou arquiteta urbanista, atualmente curso Mestrado em Engenharia na Unipampa-Alegrete, sou pós graduada em Mentoria para Educação tecnológica e profissional, antes do mestrado cursava o superior em Tecnologia de sistemas elétricos (incompleto-2 anos cursados), cursos de média e curta duração que fiz na área são de Perícia Judicial, pela Escola Brasileira de Pós graduação-EBPÒS, Brasil, Curso de extensão de 32h de eletricista com ênfase em instalações fotovoltaicas, pelo IFFAR-Jaguari, Curso de projeto de prevenção de incêndio em obras existentes- 6h-IFCON, Brasil  e Minicurso de regularização de imóveis- 21 h - com a engenheira Leila Brito.
Curso de curta duração área contábil- Intensivão do setor fiscal- 5h- Mundo contábil treinamentos LTDA., Empreendedorismo e canvas: aprenda a estruturar um modelo de negócio- IFFAR-Campus Jaguari-RS e Administração do tempo-40h- UNINTER.
Cursos de curta duração área saúde mental e emocional- Curso de mediunidade e sensitividade- módulo I- 10h- Conexão Estelar, Formação em Radiestesia e radiônica- 90h- Radiestesia, gráficos de radiestesia e mesas radiônicas- Grupo de Reiki ME., Curso de Reiki I- O despertar- 16h- Conexão Estelar-ES/Brasil., Maratona do arquétipo- 7h- OUKI experiências.',NULL,'Arquitetura, Engenharia','https://drive.google.com/open?id=1JlQx-2yvzx_E78QkNM0Byd5NSNrtF-8g','https://drive.google.com/open?id=1SDCzTByUKt_aiC15Yrr8THS1fQAQ8AQI','Construção Do Monte Carlo Na Cidade De Alegrete','não','5000 ou mais','Sim',NULL,'arquiteto e urbanismo, construção civil/engenharia civil','Bom dia, sempre fui apaixonada pela construção civil, começei a trabalhar na área antes mesmo de formada em arquitetura e urbanismo, vim de uma família pobre, então me formar foi um grande feito e depois batalhar nos trilhos desta profissão, sempre estou me atualizando nesta área, sou autodidata, boa comunicação e disciplinada, levo a sério meu trabalho, que é minha prioridade, aprendi sozinha a mexer em vários softwares, mas os mais usados, são autocad, lumion, sketchup e dentre outros, já fui voluntária na escola Getulio Vargas, o qual ministrava a disciplina de artes, gosto de poder passar ensinamentos ao próximo, e aprender, sou muito comunicativa, e não tenho medo de por a mão na massa, já peguei parelho com os pedreiros em algumas obras em atraso, no portifólio tem obras autorais apenas, feitas e executadas por mim, e algumas administradas, gosto de gastronomia, nas festas de fim de ano, sempre sou eu que cuido da parte gastronômica dos eventos em família e amigos, aprendi com a minha mãe a ser afeituosa ao próximo e umas das formas de demonstração de apreciação da presença do próximo é a arte de cozinhar, adoro cozinhar do básico ao avançado, sempre planejo um bom cardápio, acompanhado de boas bebidas e sobremesas, tenho cursos de reiki, radiestesia e dentre outros, já mencionado anteriormente, pois creio que a arte da saúde mental reverbera mais no dia a dia do que o corpo físico, fiz estes curso para me ajudar e ajudar o próximo, sou ética, mantenho respeito e sou muito pontual. Estou disponível para uma conversa presencial a qualquer momento, faço atividades físicas regularmente academia e corrida, gosto da espiritualidade, paz e liberdade, além da construção civil, fiquem com Deus, aguardo um retorno positivo, abraço.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-12-06T13:12:00.000Z'::timestamptz),
  ('Franciara Viera do Couto','francoutov24@gmail.com',NULL,'55984162985','1993-02-13',33,'Solteiro(a)','1','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1lI3Sxjmz1K6spUTPgIkn2ZrzLs3FqjVy','Gestão comercial','Ensino Médio Completo','Faculdade Cruzeiro do sul','2024-12-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Atualmente trabalho como promotora na Ambev','Tenho curso de auxiliar administrativo com experiência na área','Sim, curso de nota fiscal eletrônica e auxiliar administrativo','Comercial, Estágio','https://drive.google.com/open?id=1rjZo6Ss4zeT8f2bc7kmWrPYp9zXe6-61',NULL,'Google','Nao','1800','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-12-27T01:53:00.000Z'::timestamptz),
  ('Flávia teste','flavia@youngempreendimentos.com.br',NULL,'51996583880','2001-10-07',24,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1tPLX9RTytGFk9bESRvCoAQt2u7eSGyjE','Administração de empresas','Ensino Superior Incompleto',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Teste',NULL,NULL,'Administrativa',NULL,NULL,'Agência de Empregos','Flávia','5000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2023-12-27T12:55:00.000Z'::timestamptz),
  ('Vitória Muniz Pereira Alós','vivimunizalos@gmail.com',NULL,'51997869569','2004-04-03',21,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1RZJhSFlXy88NqQsJg8E-hV7lg6ZwxsUg','Administração de empresas','Ensino Superior Incompleto','Uniasselvi','2026-03-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','.',NULL,NULL,'Administrativa, Estágio, Financeiro','https://drive.google.com/open?id=1Za29PyJza9vHQVMcRbqh4DHxNJIDNaCQ',NULL,'Instagram','Não','1.500,00','Não',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-04T17:41:00.000Z'::timestamptz),
  ('Mateus de Souza Carvalho','mateus33e@gmail.com',NULL,'55996864068','2001-01-22',25,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1fjmbBiD6_SrdL89DjHBRuB3UiKTrRHyO','Gestão de Turismo','Ensino Superior Completo','Instituto Federal de Educação, Ciência e Tecnologia Farroupilha (IFFar) - Campus São Borja','2022-08-11','Sou formado','SB Despachos Aduaneiros
Auxiliar de serviços de importação e exportação. 
07/2023 à 07/2023
Executa serviços administrativos diversos em apoio à área, como a organização de arquivos, reprodução de cópias, retirada de materiais no Almoxarifado, atendimento telefônico, envio de documentos, gestão de planilhas entre outras atividades.

Cerealista Albaruska
Auxiliar Administrativo
set/2019 até ago/2021 (1 ano e 11 meses)
Apoio ao departamento comercial no atendimento telefônico ao cliente, direcionando as chamadas às equipes técnicas de acordo com a solicitação.

Auxiliar de almoxarifado
Colocação e contagem de produtos em prateleiras. Colocação de produtos embalados em vários paletes por dia usando Paleteira Hidráulica Manual.

Recepcionista em geral
Esclarecimento de dúvidas e encaminhamento de questões, resolução ou comunicação de problemas aos superiores para atender os clientes. Recepção dos clientes de maneira cordial, respondendo a perguntas gerais, verificando o objetivo da visita e encaminhando-os aos escritórios específicos.

Exercito Brasileiro 11 meses','Técnico em Eventos, e acadêmico do curso Técnico em Logística, período noturno.',NULL,'Administrativa','https://drive.google.com/open?id=14y0GdURiny-gFE7WQ-ece-pNhh4ew7qm',NULL,'Instagram','Não','1700','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Estudo Inglês','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-15T11:28:00.000Z'::timestamptz),
  ('Edna Pires','luanasouzapires71@gmail.com',NULL,'51997212141','1995-05-18',30,'União estável','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1KlF1pbfsMJH1B1w51jGUptSRb8Dy519p','Tecnólogo Processos Gerenciais','Ensino Superior Incompleto','UniFael','2024-08-17','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Empresa: RR Shoes
Função: Operador de produção
Período: 18/08/2021 - 30/08/2022
Atuava na produção.','Curso Técnico em Administração - IFSul Polo Furg',NULL,'Administrativa, Estágio, Financeiro','https://drive.google.com/open?id=1YtbAgdLe49LtguXJbIqnrtVKQFJkD7Qz',NULL,'Agência de Empregos','Não','1.600,00','Não',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-15T21:22:00.000Z'::timestamptz),
  ('Kerulyn Santos Schenkel Chaise','kerulynschenkel@gmail.com',NULL,'51999120140','1999-10-09',26,'Casado(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1PSAiX8BIsk2jVNpL3Y62RL0xU7MC3Dug','Psicologia','Ensino Superior Incompleto','Faccat','2025-01-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','● CAPS SEMPRE VIVA- Santo Antônio da Patrulha (2018//2022-) Recepcionista e Auxiliar Administrativo.
● CENTRO CLÍNICO VIDA E SAÚDE- Santo Antônio da Patrulha (2023 até o presente momento)- Auxiliar Administrativo e Faturamento.',NULL,NULL,'Administrativa, Financeiro, Licenciamentos','https://drive.google.com/open?id=12qCw1mMr-b3bqR-tg357Ca6jt2jQeTyQ',NULL,'Instagram','Não','1.900,00','Sim',NULL,'Financeiro','Dinâmica, comunicativa, responsável, organizada e proativa. Experiência no uso de computadores, conhecimento do pacote office, agendamentos, emissão de notas fiscais, folha de pagamento e funções atribuídas a área financeira e de faturamento.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-15T21:25:00.000Z'::timestamptz),
  ('Lidiane Machado','lidiane.machado44@gmail.com',NULL,'51995169536','2001-12-31',24,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1CwGHqehIhDpBAYg3-rEYACigmqY3ZnSJ',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Drebes e Cia Ltda - cargo Caixa Operadora - admissão 23/10/2021, demissão 03/01/2024 - atendimento ao cliente, cobrança aos devedores inadimplentes, organização de notas fiscais, entre outros.

DeMello Alimentos - cargo Auxiliar Administrativo - admissão 08/10/2020, demissão 03/05/2021 - atendimento ao cliente, emissão e organização de notas fiscais, organização de documentos, recebimento de serviços, entre outros.',NULL,NULL,'Administrativa, Comercial, Financeiro','https://drive.google.com/open?id=153OHPvQ35q_JHbVbNpG0h9s4ghi_Q6GA',NULL,'Agência de Empregos','Não','R$1.800','Não',NULL,'Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-15T21:31:00.000Z'::timestamptz),
  ('Maria Paula da Silva Brusch','officepaula3@gmail.com',NULL,'51995367326','1995-11-27',30,'Casado(a)','2','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1OEYCdYLm5rVRhERlvXROIwgbuiRxHct6',NULL,'Ensino Médio Completo','Jovem Profissional',NULL,'Não, no momento pausei/parei por um período.','Clínica HSA medicina do trabalho, trabalhava na área administrativa desempenhava a função de agendamentos, envios ao e-social emissão de NFs, ajudava nos exames, período de 1 ano e 6 meses sai em outubro/2023','Curso em administração no período de um ano, informática, inglês intermediário',NULL,'Administrativa',NULL,'https://drive.google.com/open?id=1zr8i56a3bOATtyReN-Hgr2S5pv0O4vAU','Agência de Empregos','Não','1,500 mínimo','Não',NULL,'Administrativo',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-15T21:33:00.000Z'::timestamptz),
  ('Priscila Pazzetti da Cunha','pazzettipriscila@gmail.com',NULL,'51980566140','1993-11-01',32,'Solteiro(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1irXTZHV58QKyB5L71J_ksYNJPl2w93Ia','Direito','Ensino Superior Completo','Unicec Osorio','2017-08-12','Não, no momento pausei/parei por um período.','Última empresa em que trabalhei foi ma Benditta Marcenaria, empresa de Santo Antônio da Patrulha, ocupava o cargo de auxiliar administrativa e financeiro. Iniciei em março/2020 a julho/2023. Principais atividades realizadas na empresa foram análise de contas a pagar/receber, atualização do sistema próprio da empresa seja na área financeira e administrativa. Responsável pela folha de pagamento, organização de licenças entre outros documentos.','Formada em Direito, ano 2017. Iniciei curso técnico de gestão financeira em 2023, faculdade Unisinos, porém tranquei no final do mesmo ano.',NULL,'Administrativa, Financeiro, Licenciamentos','https://drive.google.com/open?id=1dQ02CHjtk1K3VU2u_ngQP14ilAExzxU1','https://drive.google.com/open?id=1SsEG3IcURnrU9enpDnKWx1bgzmbGYJbv','Indicação','Nao','A combinar','Sim',NULL,'Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-15T21:35:00.000Z'::timestamptz),
  ('Wilson Jerônimo Souza','wilsonsouza3092@gmail.com',NULL,'51995320207','2003-06-27',22,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1rV74Pn7v2sw-hfOd7hL3ELoVhfVE6mHQ','Ciências Contábeis','Ensino Superior Incompleto','Uniasselvi','2026-12-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1)Atelier de Calçados Canabi
2)Preparador de Calçados 
3)01/07/2019 ao momento
4) colagem de forro em injetados de ABS, PVC e EVA, introdução de cola em superfícies de sola.','Informática Básica - Escola Técnica e Faculdade Jovem Profissional - 2019
Windows
Internet
Excell 
Word 
PowerPoint 
Configuração e programas internos do computador 

Rotinas Administrativas - Escola Técnica e Faculdade Jovem Profissional - 2022
Contabilidade
Auxiliar administrativo
Departamento pessoal
Marketing pessoal','Informática Básica - Escola Técnica e Faculdade Jovem Profissional - 2019 Rotinas Administrativas - Escola Técnica e Faculdade Jovem Profissional - 2022','Estágio, Financeiro',NULL,NULL,'Agência de Empregos','Não','1.800,00R$','Não','Marinês Gomes Souza - Pós graduanda em Controladoria, Auditoria e Compliance - 996964159 Asun Supermercados (Gravataí)','Vaga Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-15T21:42:00.000Z'::timestamptz),
  ('Taylor Silva da Silveira','taylorsilveirafotos@gmail.com',NULL,'51998777841','1996-05-23',29,'Casado(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1ERGogE9RZUlMc9EYu-t0UCZsiJYSJYmE','Não tenho.','Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Última empresa foi no Hospital de Santo Antônio da Patrulha onde iniciei como Auxiliar Administrativo na então Santa Casa e logo após a transição para o Vila Nova iniciei fixo na recepção da emergência. Total de 3 anos de empresa.',NULL,NULL,'Administrativa, Comercial, Financeiro','https://drive.google.com/open?id=1Hryd6qI5HnxXkFiFd4slikYLE7UNH5HH','https://drive.google.com/open?id=1ulRdo1g8R_eZHcQhqcvvrSAajRyvdOim','Agência de Empregos','Não.','2.500,00','Não',NULL,'Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-15T21:47:00.000Z'::timestamptz),
  ('Maria Eduarda dos santos','dudasantos251004@yahoo.com',NULL,'51997866709','2004-11-05',21,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1zpeRysl00sZdgtiM2Y2N0zVGbjqlC6G5','Administração de empresas','Ensino Médio Completo','Uniasselvi','2027-02-24','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Atualmente trabalho na Masal indústria, mas procuro algo que possa me dar novas experiências. Trabalho como auxiliar adm e telefonista, data de início: 04/07/2022.','Estou cursando na área de administração de empresas!',NULL,'Administrativa',NULL,'https://drive.google.com/open?id=16uznM9O_1mFDj5u6xpuI1hEx583oEtS4','Instagram','Não.','1,3','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-15T22:28:00.000Z'::timestamptz),
  ('Renata Borba','borbar85@gmail.com',NULL,'51996661152','2006-04-16',19,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1gij2eGcWFsNbME8XFTtLVd4ZAuXvc1ns',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Estagiária na prefeitura de Santo Antônio da Patrulha,trabalhei por um ano como recepcionista na secretária de agricultura e meio ambiente.',NULL,NULL,'Administrativa, Marketing','https://drive.google.com/open?id=15p06RqQ5EJ3txgvdy6mW5jzd5wz74jpx',NULL,'Instagram','não','1500','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-15T22:34:00.000Z'::timestamptz),
  ('Amanda consul portal','amanda.consul09@gmail.com',NULL,'51995462569','2005-08-09',20,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1cVJIe-VjY_NwE3r2IVtAhgk9Ise3T391','Não possuo formação','Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','1- Hiab/ argos guindastes 
2- setor financeiro
3- outubro de 2020 a outubro de 2022
4- minhas atividades eram contas a receber, relatórios diários, interação com o comprador, arquivamentos, recebimentos de boletos e pagamento de tais..','Cursada em word e Excel 
Cursando línguas desde 2020 na escola wizard',NULL,'Administrativa, Comercial, Financeiro, Engenharia','https://drive.google.com/open?id=1WoP5InptRIrlZzHDen_ecd4Ljwu0vtOV',NULL,'Instagram','Marcela selbach','Minha expectativa salarial é de 1.200','Não','Rocheli Mendes/Hiab guindastes- +55 (51) 99811-3190','Quero inscrever-me no banco de talentos da Young!','Me chamo Amanda consul, tenho 18 anos e desenvolvo a língua inglesa desde 2020. 
Trabalhei durante 2 anos no setor financeiro de uma multinacional, atualmente procuro crescimento pessoal e profissional. 
Sou uma pessoa alegre e proativa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-15T22:45:00.000Z'::timestamptz),
  ('Leandra Muniz de Fraga','lehmuniz10@gmail.com',NULL,'51980211367','2003-07-03',22,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Cp-UkpXQVPBljtpTayANUR-qWaociJGO',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','1) Local: Senhorita Bacana
2) Vendedora e marketing
3) Início 06/01/2022 final 07/06/2023',NULL,NULL,'Comercial','https://drive.google.com/open?id=16fhf0-q734kdNx4MHcO0fghTzk2jivOl',NULL,'Instagram','Sim, Vitória Pereira','1650','Não','Franciele Tremarin
Senhorita Bacana
51993827869','Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-15T23:33:00.000Z'::timestamptz),
  ('Camila Espíndola Messaggio','camilaespindola767@gmail.com',NULL,'51980163375','1993-03-05',32,'Casado(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Uby2lC3ZXpRysVPPXOMzfsg7FKoNBCUJ','Administração de empresas','Pós-graduação Incompleta','Uniasselvi',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1- Mercado Gomes: Caixa operadora, 2 anos
1- Mercado Santos Muniz: Atendente, 2 anos
1- Natural light: Atendente e Caixa operadora, 1,6meses.',NULL,'Cursos de Informática Básica ( Senar )','Administrativa',NULL,NULL,'Agência de Empregos','Não','A combinar','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa calma, paciente e dedicada estou em busca de uma oportunidade para crescer no ramo da Administração.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-15T23:55:00.000Z'::timestamptz),
  ('Mônica Cristina Gomes dos Santos','monicasantos@furg.br',NULL,'51999810597','1988-12-19',37,'Divorciado(a)','2','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1pyCAiXSrUcjKOq7zCaYapTNEEy6P9VxQ','Engenharia Agroindustrial e','Ensino Superior Incompleto','UNIVERSIDADE FEDERAL DO RIO GRANDE - FURG','2024-01-15','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Trabalhei em diversos seguimentos e variedades de cargo. Desde a limpeza a gerência. Trabalhei.na Colômbia em Bogotá na em empresa Teleperformance; Whirlpool Manaus - Amazonas; Hope Paraná. Alguns exemplos. Gosto de desafios e faço sempre o meu melhor em tudo, não importa o seguimento.','Habilidades administrativas, pacotes office em dia, criação e edição de material para divulgação físico ou em redes. Copywriting, criação de macros, e-mails formais e etc. Organização e padronização de processos e rotinas.','6 sigmas; Power bi;','Administrativa, Financeiro, Licenciamentos, Marketing','https://drive.google.com/open?id=1MEjlPSAbmVY9Nm8vhcjDruvwYllu04Fu',NULL,'Agência de Empregos','Não','1999','Sim',NULL,'Estágio Financeiro','Sou eclética, falo espanhol fluente, amo design gráfico, domino, mas estou sem computador, logo, atualmente minha ferramenta de trabalho é o celular e os aplicativos que ele suporta. Faço muaythai, sou cantora (mas meu público são somente os de casa rs). Tenho TDAH o que me possibilidade muita criatividade. Sou mãe solo de 35 anos de 2 Homens (11 e 16 anos). Vim morar em SAP somente para estudar e buscar uma vida melhor para nossa família. Somos muito unidos, trabalhamos em cima dos nossos objetivos e esse ano queremos ir nas Maldivas hahaha. Ensinando a eles que nada é impossível só precisa de um bom planejamento, estratégia e mão na massa!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-16T00:14:00.000Z'::timestamptz),
  ('Rayssa Dias Pereira','prayssa593@gmail.com',NULL,'51994803859','2006-04-26',19,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1NMgoErmtcXfG3ayN1ouZVFiSnqUSsryx','No momento, nenhuma ainda.','Ensino Médio Completo','EEEM Patrulhense','2024-12-20','Não, no momento pausei/parei por um período.','Comecei meu primeiro emprego como atendente no açaí da Moah.
Entrei dia 22/02/2022 até 15/01/2024 
Tenho experiência em atendimento ao público, sou comunicativa e atenciosa.','Estou iniciando o terceiro ano do ensino médio.',NULL,'Comercial','https://drive.google.com/open?id=1sMg33pwBPbiIluGVgKOzOBued4Psc5z3',NULL,'Instagram','Marcela Selbach e Flávia','1.700','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa completamente comunicativa que adora contar histórias e tudo mais. Amo minha rotina do dia dia mesmo sendo bastante corrida, gosto de conhecer lugares novos e fazer novas amizades.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-16T00:43:00.000Z'::timestamptz),
  ('William mello','williammellocrs@gmail.com',NULL,'51995540485','2001-03-15',24,'União estável','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1HHxurzjqkgfm1f9ApUPGQKj3xiVXRjPx','Engenharia Civil','Ensino Superior Incompleto','UniRitter','2028-12-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Concreto.com, era gestor de logística e frota, empresa que prestava serviço de concreto usinado para capão da canoa e região, foram 3 anos, saindo agora em dezembro pois me mudei pra Santo Antônio',NULL,NULL,'Comercial',NULL,NULL,'Indicação','Não fui','4000','Sim',NULL,'Comercial','Não consegui anexar meu currículo, envio por WhatsApp se houver interesse, estou querendo crescer dentro da empresa ajudar a ela ir mais longe.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-16T01:11:00.000Z'::timestamptz),
  ('Bruno Oliveira da Sil a','brunooolvrs12@gmail.com',NULL,'51997143324','2005-09-01',20,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Av1s088ftbg9Z94J3b-whrjkciOCSIsQ',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Estou à procura de uma vaga de emprego onde possa iniciar minha carreira profissional, e que me permita aplicar minhas habilidades e conhecimentos para sim crescer profissionalmente.',NULL,NULL,'Administrativa, Financeiro','https://drive.google.com/open?id=1KCmOE8shxf5-e063yZ1Y_TwgM6kiUMu0',NULL,'Instagram','Não','1.412,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','No momento concluí minha jornada estudantil na escola e estou terminando de tirar minha CNH. No final de 2023 concluí um curso de Finanças pessoais e planejamento Financeiro, oferecido pela PUCRS.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-16T02:57:00.000Z'::timestamptz),
  ('Nathália Muniz de Carvalho','nataliamcarvalho4@gmail.com',NULL,'51996055036','2005-11-22',20,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Li0eB690K2UWap1Yc2S4HMzg8f61KBAq',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','A procura do primeiro emprego.',NULL,NULL,'Administrativa, Comercial, Estágio, Novos Negócios','https://drive.google.com/open?id=1csfMFPqGKlLJOLfuFBu0pZxXQv9R79r6',NULL,'Instagram','Não','1500','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-16T03:00:00.000Z'::timestamptz),
  ('Manuela Silveira Adam','manuadam959@gmail.com',NULL,'995500784','2006-11-06',19,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1cujZNx56BJzSxLDs9pVUYERcfAPhuCJK',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Sem experiência.',NULL,'Curso Trainee Coaching I (pacote office)','Administrativa',NULL,NULL,'Instagram','Não','700','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Atualmente estou no 3 ano do E.M, como já mencionado, possuo um curso de pacote Office, além de ter um inglês intermediário.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-16T04:27:00.000Z'::timestamptz),
  ('Carla Chaiane Gomes de Souza','carlachaianegomes@gmail.com',NULL,'51998117481','2003-05-24',22,'Solteiro(a)','1','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1e11X6aeeIOLsjZ93q4FjNmpXDSgCLXd6','Administração de empresas','Ensino Superior Incompleto','Uniasselvi','2025-12-30','Não, no momento pausei/parei por um período.','Casa do Sonho, garçonete 2020 a 2022 
Café da Nara (stand Grand Park) 2023 a 2024','Rotinas Administrativas 2017
Informática Básica 2016','Rotinas Administrativas','Administrativa, Comercial, Financeiro',NULL,NULL,'Agência de Empregos','Não','2000','Não',NULL,'Auxiliar administrativo','Sou a Carla, tenho 20 anos, sou mãe do Valentin de 2 anos. Minha maior motivação é o meu filho, todo meu esforço é por ele, para o bem dele. Hoje estou a procura de algo no setor onde estudo, estou no processo de habilitação na categoria B, seria um prazer fazer parte da equipe.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-16T12:05:00.000Z'::timestamptz),
  ('Gisele dos Santos Amaral','amaralgisele178@gmail.com',NULL,'51995601441','1986-03-11',39,'Casado(a)','3','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1c1CZZYCyK-s3xzYacf1vjfNBfOE67n0Y',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Preparadeira de Calçados, 
CLÉLIA S.F. SOARES E MORAIS
Santo Antônio da Patrulha, RS |2012 - 2013
•	Preparação de calçados.
Auxiliar contábil,
 GTMM IND. COM. E SERV. EM ALIMENTOS LTDA
Santo Antônio da Patrulha, RS |2011 - 2012
•	Classificação e organização de documentos para contabilidade, arquivando-os em ordem cronológica de data ou de lançamento nos livros fiscais.
•	Organização dos documentos financeiros da empresa, incluindo a classificação contábil e a conciliação das contas, mantendo o sistema abastecido para a geração de relatórios.
Auxiliar de escritório, 
QUALICOCO LTDA
Santo Antônio da Patrulha, RS |2010 - 2011
•	Auxílio nas rotinas do departamento administrativo, organizando documentos e realizando tarefas variadas como fotocópia e envio de correspondência, colaborando para o melhor andamento das atividades do escritório.
•	Verificação dos dados de documentos e planilhas, prezando pela ausência de erros nos documentos e pela precisão das informações.
•	Solicitação de reposição de materiais de escritório ao almoxarifado, realizando os pedidos conforme as necessidades de trabalho da empresa.
•	Expedição de documentos internos e externos, físicos ou eletrônicos, realizando os protocolos de controle para consulta, caso necessário.
Empacotadora, 
Lins Ferrão Artigos de Vestuário Ltda
Santo Antônio da Patrulha, RS |2005 - 2010
•	Recolhimento de produtos deixados pelos clientes na loja, encaminhando os itens ao setor responsável pela reposição nas prateleiras.
•	Conferência e empacotamento de produtos em sacolas no caixa de retirada, reposição mercadorias no setor de banho.
•	Maio de 2007 passei a exercer a função de de vitrinista,
•	Criação de projetos temáticos para vitrines e manequins a fim de expor produtos sazonais.
•	Melhoria do aspecto geral da loja através do posicionamento correto das vitrines e expositores de produtos.
•	Junho de 2009 passsei a exercer a função de vendedora.
•	Responsável por atender o cliente na loja e oferecer opções de acordo com as expectativas, buscando a satisfação com a compra.

Balconista,
 Aura Albertina
Santo Antônio da Patrulha, RS |2005 - 2005
•	Atendimento de clientes no balcão da loja, apresentando as opções de produtos disponíveis e descrevendo as vantagens de cada um, de forma a impulsionar as vendas.
•	Limpeza e organização do ambiente de trabalho, de forma a garantir um espaço agradável a todos.
•	Reposição e realocação de mercadorias no estoque, nas prateleiras e vitrines, com atenção especial aos espaços de exibição ao cliente.',NULL,NULL,'Financeiro',NULL,NULL,'Agência de Empregos','Nao','1700','Não','QualiCoco','Financeiro','Em busca de novas oportunidades.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-16T13:01:00.000Z'::timestamptz),
  ('Jessica Garcia Pellisoli','jessicapellisoliagro@hotmail.com',NULL,'51995393092','1995-02-18',31,'Solteiro(a)','0','Sim','Caraá/rs','https://drive.google.com/uc?export=view&id=1TKAFTtF7SBPPjZL0po8J0UG_1qWPBSRt','Técnico em enfermagem','Ensino Médio Completo','Unitec escola técnica',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Trabalho como socorrista na freeway, trabalhei na CCR ViaSul como auxiliar administrativo durante quase dois anos, trabalhei em laboratório de análises clínicas durante dois anos, trabalhei como atendente em farmácia.',NULL,NULL,'Administrativa, Comercial, Novos Negócios','https://drive.google.com/open?id=1jDOJH9L1wNaX9vHzdB6eHiKrmSoyFnvW',NULL,'Agência de Empregos','Não','1.700','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-16T17:11:00.000Z'::timestamptz),
  ('Bruna Gonçalves dos Santos','brunasantos58615@gmail.com',NULL,'51991051977','1985-06-08',40,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1xQrrqFCrr88yUAo5SR97yqifTo73z8nY',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Abrigo Social Nova vida , Educador Social , de Abril 2023 à Dezembro 2023. Tenho curso de cuidador de idosos e Técnico de enfermagem não concluído. Principais características do Educador Social era encaminhar pessoas debilitadas por alguma função social , à voltar a viver em sociedade.',NULL,'Sim. Educador Social , Cuidador de Idosos , Fiscal de loja.','Comercial','https://drive.google.com/open?id=1N7sLZJ78ZqAKxJyJ2x89yXYQPo6L8IF4',NULL,'Agência de Empregos','Não','1412','Não',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-16T21:35:00.000Z'::timestamptz),
  ('Amanda consul portal','amanda.consul09@gmail.com',NULL,'51995462569','2005-08-09',20,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1A8KYkv8k9HEnOJi8a96JTmsuKmdNCb3W','Não estou cursando','Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','1- Hiab/argos guindastes 
2- setor financeiro
3- outubro de 2020 a outubro de 2022
4- na minha área eu realizava relatórios diários de contas a receber, e-mail para compradores, cobranças e arquivamentos','Sou cursada em word, Excel e curso línguas desde 2020 na escola wizard',NULL,'Estágio, Financeiro, Licenciamentos, Engenharia',NULL,NULL,'Instagram','Marcela selbach','Minha expectativa salarial é de a partir de 1.300','Não','Hiab/argos guindastes
Rocheli mendes- +55 (51) 99811-3190
Hiab - 3662.7700','Estágio Financeiro','Olá, me chamo Amanda consul, tenho 18 anos. 
Possui carteira de motorista B e experiência de 2 anos no setor financeiro. 
Curso línguas desde 2020 e sou cursada em informática. 
Gostaria muito de fazer parte da equipe, e crescer juntamente a vocês! 
Desde já, grata.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-16T21:42:00.000Z'::timestamptz),
  ('Andressa Arebalo dos Santos','andressaareballo@gmail.com',NULL,'55996593322','1999-11-10',26,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1zNDvXvo2PcnX_-Ae9eEHzUEKObKRXv9Z','Biologia','Ensino Superior Completo','Instituto Federal Farroupilha','2024-01-18','Sou formado','Estou me candidatando ao primeiro emprego. Os demais estágios que realizei foram na área de educação.',NULL,NULL,'Estágio, Licenciamentos',NULL,NULL,'Instagram','Não','1000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho bastante conhecimento e habilidade para trabalhar com tecnologias, computadores… Acabei de me formar em Licenciatura em Ciências Biológicas e gosto muito da área de questões ambientais. Além disso, gosto de conhecer lugares diferentes e aprender novas habilidades.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-16T22:16:00.000Z'::timestamptz),
  ('Caiena Kohls Lopes','caiena.kohls23@gmail.com',NULL,'55984279015','1994-10-10',31,'Solteiro(a)','0','Sim','Manoel Viana/rs','https://drive.google.com/uc?export=view&id=15SF7bovLBZRMHqpTndDKXGyjRHgdjuqu',NULL,'Ensino Superior Incompleto','ULBRA',NULL,'Não, no momento pausei/parei por um período.','Vendedora - Camelodromo Alegrete RS (6 anos) Ano: 2007 á 2013
Repositora - Mini Mercado Maxi Alegrete RS (10 meses) Ano: 2014 
Auxiliar de Turma - Escola Lions Alegrete RS (6 meses) Ano: 2015
Operadora de caixa - Redecop SA (Supermeraco Cotrijui Manoel Viana RS) 
(1 Ano e 7 meses) Ano:2016 á 2017
Gerente de Compras - Farmácia Agafarma Manoel Viana (6 anos) Ano: 2017 á 2024',NULL,NULL,'Administrativa, Comercial, Financeiro, Marketing','https://drive.google.com/open?id=19cF_9YPoeoOQSZZo0MoBvIay04SQYzXj','https://drive.google.com/open?id=1VV4mtsjkylObtKRDbViriX4Y6305OcEq','Instagram','Nao','2500','Sim',NULL,'Comercial','Sou uma pessoa autêntica, comunicativa, calma, aprendo rápido, tenho agilidade, muita experiência e noção de informática! Gosto de aventuras e pedi para sair do meu emprego de 6 anos pois acredito que me acomodei e quero me desafiar mais e viver novas experiências!! Pedi para sair do meu emprego mas fiz um acordo de palavras com a minha Chefe de ensinar e passar todo o meu conhecimento e experiência em comprar para outra colega e assim estou fazendo. Pedi para sair no início de dezembro e ela me pediu para que eu ficasse até março, assim assinando os documentos de desligamento agora final de janeiro para cumprir o aviso em fevereiro. Mas se surgir algo melhor para mim, ficamos nesse critério! Gostaria muito dessa oportunidade pois acredito que é um meio onde gostaria muito de estar e me desafiará bastante. E é o que busco no momento. Desde já agradeço.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-16T22:24:00.000Z'::timestamptz),
  ('Ana Caroline Messaggi dos Santos','anacmessaggi1608@gmail.com',NULL,'51997532471','2000-08-16',25,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1SiKnX3gTST3SnYdBLtA7tLTJUmlHVovJ','Gestão de Recursos Humanos','Ensino Superior Completo','Unifacvest','2023-05-05','Sou formado','Trabalhei na loja da Vivo e também na  loja da Claro ambas com a mesma função. como operadora de caixa porém fazia um pouco de tudo. Ajudava com vendas e metas da empresa, organizava estoque, cuidava do caixa, emissão de notas fiscais.',NULL,'Curso de Administração Básico e Curso Básico de Informática','Administrativa, Financeiro, Licenciamentos, Engenharia','https://drive.google.com/open?id=18rB3266rmG_fwsmBYUhEQZUaAXln587Z',NULL,'Instagram','Não','2.000,00','Não','Loja Vivo e Loja Claro','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-16T22:25:00.000Z'::timestamptz),
  ('Raquel Muniz da Cunha','raquelmuniz31012004@gmail.com',NULL,'51998859966','2004-01-31',22,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=18N8J2GJfCvSiM4hf1ETMvHH9YAyGWmty','Administração de empresas','Ensino Superior Incompleto','Furg/SAP - Universidade Federal do Rio Grande','2026-04-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Escritório de Advocacia Beschorner & Cunha, recepcionista e auxiliar administrativo, junho de 2020 até novembro de 2022. Controle de contas a pagar e receber, encaminhamento e recebimento de clientes, controle de agendas, organização de arquivos e documento e etc. 
Magna Cosma, estagiária de financeiro, novembro de 2022 até o momento, controle do contas a pagar e receber, controle de extrato, fluxo de caixa, baixas, controle de débitos vencidos, controles de despesas, faturamento e etc.','No momento estou cursando a faculdade de Administração na Furg, estou no quinto semestre.',NULL,'Administrativa',NULL,NULL,'Instagram','Não','Inicial R$ 2500,00','Não','Andressa Beschorner - 51997518914 - Beschorner & Cunha Advocacia','Quero inscrever-me no banco de talentos da Young!','Conhecimento em Word, Excel, sistema logix da tovts, facilidade em trabalhar em equipe e fluência em comunicação com público.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-16T23:09:00.000Z'::timestamptz),
  ('Caroline Krech Portal','carolinekrechportal@gmail.com',NULL,'51995291108','2002-04-28',23,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1zjlgft8aXa6WmSBvllm39i4wTc1kjZAa','Gestão em recursos humanos','Ensino Superior Incompleto','Ulbra / Gravataí e Polo Universitário/ Sap',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1- Distribuidora Lopes 2- auxiliar administrativo 3- estou trabalhando atualmente 4- recepção, entradas de notas fiscais e ajustes das próprias, televendas e consultas de clientes.',NULL,NULL,'Financeiro','https://drive.google.com/open?id=1M7GCLaAdULa3FjgXXTGknBzEdT4tljsC',NULL,'Instagram','Não','2500','Não',NULL,'Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-16T23:46:00.000Z'::timestamptz),
  ('Rafael Pitaluga','rafaelpitaluga@hotmail.com',NULL,'55999723361','1993-04-09',32,'Casado(a)','1','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1UXhUT853wk6vfCurB0MjQCDu7_0jp5FQ','Gestão Financeira','Ensino Superior Incompleto','uniasselve','2025-03-20','Não, no momento pausei/parei por um período.','Profarma, Representante Comercial, 20/4/2022 termino 20/06/2023.
Trabalhei como representante do grupo Profarma aonde atuei em toda a fronteira oeste, vendendo em mais de 100 farmacias da nossa fronteira oeste, minhnas funções era vender e montar planos de ações e negociações para clientes de grande porte comprarem mais.','Tenho curso de tecnico em informatica, experiencia com vendas e planos de ação aonde tive curso na ultima empresa aonde trabalhei que foi a Profarma.',NULL,'Administrativa, Comercial, Financeiro, Marketing','https://drive.google.com/open?id=1iCIsah2OnMORBGg6OPLn50myVfQ7eRAT',NULL,'Instagram','Não','2400','Sim',NULL,'Vaga para equipe comercial de vendas da Carol Volpato','Me chamo Rafael Pitaluga, gosto de praticar exercicios, ja fui atleta de varias modalidades de esporte mas hoje apenas faço um Cross, tenho 30 anos, tenho um filho muito lindo chamado Miguel e uma espoça maravilhosa.
Sou uma pessoa incansavel por natureza e não gosto de mesmice, gosto de sempre procurar evoluir e buscar cada vez mais conhecimento para alcançar meus sonhos.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-17T00:24:00.000Z'::timestamptz),
  ('Samara dos Santos Spies','samara.spies00@gmail.com',NULL,'55991766831','2000-05-30',25,'Solteiro(a)','0','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=16WOgEJBijXzVS-ALIHSv5XqHf2rkPMis','Gestão ambiental','Ensino Superior Incompleto','Universidade Estadual do Rio Grande do Sul','2024-12-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','WMS Supermercados do Brasil LTDA 
Jovem Aprendiz
2016 -2017
Jovem aprendiz atuando de acordo com as modalidades aprendidas em curso, sendo estoquista, repositor, contato com os clientes.

Universidade Estadual do Rio Grande do Sul
Trabalho voluntário 
2021-2022
Atuel como voluntária em projetos acadêmicos sendo eles: Vivelro educador visando sustentabilidade do melo ambiente: Cultiva de Noguetra-Peca; Ensalos de enzimas livres e encapsuladas.

Lins Ferrão Artigos do Vestuário 
Auxiliar de Loja
 2019 - 2021
Principais atividades exercidas consistiam em assistente no escritório, operadora de caixa, repositora de mercadorias, estoquista, vendedora de produtos de beleza.','Graduanda de gestão ambiental, tenho pesquisas na área de plantas medicinais e publicações na área ambiental. Já cursei a matéria de licenciamento ambiental e possuo um grande interesse em seguir nesta área.','No momento não, mas estou com um curso de licenciamento ambiental em mente posso dar início caso agregue no trabalho da empresa.','Licenciamentos, Engenharia','https://drive.google.com/open?id=160r_LEgGUH6Go9oZuJpKBC7SCRACSYwq','https://drive.google.com/open?id=1aE0DTYLSqVHKZz6BVi5Yve_G6ptzPjv2','Instagram','Não tive indicação, apenas vi a proposta no Instagram da Carol Volpato.','1.500,00','Sim','Roseli Farias 55 99956-3949 - UERGS
Rodrigo Caresani 51 98516-6091 -UERGS','Estágio Licenciamento','Sou apaixonada pela área ambiental, adoro trabalhar com Excel geralmente auxilio os colegas nesta parte por ter conhecimento. Fiz trabalhos voluntários na faculdade e sempre que possível me disponibilizo a participar de outros pela troca de conhecimento entre os professores e colegas. Adoro estudar e trabalhar escutando música, gostaria muito de poder viajar conhecer outros lugares.

Sobre a CNH se for necessário posso iniciar sem problema algum se for um requisito, e estou disposta a fazer mais cursos na área de licenciamento se for para agregar.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-17T00:33:00.000Z'::timestamptz),
  ('Wilson Jerônimo Souza','wilsonsouza3092@gmail.com',NULL,'51995320207','2003-06-27',22,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1EDsMox3CgTzXbwsHKIwCVeeKOZt02-SE','Ciências Contábeis','Ensino Superior Incompleto','Uniasselvi','2026-12-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Atelier de Calçados Canabi
2) Preparador de Calçados
3) 01/07/2019 até o momento
4) Colagem de forros em injetados de PVC, EVA e ABS, introdução de cola em superfícies de sola.
OBS: Participação como representante dos trabalhadores na CIPA (Comissão Interna de Prevenção de Acidentes) - Gestão 2022/2023/2024',NULL,'Informática Básica - Escola Técnica e Faculdade Jovem Profissional - 2019 | Rotinas Administrativas - Escola Técnica e Faculdade Jovem Profissional - 2022','Estágio, Financeiro',NULL,NULL,'Instagram','Não, ninguém.','1.700,00R$','Não','Marinês Gomes Souza - MBA em Controladoria, Auditoria e Compliance - Asun Supermercados (Gravataí) - 51996964159','Estágio Financeiro','Sou mais observador do que comunicativo, creio que a observação seja o primeiro passo de tomada de decisão pra qualquer situação inesperada!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-17T00:41:00.000Z'::timestamptz),
  ('Quésia Fagundes Fontana','trabalhoquesia@gmail.com',NULL,'55996400523','2004-01-26',22,'Solteiro(a)','0','Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=17w-0qwBoaZHxIfx8MRyMkS2i4GHSsrWS','Serviços Jurídicos e Notariais','Ensino Superior Incompleto','UNIDOMBOSCO','2025-12-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Plus Consultoria,  Alegrete 
 2) Secretária 
 3) JULHO DE 2023 - ATUAL
 4) Elaboração, análise e catalogação de documentos, gerenciamento de bancos de dados em setores jurídicos;   
Desenvolvimento e manutenção  de relacionamento duradouro com o cliente  por meio de atendimento, tanto on-line como presencial; 
Criação e atualização de cronogramas de trabalho semanais a fim de atender as demandas estabelecidas para o período .
Observação do ambiente de trabalho a fim de   avaliar as manutenções necessárias para melhoria do local;


 1) SPASSO 20 - JEANS, Alegrete 
 2) Caixa/estágio 
 3) MARÇO DE 2023  -  JULHO DE 2023
 4) Desenvolvimento e manutenção  de relacionamento duradouro com o cliente  por meio de atendimento presencial.
Rondas constantes pelo ambiente a fim de corrigir problemas, tais como  necessidade de limpeza, reposição de mercadorias e verificação de estoque.
Manutenção e controle assíduo do  livro caixa,  desde a abertura até o fechamento, entrega de troco e dinheiro, processamento de pagamentos em cartões de débitos e crédito com alta taxa de exatidão.


 1) Tempero Do Corpo, Alegrete   
 2) Vendedora/estágio 
 3) NOVEMBRO  DE 2021 - FEVEREIRO DE 2022
 4) Elaboração e coordenação de planos estratégicos de venda através de ferramentas virtuais, tais como mídias sociais; 
Supervisão do gerenciamento do estoque de ponta a ponta, incluindo mercadorias da loja e prevenção de perda;, 
Rondas constantes pelo ambiente a fim de corrigir problemas, tais como  necessidade de limpeza, reposição de mercadorias e verificação de estoque',NULL,NULL,'Administrativa','https://drive.google.com/open?id=1Nkx_SYoAw0dZ4C_zsFgFjw6jZ0uWUhkP',NULL,'Instagram','Não.','1.500,00','Sim','Plus consultoria - Marco Antônio / Diretor (55) 99995-6241 
Spasso Jeans - Juliane / Gerente (55) 99964-7682','Estágio Financeiro','Oii tudo bem? Meu nome é Quésia, tenho 19 anos e faço 20 daqui a alguns dias. Amo praticar esportes, praticante e amante de jiujitsu, já fiz curso de costura e culinária para iniciante quando ainda tinha 10 anos. Adoro aprender coisas novas e me desafiar, sou falante e desenvolvida, tenho intimidade com programas de computador e espero poder ter uma oportunidade na Young crescer junto com a empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-17T01:23:00.000Z'::timestamptz),
  ('Claudia Regina Rost de Souza','claudiarost735@hotmail.com',NULL,'51999283986','1984-04-28',41,'Casado(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1CPjfU8gBR-RwKrXaJ-BzdWfVO7t22_6a','Administração de empresas','Ensino Médio Completo','Faccat',NULL,'Não, no momento pausei/parei por um período.','Empresa:   Djalmo Moraes
Cargo:  Recepcionista, telefonista, serviços de panfletagens,etc

Empresa: Padaria Pão de Queijo 
Cargo: Balconista/ Atendente 

Empresa: Casa Dacolônia
Cargo: Recepcionista e balconista
(diarista aos finais de semana)

Empresa: Hospital Municipal de Santo Antônio da Patrulha
Cargo:  Recepcionista, telefonista, atendente ao púbilco
Funções: Internações, preenchimento de fichas de atendimento o ( SUS,convênios, particulares), movimentos de caixa, atendimento ao público em geral, responsável  em solicitar os CID aos Médicos para a AIH, etc.

Empresa:  Calçados Young Ltda - 
Cargo: Auxiliar administrativo
Funções:  Recepcionista, Telefonista, Emissão de Notas Fiscais de Entradas e Saídas, Cadastro de materiais no PCP/ Estoque, Preenchimento de Ficha Técnica, Emissão de relatórios de Controle de Produção, Lançamentos na Contabilidade, Contas à Receber, Contas à Pagar, Auxiliar no setor de compras: envio de ordens de compras e cobrança na data de entrega de materiais, orçamentos, Planilha de custos.
Departamento pessoal- ( cartões pontos, rescisões, resumo para folha de pagamento, ficha de funcionários, etc.) Departamento Financeiro- ( movimentos bancários, gerenciador financeiro, baixa de duplicatas e notas fiscais, movimento de caixa, contato direto com o banco( contratos de câmbio de compra e venda), Emissão de Faturas para Exportação, Vendas Diretas ao Cliente. Etc

Empresa: Calçados Bugor do Brasil Ltda
Cargo: Auxiliar administrativo
Funções:  Recepcionista, Telefonista, Emissão de Notas Fiscais de Entradas e Saídas, Cadastro de materiais no PCP/ Estoque, Preenchimento de Ficha Técnica, Emissão de relatórios de Controle de Produção, Lançamentos na Contabilidade, Contas à Receber, Contas à Pagar, Auxiliar no setor de compras: envio de ordens de compras e cobrança na data de entrega de materiais, orçamentos, Planilha de custos.
Departamento pessoal- ( cartões pontos, rescisões, resumo para folha de pagamento, ficha de funcionários, etc.) Departamento Financeiro- ( movimentos bancários, gerenciador financeiro, baixa de duplicatas e notas fiscais, movimento de caixa, Vendas Diretas ao Cliente. Etc


Empresa:  J. M. Soares Calçados
Cargo: Auxiliar administrativo
Funções:  Recepcionista, Telefonista, Emissão de Notas Fiscais de Entradas e Saídas, Cadastro de materiais no PCP/ Estoque, Preenchimento de Ficha Técnica, Emissão de relatórios de Controle de Produção, Lançamentos na Contabilidade, Contas à Receber, Contas à Pagar, Auxiliar no setor de compras: envio de ordens de compras e cobrança na data de entrega de materiais, orçamentos, Planilha de custos.
Departamento pessoal- ( cartões pontos, rescisões, resumo para folha de pagamento, ficha de funcionários, etc.) Departamento Financeiro- ( movimentos bancários, gerenciador financeiro, baixa de duplicatas e notas fiscais, movimento de caixa, contato direto com o banco. 

Obs:As 3 empresas eram do mesmo grupo..por isso as mesmas funções..

Empresa: M.A. dos Santos Decoração ME 
Cargo: Auxiliar Administrativo/ Atendente 
Funções: Notas Fiscais Entrada/ Saída - Fluxo de Caixa, Ordem de Compras/ Vendas , Aux. compras, Etc.','Três semestre de Administração',NULL,'Administrativa, Financeiro',NULL,NULL,'Instagram','Já trabalhei na Calçados Young antiga empresa da família','A combinar','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Procuro fazer sempre o meu melhor em tudo que faço, também gosto de cozinhar, ler, fazer novas amizades..','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-17T03:32:00.000Z'::timestamptz),
  ('Maria Eduarda Barros Consul','consulduda6@gmail.com',NULL,'51997973993','2003-08-01',22,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1B5OFAB_95yssz7NC9oh7zcOonrMnArbL','Curso Normal Magistério.','Ensino Médio Completo','IEESA SAP','2023-01-07','Não, no momento pausei/parei por um período.','Atualmente, sou auxiliar administrativo do Frigorífico Lagoense.',NULL,NULL,'Administrativa, Financeiro',NULL,NULL,'Instagram','Não .','1500','Não','Gabriela Santos - 51997662947','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-17T11:48:00.000Z'::timestamptz),
  ('Larry da Silva Tronchoni','larry.tronchoni@outlook.com',NULL,'51999830143','1997-07-26',28,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=18rl_UwWdT_6e6Xg5O3CcZgYg2j6syWXi','Engenharia de Minas','Ensino Superior Completo','UFRGS','2023-09-28','Sou formado','Não possuo experiência profissional.',NULL,NULL,'Licenciamentos',NULL,NULL,'Indicação','Máximo','R$3.000,00','Não',NULL,'Assistente de licenciamento',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2024-01-17T13:19:00.000Z'::timestamptz)
;
