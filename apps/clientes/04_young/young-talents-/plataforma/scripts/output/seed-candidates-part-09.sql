-- Parte 9 de 9 (até 300 linhas por arquivo para caber no SQL Editor)
-- Cole no SQL Editor do Supabase → Run. Depois execute a próxima parte.
-- Tabela permite múltiplos envios por email (cada linha = um envio com timestamp).

INSERT INTO young_talents.candidates (full_name, email, email_secondary, phone, birth_date, age, marital_status, children_count, has_license, city, photo_url, education, schooling_level, institution, graduation_date, is_studying, experience, courses, certifications, interest_areas, cv_url, portfolio_url, source, referral, salary_expectation, can_relocate, professional_references, type_of_app, free_field, status, tags, origin, created_by, original_timestamp)
VALUES
  ('Ricardo Rodrigues Verçosa','ricardorodriguesvercosa@gmail.com',NULL,'55996970589','2005-05-27',20,'Solteiro(a)','0','Não','Itaqui/RS','https://drive.google.com/uc?export=view&id=1wis2QCMzWQO8N8UTm9PaTDLwtUhR5CCK','Analise e desenvolvimento de sistemas','Ensino Superior Incompleto','Unifacvest','2027-04-10','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Não tenho experiência','Lógica de programação, pacote office, html e css na prática, python entre outros envolvendo ti',NULL,'Administrativa, Estágio, Engenharia',NULL,NULL,'Instagram','Não','2000','Não','Não tenho','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-02T21:59:00.000Z'::timestamptz),
  ('Karolynne Dias Aimon da Silva','karolynne.aimon@icloud.com',NULL,'55984083664','1998-11-12',27,'Casado(a)','1','Não','Itaqui/RS','https://drive.google.com/uc?export=view&id=1W6UWZXZ2-MUlT_Zc0coIfU6wv9CeJpXH','Serviços jurídicos e notariais','Ensino Superior Incompleto','Uninter','2020-03-03','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Estava desde novembro do ano de 2024 atuando como Assistente Jurídica em um escritório de advocacia previdenciária “Patrícia Würfel” saindo escritório em setembro de 2025 e desde então atuo prestando serviços a advogados em forma de diligência.','Sou formada em Serviços jurídicos e notariais desde 2020, atualmente estudo administração pela universidade Cruzeiro do sul. Tenho alguns cursos de qualificação como: gestão de pessoas, administração básica, comunicação e publicidade todos pela Uninter.',NULL,'Administrativa, Comercial, Estágio, Marketing',NULL,'https://drive.google.com/open?id=1HoSnSnc-BOQejjrtoRgmx5JHZgmbIAwM, https://drive.google.com/open?id=1KfN-ccw7sqigjvwEcja3EKnu2OkEzL5C, https://drive.google.com/open?id=1bCf2fDhBDV8raGi4b_17zUjPrzPuGcIP, https://drive.google.com/open?id=1AnVsBIuy_KBE754N7iFYWXoSRK5MUXFh','Facebook','Não','1800$','Sim','Escritório Patrícia Würfel - 5599260026','Estágio Financeiro','Tenho habilidades com Excel, atendimento ao público, sou muito falante e comunicativa, meu temperamento é 60% colérica e 40% sanguínea, gosto de aprender coisas novas e enfrentar desafios diários para que eu possa me desenvolver melhor como pessoa. Sou muito família e amo a Deus sobre todas as coisas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-02T22:46:00.000Z'::timestamptz),
  ('Alberto Albuquerque','eng.albertoalbuquerque0@gmail.com',NULL,'54981410051','1999-03-11',26,'Solteiro(a)','0','Sim','Passo Fundo/rs','https://drive.google.com/uc?export=view&id=1_RMoPRkFxwpNjKQtXu5ubDZBY25OjShE','Engenharia Civil','Ensino Superior Completo','IFSUL','2022-04-30','Sou formado','1- BINE Engenharia Ltda – Florianópolis /SC
2- ENGENHEIRO CIVIL – CONTRATO PJ
3- 2025
4- Realizei prestação de serviço como engenheiro civil Full Time, executando obras para a rede
Mercado Livre. Atuando em 3 unidades da rede, nos estados de São Paulo, Paraná e Rio Grande do Sul.
Contrato para realizar a gestão da obra e das equipes, controle de gastos, elaboração de cronogramas e envio
de relatórios dos serviços prestados. Rotina de viagens constantes.

1- Rede de Farmácias São João – Passo Fundo/RS
2- ANALISTA DE OBRAS E ENGENHARIA
3- 2022-2025
4- Na função de Analista de obras, desempenhava a gestão das obras realizadas pela empresa, incluindo
contratação de prestadores de serviço, elaboração de orçamentos, controle de gastos e coordenação das
equipes presentes na obra. Acompanhamento das obras in loco, elaboração de relatórios semanais e
fiscalização dos serviços para garantir a qualidade de execução. Rotina de viagens constantes.

1- Trygè Empreendimentos – Passo Fundo/RS
2- ESTAGIÁRIO DE ENGENHARIA CIVIL
3- 2021-2022
4- Empresa especializada na execução de empreendimentos imobiliários de alto padrão, onde realizava
atividades administrativas, relatórios de etapas de obra, vistoriava diariamente o canteiro de obra e auxiliava
na execução do projeto.

1- ATC Estruturas Ltda. – Coxilha/RS
2- ESTAGIÁRIO DE ENGENHARIA CIVIL
3- 2020-2022
4- Empresa voltada para a produção e execução de edificações com estruturas pré-Moldadas, onde
desempenhava funções de gerenciamento de orçamento, detalhamento das estruturas e compatibilização entre
projetos.','Engenheiro civil formado pelo IFSul, com sólida experiência nas áreas da construção civil, incluindo gestão de obra e manutenção de imóveis. Atuação com ênfase no setor comercial, execução de obras em pré-moldado, elaboração de orçamentos, gestão de equipes. Experiência em obras de rápida execução.',NULL,'Engenharia',NULL,'https://drive.google.com/open?id=16WvlO3vs9afDPcZskIjjUle_k46GjPUq','Agência de Empregos','Não','6500','Sim',NULL,'Engenheiro Civil','Habilidades com pacote office, AutoCAD, MS project e demais ferramentas que podem auxiliar na execução das obras. Tenho como idiomas básicos o inglês e espanhol. Sou uma pessoa comunicativa, organizada e muito focada nos meus objetivos, algumas das características que acredito que possam agregar ainda mais na empresa de vocês.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-03T12:28:00.000Z'::timestamptz),
  ('Leonardo Vidal Fronchetti','leofronchetti@hotmail.com',NULL,'51993167446','1994-04-01',31,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1mQ62PzeC-hPCcb0T4Yoq9ml1pVJNoJ-6','Engenharia Civil','Ensino Superior Completo','Faculdade Estácio do Rio Grande do Sul','2025-07-01','Sou formado','- Construtora Tedesco  
Assistente de Produção (Dez/2023 – Out/2025)  
Hospital do Coração - Hospital Moinhos de Vento. 
Unidade de Internação 20+ - Hospital Moinhos de Vento.  
Execução e acompanhamento da obra, desde a fundação até a entrega final. 
Montagem e controle de avanço de PCP (Planejamento de Curto Prazo). 
Execução e controle de cronograma de obra, execução de relatórios diários de obra, 
medições de subcontratados e acompanhamento de avanço de obra. 
Preenchimento de FECs (Ficha de Execução e Controle), conferência em canteiro de 
obra na fase de estrutura do aço e forma, conferência de alvenarias, gesso e 
acabamentos, organização e acompanhamento de concretagens.  
Liderança de equipe responsável pela entrega dos pavimentos.  
Responsável pela vistoria, checklist e entrega de chaves para o cliente. 

- TR Engenharia 
Estagiário de Engenharia Civil – Setor de Orçamentos (Ago/2023 – Dez/2023) 
Execução de orçamentos de obras em planilhas Excel. 
Coleta de dados no sistema SINAPI. 
Leitura de projetos em Revit e AutoCad para criação de orçamentos.  

- Revitare Engenharia 
Estagiário/Auxiliar de Engenharia Civil (Jun/2021 – Ago/2023) 
Execução de reformas de apartamentos e fachadas prediais.  
Execução da estrutura e vedação do Pátio Guadix, Porto Alegre/RS. 
Demolições de casas e estruturas prediais. 
Acompanhamento de obras, leitura de projetos, montagem de orçamentos de obras, 
contratação de equipes de mão de obra, elaboração de cronogramas e relatórios, 
realização de medições, controle de qualidade.  

- EGS Engenharia 
Estagiário de Engenharia Civil (Dez/2019 – Mai/2021) 
Reformas de lojas comerciais e apartamentos. 
Reforma do Hospital Beneficência Portuguesa, Porto Alegre/RS.  
Construção do Edifício Residencial Treviso, Porto Alegre/RS.  
Acompanhamento de obras, leitura de projetos, elaboração de cronogramas, realização 
de medições, requisição de materiais, controle de qualidade. 

- MRV Engenharia 
Estagiário de Engenharia Civil – Setor de Assistência Técnica (Dez/2017 – 
Mar/2019) 
Vistorias de apartamentos e entrega de chaves. 
Avaliação técnica de problemas de execução. 
Assistência técnica no pós obra. 
Gerenciamento de mão de obra e material.',NULL,NULL,'Engenharia',NULL,NULL,'Agência de Empregos','Não','7.000,00','Sim','Marcelo Machado – Gerente de Negócios (Construtora Tedesco) – (51) 99980-3300 
Marcos Pinheiro – Coordenador de Produção/Instalações (Construtora Tedesco) – (51) 
99315-1275 
Edmilson Azevedo - Coordenador de Produção (HTB) – (51) 99705-9448','Engenheiro Civil','Sou Engenheiro Civil com experiência em execução e acompanhamento de obras de médio 
e grande porte, incluindo hospitais, edifícios residenciais e reformas comerciais com 
foco em qualidade, prazos e resultados. Atuação no planejamento e controle de obras, 
medições, controle de qualidade, orçamentos e liderança de equipes em campo. Perfil 
analítico e proativo, com domínio das ferramentas: AutoCAD, Revit, Excel e MS Project. 
Disponibilidade para viagens e mudança de cidade/região.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-03T15:32:00.000Z'::timestamptz),
  ('Igor Diel','igordiel@hotmail.com',NULL,'55996217139','2003-04-04',22,'Solteiro(a)','0','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=15CybLM7FF87P6OP88xVQSynfeixApS40',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','SB DESPACHOS ADUANEIROS LTDA
Unificado de Fronteira, São Borja — Auxiliar em comércio II
Período trabalhado: 05/10/2021 - 04/08/2023.

 Confeccionava Licenças de Importação, administrava os e-mails, contatava outros escritórios e clientes de outras nacionalidades. Responsável pela área de importação de frutas no modal rodoviário e também aprendiz no modal marítimo (Carnes, Peixes e produtos animais).

ROTA SMART MONITORAMENTO LTDA— Assistente de
monitoramento júnior.
Período trabalhado: 05/03/2024 - 01/08/2025.

 Vigiava residências e comércios pelo mural de câmeras durante a madrugada. Contatava clientes por diversas razões (saber se iria ativar o alarme no dia, caso fosse desativado confirmava quem havia sido e registrava pedidos de manutenção).',NULL,NULL,'Administrativa, Comercial',NULL,NULL,'Agência de Empregos','Não','1600 reais','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho experiência em vários softwares empresariais, sou fluente em inglês, intermediário em espanhol.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-03T17:37:00.000Z'::timestamptz),
  ('Maicon de Almeida Canabarro','maiconcanabarro8@gmail.com',NULL,'999573063','2002-05-19',23,'Casado(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1PDNxHedx2OcilmtfFtMWgz_M9zhnnScq','Serviços Gerais','Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Serviços Gerais (eletricista, pintor, soldador, encanador, pedreiro) 5 anos
Exército Brasileiro 4 anos CB (caldeirista, cozinheiro, mecânica em motor 2t, 4t, motorista).',NULL,NULL,'Arquitetura, Financeiro, Marketing, Engenharia',NULL,NULL,'Facebook','Não','Dois salarios mínimos','Sim',NULL,'Vagas em Geral','Já trabalhei como cozinheiro, desde os 10 anos trabalho em serviços gerais, tenho bastante facilidade em aprender, sou dedicado, não tenho medo de serviços pesados, fui motorista no quartel.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-04T00:31:00.000Z'::timestamptz),
  ('Álvaro José Mieres Rachinhas','rachinhasalvaro@gmail.com',NULL,'53991365605','1989-11-04',36,'Casado(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1u7t2UlL4lSlqLAQDtMSBiW_J3RfKsyFl','Gestão imobiliária','Ensino Superior Incompleto','Unicesumar','2025-12-12','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Empresa: Loja Don Juan, cargo: Supervisor e vendedor. Período: 2021 a 2024. Funções: Como vendedor desde a prospecção ao fechamento e pós vendas. Atuei na parte financeira, recursos humanos, gestão de loja, equipes e subgerência. 

Empresa: Nissul Gala/JEEP e RAM do Brasil. Cargo: Vendedor. Período 2024 a 2025. Funções: Como vendedor desde a prospecção, ao fechamento e pós vendas. Trabalho realizado e alimentação instantânea ao CRM NBS GOLD. Campanhas de vendas com fórmulas validadas em âmbito nacional. *DESTAQUE* Melhor atendimento nacional da Jeep Brasil em 2025.','Olá, tenho vários cursos na área de atendimento ao cliente, oratória e técnicas de vendas, bem como experiência prática na área. Atualmente estou finalizando graduação em gestão imobiliária.',NULL,'Comercial, Novos Negócios',NULL,NULL,'Instagram','Não','A combinar','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-04T13:38:00.000Z'::timestamptz),
  ('Samuel Guterres Cabral','samuelguterres452@gmail.com',NULL,'55999459248','2004-09-23',21,'Solteiro(a)','0','Não','Itaqui/RS','https://drive.google.com/uc?export=view&id=1rSnEAzGdE1X0G0xcZpxUPolgpPs6CLng','Economia','Ensino Médio Completo','Cruzeiro do sul','2029-11-04','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Profissional com experiência em vendas, atendimento e gestão de clientes. Atuo como Consultor Executivo de Vendas na Vero Internet, com foco em prospecção, fechamento e fidelização. Experiência anterior em estoque, caixa e merchandising na Modazine, além de vendas e cobrança na Militar.com. Ensino Médio completo e cursos em vendas, marketing digital, Excel, Word e educação financeira. Perfil organizado, comunicativo, proativo e comprometido com resultados.','Tenho curso na v4 company de marketing, curso na vero Internet, relacionamento com cliente e técnicas de venda. Curso visual mershandeising na modazine',NULL,'Comercial, Estágio, Financeiro, Marketing',NULL,NULL,'Facebook','Nao','2100','Sim',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-04T15:05:00.000Z'::timestamptz),
  ('Davi Machado','davibass12@gmail.com',NULL,'992379773','1991-03-15',34,'Casado(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1ppJ4Zfphu6daOrXlo107mK9tY2sZn6Ny','Administração de empresas','Ensino Superior Completo','Unifael','2025-07-09','Sou formado','CCR ViaSul','Administração  - Logística',NULL,'Administrativa, Comercial, Financeiro, Licenciamentos',NULL,NULL,'Agência de Empregos','Não','2300','Sim',NULL,'Comercial','Atuei durante 7 anos na área comercial,  trabalhei também com logística.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-04T15:45:00.000Z'::timestamptz),
  ('Paulo Henrique de Oliveira Hendges','paulohenriquehendges@gmail.com',NULL,'55996775248','2000-08-28',25,'União estável','0','Sim','Itajai','https://drive.google.com/uc?export=view&id=1cjRgqk84UzUd2TVVL0PKM_6cTq6t_9oX','Engenharia Civil','Ensino Superior Completo','URI SANRO ÂNGELO','2023-07-04','Sou formado','Young empreendimentos 
Analista de engenharia
03/23 - 11/24

L4 construtora 
Coordenador de obras
11/24 - 06/25

Proglobal
Engenheiro Civil 
09/25-atualmente',NULL,NULL,'Engenharia',NULL,NULL,'Agência de Empregos','Não','8500','Sim',NULL,'Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-04T21:13:00.000Z'::timestamptz),
  ('Pawily Nataly Martins Pinheiro','pawilynatalypinheiro@gmail.com',NULL,'55999149058','2003-12-26',22,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1EpwBeGThQ03WKco4x5SeEaVleIrWn3Ub','Licenciatura em Pedagogia','Pós-graduação Completa','Anhanguera','2024-12-31','Sou formado','Ferragem do Trilho, trabalhei com vendas e caixa. 
Sagrado coração de Jesus, trabalhei como monitora de uma criança especial.','Sou formada no Magistério/curso normal, Licenciada em Pedagogia, Pós graduada em Educação Especial com ênfase em Atendimento Educacional Especializado.',NULL,'Administrativa, Comercial, Financeiro, Marketing',NULL,NULL,'Instagram','Não','Podemos conversar de acordo com a pretensão de horas trabalhadas.','Não',NULL,'Comercial','Tenho curso em informática básica, não possuo certificado pois a empresa fechou pouco antes de eu concluir.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-04T21:43:00.000Z'::timestamptz),
  ('Carlos Airton Araujo Junior','carlosairton112@gmail.com',NULL,'55984368725','1998-03-11',27,'Solteiro(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1ZJh-GveH1iVrXJz49se5W8--dAeomEmV','Técnico em Contabilidade e Gestão Pública','Ensino Superior Completo','Universidade Aberta do Brasil','2025-10-17','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Panvel Farmácia – Jovem Aprendiz – 19/08/2018 até 17/10/2019;
Camil Alimentos – Ajudante de Produção Safrista – 21/01/2020 até 18/04/2020;
Eccos Estágios na Prefeitura de Itaqui – 18/02/2021 até 29/04/2022;
Assistente Administrativo na Prefeitura de Itaqui – 02/05/2022 até o momento.','Formei em técnico em Contabilidade na Universidade Aberta do Brasil e estou cursando Gestão Pública na Unifacvest',NULL,'Administrativa, Comercial, Estágio, Financeiro',NULL,'https://drive.google.com/open?id=1eqF8z6DHhFtA0Seb5I3FZnj4rzRrG1eV','Facebook','Não fui','A partir de 1.518,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho muito interesse em aprender e crescer profissionalmente. Hoje sinto que preciso evoluir e encontrar empresas que possam me ajudar a ver coisas gigantes e quero contribuir e muito para que a empresa se torne maior do que já é. Sou novo, não tenho muitas experiências no ramo de trabalho, mas possuo muita força de vontade e acredito que será uma ótima opção trabalhar na young.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-05T01:04:00.000Z'::timestamptz),
  ('Andriélly Pereira Bachinski','andribachinski02@gmail.com',NULL,'55997230729','2002-03-15',23,'Solteiro(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1L3OEa3dto2QtRY9PcVFcs5SBWmvViVig','Nutrição/ Administração','Ensino Superior Incompleto','Universidade federal do Pampa, unipampa/ Senac','2028-11-22','Não, no momento pausei/parei por um período.','1° 
Dos meus 13 aos meus 17 trabalhei na mesma empresa, uma loja de roupas bem conhecida na minha cidade atual, onde iniciei como meio período pois estudava pela parte da manhã, após alguns anos trabalhei no período integral, atuava como vendedora, caixa, e depois passei a ser gerente, onde cuidava de tudo.
Iniciei em 13/02/2014 até o dia 05/02/2018 e mesmo após ter passado alguns anos ainda trabalhei em 2020 para cobrir as férias da dona da loja, totalizando em 05 anos.

2° cantina do Porto 
Trabalhei por alguns meses em um restaurante como caixa e fazia os doces, mas a mesma fechou pouco tempo após. 6 meses trabalhados em 2018

3° Despachante Aduaneiro 
Supervisionava a entrada e saída de caminhões na Aduana, despachada e fazia vistoria nas cargas. 
2 meses cobrindo as férias de outra colega. (2019) 

4° Lancheria do hospital 
Na lancheria a minha função era atender, cozinhar, fazer o caixa, abrir e fechar o local. 
1 ano trabalhado, 2020. 

5° Prefeitura Municipal de Itaqui
Estágio supervisionado pelo curso de Administração 
( 6 meses de estágio) 

6° Ministério Público de Itaqui 
( 1 ano de estágio) 

7° Cafeyna Pub Café 
Cozinheira, atendente e caixa 
9 meses trabalhados ( 2022)

8° Embalakos 
Atendente e fracionista de produtos
4 meses trabalhados 

9° Vero internet  
Consultora interna de vendas
Supervisora de loja física em itaqui 
01/04/2024  até 12/08/25','Atualmente estou matriculada no curso de nutrição, porém eu precisei trancar para poder trabalhar e me sustentar, somente após ter uma estabilidade melhor pretendo voltar. Tenho em mente fazer um técnico em contabilidade e terminar o curso de administração que iniciei e não consegui terminando pois estava sem renda, são áreas que sempre trabalhei e que entendo bastante. 
Sou formada em cuidador e auxiliar pedagógico.',NULL,'Administrativa, Arquitetura, Comercial, Financeiro',NULL,NULL,'Instagram','Não','De 3.5000 a 5.000, ou mais.','Sim','Sim. 
Ana Cláudia, dona da loja Jhulinha Presentes, local onde trabalhei por anos. 
55 984275440','Quero inscrever-me no banco de talentos da Young!','Meu nome é Andriélly, tenho 23 anos e sou natural de Itaqui. Atualmente estou em busca de uma nova oportunidade profissional que me permita crescer e desenvolver minhas habilidades. Já atuei em diferentes áreas, o que me proporcionou experiências diversas e a capacidade de me adaptar com facilidade a novos desafios. Possuo curso de Informática Básica e outros cursos complementares de curta duração. Ainda não concluí minha graduação em Administração, mas tenho o objetivo de retomá-la assim que alcançar maior estabilidade financeira, pois acredito que o aprendizado contínuo é essencial para o crescimento pessoal e profissional. Sou uma pessoa dedicada, gosto de cozinhar e tenho prazer em cuidar e ajudar os outros, qualidades que levo comigo em qualquer ambiente de trabalho.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-05T02:11:00.000Z'::timestamptz),
  ('Júlia Santos das Neves','julianneves2000@gmail.com',NULL,'996079433','2006-11-10',19,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1lxLUPUbEPgS9_zDQBzl7d8kk2c-rS2TP','Estou cursando fisioterapia','Ensino Superior Incompleto','Uniassselvi',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Farmácia Maxxi Econômica- Jovem aprendiz (De 2023-2025) Atendimentos, posts para o grupo do whatsapp, reposição, alinhamento de loja etc e OAB Subseção de Santo Antônio da Patrulha-Auxiliar de escritório(2025-Ate o momento) Atendimentos, processos de inscrições de carteirinhas, prestações de contas etc','Tenho curso de Trainee Coaching (Nível básico), Curso de Trainee Coaching (Nível Intermediário), Curso de Inglês (Básico e Intermediário)',NULL,'Administrativa, Comercial, Engenharia',NULL,'https://drive.google.com/open?id=1Wd2u03kF4UfUPJLBXZq2fBxdBe0p50NK','Agência de Empregos','Não','O salário tem que estar de acordo com as funções','Não',NULL,'Estou me inscrevendo para Consultora de Vendas porém estou disponível para outras vagas','Gostaria de uma oportunidade na Young para adquirir conhecimento e experiências profissionais, também, contribuir com o bem-estar da empresa','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-05T13:13:00.000Z'::timestamptz),
  ('Lauren Cecilia Mendes Vieira','laurenmeeendes@gmail.com',NULL,'55997312117','2001-06-27',24,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1dzFBb66RIS82noLBYs5rxJmnxyjvKSHC','Administração','Ensino Superior Completo','Unipampa - Universidade Federal do Pampa','2025-08-29','Sou formado','1. Vara Criminal – Estágio (2020 a 2022)
Atuei por dois anos na Vara Criminal, desempenhando diversas atividades cartorárias. Essa experiência foi essencial para o meu desenvolvimento profissional e pessoal — aprendi sobre organização, responsabilidade e comunicação eficaz dentro de um ambiente jurídico.

2. Imobiliária RE/MAX – Estágio (2022)
Durante seis meses, estagiei na RE/MAX, onde tive a oportunidade de aprender diretamente com os corretores, acompanhando processos de negociação e rotina administrativa da área imobiliária. Foi um período importante para fortalecer meu interesse pelo setor.

3. Fórum – Digitalização de Processos (Final de 2022)
Participei por aproximadamente três meses do projeto de digitalização de processos no Fórum, contribuindo para a organização e modernização dos arquivos.

4. Augusto Modas – Auxiliar Administrativa (2023 a março de 2024)
Atuei no setor administrativo, auxiliando em rotinas de escritório, controle de documentos, atendimento e suporte às demandas da gerência. Desenvolvi habilidades de gestão, organização e atendimento ao público.

5. CLIMVET – Clínica Veterinária (dezembro de 2024 a junho de 2025)
Iniciei como assistente administrativa e, posteriormente, assumi responsabilidades na área de gestão de pessoas, incluindo folha de pagamento, recrutamento, atendimento e suporte à equipe. Essa experiência consolidou minha paixão por gestão e liderança.','Sou formada em Administração e possuo grande paixão por gestão de pessoas e pela área imobiliária. Também sou formada em TTI (Técnico em Transações Imobiliárias) e aguardo a emissão da minha credencial. Busco uma oportunidade em uma empresa onde eu possa crescer profissionalmente, contribuir para o desenvolvimento da organização e colocar em prática meus conhecimentos. Tenho facilidade para aprender, estou em constante busca por evolução e comprometida em oferecer sempre o meu melhor.',NULL,'Administrativa, Novos Negócios, Engenharia',NULL,NULL,'Instagram','Não','2.500,00','Sim','CLIMVET','Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa dedicada e em constante busca por desenvolvimento pessoal e profissional. Tenho paixão por atividades físicas, pois acredito que o equilíbrio entre corpo e mente é essencial para o bem-estar. Sou cristã e tenho minha fé como base e inspiração diária. Atualmente, estou estudando inglês para ampliar meus conhecimentos e oportunidades. Gosto de aprender coisas novas e encaro cada desafio como uma chance de evolução.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-05T13:39:00.000Z'::timestamptz),
  ('Bruna Ritter Brandenburger','bruna.ritter@live.com',NULL,'51995051416','1997-12-16',28,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1Zi71AlnMOXXplhtlwg2tVMVxt_CLwj4Y','Arquitetura','Pós-graduação Incompleta','Unisinos','2024-08-31','Sou formado','Para melhor visualização, envio meu currículo http://lattes.cnpq.br/1922569001970700','Lattes atualizado, contendo meus cursos: http://lattes.cnpq.br/1922569001970700',NULL,'Arquitetura, Estágio',NULL,NULL,'WhatsApp','Não','atualmente recebo R$6.700. Minha expectativa é R$7.500','Sim','Portfólio: www.behance.net/brunaritter','Quero inscrever-me no banco de talentos da Young!','Sou apaixonada por cidades e pelas possibilidades de transformação que o planejamento urbano pode proporcionar. Arquiteta e urbanista formada pela Unisinos, atualmente curso pós-graduação em Cidades – Gestão Estratégica do Território Urbano, com pesquisa voltada à gestão habitacional em situações de calamidade, especialmente no contexto das enchentes no Rio Grande do Sul.
Além da atuação técnica como analista de projetos na Telesil Engenharia LTDA, tenho experiência na gestão pública municipal, onde fui diretora de Trânsito e Mobilidade Urbana em Novo Hamburgo/RS, coordenando uma equipe técnica e participando ativamente de comissões do plano diretor e parcelamento do solo.
Sou entusiasta de tecnologias aplicadas à arquitetura e urbanismo, com certificações em ferramentas como Autodesk Revit, Docs, Build, Collaborate Pro e Takeoff, além de cursos em BIM, eficiência energética, mobilidade urbana, regularização fundiária e gestão de cidades. Também tenho domínio de Autocad, SketchUp, Excel Avançado e experiência com Unity e realidade virtual.
Falo inglês fluentemente, com intercâmbio realizado no Canadá, e tenho boa compreensão e leitura em espanhol','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-05T15:10:00.000Z'::timestamptz),
  ('Marcos Paulo Ramos','mramos.web@gmail.com',NULL,'51985252221','1979-12-11',46,'Casado(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1xSldAkJaZYz2sVG8PpJlHIz4UTwmlarZ',NULL,'Ensino Médio Completo','Escola Tecnica Don Diogo','1999-12-31','Sou formado','Trabalhei como analista de licitações na Paseto, cuidando de cotações, cadastros e negociações. Antes disso, fui vendedor externo de perfumes e também sócio-gerente na ECS, onde lidava com administração e licitações. Comecei como vendedor na Brasil Telecom, atendendo e prospectando clientes. Tenho boa experiência com vendas, licitações e automação de processos.','Windos, word, Excel, Depto Pessoal, Prompt de IA e Agentes',NULL,'Comercial, Marketing, Engenharia',NULL,'https://drive.google.com/open?id=1jtn9SORzDvAx_9PmFN8KY3g7BuRxiw75, https://drive.google.com/open?id=1JDJS_sHN2z_OO_-SR9WfS_r6NQySG3B5, https://drive.google.com/open?id=1J-kugio5sypT-pQGNMzI1JAi6njkL0MO','Agência de Empregos','Nao','A negociar','Sim','Adonis','Quero inscrever-me no banco de talentos da Young!','Jesus é o caminho, a verdade e a vida.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-05T15:16:00.000Z'::timestamptz),
  ('Victoria Roncato Rezende','arq.victoriarezende@gmail.com',NULL,'51985909171','1996-05-24',29,'Solteiro(a)','1','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1g1KTzTEIVUN0wPa6-kiNuoIrBPWPzoQl','Arquitetura','Ensino Superior Completo','PUCRS/UNIRITTER','2024-08-01','Sou formado','Durante a faculdade, trabalhei no Hospital de Clínicas de Porto Alegre, onde projetei uma sala de espera infantil, entre outros projetos para a ala infantil, por 2 anos.
Estagiei na Rotter Arquitetura, ajudando a criar estruturas e layouts para pequenos shoppings.
Meu TCC foi sobre a Revitalização da Praça Maurício Zaduchliver, neste projeto explorei diversas formas de brincadeira e convivência ao ar livre para diferentes idades e classes sociais, além de pesquisar o público e descobrir como propor atividades para garantir a vitalidade da praça.
Hoje, trabalho como Analista de Projetos na rede de supermercados Asun, onde ajudo a desenvolver layouts de supermercados, suas construções, prospectar novas áreas, além de playgrounds infantis, palcos para eventos, espaços poliesportivos, paisagismo, e estou me encontrando muito na área comercial.','Fiz duas iniciações científicas na área da sustentabilidade e trabalhei como estagiária no laboratório de eficiência energética da PUCRS. Ministrei aulas de DIALux para os meus colegas no LABEE. 
Participei de cursos sobre arquitetura hospitalar, neuro arquitetura.
Hoje trabalho como analista de projetos nas redes de supermercado ASUN, no setor da Expansão. Onde eu e o gestor administramos obras em até 40 lojas.',NULL,'Arquitetura, Engenharia',NULL,'https://drive.google.com/open?id=19DYGfIh75CluzpWoUUCzvRZd00CUEbG_','Agência de Empregos','Não','5.000,00','Não','Ernesto, +5551981225790, gestor expansão do Asun','Quero inscrever-me no banco de talentos da Young!','Tenho nível fluente em espanhol e avançado em inglês.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-05T15:20:00.000Z'::timestamptz),
  ('Jhessica Catelan Alves','jhessicacatelan@hotmail.com',NULL,'51999466800','1997-11-17',28,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1HNYV0_yl0M1LRH1GI_tYhaujsJdF4Q8_','Arquitetura','Ensino Superior Completo','Uniritter','2024-12-05','Sou formado','ESTÁGIO: SUPERIOR
DEAPE - Depto Adm. do Patrimônio do Estado.
Funções: Auxiliar na digitação e elaboração de laudos técnicos, na execução de desenhos técnicos e na realização de pesquisas de mercado de imóveis.
Período: 07/2017 – 01/2019.
Motivo: Término de contrato.

CONSULTORA DE VENDAS
Plano B Mobiliá - Loja de móveis.
Funções: Atendimento ao cliente, captação de vendas, demonstração dos móveis e organização da loja em geral.
Período: 08/2018 – 11/2018.
Motivo: Fechamento da loja.

ESTÁGIO: SUPERIOR
SOP - Secretaria de Obras e Habitação.
Funções: Auxiliar na graficação de projetos de PPCI, na elaboração de orçamentos e levantamento técnico em obras.
Período: 07/2019 – 02/2020.
Motivo: Opção por não renovar.

ASSISTENTE OPERACIONAL
Obra do Colégio João Paulo I – Praia de Belas.
Funções: Auxiliar na organização do canteiro, acompanhamento do cronograma físico, conferência de serviços, cotação de material, orçamento de serviços, elaboração de relatório de obras, vistoria de entrada e saída de prestadores de serviços e recebimento de materiais e medições.
Período: 10/2021 – 08/2022.
Motivo: Temporário – Obra com curto prazo de execução.

PROJETISTA
Empresa: Click Engenharia.
Funções: Atuar na execução de desenhos técnicos, na conferência de serviços executados, na cotação de materiais e na elaboração de orçamentos de serviços. Responsável pela análise de projetos, coordenação das etapas de execução e comunicação com fornecedores.
Período: 08/2022 – 12/2024.

AUXILIAR DE PROJETOS
Empresa: Sulgás – Companhia do Gás do Estado do RS.
Funções: Atuar na conferência de projetos e realizar demarcações no AutoCAD, produzindo pranchas e documentação conforme normas e exigências de órgãos e elaborar e tramitar anuências para implantação de redes de gás junto a prefeituras e concessionárias.
Período: 12/2024 – Atualmente.','Sou arquiteta formada há 1 ano e tenho interesse em diversas áreas da arquitetura. Já atuei em projetos técnicos, execução de obras, interiores e design, e sigo em constante busca por novos aprendizados e desafios que ampliem minha experiência profissional.',NULL,'Arquitetura, Engenharia',NULL,'https://drive.google.com/open?id=1_YHLNnq-U4kYn04SWhB6RptywRCjb2hd','Agência de Empregos','Não.','R$4.500','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou arquiteta formada há um ano e sigo em busca de mais experiências que me façam crescer profissionalmente. Desde a faculdade, sempre procurei aprender um pouco de tudo: já atuei em canteiro de obras, acompanhando o dia a dia das execuções, medições e fiscalização; trabalhei com projetos de PPCI, laudos de avaliação e outros serviços técnicos que me deram uma boa base prática e responsabilidade com prazos e normas. Tenho um olhar muito voltado para os interiores, adoro pensar em soluções que deixem os espaços mais funcionais, bonitos e aconchegantes. Gosto de entender o estilo de cada cliente e transformar isso em ambiente real com personalidade.

Sou curiosa, proativa e gosto de me desafiar. Quando surge algo novo, encaro como oportunidade de aprendizado pois acredito que o diferencial de um bom profissional é estar sempre disposto a evoluir, se adaptar e fazer bem feito, com dedicação e vontade de entregar um resultado que realmente faça diferença.

Procuro um ambiente onde eu possa somar, aprender com a equipe e colocar em prática tudo o que já vivi até aqui, sempre com entusiasmo e vontade de crescer na área que escolhi por paixão.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-05T15:24:00.000Z'::timestamptz),
  ('Andressa Santos da Silva','dessa0505@outlook.com',NULL,'51985349026','2001-05-05',24,'Solteiro(a)','0','Não','Canoas/RS','https://drive.google.com/uc?export=view&id=1Jlr8i1WbFdDjGe4ZGw5bMHFJS3L7EbpH','Arquitetura','Ensino Superior Incompleto','Unisinos - Porto Alegre','2026-09-05','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Procuradoria Geral do Município de Porto Alegre - Estágio - 2020/2022  
Auxiliar na elaboração projeto de Regularização Fundiária
Levantamentos e medições
Desenvolvimento e estudo de layouts
Auxiliar na elaboração de projeto elétrico e hidráulico
Modelagem 3D de projetos
Criação de memoriais descritivos e elaboração de planilhas de orçamento

JHL Arquitetura - Estágio - 2022/2023
Auxiliar na elaboração de projetos de Parcelamento do Solo
Elaboração de Memoriais Descritivos
Modelagem 3D de Projetos Arquitetônicos
Auxilio na elaboração de Estudo de Viabilidade Urbanística 
Encaminhamento e acompanhamento dos projetos na prefeitura
Acompanhamento e levantamento de obras

Tribunal da Justiça (Departamento de Infraestrutura) - Estágio - 2024/atualmente
Auxiliar na elaboração e modelagem de projetos arquitetônicos a nível de anteprojeto e executivo 
Renderização de imagens internas e externas 
Elaboração e organização de Templates Revit 
Modelagem de Famílias Paramétricas 
Acompanhamento de obras do setor','Atualmente estou cursando o Projeto de Conclusão de Curso I, na Graduação de Arquitetura e Urbanismo. Já fiz curso a nível básico de inglês, e iniciei o curso de espanhol, não concluído. Na minha área, fiz curso de BIM- modelagens paramétricas, renderização de imagens e ilustração de pranchas arquitetônicas.',NULL,'Arquitetura, Engenharia',NULL,'https://drive.google.com/open?id=1uawmAEbDqaag4_wzsSye_VPA1yvyrQ5X','WhatsApp','Quem passou a vaga foi a Samara Milcharek','R$ 3.000,00 / R$ 3.500,00','Sim','José Hermeto Gadea Lagranha - Ex-secretário do Planejamento Urbano de Canoas (Atual proprietário da empresa JHL Arquitetura)
Contato: +55 51 9976-9851','Quero inscrever-me no banco de talentos da Young!','Me identifico muito com o campo do urbanismo, principalmente com o desenvolvimento de loteamentos e o planejamento de novas áreas urbanas. Gosto de estudar como o desenho das cidades influencia a qualidade de vida das pessoas, e procuro trazer esse olhar para os projetos em que participo. Tenho afinidade com ferramentas de modelagem e representação urbana, como AutoCAD, Shetchup, Revit e Twinmotion. Fora do ambiente acadêmico, sou apaixonada por gastronomia — adoro assistir MasterChef e testar novas receitas nas horas vagas. Também amo viajar para conhecer diferentes paisagens, culturas e arquiteturas, o que amplia meu olhar criativo e inspira meu trabalho como futura arquiteta.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-05T16:24:00.000Z'::timestamptz),
  ('Thayná Castro Siqueira','thaynacastrosiqueira@gmail.com',NULL,'55984292079','2002-02-11',24,'Casado(a)','0','Não','Itaqui/RS','https://drive.google.com/uc?export=view&id=1ZpC9-TotUR5rinCMbd4hCntepfCr2V6N','Técnico em contabilidade','Ensino Médio Completo','Polo EAD de Itaqui','2025-10-17','Sou formado','Ainda não tive a experiência em trabalho.','Estou forma, mas procuro aprender mais no estudo que me formei.',NULL,'Estágio',NULL,NULL,'Indicação','Não sei é colaboradora, mas ela é coordenadora do polo, a Marbea.','R$2.500,00 a R$3.000,00','Não',NULL,'Técnico em Contabilidade','Mexer em computador sei no nível médio, mas se ensinar eu aprendo, espanhol e inglês sei o básico, gosto de desenhar e pintar e passear.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-05T17:35:00.000Z'::timestamptz),
  ('Amanda Pereira','amandacost14@gmail.com',NULL,'55996530674','1998-12-06',27,'União estável','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1su6--YScOVF655MULSgug6-xAHfnruxE',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','1.Loja Ponto moda 2. Caixa/crediarista 3. 06/2021 a 07/2024 4. Atendimento ao cliente, registrar vendas, responsável pela meta de inadimplência e cobranças.','Técnico em contabilidade concluído (2024-2025)',NULL,'Administrativa',NULL,'https://drive.google.com/open?id=1-ioSatxcoWzVs9XAaVSz4ZfAOUka_qRQ','Marbea Polo Uab','Não.','R$2.000,00','Não','Danubia (55) 9663-8834 Loja ponto da moda','Comercial e administrativo.','Olá, meu nome é Amanda, tenho 26 anos e sou recém formada técnica em contabilidade, sou casada e não tenho filhos. Sou uma pessoa comprometida, organiza e pontual. Tenho facilidade com sistemas e com aprendizagem. 
Tenho muita força de vontade quando não sei sobre algo sempre busco aprender. Agradeço pela oportunidade de poder me apresentar.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-05T17:44:00.000Z'::timestamptz),
  ('Camila Gonçalves Marques Bolson','camilagmarques8@gmail.com',NULL,'55991375881','1993-09-28',32,'Casado(a)','2','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1F7NnzeD5plQZudtzX7GR03e01EZOgpEG','Técnico em Administração','Ensino Médio Completo','UAB - Polo Itaqui','2025-10-17','Não, no momento pausei/parei por um período.','Prefeitura Municipal de Santa Maria - Estagiária - De Out/2019 até 2021
Estágio na secretaria de finanças, atendendo ao público no setor de dívida ativa. Principais atividades: Emissão de relatórios, boletos, atendendo pedidos de parcelamentos de débitos. Posteriormente, passei para a área em que tramitação os processos judiciais para a Procuradoria do Município.','Técnico em Administração 
Curso Profissionalizante de Informática 
Curso Profissionalizante de Recursos Humanos',NULL,'Administrativa, Financeiro',NULL,NULL,'Indicação','Não','A combinar','Sim','Dívida Ativa da Prefeitura Municipal de SantaMaria (55) 3174-1502','Quero inscrever-me no banco de talentos da Young!','Bom devo começar dizendo que sou uma pessoa que busca por uma oportunidade, sei que sou uma pessoa esforçada, que gosto de aprender coisas novas e que estou sempre disposta a colocar em prática aquilo que venho estudando e aprendendo ao longo dos anos. Gosto de trabalhar em equipe, gosto de estar em contato com o público, ajudar e ver as pessoas satisfeitas ao encontrarem o que procuram. Tenho empatia para com o próximo. Sou uma pessoa organizada e que gosta de dar atenção aos mínimos detalhes do que estou fazendo, enfim, sou aquela pessoa que só quer uma oportunidade para mostrar o que sei e aprender o que ainda não sei. Sempre somando para o crescimento tanto da empresa quanto para o meu.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-05T18:10:00.000Z'::timestamptz),
  ('Natália Borba da Silva','nataliaborbaengenharia@gmail.com',NULL,'051989454745','1997-12-09',28,'Solteiro(a)','1','Sim','São Lourenço Do Sul','https://drive.google.com/uc?export=view&id=1EFrNTQfvWUhYSd7ElTYVf4TDsJHpSryT','Engenharia Civil','Ensino Superior Completo','Anhanguera de Pelotas','2023-12-27','Sou formado','09/10/2023 - atualmente: Construtora A.Gaspar
Obra Ponte sobre o Rio Camaquã,Cristal BR 116-KM 428
Área de atuação: Auxiliar de Engenharia / Sala Técnica /
Qualidade
Atividades: Responsável pelo setor de QSMS e sala
técnica, acompanhamento de atividades das frentes de
serviço, conferência de armação e ferragens,
acompanhamento de concretagem, diário de obra,
registro fotográfico, medição e fiscalização, ensaio PIT
em estacas, controle tecnológico de concreto, SGI
envios mensais de indicadores da obra, relatórios
trimestrais e semestrais de KPI´S, etc.

01/06/2020 - 01/10/2023: Elevato Materiais de
Construção e Decoração Ltda
Área de atuação: Vendas
Atividade: Vendas de materiais de construção e
decoração, tintas, porcelanatos, revestimentos em
geral, especificação de produtos, apresentação e
negociação com cliente.
Duração:3 anos e 4 meses','Curso de Auditoria Interna em Qualidade
Autocad 
Informática',NULL,'Engenharia',NULL,NULL,'Instagram','Não','Compatível com a função','Sim',NULL,'Engenheiro Civil','Engenheira civil , com experiência em obras públicas,
canteiro de obra, obra de arte especiais, sala técnica,
qualidade, ISO 9001, 14001 e SGI.
Experiência em vendas, materiais de acabamento e
decoração, setor adminstrativo.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-05T18:45:00.000Z'::timestamptz),
  ('Rosemari Santos do Amaral','rosemariamarall@gmail.com',NULL,'55992088288','1987-06-07',38,'Solteiro(a)','1','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1rJrV6Arltz2rqZc9FXoWsTqilH_pWXk4',NULL,'Ensino Médio Completo','Colégio Estadual São Borja','2005-12-20','Não, no momento pausei/parei por um período.','Trabalhei para a prefeitura Municipal de São Borja, por 05 anos, no cargo de monitora, função monitora e também trabalhando com atendimento ao público.','Curso de informática basica',NULL,'Administrativa, Comercial',NULL,NULL,'Facebook','Não','R$2.500','Não',NULL,'Consultor de vendas.','Trabalhei para a Prefeitura Municipal de São Borja atuando na secretaria de desenvolvimento social como monitora da casa de acolhida por 2 anos auxiliando crianças e adolescentes em situação de vulnerabilidade, trabalhei no centro de referência em assistência social( CRAS) por 01 ano, organizando a agenda da assistente social e também atendendo ao público do programa bolsa família trabalhei por 01 ano e 06 meses para a secretaria de educação na função de monitora dos alunos da escola de educação infantil Natércia Cunha Santos.Tenho noções de informática basica e pacote office, Power point e internet.Considero-me uma pessoa responsável, comprometida.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-05T19:01:00.000Z'::timestamptz),
  ('Thais Dias Pereira','diasthais78@gmail.com',NULL,'55984528630','1998-12-26',27,'União estável','1','Não','Itaqui/RS','https://drive.google.com/uc?export=view&id=1nNTJ3khu1DT9yTocLUxXF8RhRBPyjC3h','Técnico em Contabilidade','Ensino Médio Completo','IFsul','2025-10-15','Sou formado','Supermercados Baklizi - Operadora de caixa e Auxiliar de Tesouraria- 2019 a 2022-
Fechamento de caixa , prestação de contas , depósitos,setor financeiro.

Lojas bom tiver - vendedora - período de natal 
Lojas Tottal -vendedora - período de natal 

Show da moda- vendedora- 4 meses 

Ponto da moda - vendedora- 2023 a 2025 
Organização da loja , vendas e metas','Técnico em Contabilidade',NULL,'Administrativa, Comercial, Estágio, Financeiro',NULL,NULL,'Facebook','Não','1900','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Estou em processo de aquisição de habilitação na categoria B.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-05T20:51:00.000Z'::timestamptz),
  ('Maria Inês Pereira Cabral','mariainespereiracabral@gmail.com',NULL,'55984262549','1994-05-11',31,'Solteiro(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=17KmNXMLfDlK3VF3XfH-mBkCqnNrN1v-A','Administração de empresas','Ensino Médio Completo','Universidade Cruzeiro do Sul','2028-12-10','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Dr.Shape- Cargo: Atendente/Vendedor- Data: Out/2023 à Fev/2024;
Bazar e Floricultura Central Utilidades- Cargo: Sócia e Vendedora- Data: 02/2018 à 12/2020;
1ªIgreja do Evangelho Quadrangular- Cargo: Auxiliar de Contabilidade- Data: 09/2014 à 02/2015;
Fórum da Comarca de Itaqui-RS- Cargo: Estagiária atendimento ao Cliente- Data: 03/2014 à 08/2014;
Ministério Público (Promotoria de Justiça)- Cargo: Secretária- Data: 01/2013 à 12/2013','Curso Técnico em Administração/ Auxiliar Administrativo e Contábil/ Secretariado/ Recursos Humanos/ Técnicas de Vendas e Atendimento ao Cliente/ Departamento Pessoal/  Atendente de Farmácia/ Informática Básica.',NULL,'Administrativa',NULL,NULL,'Indicação','Não','A combinar','Sim','Promotoria de Justiça (Ministério Público) Itaqui-RS','Quero inscrever-me no banco de talentos da Young!','Gosto de aprender, tenho muita responsabilidade e dedicação no que faço.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-05T22:04:00.000Z'::timestamptz),
  ('Elena Silva da Silva','elenasilvama@gmail.com',NULL,'51999767329','1998-03-04',27,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1S0oySCNgi239oyXDohiMPP2SSRpqklxG','Arquitetura','Ensino Superior Completo','UNIRITTER - Centro Universitário Ritter dos Reis','2024-12-18','Sou formado','FT Arquitetura e Legalização

Cargo: Fundadora e Responsável Técnica
Período: 01/2025 – atualmente
Principais atividades: Coordenação técnica e administrativa de projetos de arquitetura e legalização imobiliária. Desenvolvimento de soluções técnicas, elaboração de memoriais descritivos e planilhas de áreas, acompanhamento de processos em órgãos públicos e atendimento direto a clientes. Responsável pela gestão do escritório e pela emissão de RRTs junto ao CAU.

Suelo Urbanismo | Loteamentos

Cargo: Analista de Projetos
Período: 02/2024 – 10/2025
Principais atividades: Atuação em diversas etapas do processo de urbanização e de alterações de projetos urbanísticos, conciliando atividades técnicas e administrativas. Acompanhamento de processos junto a prefeituras, órgãos ambientais e concessionárias no RS e SC. Solicitação e acompanhamento de licenças ambientais (AUC, LP, LI), compatibilização de projetos, elaboração de planilhas de áreas e memoriais descritivos, coordenação de processos de desmembramento e unificação, controle de pagamentos e interface com fornecedores e escritórios parceiros.

Vortex Arquitetura e Urbanismo

Cargos: Estagiária (09/2023 – 03/2024) e Assistente de Projeto (04/2024 – 01/2025)
Principais atividades: Apoio técnico em projetos de arquitetura e urbanismo, controle de prazos e qualidade das entregas, coordenação de aprovações junto a órgãos públicos, criação de tabelas de áreas construídas, levantamento de diretrizes legais (Plano Diretor, Código de Obras) e participação em reuniões com prefeituras, clientes, fornecedores e desenvolvimento de projetos urbanísticos. 

Viável Legalização e Regularização Imobiliária

Cargos: Estagiária (12/2020 – 12/2022) e Assistente de Legalização (01/2023 – 08/2023)
Principais atividades: Apoio e acompanhamento de processos de aprovação e regularização de edificações, elaboração de plantas e desenhos técnicos em AutoCAD, vistoria e levantamento de imóveis, compatibilização de projetos e análise de legislação urbana e edilícia. Experiência com trâmites de legalização, habite-se e processos em diferentes prefeituras.','Sou graduada em Arquitetura e Urbanismo pelo Centro Universitário Ritter dos Reis – UniRitter (FAPA), com conclusão em 2024/2. Durante a graduação, fui bolsista 100% e recebi três bolsas de estudo, incluindo a Bolsa Santander de Excelência Acadêmica (2023), concedida a alunos com desempenho e dedicação destacados.

Meu Trabalho Final de Graduação (TFG), “Arquitetura Inclusiva: Estratégias de inclusão em um novo paradigma educacional”, recebeu nota máxima (10,0) nas duas etapas, foi indicado ao Prêmio IAB-RS e publicado na revista Perspectiva da UniRitter, reconhecendo a qualidade técnica e conceitual do trabalho.

Além da graduação, possuo experiencia consolidada voltados a legalização e regularização imobiliária, planejamento urbano, licenciamento ambiental e gestão de projetos, além do domínio de softwares técnicos como AutoCAD, SketchUp e Pacote Office.

Tenho experiência direta com projetos urbanisticos, atuando Vortex e na Suelo Urbanismo, onde participei da compatibilização de projetos, acompanhamento de trâmites legais e processos ambientais (AUC, LP, LI), o que me proporcionou uma base sólida para seguir me especializando na área de desenvolvimento urbano e parcelamento do solo.',NULL,'Arquitetura, Licenciamentos, Engenharia',NULL,NULL,'Agência de Empregos','Não','4500','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa curiosa e dedicada, que gosta de aprender constantemente e me envolver em diferentes áreas. Tenho afinidade com organização e planejamento, gosto de estruturar tarefas, metas e cronogramas, tanto na vida pessoal quanto profissional.

Além da arquitetura, me interesso por temas como planejamento urbano, sustentabilidade e impacto social, e busco sempre ampliar meu conhecimento técnico através de cursos e leituras.

Participei de projetos voluntários ligados a espaços públicos e educação, como o Projeto Pé na Praça, Mini a pé, focados na revitalização de áreas de convivência comunitária como praças. Essas experiências reforçaram minha visão de que a arquitetura e o urbanismo vão muito além dos projetos, são ferramentas de transformação social.

Sou comunicativa, organizada e gosto de trabalhar em equipe. Tenho domínio de softwares como AutoCAD, SketchUp, Photoshop, InDesign, Illustrator e Pacote Office. No tempo livre, gosto de atividades ao ar livre, fotografia e de aprender coisas novas. Referente a idiomas, tenho inglês básico, mas estou inciando estudos.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-05T22:39:00.000Z'::timestamptz),
  ('Victória Martin Barbosa','vicbarbosa2000@gmail.com',NULL,'51995969871','2000-10-16',25,'Solteiro(a)','0','Sim','Cachoeirinha/rs','https://drive.google.com/uc?export=view&id=1QNwYaInVNbNeEoKuaS-v5pJe5q-6cKR8','Arquitetura','Ensino Superior Completo','Uniritter','2025-10-04','Sou formado','Atuei como estagiária de arquitetura na ME Arquitetura (2022–2023), em Gravataí/RS, com desenvolvimento de projetos de interiores, levantamentos, vistorias e apoio administrativo. Atualmente, estagio na Bruna Ferraz Interiores (2024–2025), também em Gravataí, com foco em projetos no Promob, detalhamentos, renders e orçamentos. Já estagiei na 1007 Arquitetura (2020–2021), em Eldorado do Sul, elaborando layouts e planilhas, e na Prumo Engenharia (2020), com vistorias de obras. Atuei ainda como jovem aprendiz administrativo na Porto Shop S/A (2018–2019) e na Aborgamado Brasil/Grupo Stercycle (2016–2017), realizando atendimento interno, controle e organização de documentos.',NULL,NULL,'Arquitetura, Marketing, Engenharia',NULL,NULL,'Agência de Empregos','não','R$ 3.200 e R$ 5.000;','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou arquiteta formada, com experiência em projetos de interiores e compatibilização entre projeto e obra. Tenho domínio dos softwares SketchUp, AutoCAD, Promob e Lumion (básico), além de conhecimento em orçamentos, detalhamento e acompanhamento de obras. Gosto de trabalhar com organização, criatividade e atenção aos detalhes. Sou comunicativa, pró-ativa e gosto de aprender coisas novas constantemente. No tempo livre, pratico CrossFit e gosto de estar envolvida em atividades que estimulam disciplina e trabalho em equipe.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-05T23:13:00.000Z'::timestamptz),
  ('Lizandra Raddatz','lii.raddatz@gmail.com',NULL,'53999419363','1989-03-19',36,'Solteiro(a)','1','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1WyRXAMvAjmE7PIfh9MQpRL-_MKp5PFFB','Arquitetura','Pós-graduação Incompleta','Urcamp','2019-08-09','Sou formado','1- Espaço móveis e decorações 
2- Estagiária 
3- Jan/2014 até Jan/2016
4- Medições, criação, projeto de interiores (promob), acompanhamento da execução de mobiliário, agendamentos, contratos, captação de clientes, atendimento ao público, pós venda, venda de móveis soltos em geral.

1- Tumelero materiais de construção 
2- Projetista
3- Jan/2016 até Jan/2019
4- Atendimento ao público, auxiliar clientes e vendedores nas dúvidas técnicas e de combinações, criação de projetos de interiores, fachadas e áreas externas com os revestimentos vendidos na loja (AutoCAD e SketchUp 3D), renderização (kerkythea), fechamento das vendas e dos projetos criados, captação de clientes, pós venda, planilhas para acompanhamentos semanais e mensais do Espaço Design. Participação em feiras e treinamentos mensais.

1- MetroQuadrado Arquitetura 
2- Arquiteta
3- Jan/2020 até Out/2025
4- Projetos residenciais, comerciais, interiores, paisagismo, reforma, regularização, desmembramento. Atendimento ao público, planilhas Excel, agendamentos, serviços externos, medições, reuniões com clientes, vistoria de imóveis, acompanhamento de obra, acompanhamento de montagem de móveis.','Formada em Arquitetura e Urbanismo, pela Urcamp. Fazendo pós em Engenharia de Segurança do Trabalho e MBA em Orçamento e Projetos Aplicados a Construção Civil, pela UniMinas.',NULL,'Arquitetura, Comercial, Engenharia',NULL,'https://drive.google.com/open?id=1qwT82L6jjDcQfUjWPAoAs38mNM5FkMYC, https://drive.google.com/open?id=17x9ij7fodmyesxzujB_khwAWcMU1qoTP, https://drive.google.com/open?id=1TEl4UYt1UsizuuXOYO7-GcEZvVn_X_Ok, https://drive.google.com/open?id=1TO7pprlVDPzQjuI-KLUgOVZcJ_fxyvGL, https://drive.google.com/open?id=1vyThH_003ikAyewLX-GMdYjl09hjEoUS','Instagram','Não','4.000,00','Sim','Arq. Carla Schons (53) 999967288','Quero inscrever-me no banco de talentos da Young!','Meu nome é Lizandra, tenho 36 anos, mãe de uma menininha, formada em arquitetura desde 2019 e fazendo duas pós no momento. Praticante de  musculação e jiujitsu. Atualmente moro em Bagé/RS, mas já morei em Palmas/TO, Camaquã/RS, Portão/RS e Curitiba/RS. Minhas maiores habilidades profissionais são projetos arquitetônicos, e acompanhamento de obras. Já fiz projetos de reforma para as polícias rodoviárias estaduais de Portão, Farroupilha, Montenegro e Bom Princípioe também acompanhei as obras. Sou uma pessoa que adora desafios e estou sempre pronta pra eles, sou boa em trabalhar em equipe e me adapto muito bem.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-06T00:05:00.000Z'::timestamptz),
  ('leaoj624@gmail.com','leaoj624@gmail.com',NULL,'55991763795','2004-03-15',21,'Solteiro(a)','0','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1vOOOo-a_7DHHQScXOSUNOAFBsN22irW9','Auxiliar Veterinária, gestão profissional e empresarial','Ensino Médio Completo','Instituto mix','2023-01-12','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Companhia dos bichos, esteticista animal, data de início junho de 2022, data final fevereiro de 2025
Happy pets, recepcionista e encarregada de loja data de início julho de 2025 data final setembro de 2025','Gestão profissional e pessoal, gestão empresarial',NULL,'Administrativa, Comercial, Marketing',NULL,'https://drive.google.com/open?id=1cxPc8mPryPxX8XhJSZPuaXsUhNxHS6TW','Instagram','Não','1800','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa bem comunicativa que gosta de aprender e passar conhecimento, gosto muito de mexer em ferramentas de mídias sociais e marketing digital, proativa, organizada, respeitosa e com muita vontade de aprender e somar para a empresa crescer cada vez mais','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-06T02:04:00.000Z'::timestamptz),
  ('Suelen Nunes Vaz','vazsuelen85@gmail.com',NULL,'53999736845','1995-01-02',31,'Solteiro(a)','2','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1qJ3tcjoxRPZCwS1kN1cNIO8AwSWlBf2c',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Sekalog 
Auxiliar Administrativo 
Janeiro 2024
Março 2024
Sai porque mudei de cidade',NULL,NULL,'Administrativa, Comercial, Estágio',NULL,NULL,'Facebook','Não','2.000','Sim',NULL,'Vendedor, Auxiliar Administrativo',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-06T03:43:00.000Z'::timestamptz),
  ('Marjon Vinícius Almeida Garcia','vinegarcia2@gmail.com',NULL,'55996696554','2003-03-24',22,'Solteiro(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=145WkktWD9PokmDmSTOXXZk428tkAPdjz','Engenharia de Software','Ensino Superior Incompleto','Universidade Cruzeiro do Sul',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Super Tratores / New Holland
Cargo: Auxiliar Tech
Período: 2025 – (Atual)
Principais atividades:
Auxílio na área técnica e de manutenção de máquinas agrícolas, suporte a sistemas, acompanhamento de equipamentos e atendimento a clientes. Responsável também por tarefas administrativas ligadas à área de tecnologia e operação.

2) Exército Brasileiro
Cargo: Soldado
Período: 2022– 2025 (3 anos)
Principais atividades:
Atuação em atividades operacionais, manutenção de equipamentos, disciplina e trabalho em equipe. Desenvolvimento de competências em liderança, organização e cumprimento de metas e prazos.

3) Funerária - Angelos oeste
Cargo: Agente Funerário
Período: 2025 – 2025 (5 meses)
Principais atividades:
Atendimento ao público, suporte logístico em cerimônias e organização de serviços funerários. Função que exigia empatia, responsabilidade e discrição no atendimento às famílias.','Sou estudante de Engenharia de Software, área voltada ao desenvolvimento de sistemas, programação e tecnologia da informação. Ainda estou em formação, mas busco constantemente aprender e me preparar para o mercado, com interesse em temas como banco de dados, segurança da informação e desenvolvimento de software. Tenho intenção de futuramente realizar cursos de especialização e certificações na área.',NULL,'Administrativa',NULL,NULL,'Facebook','Não','5.000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa curiosa e dedicada, sempre buscando aprender coisas novas. Tenho facilidade com tecnologia e estou me aprofundando em temas como informática, bancos de dados, APIs e virtualização e segurança da informação. Tenho bom conhecimento em sistemas operacionais, especialmente Windows e Linux.
Gosto de estudar todos os dias e estou sempre procurando evoluir profissionalmente. Também sou disciplinado, gosto de ajudar os outros e tenho facilidade para aprender novas ferramentas e softwares.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-06T11:59:00.000Z'::timestamptz),
  ('Flávia Borges da Silva','flaviaborgesss41@gmsil.com',NULL,'51998779962','1991-07-10',34,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1mZQwrUIK5IBY8JtZpHM-t2iYSlkKpDb-','Técnico em gestão de empresas (Sebrae)','Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Pequena experiencia como.comsultor de vendas lojas Lebes 10/2025',NULL,NULL,'Comercial',NULL,NULL,'Facebook','Não','2.300','Sim','Vitor (gerente do posto Rota 30)','Comercial','Desejo,uma oportunidade de mostrar meu comprometimento com a empresa!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-06T13:57:00.000Z'::timestamptz),
  ('Lilian Barcella Rodrigues','li.barcella@gmail.com',NULL,'51989918585','2008-05-27',17,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Sp3RFHjOkQKFE6dq_EQtnfXGWbEPdjE_',NULL,'Ensino Médio Incompleto',NULL,'2025-12-19','Não, no momento pausei/parei por um período.','Trabalhei na HIAB, uma empresa multinacional de guindastes, trabalhava como jovem aprendiz no setor de compras, comecei em agosto de 2024 e sai por motivos pessoais em julho de 2025, la eu fazia solicitações de compras, atualizada pedidos e cobrava clientes.',NULL,NULL,'Administrativa, Arquitetura, Marketing, Engenharia',NULL,NULL,'Indicação','Sim, conheci a empresa através do Instagram, Porém tenho uma amiga que trabalha ai como jovem aprendiz, Gabrieli','De um estagiário, ou turno integral, acredito que seja R$1.500,00/R$1.800,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho muito interesse em trabalhar com vocês, gosto da empresa, tenho curso de inglês, sei mexer com o Excel, docs… Gosto muito de fazer atividades físicas e dou meu máximo em tudo que me propunham a fazer.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-06T14:11:00.000Z'::timestamptz),
  ('Jesibel Silva da rosa','jeisirosa2117@gmail.com',NULL,'51981455721','1993-11-03',32,'Solteiro(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1fo-WVMvH4iQzSWBvJ89dnmIzNzCjxNZh',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','V s rosa secretaria  até o momento trabalhando',NULL,NULL,'Arquitetura, Comercial, Novos Negócios, Engenharia',NULL,NULL,'Agência de Empregos','Nao','4000','Sim','51999389188 whatssapp','Quero inscrever-me no banco de talentos da Young!','Bom, estou a procura de novas oportunidades, gosto de novas aventuras , em cada coisa que me proponho a fazer ,seja mais simples que for , eu me dedico pra ser sempre o meu melhor, pra fazer o melhor ,eu não tenho muita experiência mas quero conseguir experiências, quero mudança de vida e espero que seja possível com vocês .','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-06T15:48:00.000Z'::timestamptz),
  ('Kaue Henrique da silva ferrugem','kaue84851@gmail.com',NULL,'51999210889','2007-04-26',18,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Jr9oDmxbeoaXAf6H6qmZkhBSLYovJvZB','Nenhuma','Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Albero marcenaria ocupei um cargo de laminador de primeiro momento, e pós isto fui para a área da instalação lidando com clientes etc… abril de 2025 até 31 de setembro 
Hortifruti sacolão do Maurinho trabalhei de repositor, atendente, organizador e muito mais 29 de abril de 2023 a 15 de outubro 
Trabalhei na área da jardinagem',NULL,NULL,'Marketing',NULL,NULL,'Agência de Empregos','Não','de 1700 a 2900','Sim',NULL,'Marketing',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-06T15:54:00.000Z'::timestamptz),
  ('Leticia Legal Siqueira','leticia.siqueira0804@gmail.com',NULL,'55984230481','2004-04-08',21,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1EQaKBAuIwsrtm9lRLglu3-KdRfbmUFFM','Tec. em Logística','Ensino Médio Completo','Instituto Federal Farroupilha - Campus São Borja','2026-12-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Possuo experiência na área administrativa do comércio exterior e no momento estou cursando Téc. em Logística. Atuei no setor do Gerenciamento de Riscos e na área do Transporte (Exportação) , realizava a emissão de documentos, conferência, gerenciava os processos, acompanhamento de embarques e monitoramento operacional.',NULL,NULL,'Administrativa',NULL,NULL,'Instagram','Não','2.000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Já fiz trabalhos voluntários quando participava de grupos da igreja, em tempos livres faço encomendas de doces, mas sempre possuindo flexibilidade e fácil aprendizagem para a adaptação em novos sistemas e rotinas administrativas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-06T16:55:00.000Z'::timestamptz),
  ('Bianca Santos Speransa','biancassperansa@gmail.com',NULL,'51995638102','2007-05-29',18,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1WpJhQ0Ub-c9CgUwu0hdA5xQR9xT_3XPv',NULL,'Ensino Médio Completo',NULL,'2025-12-18','Não, no momento pausei/parei por um período.','SMTDS, Trabalho auxiliando na administração, atendimento ao público, atendimento via whatsapp, recebimento e arquivamento de documentos. Data de início 01/11/2024 (atualmente ainda trabalho neste local)',NULL,NULL,'Administrativa, Comercial, Marketing, Engenharia',NULL,NULL,'Agência de Empregos','Não.','R$1.518','Sim',NULL,'Consultor de vendas','Tenho facilidade em mexer na internet e gosto de explorar ferramentas digitais. Fiz cursos de Excel e Word, o que me ajudou a desenvolver boas habilidades com o pacote Office e a organizar melhor minhas tarefas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-06T17:03:00.000Z'::timestamptz),
  ('Graziele Moura dos Santos','grazielemouradossantos958@gmail.com',NULL,'55999638126','2002-09-19',23,'Solteiro(a)','0','Não','Itaqui/RS','https://drive.google.com/uc?export=view&id=1E2bEwv334kw69FPHqOsRd2idPnpsbxUA',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','1 ESF Promorar ( Estratégia da saúde da família) 2 recepcionista
 3 14/09/2023 a 25/02/2025
Farmácia fronteiras operador de caixa 26/02/2025','Auxiliar administrativo',NULL,'Administrativa',NULL,NULL,'Facebook','Não','2800','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-06T19:23:00.000Z'::timestamptz),
  ('Gabriela Machado Vaz','gabimava215@gmail.com',NULL,'53999546575','2004-09-29',21,'Divorciado(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1BL2t3NItS6j04m3s2g6Xs0JFGMuriSDd','Administração de empresas','Ensino Superior Incompleto','Geteco técnico',NULL,'Não, no momento pausei/parei por um período.','1⁰ Pampeano Alimentos, Auxiliar administrativo da qualidade, inico 2021 término em 2023, arquivamentos de documentos, compras necessárias 
2⁰ Camara de vereadores, Assistente parlamentar, auxiliar administrativo, 2023 a 2024,  requerimentos, documentos parlamentares 
3⁰ Pampeano Alimentos, 2024 a 2025, operadora de máquinas, fabricava latas','Tenho cursos em Gestão empresarial, administração, marketing',NULL,'Administrativa, Marketing',NULL,NULL,'Instagram','Não','1700','Não','Ex Vereador Omar Ghani','Quero inscrever-me no banco de talentos da Young!','Tenho conhecimento intermediário no pacote Office','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-06T21:02:00.000Z'::timestamptz),
  ('Paula Greice canto Martins','martinspaula310@gmail.com',NULL,'53999205483','1989-03-29',36,'Solteiro(a)','1','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1NgL2wSAtzMRabVW24os3HI1RSlOmcdnY',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Almeida kruguer , correspondente bancária  cargo : vendas . 01/10/2023 até 01/02/2025',NULL,NULL,'Comercial',NULL,'https://drive.google.com/open?id=1dbzfYtlwZaPZDSW1Vc_9CfQciL03wD7F','Instagram','Não','Alcançar metas','Não',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-06T21:04:00.000Z'::timestamptz),
  ('Chrigor Games da Rosa','chrigordarosa@gmail.com',NULL,'53999080310','1999-10-26',26,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1ANPRkQogAFXkFg_8R9HGCgj-nH41jhCs','TEC Recursos humanos','Ensino Médio Completo','Senac','2026-10-22','Não, no momento pausei/parei por um período.','Chrigor Da Rosa
Profissional com experiência em vendas, atendimento ao cliente e operações de loja, atuando como vendedor e caixa em estabelecimentos do varejo. Possui também sólida experiência no Exército Brasileiro, onde exerceu a função de 3º Sargento por seis anos, desenvolvendo disciplina, liderança, responsabilidade e trabalho em equipe.

Atualmente aprimora seus conhecimentos em Recursos Humanos e Marketing Digital, buscando integrar competências de gestão, comunicação e logística para crescer na área administrativa e comercial.

Principais competências:

Atendimento ao cliente e vendas

Operação de caixa e controle financeiro

Liderança e trabalho em equipe

Organização e disciplina

Conhecimento básico em ferramentas digitais e pacotes Microsoft Office','Cursando Técnico em Recursos humanos 
Curso de Gestão financeira 
Ferramentas do Marketing digital',NULL,'Administrativa, Comercial, Marketing, Novos Negócios',NULL,NULL,'Facebook','Não','3000','Sim','Sandro Socca Gerente de vendas 
53999794751
Marimon proprietário 
53984031618','Quero inscrever-me no banco de talentos da Young!','Chrigor Da Rosa é um jovem determinado, natural do Rio Grande do Sul, que sempre buscou evoluir pessoal e profissionalmente por meio do esforço, da disciplina e da aprendizagem constante. Desde cedo, demonstrou responsabilidade e comprometimento com tudo o que se propôs a fazer.

Sua trajetória profissional começou a se consolidar quando ingressou no Exército Brasileiro, onde serviu por seis anos e alcançou a graduação de 3º Sargento. Essa experiência marcou profundamente sua formação pessoal, desenvolvendo valores como liderança, ética, trabalho em equipe, resiliência e disciplina — qualidades que ele leva para todas as áreas da vida.

Após sua passagem pelo Exército, Chrigor decidiu investir em novas oportunidades no setor civil, atuando no comércio e na área administrativa. Trabalhou como Caixa de Loja no Empório Gelei e como Consultor de Vendas no Grupo Nissul Gala, onde aprimorou habilidades em atendimento ao cliente, vendas, organização e comunicação interpessoal.

Sempre buscando aprimorar-se, Chrigor investiu em sua formação técnica e complementar, cursando Recursos Humanos no SENAC, além de capacitações em Gestão Rural, Marketing Digital, Eletricidade Predial e Industrial, e Segurança Bancária. Essas formações ampliaram sua visão sobre o mercado de trabalho e reforçaram seu interesse por áreas como logística, gestão e desenvolvimento profissional.

Hoje, Chrigor se destaca como um profissional dedicado, proativo e responsável, com grande capacidade de adaptação e aprendizado. Seu objetivo é continuar crescendo, aplicando sua experiência em ambientes que valorizem o comprometimento, a eficiência e o espírito de equipe — qualidades que moldaram sua história até aqui.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-06T21:10:00.000Z'::timestamptz),
  ('Diego dos Santos Barcelos','diegojbarcelos@gmail.com',NULL,'53999295291','1999-07-09',26,'Solteiro(a)','1','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=19GV2AEe--VNxtmFmzqxX1HS10kT1SV9g','Técnico de enfermagem','Ensino Médio Completo','Senac bagé','2028-11-09','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Hotel e restaurante  maravilha / atendente 2024

Super engenho / caixa 2023

Supermercados peruzzo / empacotador 2019','Estou cursando técnico de enfermagem',NULL,'Comercial',NULL,'https://drive.google.com/open?id=1MEMImrw-rSJvUFywrQ27PayrNl5TkABG','Instagram','Nao','1900','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Estudo no período  da manhã no Senac  ,mas se for necessário  posso trocar pra noite','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-06T22:10:00.000Z'::timestamptz),
  ('Léia Borges Ramos','leiaborgesramos22@gmail.com',NULL,'55999413751','2002-04-29',23,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=19LboyqeXcOGOm6LgjIEV_I3CVKPwkO8u','Técnico em administração','Ensino Superior Completo','Senac','2021-06-06','Sou formado','Cotripal cidade Panambi 
Operadora de caixa 11/2021 A 05/2024
Trabalhei como operadora de caixa atendimento, pagamento, boletos 
Estou aqui na cidade de Bagé buscar uma oportunidade para trabalhar',NULL,NULL,'Administrativa, Comercial, Financeiro',NULL,NULL,'Instagram','Não','2.000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho carro próprio 
Habilidade= Responsável, Organizada, conhecimento com pacote office e Gosto de aprender coisas novas.
Estou buscando uma oportunidade de emprego  que possa aprender algo novo.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-06T22:11:00.000Z'::timestamptz),
  ('Renata Speransa Fraga','resperansa752rsf@gmail.com',NULL,'51996127242','2002-05-07',23,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1lddJY7Jj5KEGqYVQutitUT9szD6y1DO4','Administração de empresas','Ensino Superior Completo','Universidade Federal do Rio Grande (FURG)','2024-04-06','Sou formado','Banrisul
Estagiária — Pessoa Física e Jurídica
📆 2023 – 2025
Atuação no atendimento a clientes pessoa física e jurídica, realizando abertura de contas, concessão de crédito, portabilidade e comercialização de produtos financeiros. Responsável pela atualização cadastral, orientação sobre investimentos e suporte nos caixas eletrônicos. Durante o período, alcancei destaque em vendas por superar metas consecutivas e oferecer soluções adequadas à realidade de cada cliente, formando uma base sólida de clientes fiéis. Também gerenciei indicadores de inadimplência, obtendo excelentes resultados e contribuindo para a saúde financeira da instituição.

Fraga Negócios Imobiliários
Assistente Administrativo
📆 2021 – 2023
Responsável pela elaboração de contratos de aluguel, compra e venda de imóveis, atendimento aos clientes via canais digitais e suporte nas rotinas administrativas. Atuação direta com corretores e clientes, garantindo agilidade, clareza e segurança em todas as etapas do processo imobiliário.

Prefeitura Municipal de Santo Antônio da Patrulha — Setor de Compras
Estagiária — Administrativo
📆 2019 – 2020
Responsável pelo arquivamento de documentos, atendimento ao público e alimentação de sistemas, assegurando organização e conformidade nas rotinas do setor.

Prefeitura Municipal de Santo Antônio da Patrulha — PROCON
Estagiária — Administrativo
📆 2017 – 2018
Responsável pela abertura de processos e atendimento ao público, mediação de conflitos de consumo e registro de reclamações. Atuava também na organização de documentos e apoio às atividades administrativas, contribuindo para a eficiência no atendimento à comunidade.','Sou formada em Administração pela Universidade Federal do Rio Grande (FURG) e atualmente curso Ciências Contábeis no Centro Universitário Leonardo da Vinci (UNIASSELVI), com previsão de conclusão em 2027. Busco constantemente aprimorar meus conhecimentos nas áreas financeira, de gestão e de vendas, conciliando teoria e prática para desenvolver uma atuação completa e estratégica.
Possuo a certificação CPA-20 pela ANBIMA, reforçando minha capacitação para atuar com a comercialização de produtos de investimento e atendimento a clientes de alta renda. Além disso, sou fluente em inglês, formação obtida pela escola de idiomas Wizard, o que me permite comunicar-me com clareza em ambientes corporativos e acompanhar conteúdos técnicos internacionais.
Concluí também o curso de formação de corretor de imóveis, que ampliou minha visão sobre o mercado, negociações e análise de crédito, embora ainda não tenha solicitado o registro no CRECI. Essas formações e certificações refletem meu compromisso com o aprendizado contínuo e com o desenvolvimento de uma carreira sólida no setor financeiro e de negócios.',NULL,'Administrativa, Comercial, Financeiro',NULL,NULL,'Instagram','Não.','R$ 2.500,00.','Não',NULL,'Consultor de Vendas','Sou uma pessoa curiosa e comunicativa, que busca constantemente aprender e se desenvolver em diferentes áreas. Tenho bons conhecimentos em ferramentas de escritório, sistemas financeiros e plataformas digitais, além de habilidades de comunicação e negociação desenvolvidas ao longo da minha trajetória profissional.
Tenho bastante conhecimento em inglês, o que me permite uma boa compreensão de materiais técnicos e contato com diferentes culturas. Também possuo facilidade com organização, planejamento e relacionamento interpessoal — características que me ajudam a lidar bem com o público e com o trabalho em equipe.
Nos meus momentos livres, gosto de estar em contato com a natureza e fazer trilhas, que me ajudam a relaxar e manter o equilíbrio mental. Tenho um grande interesse por design de interiores, um passatempo que me inspira criatividade e atenção aos detalhes, passando horas montando cômodos e decorando em aplicativos. Além disso, gosto de ir à academia, conhecer novos restaurantes, assistir filmes e séries e, sempre que posso, preparo alguns docinhos na cozinha.
Esses passatempos e interesses refletem meu perfil dinâmico, criativo e disciplinado, qualidades que também levo para o ambiente profissional.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-06T22:26:00.000Z'::timestamptz),
  ('Laura Moreira de Camargo','laura.mcamargo2005@gmail.com',NULL,'53991893013','2005-04-04',20,'Solteiro(a)','0','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1r7mn4GKY-p31Dbl0OwahC0SChCatTHfD',NULL,'Ensino Médio Completo','IFSUL - Campus Bagé','2025-06-10','Não, no momento pausei/parei por um período.','Estágio – IFSul – Campus Bagé
Setor Administrativo
(2024 - 2025)
Estágio – Secretaria Municipal de
Políticas Públicas para Mulheres
(SEMPPMULHER) e COMDICA
Setor Administrativo e de
Informática
(2023 - 2024)
Estágio - Secretaria Municipal de
Educação (SMED)
Projeto Culturarte e Apoio
Pedagógico (2022','Técnica em informática',NULL,'Administrativa, Comercial, Marketing, Novos Negócios',NULL,NULL,'Instagram','Não','1900','Sim',NULL,'Vendedora','Sou a Laura Moreira de Camargo, vi a vaga de consultora de vendas e tenho interesse.
Tenho curso técnico em Informática pelo IFSul e já trabalhei com atendimento e setor administrativo.
Sou bem comunicativa e quero muito uma chance pra crescer na área.
Conhecimentos Técnicos: Pacote Office, Canva, planilhas eletrônicas, redes sociais institucionais.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-06T23:06:00.000Z'::timestamptz),
  ('PAULA LOHANA DORNELES PEDROZO','lohanapaula2@gmail.com',NULL,'55999619499','2000-06-05',25,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1IzcPAJDQcgNxZd6mhhp11Tc_ovB5DWxb',NULL,'Ensino Superior Incompleto','Unopar',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','EGD tecnologia em energia, assistente administrativo',NULL,NULL,'Administrativa, Comercial, Financeiro, Marketing',NULL,NULL,'Facebook','Não','Salário mínimo','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-07T01:18:00.000Z'::timestamptz),
  ('Vanderlei Mendonça Rodrigues','vanderlleimendoncar@gmail.com',NULL,'55991743640','2006-10-01',19,'Solteiro(a)','0','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1ldMk5pQveLWJ38FSYPCJSGMv-gybCayb',NULL,'Ensino Médio Completo','Universidade Federal do Pampa- Unipampa',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Trabalhei na prefeitura municipal de São Borja na secretaria da saúde de janeiro a junho de 2023, como visitador do PIM','Conclui o ensino médio e atualmente curso o ensino superior. Também tenho curso básico de inglês',NULL,'Administrativa, Estágio',NULL,NULL,'Instagram','Não','1.200','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou dedicado, bastante comunicativo e sempre muito disposto a novos aprendizados e experiências. Procuro sempre ser pontual e focado nos meus objetivos, e quero muito adquirir experiências e conhecimentos. Como hobby sou dançarino de CTG','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-07T01:59:00.000Z'::timestamptz),
  ('João Guilherme Barcelos da Silva','joaoguilhermebarcelos986@gmail.com',NULL,'53992153589','2003-08-16',22,'União estável','1','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=19cAF-ygww2hBHsXHP7OQoFYh2Lw7IG1W',NULL,'Ensino Médio Incompleto','Luiz Mércio Teixeira',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Comecei na empresa Osmar nicolini em 20/11/2021
*Como repositor
Onde minhas atribuições eram: 
Abastecimento, cuidando sempre da limpeza e organização. 11/2021 - 02/2022

Passei para a função de operador de loja, onde minhas atribuições eram: precificação de loja, cuidando sempre  promoções de toda a loja. 02/2022 - 07/2022

Manter a equipe alinhada, para a melhor limpeza e organização da loja. 

Cuidar e fazer a troca de layout da loja.


Passei a função de conferente de mercadorias, onde minhas atribuições eram: conferência de mercadorias recebidas do cda.07/2022 - 12/2022

Conferência e NF

EMISSÃO DE NFS de transferências para filial. 

Auditoria de mercadorias.

Alinhamento da equipe e escalas de horários.

Organização e limpeza do depósito

Passei a prevenção de perdas
 Onde minhas atribuições eram: fiscalizar validade e qualidade de produtos da loja, padaria e açougue. 12/2023 - 07/2024

Conferência de NF.

Auditoria de estoque 

Reajuste de estoque 

EMISSÃO de NFS 

Abertura e fechamento de loja','2⁰ grau, ensino médio ( matriculado para terminar o ensino médio) para fazer faculdade de gestão financeira',NULL,'Administrativa, Financeiro, Novos Negócios, Engenharia',NULL,'https://drive.google.com/open?id=17NlGsVr_hJGM9Tc8U-mgZ5l3j8qbF6e7','Agência de Empregos','Não','1800','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Custo de brigadista de incêndio e primeiro socorros 
03/2025 - 04/2025','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-07T02:41:00.000Z'::timestamptz),
  ('Tailimar da Cunha Oliveira Martins','tailimarmartins1995@gmail.com',NULL,'53999386284','1995-02-20',31,'Solteiro(a)','0','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1hHiHjI9a8VN4x_gyJ0yNwKPxRINsxm2N','Nutrição','Pós-graduação Completa','Universidade da Região da Campanha','2017-12-22','Sou formado','1) Piano Studio Cheisa Goulart
2) Secretário
3) 05 de julho de 2021 a 31 de agosto de 2024
4) Atendimento ao público/Informações',NULL,NULL,'Administrativa, Comercial, Licenciamentos',NULL,NULL,'Instagram','Não','R$2.500,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-07T03:43:00.000Z'::timestamptz),
  ('Valmir Castro Lopes Junior','juniorlopeslp@hotmail.com',NULL,'53999091617','1990-12-19',35,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1g0oU6W7f4YuENA42tD4m5xmWFQRGoJdw',NULL,'Ensino Superior Incompleto','Centro universitário  da região da campanha/ URCAMP',NULL,'Não, no momento pausei/parei por um período.','1-  Castro Lopes Rodrigues Ltda 
2- Gestor de estoque 
3- período 01/2015 -  05/2020

1- Car House estética automotiva 
2- Detailer
3- período 07/2020 - 04/2022

1- Estação do sabor Restaurantes 
2-  Caixa 
3- período 05/2022 - 10/2025',NULL,NULL,'Comercial',NULL,NULL,'Agência de Empregos','Não','2,5','Sim',NULL,'Consultor de vendas','Oi me chamo Valmir tenho 34 anos, gostaria de destacar minha facilidade de aprendizado e minha capacidade de lidar com diferentes tipos de situações com eficiência, tenho uma boa leitura das pessoas podendo atender a necessidade de cada um fazendo com que a experiência fique mais agradável ao cliente. Sei lidar bem com redes sócias e um conhecimento vasto em informática, possua CNH A/B coloco-me à disposição para uma entrevista.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-07T04:01:00.000Z'::timestamptz),
  ('Yasmin da Silva Abreu','conta.yasmin.abreu@gmail.com',NULL,'51992920272','2003-03-18',22,'Solteiro(a)','1','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=13M2YduRtFc0UwUMi3fXDf5KNASZ78bqi',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Consultora de Vendas e Auxiliar Administrativo - Polo Online UniRitter - (03/2020 a 11/2020).
Recepção e atendimento a alunos e clientes, presencialmente e online, garantindo suporte cordial e eficiente;
Realização de matrículas, controle financeiro, emissão de boletos e acompanhamento de pagamentos;
Divulgação de cursos e relacionamento com o público por redes sociais, incluindo prospecção de estudantes e gestão de contatos em CRM.

Auxiliar de Desenvolvimento Infantil -  IEBAD - (02/2022 a 03/2023).
Atendimento direto às crianças e responsáveis, com boa comunicação, cuidado e responsabilidade;
Suporte à equipe pedagógica e colaboração em eventos escolares;
Organização e suporte nas rotinas diárias, mantendo o ambiente harmonioso e funcional;','Operador de Mídias Sociais – Enjoy (9h);
Excel Básico – Olimpio (20h);
Auxiliar Administrativo – Olimpio (40h);
Gestão de Pessoas e Liderança (40h) – IFSUL (Em andamento);',NULL,'Administrativa, Comercial, Estágio, Novos Negócios',NULL,'https://drive.google.com/open?id=1Qc3wWOtnuJSs2DA8O11q32jgQLixk6zq, https://drive.google.com/open?id=1BZraK6WH5O_KEvJExYISkUvlmYWetxMu','Agência de Empregos','Não fui','Salário compatível com a função do banco de talentos - Salário Mínimo.','Sim','Luana Salines Assessora Parlamentar Delegada Nadine - 51 9807-3922','Quero inscrever-me no banco de talentos da Young!','Atualmente, estou estudando para ingressar na graduação de Ciências Contábeis. Pratico Muay Thai. E recentemente, me mudei de São Leopoldo, onde tive uma experiência valiosa em um brechó comunitário.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-07T11:40:00.000Z'::timestamptz),
  ('Loren Garcia Medeiros Borges','lorenborgesgm@hotmail.com',NULL,'53997056753','1998-02-17',28,'União estável','1','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1fSoXvzKwEeP2eTcGC9Uvtw2B7BW1uyAS','Nutrição','Ensino Superior Completo','Universidade da Região da Campanha','2021-08-21','Sou formado','Estou me candidatando para o primeiro emprego','O curso de nutrição vai muito além de entender sobre a composição dos alimentos e do corpo humano. É a forma de saber dar um atendimento humanizado e socialmente correto, é estender a mão a quem mais precisa, entender como o outro se sente, e ajudar através não só da dieta, mas de um sorriso, de uma conversa e de ser um bom ouvinte.',NULL,'Estágio, Licenciamentos',NULL,NULL,'Instagram','Não','2000','Sim',NULL,'Estágio Financeiro','Eu amo um clima bom, uma boa música dançar sem ter vergonha. Foi através da dança que pude conhecer vários lugares, pessoas, ter várias amizades e entender as pessoas. Amo ir a praia nos verões com a minha família, uma viagem simples sem muitos luxos. Falo um pouco de espanhol, compreendo mais do que falo, para ser exata.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-07T13:36:00.000Z'::timestamptz),
  ('Jeison da Rocha Batista','jeison_batista@hotmail.com',NULL,'51998448031','1990-01-19',36,'Solteiro(a)','1','Sim','Osório/RS','https://drive.google.com/uc?export=view&id=10ulV2RpGw0cMKHNCMq0pcv3l4m3Xpojk','Engenharia Civil','Ensino Superior Completo','Unisinos','2026-03-07','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Atualmente sou supervisor de almoxarifado na CORSAN, na área de engenharia atuei somente em projetos de maneira autônoma','Experiência em Excel, AutoCAD e altoqi Builder, TCC sobre projeto hidráulico para bairro residencial',NULL,'Engenharia',NULL,NULL,'Indicação','Não','9.000,00','Não','Augusto Messagi','Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-07T13:51:00.000Z'::timestamptz),
  ('Helena da Silva Moraes','helenasmoraes01@gmail.com',NULL,'51997884715','2001-11-11',24,'Solteiro(a)','0','Sim','Osório/RS','https://drive.google.com/uc?export=view&id=1Nuz7aoPa1zCdB966rimmeps9RppVqdRv',NULL,'Ensino Superior Incompleto','Universidade do Vale do Rio do Sinos - Unisinos',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1º HF Arquitetura e Interiores - ocupo o cargo de estagiária em projetos de arquitetura, interiores e engenharia, comecei em Fevereiro/2025 e estou até hoje. Minhas principais atividades são auxílio na elaboração de projetos, acompanhamento em obras, atendimento a clientes e auxílio em desenhos 2d e 3d.

2º Eriomar Pazzin Trisch - ocupo o cargo de estagiária em projetos de arquitetura e engenharia, comecei em Abril/2025 e encerrei meu vínculo em Novembro/2025. Minhas atividades também foram na parte de elaboração de projetos, acompanhamento em obras, atendimento a clientes e auxílio em desenhos 2d e 3d.',NULL,NULL,'Arquitetura, Engenharia',NULL,'https://drive.google.com/open?id=1Dra-FbcnDv5UuTZgTbkdmwvA5ib-l9wz','Fui Indicada Para Uma Vaga','Sim, Augusto Messagi (engenheiro)','4h - mínimo R$ 1.000,00 ou 6h - mínimo R$ 1.600,00','Sim','Augusto Messagi (Engenheiro) - trabalho com ele fixo desde Fevereiro de 2025','Estágio Engenharia e/ou Arquitetura',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-07T14:10:00.000Z'::timestamptz),
  ('Iuri Bender da Silva','iuribender@gmail.com',NULL,'53984793698','1996-09-14',29,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1uXnlOIOsdvp36p9F_rMrgDAKZCqChBiL','Engenharia Civil','Pós-graduação Completa','FURG','2023-03-25','Sou formado','Analista de Engenharia - Convert Arquitetura e Engenharia (03/25 - até o momento)
Gerenciamento de obras e coordenação de equipe técnica.
Contratação de mão de obra e gestão de contratos com fornecedores.
Planejamento de atividades e controle de cronograma.
Controle de qualidade, amedições de serviços e compatibilização de projetos.
Apoio em orçamentos, negociações e controle de insumos e materiais.

Assistente de Engenharia - FAL Construtora (10/24 - 03/25)
Atuação em obras de reformas e ampliações no Hospital Moinhos de Vento, ambiente hospitalar de alta complexidade e funcionamento contínuo.
Coordenação de rotinas operacionais e supervisão de equipes técnicas.
Gestão de contratos de terceiros e controle de cronograma e escopo contratual.
Apoio no planejamento de manutenção predial (corretiva e preventiva).
Aplicação de práticas de segurança do trabalho, organização e padronização de processos.
Planejamento físico-financeiro com foco em otimização de custos.

Assistente de Engenharia - Convert Arquitetura e Engenharia (03/23 - 09/24)
Responsável por orçamentos, negociações com fornecedores e aquisição de insumos.
Acompanhamento de cronogramas e controle logístico de materiais para execução de obras.
Participação no planejamento financeiro das obras com foco em redução de custos.','Pós graduação completa em Engenharia de Segurança do Trabalho e MBA em andamento em Projeto, Detalhamento e Desempenho das Estruturas e Fundações',NULL,'Arquitetura, Engenharia',NULL,'https://drive.google.com/open?id=1BSTYtfsmZ1YkPLHXwYx0HgADlX1oIbbm','Agência de Empregos','Não','R$5.500,00','Sim',NULL,'Engenheiro Civil','Sou Engenheiro Civil pós-graduado em Engenharia de Segurança do Trabalho e pós-graduando em MBA Projeto, Detalhamento e Desempenho das Estruturas e Fundações.

Ao longo da minha trajetória profissional, acumulei sólida experiência em gerenciamento de obras, planejamento de reformas prediais, gestão de equipes técnicas, análise e elaboração de projetos estruturais, elétricos e hidrossanitários com visão crítica e estratégica, tendo o compromisso de entregar resultados de excelência.

Possuo experiência com planejamento físico-financeiro, elaboração e compatibilização de projetos, negociação com fornecedores, avaliação de imóveis, assistência técnica em perícias e aplicação de normas de segurança do trabalho. Comprometido com prazos, segurança, padronização de processos e otimização de custos. Busco contribuir com minha vivência prática.

Dentre as minhas experiências, destaco a execução de obras hospitalares no hospital Moinhos de Vento em Porto alegre. 

Atualmente atuo no gereciamento e administração de obras resienciais e elaboração de projetos junto a Convert Arquitetura e Engenharia. Em paralelo atuo também através da minha empresa, Argos Engenharia, na elaboração de laudos técnicos e projeto de engenharia.

Recentemente iniciei, como prestador de serviços para a empresa FatorGreen, o gerenciamento de uma obra comercial da C&A dentro do Shopping Pelotas, atuando diretamente no gerenciamento das atividades, cronograma e das equipes de engenharia contratadas para a execução. Também atuo como elo entre as equipes, a C&A e o Shopping, para tratar eventuais dúvidas quanto a execução e a liberação de serviços. Obra de curto prazo e de grande complexidade por se tratar de muitas equipes trabalhando simultaneamente.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-07T15:59:00.000Z'::timestamptz),
  ('Camila da Silva Alderete','camilasalderete@gmail.com',NULL,'55999104711','2001-01-07',25,'Solteiro(a)','1','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=11GnbdFoI3MetnlPfx2RYCWOYYX9aMmgT','Agronomia','Pós-graduação Incompleta','Universidade Federal do Pampa - UNIPAMPA','2024-02-16','Sou formado','Trabalhei por um ano na BIOTROP, uma das maiores empresas no ramo de Agricultura regenativa onde o foco principal deles é desenvolver produtos biológicos tendo como base bactérias e fungos que podem ser utilizados em diferentes culturas, desde o arroz até o citrus. Iniciei como estagiária em 2023 e fui efetivada em janeiro de 2024, atuei como assistente técnica de vendas na região da fronteira oeste atendendo canais e produtores situados cidades como Itaqui, São Borja, Alderete e Rosário do Sul. Além dessa assistência técnica aos consultores dos canais e aos produtores, também realiza vamos outras atividades como a organização de dias de campo, desenvolvimento de materiais (exemplo: vídeos, fotos, folders, apresentações, etc) para divulgação dos produtos e da empresa, atendimento ao cliente (aqui fazíamos muito a gestão de pessoas, de equipe e do nosso próprio tempo), palestras e organização de mini cursos. Além da minha área também ajudava os colegas nas demais áreas deles quando era preciso (ex: São Gabriel, Cachoeira do Sul, Santana do Livramento, etc) pois os eventos eram grandes e precisava de um apoio maior. 
Ademais, diariamente estava nos canais pondo em prática o relacionamento com os clientes (consultores e produtores), estava nas fazendas e granjas para conversar com os produtores e assim conhecê-los melhor para saber suas dores e poder montar um planejamento e saber onde podia auxia-los (resumindo ia conhecer a sua dor para no futuro oferecer uma solução), realizava o pós venda, então depois de vender o produto acompanhava o seu desenvolvimento na lavoura realizando fotos e vídeos que comprovasse sua eficácia e montava campos experimentais com os produtores e com a faculdade UNIPAMPA e acompanhava semanalmente fazendo avaliações específicas para cada produto e cultura. 
Sai da empresa em junho de 2025 por motivos pessoais. Meu filho na época tinha 4 meses e devido a sua alergia a proteína do leite, não consegui introduzir outra forma de aleitamento que não fosse o peito e com as rotinas de viagem não conseguiria me dedicar 100% ao meu trabalho, e para não comprometer a região e a empresa, pedi desligamento. Com 4 nessa ainda não sabíamos da alergia, começamos a investigar com 5 meses pois ele não aceitava fórmulas comuns, hoje já estamos com tudo controlado','Sou formada em Agronomia, atuei na área de vendas por um ano como assistente técnica onde contribuía para o intermédio entre o canal e o produtor. Estou cursando uma pós graduação em Gestão comercial pela UNINTER para me aprofundar mais na área de gestão de pessoas e também na área de vendas, estudando estratégias para ambas. 
Futuramente perdendo iniciar a faculdade de Administração e assim ir me especializando com cursos. Acredito que ambas as áreas de formação se conectam e estão em evidência no mercado, visto que trabalhamos com venda e público desde a hora que acordamos até a hora que vamos dormir. 
Tenho alguns cursos mais curtos mas de pouca relevância.',NULL,'Administrativa, Comercial, Marketing, Engenharia',NULL,NULL,'Instagram','Não','A partir de 3 mil','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho 24 anos e sou apaixonada em trabalhar com pessoas, em conversar, entender e ajudar as pessoas a achar uma solução para aquilo que procuram. Quando adolescente e durante minha graduação em agronomia trabalhei como professora de séries iniciais, vendedora de roupas e lanches e como garçonete, também sempre estava envolvida a trabalho voluntários com animais e crianças. 
Na faculdade participei simultaneamente de 4 grupos: PET Agronomia - era bolsista e trabalhava com ensino, pesquisa e extensão; GEFIT - grupo de fitopatologia trabalhava mais com pesquisa a campo e laboratório; GPFOC - Grupo voltado para pesquisas com flores ornamentais trabalhávamos com pesquisa, ensino e extensão e o GIEDER - grupo de estudos em desenvolvimento rural trabalhávamos com pesquisa, ensino e extensão. 
Então como podem perceber, sempre gostei de ter uma rotina cheia e de me abrir para diferentes áreas a fim de aprender, absorver e compartilhar o máximo de conhecimento e experiência possível mas sempre uma complementando a outra. No GIEDER passei um mês em Santana do Livramento atualizando formulários das famílias assentadas, visitei diferentes assentamentos, conheci diferentes pessoas com culturas e costumes diferentes, participei de relatórios, reuniões, fui coautora de um artigo publicado em revista e ali aprendi ainda mais sobre pessoas. 
No meu trabalho como assistente técnica segui colocando em prática tudo que sabia sobre gestão de pessoas mas senti dificuldade em gerir meu próprio tempo, e em como vender, por isso fui atrás e hoje estou me especializando nessas áreas, pois são áreas que me descobri antes, durante e após a graduação e hoje procuro estar em constante evolução nessas e nas demais áreas, sempre aberta para o novo, buscando desafios e conhecimento.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-07T23:52:00.000Z'::timestamptz),
  ('Pietra krieger','contatopietrakrieger@gmail.com',NULL,'51998026710','2003-01-06',23,'Solteiro(a)','1','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1B7vItWttkb0ktt_sma1v2Lr7h0KtHZ7k',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Empresa de marketing do ramo da beleza, beuaty&co / social media 07/25 12/24. Criação de copys, contato com cliente e gerenciamento da mídias','Tenho alguma curso como social media e marketing',NULL,'Marketing',NULL,'https://drive.google.com/open?id=1sjqjFpK6VKYkK2bpg584arqhIsKHWJnz','Instagram','Nao','R$3.000','Sim',NULL,'Marketing ou social media',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-08T01:09:00.000Z'::timestamptz),
  ('Verônica Santos da Silva','vehsantos1324@gmail.com',NULL,'51991778113','2006-07-26',19,'Casado(a)','1','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1WYO_feVxnNeyekLrth0EnqThxBwa0TSV',NULL,'Ensino Médio Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Na área comercial seria meu primeiro trabalho',NULL,NULL,'Comercial, Estágio, Novos Negócios',NULL,NULL,'Facebook','Não','4000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Bom, gosto de aprender coisas novas e me conectar com as pessoas. Sou comunicativa, muito organizada e proativa. E o que quero é cada vez mais aprender, e fazer com que possa me ajudar a continuar evoluindo profissionalmente.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-08T01:23:00.000Z'::timestamptz),
  ('Samira Maciel Shihadeh','smrshihadeh@gmail.com',NULL,'55997113799','2005-09-05',20,'Solteiro(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1QHmkwTQYoolsqCOXJbRRv6bsTXWn6JIu','Gestão em Serviços Jurídicos e Notariais. E Ciências Sociais- Ciência Política','Ensino Superior Incompleto','Uninter - Itaqui e Universidade Federal Do Pampa - São Borja','2027-09-05','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Meu primeiro emprego foi como jovem aprendiz no Posto Conesul BR 290 estava como operador de caixa porém fazia muitas outras funções, e estava fazendo o curso de Comércio Exterior no Senac Uruguaiana. Iniciei em Outubro de 2023 e finalizei em Agosto de 2024 pois tive que me mudar para Itaqui com minha mãe em busca de emprego para ela. Em janeiro de 2025 entrei para a safra da Camil Alimentos SA, e finalizei o contrato em Maio de 2025, estava responsável da Balança, fazia entrada e saída de caminhões, emissão de notas e documentos, trabalhava com a planilha Excel. E para finalizar tirei as férias de uma moça que trabalha no Ministério Público de Itaqui. Fiquei de Recepcionista e na Promotoria eu  atendia o público, e dava entrada nos ofícios. As férias dela foram de Agosto 2025 a Setembro 2025','No momento estou cursando duas graduações, um tecnólogo em Gestão de Serviços Jurídicos e Notariais, e Ciências Sociais - Ciência Política, fiz também 2 semestres do curso de Direito. Me formo em 2027 no tecnólogo e em 2028 em Ciência Política',NULL,'Administrativa, Comercial, Estágio',NULL,NULL,'Instagram','Não','Minha expectativa é de 1800 para mais, o valor que eu recebia nas ultimas duas empresas','Sim',NULL,'Gostaria de me inscrever para o estagio na cidade de Itaqui RS','Estou a procura de emprego para ampliar meus conhecimentos, sou uma pessoa que não sabe de tudo, mas que se dedica para aprender e aprendo rápido qualquer atividade. Possuo conhecimento no pacote office e gosto de trabalhar em equipe mas se tiver que trabalhar individualmente também trabalho! Espero poder fazer parte desta empresa e aguardo retorno. E gostaria de informá-los que o meu número é somente whatsapp!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-08T04:39:00.000Z'::timestamptz),
  ('Ana Paula Celeste Goulart','paulagoulart266@gmail.com',NULL,'51998381411','1974-01-26',52,'Solteiro(a)','2','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1VWJd28eqYjdNQmjKMTEoSPryXdS7eiUk',NULL,'Ensino Superior Incompleto',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Exattus - Gerente adm',NULL,NULL,'Administrativa, Comercial, Marketing',NULL,'https://drive.google.com/open?id=1KViiD2oH5yH_7UuGJPjh0BGmMeMVxjOb','Instagram','Não','3.000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-08T11:22:00.000Z'::timestamptz),
  ('Bianca Mello Bacelar','byancamello93@gmail.com',NULL,'51999668934','2007-03-30',18,'Solteiro(a)','0','Não','Itaqui/RS','https://drive.google.com/uc?export=view&id=1HS_wvdvcy0LDidimqMUY9ItoWn3FZUkf','Pedagogia','Ensino Médio Completo','Odila villordo de morais','2024-12-04','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1)Vendedora por 9 meses no Armazém dois irmãos,2) vendedora 7 meses no shopping sheik e sheik e 3)Auxiliar de cozinhar por 1 ano no mecânico burguer.','Sim',NULL,'Administrativa, Estágio',NULL,NULL,'Instagram','Não','Não','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Quero crescer com a empresa e crescer como profissional','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-08T13:40:00.000Z'::timestamptz),
  ('Jessica Teixeira Bielemann','Jeebielemann29@gmail.com',NULL,'53999473411','1990-12-29',35,'Casado(a)','2','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1bEVIl9D9g2JdizjQAx6nKwfKEz_lrIOa','GESTÃO DE RECURSOS HUMANOS','Ensino Superior Completo','Unopar','2024-06-10','Sou formado','R E C E P C I O N I S TA   |   J U N 2 0 1 3 - M A R 2 0 1 7
H O T E L D O C O M É R C I O , B A G É
• Atendimento presencial e telefônico com cordialidade e profissionalismo
• Gerenciamento de agenda e marcação de diárias
• Recebimento e encaminhamento de correspondências e documentos
• Organização e manutenção da recepção
A U X I L I A R A D M I N I S T R AT I V O   |   F E V 2 0 2 2 - S E T 2 0 2 2
R E D E TC , B A G É
• Gerenciamento de e-mails e correspondências, garantindo comunicação
eficiente dentro e fora da empresa
• Organização de documentos e arquivos físicos e digitais, mantendo a ordem
e facilitando o acesso
• Atendimento telefônico, fornecendo informações e direcionando chamadas
conforme necessário
S E C R E TÁ R I A   |   O U T 2 0 2 2 - J U L 2 0 2 3
S E S C U R S O S L I V R E S , B A G É
• Controle de arquivos e documentos, físicos e digitais
• Recepção de visitantes e preparação de salas de reuniões
• Atendimento aos alunos',NULL,NULL,'Administrativa',NULL,NULL,'Facebook','Não.','1800','Sim',NULL,'Consultor de vendas - Bagé RS',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-08T17:14:00.000Z'::timestamptz),
  ('Leticia Legal Siqueira','leticia.siqueira0804@gmail.com',NULL,'55984230481','2004-04-08',21,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1eZSKfn0jYiR2w8eW-C84Z3gIGp14QKiV','Logística','Ensino Superior Incompleto','Instituto Federal Farroupilha Campus São Borja','2026-12-08','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Atuei no setor do Gerenciamento de Riscos na empresa Veloce Logística em 2022 com duração de 10 meses e na área do Transporte (Exportação) na empresa SB Despachos Aduaneiros ( Início em Julho/2023 - Saída Junho/2025) realizava a emissão de documentos aduaneiros como MIC/CRT, gerenciava os processos, acompanhamento de embarques e monitoramento operacional.','No momento estou cursando Técnico em Logística no Instituto Federal Farroupilha com previsão de conclusão em 2026.',NULL,'Administrativa, Comercial, Financeiro',NULL,NULL,'Instagram','Não','1.900','Não',NULL,'Comercial','Possuo carro próprio, flexibilidade e fácil aprendizagem para a adaptação em novos sistemas e rotinas administrativas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-08T23:12:00.000Z'::timestamptz),
  ('Gabrieli Salvador Gronefeld','gaby.salva@gmail.com',NULL,'51985539987','1998-03-06',27,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1Vc-AE2OD8v-ccc81reyYH-5RIqW7U0Ta','Arquitetura','Ensino Superior Completo','Faculdade São Francisco de Assis - UNIFIN','2022-08-27','Sou formado','Simoni Vargas - Estágio em projetos 
Fernanda Salvagni Arquitetura - Estágio em projetos 
Romanzza - Estágio projetos 
Romanzza - Projetista
Romanzza - Atualmente conferência e assistente comercial','Formada em arquitetura e urbanismo atualmente com foco em interiores na área onde trabalho. Já tive oportunidade de executar projeto urbanístico de loteamento. Sempre em busca de estar atualizada, já fiz diversos cursos de softwares para aprimora cão do conhecimento mas não os utilizando acabei perdendo a prática em revit e archicad. Cursando patologia das construções como complementação nos estudos. Atualmente utilizo Promob e sistema Foccolojas, mas possuo interessse e rápido aprendizado, com facilidade para conhecimento em qualquer área que me for proposto a aprender.',NULL,'Administrativa, Arquitetura, Financeiro, Engenharia',NULL,'https://drive.google.com/open?id=19IekHYJOIpB5e7SoBwXHCKGb6TZWaSx9','Instagram','Não','4.000','Não',NULL,'Arquiteto',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-09T01:38:00.000Z'::timestamptz),
  ('Luciane Dal-Soto','dalsotoluciane@gmail.com',NULL,'55999633076','1969-10-14',56,'Casado(a)','3','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1W0sTA0AiADSfo8zFkIxjJrY62HbBohT9','Jornalismo','Pós-graduação Completa','Universidade de Cruz Alta- Unicruz','2005-11-20','Sou formado','1- Universidade de Cruz Alta 
2-Jornalista- atuando na assessoria imprensa
Supervisora de Jornalismo e canal Unicruz play
Coordenadora de comunicação institucional
3- 2012 a fev 2025
4- produção de matérias para site, jornal institucional, redes sociais, release pra meios comunicação local e regional, produção de conteúdos para redes sociais, produção, direção e gravação de programas do canal Unicruz play, campanhas publicitárias de vestibular, vídeos e materiais gráficos de divulgação de cursos da universidade, cerimonial, produção e gravação de spots, planejamento de mídias; organização de eventos, treinamento de professores para entrevistas e participações em entrevistas em rádio e tv.

1 - RBS TV Erechim- RS
2- repórter e apresentadora de bancada
3- mar 2006 a dez 2007
4- reportagens em geral, entrevistas, entrada ao vivo e apresentação de bancada JA e RBS Notícias 

1- RBS TV Joaçaba- SC
2- repórter 
3- ago 2005 a mar 2006
4- reportagens diversas','Pós-Graduação em Assessoria de Comunicação e Mídias Digitais; cursos: Comunicação não Violenta-2024- Puc RS; Escrita criativa-2024- Puc RS; Sua empresa nas redes sociais  2023- Sebrae',NULL,'Marketing',NULL,'https://drive.google.com/open?id=1dIwLajOmWzQdbuEJGzOCHqX7kWSJ9YYn','Instagram','Não','R$4.000,00','Não','Jaciara Sipertt - Pró-reitora de Administração Unicruz (55) 9981266122','Marketing/Assessoria Comunicação','Voluntária na Liga Feminina de Combate ao Câncer','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-10T00:03:00.000Z'::timestamptz),
  ('Renata Vargas da Silva','renatavargas8@hotmail.com',NULL,'55996320981','1995-02-06',31,'Solteiro(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1Wz3oIFkOQq64asxvGa7qixH4hUjEUQHm',NULL,'Pós-graduação Incompleta',NULL,NULL,'Sou formado','Instituto Nacional de Seguro Social 2018-2019 (Estágio)
Câmara de Vereadores de Itaqui 2019-2021 (Estágio)
Prefeitura Municipal de Itaqui 2021- Atual','Formada em Gestão de Serviços Jurídico e Notariais, Pós Graduada em Gestão Pública',NULL,'Administrativa, Estágio',NULL,NULL,'Facebook','Não','900','Não',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-10T14:04:00.000Z'::timestamptz),
  ('Ana maria vargas vieira','av1299871@gmail.com',NULL,'55992562020','2003-04-28',22,'Solteiro(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1D1egIyDHR16XDgEdw474r1CTQKwk0pGZ','Ciências Contábeis','Ensino Superior Incompleto','Estácio','2028-01-10','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Cotripal Agropecuária-operador de caixa 
04/06/2024 a 24/01/2025','Cursando ciências contábeis',NULL,'Administrativa, Estágio, Marketing',NULL,NULL,'Facebook','Não','1300','Sim',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-10T14:06:00.000Z'::timestamptz),
  ('Carla Tuparai Casabonnet','carlatcasabonnet@gmail.com',NULL,'54996269641','1994-01-24',32,'Solteiro(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1PHW-BbKSl7C3R2B79luoBrxTNuVPtD-o','Ciência e tecnologia de alimentos','Pós-graduação Incompleta','Universidade Federal do Pampa','2016-08-01','Sou formado','IRMÃOS ANDREAZZA – Assistente Comercial/Administrativo (2018 – atualmente)
 • Responsável por vendas, negociações e prospecção de clientes.
 • Gestão de estoque, compras e análise de reposição.
 • Recebimento de mercadorias e lançamento de notas fiscais.
 • Suporte às lojas da rede e treinamento de novas colaboradoras.
 • Atuação na equipe de expansão da empresa por 5 anos',NULL,NULL,'Administrativa, Comercial, Marketing',NULL,NULL,'Instagram','Não','3000','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-10T18:27:00.000Z'::timestamptz),
  ('Simone Mariane da rosa rodrigues','siihrodrigues18@gmail.com',NULL,'51991048260','1998-08-03',27,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1NC09qIvO-l4UqZ6FbSJpSCy6Ivh_lxYd','Nenhuma','Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Inspetor de qualidade, vendedor de cosméticos atendente de lojas','Internet impressora sistema de gravação',NULL,'Comercial',NULL,NULL,'Agência de Empregos','Não','1518','Sim',NULL,'Consultor de vendas','Sou uma pessoa responsável , humildade, intelectual e que gosta de fazer as coisas certas','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-10T18:49:00.000Z'::timestamptz),
  ('luanamiguel.1010@gmail.com','luanamiguel.1010@gmail.com',NULL,'53999278745','2025-11-28',0,'Solteiro(a)','1','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1au179sRDha4J-CXlqcHIr0l6wPOGovWG','Curso técnico transações imobiliárias','Ensino Médio Completo','Geteco','2026-07-15','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Monjua 5 anos',NULL,NULL,'Administrativa, Comercial, Marketing',NULL,NULL,'Instagram','Taina','2600','Não',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-10T19:36:00.000Z'::timestamptz),
  ('Moises Silva Melo','moisesilvamelo@gmail.com',NULL,'55991096471','1964-12-15',61,'Casado(a)','2','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1lkqjfDfdxRrvvGv7jI58ns6piEJlhNg1',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Tenho mais de 25 anos de experiência profissional, sempre focado em gestão de equipes e operações. Minha carreira começou no Banco Bradesco, onde trabalhei por 8 anos. Comecei como caixa e fui crescendo dentro da instituição até chegar a Chefe de Sessão Financeira. Essa experiência me deu uma base sólida em controle financeiro, gestão de numerário e atendimento direto ao cliente.
Depois do banco, decidi migrar para o setor de alimentação e varejo, onde encontrei minha verdadeira vocação em gestão operacional. Fui gerente de restaurante por 10 anos, onde aprendi a lidar com todos os aspectos do negócio: desde a gestão de estoque e compras até o treinamento de equipe e atendimento ao cliente. Também atuei como gerente de mercado por 4 anos e gerente de empresa de delivery por 3 anos, o que me deu uma visão ampla de diferentes modelos de negócio.
Minhas principais competências são gestão de pessoas e gestão financeira. Sei liderar equipes, treinar colaboradores e manter um ambiente de trabalho produtivo. No lado financeiro, tenho experiência com controle de caixa, análise de custos e estratégias para aumentar o faturamento e reduzir desperdícios. Também tenho bons conhecimentos em informática e sistemas de gestão.
Um diferencial importante que ofereço é minha total disponibilidade de horários. Posso trabalhar em qualquer turno, incluindo noites e madrugadas, e estou disponível aos finais de semana e feriados. Tenho CNH categoria AB, o que facilita deslocamentos quando necessário.
Estou buscando uma oportunidade onde eu possa aplicar toda essa experiência e continuar crescendo profissionalmente. Sou uma pessoa comprometida, que gosta de resolver problemas e que trabalha bem sob pressão.',NULL,NULL,'Comercial',NULL,NULL,'Agência de Empregos','Não','R$2.500','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-10T20:59:00.000Z'::timestamptz),
  ('Robson Paradeda Corrêa','robsoncorrea1991@hotmail.com',NULL,'51991306778','1991-08-05',34,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=11VHk6udh8GZj-NsSDP2U25OStUEnBKrT','Engenharia Civil','Pós-graduação Completa','Centro Universitário Ritter dos Reis','2018-12-21','Sou formado','Melnick Arcadia – 05/2025 – Até o momento
Analista Técnico

•	Responsável pela gestão de Assistência Técnica da empresa;
•	Responsável pela gestão Patrimonial da Empresa;
•	Gestão da Assistência Técnica de 5 condomínio horizontais e 6 loteamentos;
•	Identificação e resolução dos problemas pós entrega;
•	Vistoria de entrega dos empreendimentos;
•	Contratação de fornecedores;
•	Compra de material;


Plano M Construtora – 11/2023 – 02/2025
Engenheiro Civil

•	Responsável pela obra de revitalização do Ginásio Tesourinha
•	Responsável pela obra de revitalização das fachadas do CAFF e da SEDUC
•	Responsável pela obra de instalação de suportes e linha de vida definitivos no CAFF
•	Responsável pela equipe nas obras Hospital Moinhos de Vento (acabamento) e Astória (Estrutura) em parceria com a Tedesco
•	Liderança de uma equipe de cerca de 30 pessoas
•	Elaboração de planejamento de execução da obra, acompanhamento do avanço físico-financeiro e levantamento de materiais, equipamentos e máquinas necessárias
•	Solicitação de pedido de compras de materiais e insumos 
•	Medição mensal para obras publicas
•	Medição de empreiteiros
•	Conferencia de serviços
•	Acompanhamento de produção


MRV Engenharia-Residencial Porto Madrid, Porto Santiago, Porto Bahamas - 05/2022 – 06/2023
Analista de Engenharia

•	Responsável pelas linhas de infraestrutura e acabamentos
•	Liderança de uma equipe de cerca de 50 pessoas
•	Elaboração de planejamento de execução da obra, acompanhamento do avanço físico e levantamento de materiais, equipamentos e máquinas necessárias
•	Solicitação de pedido de compras de materiais e insumos 
•	Acompanhamento de instalações e gestão de atividades operacionais em canteiro de obra
•	Realização de conferência de serviços executados conforme projeto e FVS
•	Contratação de empreiteiros, negociações e elaboração de contratos
•	Realização de dimensionamento da quantidade de colaboradores necessários e participação nos processos seletivos para contratação de mão de obra direta
•	Elaboração e atualização dos quadros de gestão à vista
•	Realização de checklist, garantindo a qualidade no aspecto técnico
•	Fiscalização dos testes hidráulicos, elétricos e de rede de gás
•	Acompanhamento de controle tecnológico de concreto
•	Acompanhamento de ensaio de solo, visando à qualidade da execução da obra
•	Redução de 50% no custo de execução de piso tátil, mediante desenvolvimento de fabricação dos pisos com sobras de concretos, ao invés de contratação de pré-moldados

Celupa Industrial Celulose e Papel – Melitta - 01/2022 – 05/2022
Técnico de Projetos Industriais – Fabrica de filtros da Melitta

•	Responsável pela manutenção civil predial
•	Gestão do orçamento de investimento anual- Capex
•	Elaboração e acompanhamento dos cronogramas financeiro
•	Acompanhamento do desenvolvimento de projeto de sistema de tratamento de esgoto

Autônomo - 02/2020 – 01/2022
Engenheiro Civil

•	Elaboração de ART e acompanhamento de reformas de residências
•	Vistoria de entrega de apartamentos
•	Visita técnica para identificação de patologias e orientação de soluções de problemas

Construtora Hera - 07/2019 – 01/2020
Engenheiro Civil – Obras comerciais

•	Realização de orçamentos, planejamento e execução de obras
•	Identificação de serviço de manutenção, contratação de terceiros, distribuição das atividades e monitoramento da execução dos serviços, prezando pela segurança dos colaboradores
•	Solicitação e controle de materiais e equipamentos
•	Realização de medições de terceiros 

Consórcio Tratenge Engeform - 04/2015 – 12/2018
Assistente de Engenharia II – Ampliação do Hospital de Clinicas de Porto Alegre

•	Análise crítica dos projetos estruturais
•	Levantamento quantitativo de materiais e solicitação de compras
•	Conferência de armação e sistemas construtivos, conforme projetos
•	Acompanhamento de visitas técnicas de estudantes de engenharia civil
•	Responsável pelo acompanhamento de cronograma e execução do sistema de impermeabilização e esquadrias
•	Acompanhamento da fundação das estacas tipo hélice contínua e da parede diafragma atirantada 
•	Supervisão das atividades de drywall, alvenaria, porcelanato, laminado e pintura
•	Realização da logística de 30 balacins, visando à disponibilidade dos equipamentos
•	Acompanhamento de execução de obra da ampliação no Hospital das Clínicas de POA, sendo na época a maior obra de ampliação hospitalar da América Latina

Arquium Construções e Restauro Ltda. - 12/2013 – 04/2015
Auxiliar de Engenharia – Restauração do Mercado Publico de Porto Alegre

•	Acompanhamento de obra
•	Relatórios fotográficos e diário de obra
•	Medição de empreiteiros
•	Controle do almoxarifado e serviços administrativos','Pós Graduação em Patologias na Construção Civil e MBA em GEstão de Projetos',NULL,'Engenharia',NULL,'https://drive.google.com/open?id=1KpUvk9reKIf24T2UE-SJbo4JtmVygSTQ','Agência de Empregos','Não','R$10.000,00','Sim','Leonardo - 16 997483064 - MRV
Vinicius - 51 999618818 - Plano M Construtora
Marcelo - 51 997543232 - Engeform','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-10T23:06:00.000Z'::timestamptz),
  ('Carlos Daniel','carlosdanielborba58@gmail.com',NULL,'55992332683','2005-12-05',20,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1sK7fSz08Uhhd7ZaFAe1MazavXayXxF8t','Direito','Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Vendas',NULL,NULL,'Comercial',NULL,NULL,'Agência de Empregos','Não','2.900','Sim','Vendas','Ne','Gosto de cozinhar e sou muito detalhista e proativo','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-10T23:30:00.000Z'::timestamptz),
  ('Maria Mena Peres','mariamenaperes@gmail.com',NULL,'53999049073','2001-09-22',24,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1OU7bgx4-laubdDFPPoDqup0Om7Z8XMLD',NULL,'Pós-graduação Completa','Fael','2024-05-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Strategia Eventos;
Coordenadora de Operações e Midias Sociais; 
Minha experiência abrange a gestão total das áreas comerciais (negociação, orçamentos e fechamento de negócios), digitais (atendimento, mídias sociais e criação de conteúdo/social media) e financeiras (contas a receber e controle operacional).','Pós graduação em Comunicação, Publicidade e Marketing em Mídias Digitais e MBA em Gestão Estratégica',NULL,'Marketing',NULL,NULL,'Instagram','Não','R$2.500,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou muito criativa e gosto de colocar essa energia em tudo que faço. No meu último trabalho, por exemplo, eu era a pessoa que estava com a câmera na mão nos eventos (fazendo o storymaking!), mas também era a que estava na ponta do comercial, fazendo orçamentos e fechando pacotes. E, claro, sempre mantendo as contas em dia, cuidando do Contas a Receber.

Para mim, trabalhar em equipe é fundamental. Acredito que as melhores ideias e os melhores resultados só saem quando a gente colabora de verdade. Sou super proativa e não espero as coisas acontecerem: estou sempre propondo e implementando aquelas ideias que fazem o negócio crescer e rodar de um jeito mais eficiente.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-11T04:09:00.000Z'::timestamptz),
  ('Ketlien Vargas','ketlienvargas@gmail.com',NULL,'55996600797','1997-11-08',28,'Solteiro(a)','0','Não','Itaqui/RS','https://drive.google.com/uc?export=view&id=1i_QgfJdEYeJtU7bvqw0X6wIzSuPTE5DO','Administração de empresas','Pós-graduação Completa','Unibf','2027-11-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Sou Ketlien, uma profissional de 28 anos com paixão por educação e desenvolvimento. Minha formação é diversificada, abrangendo áreas como Tecnologia em Aquicultura (Unipampa Uruguaiana), Letras Português-Inglês (UCS) e Administração (cursando). Atuo desde 2020 como Consultora Comercial na Universidade Cruzeiro do Sul em Itaqui, onde me dedico a auxiliar alunos a alcançarem seus objetivos acadêmicos.
Minha experiência em gestão se iniciou há cerca de um ano na Universidade Cruzeiro do Sul em São Gabriel, onde trabalhei como gestora. Sou especialista em Gestão Ambiental e possuo expertise em Transtorno de Ansiedade Generalizada e Síndrome do Pânico, o que me permite ter uma visão abrangente e sensível das necessidades dos alunos.Sou proficiente no Pacote Office, com destaque para Excel, Word e Power BI, ferramentas essenciais para análise de dados e criação de apresentações eficazes.Utilizo ferramentas como Gemini e Canva para otimizar meu trabalho e oferecer soluções criativas e inovadoras.Busco aprimoramento constante, como evidenciado pela minha atual formação em Direito Digital pela UNIBF.Sou proativa, determinada e comprometida, sempre em busca de novos conhecimentos para aprimorar meu perfil profissional e atender às demandas do mercado educacional, no qual atuo há cinco anos. Minha paixão por educação me motiva a buscar soluções inovadoras e a promover o desenvolvimento pessoal e profissional dos alunos.','Sou Ketlien, uma profissional de 28 anos com paixão por educação e desenvolvimento. Minha formação é diversificada, abrangendo áreas como Tecnologia em Aquicultura (Unipampa Uruguaiana), Letras Português-Inglês (UCS) e Administração (cursando). Atuo desde 2020 como Consultora Comercial na Universidade Cruzeiro do Sul em Itaqui, onde me dedico a auxiliar alunos a alcançarem seus objetivos acadêmicos.
Minha experiência em gestão se iniciou há cerca de um ano na Universidade Cruzeiro do Sul em São Gabriel, onde trabalhei como gestora. Sou especialista em Gestão Ambiental e possuo expertise em Transtorno de Ansiedade Generalizada e Síndrome do Pânico, o que me permite ter uma visão abrangente e sensível das necessidades dos alunos.Sou proficiente no Pacote Office, com destaque para Excel, Word e Power BI, ferramentas essenciais para análise de dados e criação de apresentações eficazes.Utilizo ferramentas como Gemini e Canva para otimizar meu trabalho e oferecer soluções criativas e inovadoras.Busco aprimoramento constante, como evidenciado pela minha atual formação em Direito Digital pela UNIBF.Sou proativa, determinada e comprometida, sempre em busca de novos conhecimentos para aprimorar meu perfil profissional e atender às demandas do mercado. Atuo em regime home office atualmente na empresa Estante Mágica',NULL,'Administrativa',NULL,NULL,'Instagram','Não','2000','Sim',NULL,'Estágio administrativo',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-11T16:23:00.000Z'::timestamptz),
  ('Greice rigues boeira','greiirigues@gmail.com',NULL,'55984331966','1998-07-13',27,'Solteiro(a)','2','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=11nqrVLt0l9xdFfVFdI1MhTDJdHBtmUEb',NULL,'Ensino Superior Incompleto','Anhanguera','2028-11-11','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Experiência em estoque, realização de recebimento de mercadorias, emissão de notas fiscais , organização e eventuais vendas .','Gestão de vendas 40 horas unopar',NULL,'Administrativa, Comercial, Estágio',NULL,NULL,'Facebook','Nao','1800','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-11T17:16:00.000Z'::timestamptz),
  ('Alexandre de Moura','demouraalexandre81@gmail.com',NULL,'5199884143','1981-08-16',44,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1PE6OxVXtLxVNzE-C4bE4KiB_1P9WBdnR',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Clube Candeias (SC) Imobiliária Na medida Certa (SC) podcast/ Defesa Civil R$/ Heringer (RS)','Corretor de imóveis/ atendimento/Gerenciamento ao Cliente',NULL,'Administrativa, Comercial, Marketing',NULL,NULL,'Agência de Empregos','Não','Média de R$ 3000','Não','Coronel Hernandes (55 51 9833-7711)','Comercial','Trabalhei na secretaria de segurança do estado do RS/ Participei de alguns podcast''s tenho excelente comunicação e habilidade para com as palavras, tanto na escrita quanto verbal, acredito no meu potencial em vendas e comunicação.. Possuo excelentes referências, ido cidade e capacidade de evoluir profissionalmente....Meu Instagram é: Empório do Guri...','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-12T11:15:00.000Z'::timestamptz),
  ('Priscila Del Rossi Rivero','drr.priscila@gmail.com',NULL,'51981102774','1996-12-24',29,'Solteiro(a)','0','Sim','Novo Hamburgo/rs','https://drive.google.com/uc?export=view&id=1H_8nWBQz1DGwwL01MjNzfXM3o12ZBgTq','Arquitetura','Ensino Superior Incompleto','Unisinos','2026-12-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','DGT – Tecnologia, IoT, SmartCities
Cargo: Assistente de Projetos
Período: Setembro de 2025 – Atual
Atuação em suporte técnico e operacional em projetos de tecnologia aplicados a cidades inteligentes, auxiliando na elaboração de propostas, alinhamento entre demandas dos clientes e soluções técnicas, e apoio à documentação de projetos.

Prefeitura Municipal de Novo Hamburgo
Cargo: Estagiária da Diretoria de Mobilidade Urbana
Período: Julho de 2024 – Julho de 2025
Atuação na Secretaria Municipal de Obras Públicas e Infraestrutura. Acompanhamento de vistorias técnicas, elaboração de ordens de serviço para manutenção e melhoria da sinalização viária, atendimento ao público e análise de projetos com impacto na mobilidade urbana. Apoio na emissão de credenciais especiais, análise de Diretrizes Urbanísticas Especiais (DUEs) e Estudos de Viabilidade de Mobilidade Urbana.

Prefeitura Municipal de São Leopoldo
Cargo: Estagiária de Habite-se
Período: Janeiro de 2024 – Junho de 2024
Atuação no setor de Habite-se, vinculado à Superintendência e Diretoria de Urbanismo. Atendimento a profissionais e contribuintes, análise de projetos e documentações para emissão de Certidões de Habite-se e regularização de edificações.

MRV&CO
Cargo: Estagiária de Obra
Período: Julho de 2023 – Janeiro de 2024
Atuação em canteiro de obras, com acompanhamento técnico de execução, elaboração de diários e relatórios de obra, controle de qualidade e levantamento quantitativo de materiais. Apoio à equipe de engenharia no monitoramento de serviços e prazos.

GetAtende
Cargo: Analista de Prevenção à Fraudes Jr. Bilíngue
Período: Setembro de 2019 – Março de 2023
Responsável pela análise de inconsistências em transações financeiras, identificação de padrões de risco e elaboração de relatórios analíticos, com uso de raciocínio lógico e atenção a detalhes para mitigação de perdas.

DGT – Digitaltec Com. Prest. Serv. Ltda.
Cargo: Assistente de Pré-Vendas
Período: Maio de 2017 – Agosto de 2018
Responsável por alinhar as necessidades dos clientes às soluções técnicas da empresa, elaboração de escopos e propostas comerciais, geração de ARTs e Atestados de Responsabilidade Técnica, além de participação em processos de licitação pública no setor de segurança eletrônica.','Atualmente estudante do 8º semestre de Arquitetura e Urbanismo, na Unisinos, em São Leopoldo. Também formada no Curso Técnico de Eletrotécnica, na Fundação Escola Técnica Liberato Salzano Vieira da Cunha. Fiz um curso BIM para Archicad, utilizo com frequência o Autocad, já utilizei Revit para um projeto E Sketchup também. Tenho experiências variadas dentro da construção civil, tendo atuado tanto no setor público quanto o privado, assim como atuei em escritório e também em campo. Para trabalhar em canteiro de obra passei por treinamentos, experiência essa que me levou a ter uma noção ampla de todo o processo de construção, desde o projeto até a entrega ao cliente. Também tenho experiência quanto ao uso e soluções para o espaço urbano, graças ao estágio que realizei no setor de Mobilidade Urbana em uma prefeitura.',NULL,'Arquitetura, Novos Negócios, Engenharia',NULL,'https://drive.google.com/open?id=15_2ExiWQaDlzIe876unTFjtLK3P8bfHh','Instagram','Não','2500 - 3000 (a depender da carga horária, benefícios, deslocamento)','Não','Andressa Antes - Engenheira MRV que foi minha chefe direta: 555599184972

Pedro Couto - Supervisor de Mobilidade Urbana (PMNH): 555198060523

Maurício Loeser - CEO da DGT: 555198211427','Assistente de Projetos','Sou curiosa por natureza e gosto de aprender coisas novas. Tenho afinidade com música, já toquei teclado, ukulele e cantei em coral e solos, experiências que me ensinaram sobre sensibilidade, foco e trabalho em grupo. Falo espanhol fluentemente e inglês em nível avançado, e já atuei como tradutora voluntária em uma feira científica, o que ampliou meu interesse por comunicação e culturas diferentes.

Na área profissional, gosto de unir técnica e criatividade, buscando sempre soluções práticas e eficientes. Tenho conhecimento em AutoCAD, SketchUp e pacote Office, e estou sempre em busca de aprimorar minhas habilidades e aprender novas ferramentas.

Fora do trabalho e dos estudos, gosto de música, arte, natureza e de tudo que envolva descoberta e crescimento. Acredito que cada experiência, pessoal ou profissional, contribui para construir quem somos e o que podemos oferecer.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-12T16:06:00.000Z'::timestamptz)
;

INSERT INTO young_talents.candidates (full_name, email, email_secondary, phone, birth_date, age, marital_status, children_count, has_license, city, photo_url, education, schooling_level, institution, graduation_date, is_studying, experience, courses, certifications, interest_areas, cv_url, portfolio_url, source, referral, salary_expectation, can_relocate, professional_references, type_of_app, free_field, status, tags, origin, created_by, original_timestamp)
VALUES
  ('Luan Gonçalves Soares','lgsoares777@gmail.com',NULL,'51999989097','1993-03-07',32,'Solteiro(a)','2','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1Qv9a_sdPyxHakNEs2F-Xw334us12hIC7','Engenharia Civil','Ensino Superior Completo','Anhaguera','2021-07-30','Sou formado','EXPERIÊNCIA PROFISSIONAL
 10/2024 – Até o presente momento
NACIONAL CONSTRUTORA – Engenheiro Civil
Responsável pelo acompanhamento e gerenciamento de obras, garantindo o cumprimento de prazos, custos e padrões de qualidade estabelecidos. Atuo na elaboração e controle de cronogramas físicos e financeiros, além de realizar orçamentos, gestão de compras de materiais e negociação com fornecedores. Coordeno equipes de mão de obra terceirizada, acompanhando o desempenho em campo e validando medições e serviços executados para assegurar a conformidade técnica e contratual de cada etapa do projeto.
 08/2021 – Até o presente momento
AUTÔNOMO – Engenheiro Civil
Execução de obras e reformas residenciais, com foco em soluções personalizadas e de alta qualidade. Responsável pela elaboração de projetos complementares, gestão de obras, análise de viabilidade técnica e emissão de laudos técnicos. Atuação desde o planejamento até a entrega final, garantindo conformidade técnica e satisfação do cliente.
 02/2021 – 10/2023
BELMAIS CONSTRUTORA – Engenheiro Civil
Atuação direta na execução e gerenciamento de obras em alvenaria estrutural e lajes pré-moldadas, conduzindo o planejamento, a distribuição de tarefas e o acompanhamento técnico das etapas construtivas. Responsável pela gestão de equipes, medições de serviços, controle de produtividade e contratação de mão de obra especializada, assegurando a qualidade e a eficiência na execução das obras.','Revit, Autocad e Msproject',NULL,'Engenharia',NULL,NULL,'Agência de Empregos','Não','R$4.000,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Profissional formado em Engenharia Civil, com experiência em planejamento, execução e gerenciamento de obras, atuando tanto no setor corporativo quanto de forma autônoma. Tenho vivência em gestão de equipes, análise de projetos, controle de qualidade e elaboração de orçamentos, sempre buscando o cumprimento de prazos, custos e padrões técnicos. Prezo pela eficiência, segurança e excelência nos resultados, com foco em soluções práticas e assertivas para cada etapa da obra. Atuei em projetos de alvenaria estrutural, lajes pré-moldadas e reformas residenciais, unindo conhecimento técnico e liderança para garantir entregas de alta qualidade.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-12T16:31:00.000Z'::timestamptz),
  ('Bionda de Paula Ferreira Carvalho','biondadepaulaf@gmail.com',NULL,'55991408073','2001-01-11',25,'Casado(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1DWRh0C_9992YKO7wTJ269J89R7Hrpyvr','Relações públicas','Ensino Superior Completo','Universidade Federal do Pampa','2023-12-20','Sou formado','Auxiliar Administrativo (aprendiz), Corsan - São Borja/RS.
      Período: Jan. 2019 - Jan. 2021
Atendimento ao público; organização e arquivo de documentos e informações; emissão de segunda via de faturas; execução de atividades como: abertura de ordens de serviço, inclusão de cadastros etc.

Estagiária de Mídias Sociais, Vitória Régia Floricultura e Presentes, São Borja/RS. 
Período: Abr. 2021 - Set. 2021
Atendimento aos clientes, vendas tanto online quanto presencial, divulgação nas redes sociais, criação de cards para redes sociais.

Orientadora de Vendas, Grupo Grazziotin - Tottal Casa e Lazer, São Borja/RS.
Período: Set. 2021 - Dez. 2022.
Atendimento aos clientes, vendas, crediário, cobrança, empréstimos, operação de caixa, reposição e controle de estoque.

Estagiária de mídias sociais, Tonella Digital, São Borja/RS. 
Período: Dez. 2022 - Mar. 2023
Publicações nas redes sociais dos clientes e criação de stories.

Assistente administrativo, Corsan, São Borja/RS.
Período: Maio 2023 - Até o momento.
Atendimento ao cliente; execução de atividades como controle de eficiência comercial e administrativa; Acompanhamento de processos administrativos; Orientação e supervisão de outros empregados da empresa.','Sou formada em Relações Públicas e tenho grande interesse pela área de comunicação digital. Durante a graduação, desenvolvi uma pesquisa sobre representações e identidade nas redes sociais — meu TCC abordou o femversing e os cabelos cacheados, utilizando a análise de discurso como base. Além da formação acadêmica, possuo forte vivência nas áreas administrativa e comercial, o que me proporcionou experiência em atendimento ao público, organização de processos e estratégias de comunicação voltadas a resultados. Também já realizei estudos complementares em produção de conteúdo, mídias sociais e comunicação estratégica, buscando sempre unir prática e criatividade na construção de relacionamentos entre marcas e pessoas.',NULL,'Administrativa, Comercial',NULL,NULL,'Facebook','Não','3500 - 4000','Sim','Luiz Fernando - Corsan  49 98886-1080','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-12T19:37:00.000Z'::timestamptz),
  ('Gabriela Coffi Weber','gabicoffi@gmail.com',NULL,'55999853195','2002-07-16',23,'Solteiro(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1eq-pPr0ej4Ncgj4Q8aWaflSJoa12m_Tv','Ciências Contábeis','Ensino Superior Incompleto','Cruzeiro do Sul','2026-12-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Lottus Acessórios - Vendedora (01/12/2022 há 11/11/2023)
Chomax Comercial Ltda - Atendente (15/06/2024 há 04/11/2025)
Patrícia Wurfel - Advocacia Previdenciária - Assistente e Recepcionista (03/02/2025 há 23/06/2025)','Atualmente curso bacharelado em ciências contábeis e tecnólogo em gestão financeira, além de possuir cursos profissionalizantes como administração e informática básica.',NULL,'Administrativa, Estágio, Financeiro',NULL,NULL,'Instagram','Não','de R$800,00 à R$1500,00','Sim',NULL,'Estágio Administrativo','Me chamo Gabriela, tenho 23 anos e sou uma pessoa muito comunicativa e extrovertida.
Tenho conhecimento em informática básica, gosto muito de aprender coisas novas e me desafiar.
Gosto de animais, faço amizade fácil e comecei a trabalhar com apenas 16 anos com degustação dos produtos alimentícios da empresa na qual minha mãe trabalha.
A parte administrativa, financeira e contábil me interessa muito, sempre me chamou muito atenção, e ter encontrado essa vaga de emprego dessa empresa no instagram foi ótimo, e com isso estou me candidatando. 
Desde já agradeço.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-12T23:29:00.000Z'::timestamptz),
  ('Gabriel Possebon','possebongabriel2@gmail.com',NULL,'55996116054','2002-09-25',23,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=16meNjvgaYnlWWeta44JJYZ4s9C0jfg4_',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Após ano obrigatório no exército trabalhei por três anos e meio na empresa PM Logística, empresa do ramo de Comex com filial em São Borja, atuei como assistente de importação Júnior e após um tempo promovido a analista de exportação, comecei no dia 18/05/2022 e tive como meu último dia na empresa o dia 15/08/2025.',NULL,NULL,'Administrativa, Arquitetura, Engenharia',NULL,NULL,'Instagram','Não.','Até dois mil e cem reais bruto.','Sim',NULL,'Vaga ofertada para São Borja','Sou técnico em informática formado junto ao ensino médio pelo instituto federal Farroupilha, tenho conhecimento em Excel, word e PowerPoint.
No meu tempo livre prático Jiu Jitsu, musculação e alguns outros esportes como lazer. Em momentos livres gosto de aproveitar com meus amigos, viajar e conhecer coisas novas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-12T23:38:00.000Z'::timestamptz),
  ('Stefani Pinheiro Paludo','stefanipinheiropaludo@gmail.com',NULL,'54992195254','1997-10-19',28,'Solteiro(a)','0','Sim','Passo Fundo/rs','https://drive.google.com/uc?export=view&id=1vRxrlPL8yFrSAmoZA5eyMe9x6JYj-4at','Arquitetura','Pós-graduação Incompleta',NULL,'2021-01-04','Sou formado','Diego Rigo Arquitetura
Arquiteta e Projetista
07/2021 - atualmente
Responsável por desenvolver projetos arquitetônicos e de interiores residenciais e comerciais, com foco em qualidade, detalhamento técnico e eficiência. Entre minhas principais atividades e habilidades estão:

- Elaboração de projetos completos de interiores, incluindo detalhamentos de marcenaria, plantas de layout, plantas de forro, plantas com paginação de piso e revestimentos, plantas luminotécnicas, plantas com pontos elétricos, de lógica e hidrossanitários.
- Criação de tabelas de quantitativos e orçamentos detalhados para clientes e parceiros.
- Produção de plantas técnicas e mobiliadas, cortes, fachadas, implantações e plantas de situação/localização.
- Documentação técnica para aprovação de projetos em órgãos públicos.
- Compatibilização de projetos multidisciplinares, garantindo eficiência na execução.
- Realização de medições em obra, supervisão de execução e contato com fornecedores.
- Participação em reuniões com clientes e parceiros, oferecendo soluções criativas e práticas para atender às necessidades.','Pós graduanda em "Design de Interiores, Decoração e Ambientação" pela Pontifícia Universidade Católica do Rio Grande do Sul (PUC-RS) com previsão de término para 09/2026.
Com experiência de mais de 4 anos em projetos arquitetônicos e de interiores voltados para as áreas residenciais, comerciais e industriais em escritório de arquitetura de alto padrão na cidade de Passo Fundo, RS. 

Possuo grandes habilidade em detalhamentos técnicos, com destaque para projetos de marcenaria, utilizando AutoCAD, além de experiência em modelagens 3D no SketchUp e domínio do Pacote Office para apresentações, planejamento e organização de projetos.',NULL,'Arquitetura',NULL,NULL,'Instagram','Não','5000','Sim',NULL,'Auxiliar de Projetos','Sou uma profissional disciplinada, organizada e focada, com facilidade para aprender rapidamente e me adaptar a novos desafios. Atualmente, busco uma nova oportunidade para contribuir com projetos na área de interiores, unindo conforto, funcionalidade e estética.

Tenho um interesse especial por psicologia ambiental e neuroarquitetura, explorando como os espaços podem influenciar o bem-estar das pessoas. Integro o uso de materiais naturais, iluminação, vegetação e a conexão entre ambientes internos e externos para criar projetos que promovam conforto, bem estar e beleza.

Também tenho grande apreço pelo urbanismo e pela preservação ambiental, com foco em compreender e projetar os impactos das transformações urbanas na vida das pessoas. Vejo o planejamento urbano consciente como um agente transformador, capaz de promover qualidade de vida, inclusão social e sustentabilidade. Minha experiência inclui o desenvolvimento de projetos e artigos acadêmicos sobre mobilidade urbana, espaços públicos acolhedores, infraestrutura verde e a integração do meio ambiente ao tecido urbano.

Apaixonada por literatura, gosto de mergulhar em livros de ficção, uma atividade que inspira minha criatividade, sensibilidade e visão de mundo.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-13T12:45:00.000Z'::timestamptz),
  ('Rafaela Cortelini Acosta','rafaelacortelini@gmail.com',NULL,'55997233399','2001-11-08',24,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1Dp__ApYtWVJAWdEBIAjuXqv5PewdF99T','Administração de empresas','Pós-graduação Completa','Unopar Universidade','2024-02-05','Sou formado','Trabalhei como estagiária no Alegrete Prev, onde realizava o atendimento ao público, montava processos de aposentadorias e pensões, entregava contracheques 2022/2023
Trabalhei na Óptica Cristal, como vendedora 2023/2024
Trabalhei na Tec Vidros, onde realizava o atendimento ao público, vendas e pós vendas, caixa, controle de estoque, pedidos de vidros e ferragens 2024/2025
E por último trabalhei na Caal Cooperativa Agroindustrial, como safrista no laboratório 2025/2025','Cursos on-line, atendimento ao público, estratégia de negócios e educação financeira.',NULL,'Administrativa, Comercial, Financeiro, Marketing',NULL,NULL,'Instagram','Não','1900','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-13T13:44:00.000Z'::timestamptz),
  ('Lisiara Costa Cardoso','lisiaracardoso@yahoo.com.br',NULL,'51996471928','1977-11-26',48,'Solteiro(a)','0','Sim','Santa Cruz Do Sul/rs','https://drive.google.com/uc?export=view&id=1p2eDqDW_5DvtChfCTetMg54WB2-kfh9T','Arquitetura','Pós-graduação Incompleta','Unisc','2011-01-22','Sou formado','Projetista de Móveis – CasaDesign Bartzen
Ano: 2019 a 2023 Cidade: Santa Cruz do Sul – RS
Atividades:
▪ Medição e registro fotográfico de ambientes;
▪ Projeto e venda de móveis planejados;
▪ Detalhamento e especificação de projetos para montagem de móveis;
▪ Atendimento a clientes presencial, virtual no Google Meet, por telefone fixo, celular e redes sociais;
▪ Administração de conteúdo na página da loja nas redes sociais Facebook e Instagram;
▪ Conferência de detalhes nas montagens de móveis;
▪ Pós-venda com verificação de atendimento das necessidades dos clientes.

Analista de Engenharia – Deltasul Utilidades
Ano: 2017 a 2018 Cidade: Santa Cruz do Sul – RS
Atividades:
▪ Criação de expositores para eletrodomésticos e design de mobiliário das lojas;
▪ Elaboração de layout para obras de reforma e obras novas;
▪ Medição e registro fotográfico de fachadas e interiores das lojas;
▪ Desenho de fachadas com especificações conforme padrões definidos pela empresa;
▪ Pesquisa de materiais para revestimento de fachadas de lojas;
▪ Estudo de cores para fachadas e ambientes internos;
▪ Acompanhamento de obras de reforma.

Arquiteta Autônoma – Lisiara Cardoso Arquitetura e Interiores
Ano: 2013 a 2017 Cidade: Santa Cruz do Sul – RS
Atividades:
▪ Projetos arquitetônicos e complementares residenciais e comerciais para aprovação em órgãos públicos;
▪ Projetos de interiores de móveis sob medida e paginação cerâmica;
▪ Maquetes eletrônicas (3D);
▪ Regularização de imóveis;
▪ Vistoria e avaliação de imóveis;
▪ Encaminhamento de projetos para aprovação em órgãos públicos;
▪ Acompanhamento da execução de obras e montagem de móveis.

Arquiteta Assistente - Venício Trapp Arquitetura
Ano: 2013 Cidade: Santa Cruz do Sul – RS
Atividades:
▪ Elaboração de projetos arquitetônicos, hidráulicos e elétricos no AutoCAD;
▪ Desenvolvimento de projetos residenciais, comerciais e interiores no SketchUp (3D);
▪ Auxílio na medição de espaços para projetos de reforma;
▪ Geração de arquivos em pdf para plotagem;
▪ Encaminhamento de projetos para aprovação em órgãos públicos;
▪ Acompanhamento da execução de obras.

Kopp Tecnologia – Construtora
Ano: 2010 – Carga Horária: 30hs – Cidade: Vera Cruz – RS
Estagiária – Auxiliar em Projetos Arquitetônicos
      
▪ Auxiliar no desenho em AutoCAD de projetos arquitetônicos;
▪ Criação de layouts de edifícios residenciais;
▪ Elaboração de projetos de móveis sob medida;
▪ Conferência de medidas e detalhamentos de projetos;
▪ Desenvolvimento de memoriais descritivos e orçamentos.

Costaneira Materiais de Construção
Ano: 2009/ 2010 – Carga Horária: 30hs – Cidade: Santa Cruz do Sul – RS
Estagiária – Projetista de Pisos e Paredes Cerâmicos
                   
▪ Elaboração de projetos de paginação de pisos e paredes cerâmicos no Vector Works;
▪ Especificação e detalhamento de produtos cerâmicos;
▪ Auxílio na venda dos produtos com a apresentação do projeto;
▪ Indicação de produtos conforme necessidades do cliente.

CH Bender Engenharia
Ano: 2008 – Turno: Meio turno – Cidade: Santa Cruz do Sul – RS

Estagiária – Auxiliar em Projetos Arquitetônicos, Hidráulicos e Elétricos

▪ Auxiliar no desenho em AutoCAD de projetos arquitetônicos, hidráulicos e elétricos;
▪ Geração de arquivos para plotagem em pdf e dwg;
▪ Atendimento a clientes e ao telefone;
▪ Acompanhamento da execução de obras.

Prefeitura Municipal de Santa Cruz do Sul
Secretaria Municipal de Planejamento e Coordenação
Setor de Engenharia e Projetos 
Ano: 2006/ 2007/ 2008 – Turno: Meio turno – Cidade: Santa Cruz do Sul – RS

Estagiária – Auxiliar em Projetos Arquitetônicos
▪ Auxiliar no desenho em AutoCAD de projetos arquitetônicos;
▪ Desenvolvimento de memoriais descritivos;
▪ Pesquisa de preços e materiais para orçamentos em empresas de materiais de construção;
▪ Cálculo de orçamentos no PLEO – Planilha Eletrônica de Orçamento;
▪ Levantamento e medição de prédios públicos para projetos de reforma.

Dellanno – Espaço Atual
Ano: 2005 – Turno: Integral – Cidade: Santa Cruz do Sul – RS
Estagiária – Auxiliar em Projetos de Móveis
                          
▪ Auxiliar na elaboração de projetos de móveis sob medida no Promob;
▪ Serviços bancários.

T&T Redecom 
Ano: 2004/ 2005 – Turno: Meio turno – Cidade: Santa Cruz do Sul – RS
Auxiliar de Projetista

▪ Elaboração de desenhos em AutoCAD de projetos de rede de telecomunicações – Informática e telefonia;
▪ Auxílio em medições e levantamento quantitativo de materiais;
▪ Atualização de desenhos de rede de telecomunicações conforme a Norma (NBR);
▪ Atualização de dados de rede em planilhas do Excel e diagramas no Word;
▪ Serviços bancários.','Graduação em Arquitetura e Urbanismo, Pós-Graduação Master em BIM - Ferramentas e Processos pelo IPOG, cursos em AutoCAD 2D, Sketchup e Inglês Intermediário',NULL,'Arquitetura, Engenharia',NULL,'https://drive.google.com/open?id=1zRxQVCAfuqxIfNLzK4rG_BXFOgcWxymg','Instagram','Não','R$3.500,00','Sim',NULL,'Auxiliar de Projetos','Em busca de uma nova proposta de trabalho, apresento meu currículo para a vaga de Auxiliar de Projetos.
Possuo experiência profissional como arquiteta em projeto e execução de arquitetura residencial, comercial e interiores. Trabalhei como arquiteta e estagiária em projetos arquitetônicos e complementares para aprovação em órgãos públicos com arquitetos e engenheiros e também como projetista de interiores - móveis sob medida e acabamentos cerâmicos em lojas do ramo. Tenho domínio em AutoCAD, Sketchup, Promob e Office. Revit Básico. Vivência em supervisão de execução de obras. Possuo CNH B e veículo próprio.
Sou graduada em Arquitetura e Urbanismo da UNISC e tenho diversos cursos complementares na área. No momento estou cursando pós-graduação.
Acredito que apresento as qualificações necessárias para exercer a função e, desde já, coloco-me à disposição para uma entrevista, podendo assim detalhar melhor o meu perfil profissional.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-13T13:59:00.000Z'::timestamptz),
  ('Murilo da Silva Soares','murilosoares1826@gmail.com',NULL,'5551997053934','2008-06-07',17,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1dzOwUtvDe5CGjb-ibVpHUrKNewRiDGbc','Cursando ensino médio','Ensino Médio Incompleto','Mundo office','2025-11-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Fiz estágio em 2 empresas
1 natural light (5meses)
2 soluções online EJA EAD (7meses)


1_Natural Light 

Fiz estágio na área de estoquista, sai pois não me adaptei.


2_Soluções Online EJA EAD 

Fiz estágio como secretário e também como freelance, social mídia, vendedor, sai pois a empresa não tinha mais demandas para mim.','Cursando Trainee Coaching 2 (Administração Informatizada, Designer e social Media)
● Administração - Secretariado - vendas - marketing - contabilidade - drive - pacote
office e desenvolvimento humano',NULL,'Arquitetura, Marketing, Novos Negócios',NULL,'https://drive.google.com/open?id=12po6EDbyxKlRiTccPTjhsvIjJYshl2F3','Agência de Empregos','Não','A critério da empresa','Sim','Gilberto Borba','Quero inscrever-me no banco de talentos da Young!','Bom, meu nome é Murilo tenho 17 anos estou terminando meu curso de informática, tenha uma renda extra que futuramente quero ampliar, fala designes, já fiz várias edições de vídeos, criativos, faço tráfego pago para infoprodutos, estou em busca de uma oportunidade de emprego, faço artes marciais jiu jitsu e capoeira, sou uma pessoa bem responsável, pontual, criativa, um pouco tímido mas dou me jeito.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-13T14:31:00.000Z'::timestamptz),
  ('Rafaela da Silva Braga','rafaeladasilvabraga2011@gmail.com',NULL,'5199397459','2011-08-04',14,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1HhSnjss6dqs3mCog37v-kMGFqnPcuszo',NULL,'Ensino Médio Incompleto','E.M.E.F Antônio Laureano da Cunha Filho',NULL,'Não, no momento pausei/parei por um período.','Praticas administrativas na Mundo Office, controle de CRM.','Training coaching 1 e 2 ( informática administrativa e Marketing Digital), Inglês.',NULL,'Estágio',NULL,'https://drive.google.com/open?id=19mRRgjQH-fRSXAPYmqTKcS70otAeHNMt','Facebook','Não','R$700,00','Não','Nair Brum da Silva Braga, (51) 99894-2361.','Quero inscrever-me no banco de talentos da Young!','https://docs.google.com/document/d/1cB6irIYEYdpgWB0Q6_-1LcnEFl6ihR1GelvM8d1t9IE/edit?usp=sharing','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-13T21:01:00.000Z'::timestamptz),
  ('Jefferson Kümpel de Oliveira','jeffkumpeloficial@gmail.com',NULL,'51992611331','1981-08-31',44,'Solteiro(a)','0','Sim','Taquara/rs','https://drive.google.com/uc?export=view&id=1DOv5SqOBQQEw503Sx7XZSyuCLXPQvLVR','Arquitetura','Ensino Superior Completo','Universidade Feevale','2013-08-17','Sou formado','Ozoxx Geradores de Ozônio - Consultor de Vendas 
Taquara, RS | 01/2025 – 08/2025
•	Vendas de óleos essenciais ozonizados e geradores de ozônio Ozoxx Ar.
•	Esclarecimento de dúvidas dos clientes durante o atendimento, auxiliando na escolha dos produtos adequados.
•	Atendimento online ou presencial, conforme a preferência do cliente, buscando atender às demandas de forma prática e personalizada.

Farmasi Comercialização de Cosméticos Ltda (Europa) - Consultor de Vendas 
Taquara, RS | 01/2024 - 10/2025  
•	Vendas de óleos essenciais, perfumaria, linha capilar, skincare, maquiagem, nutrição, suplementos vitamínicos e trabalhando com a equipe.
•	Atendimento online ou presencial, conforme a preferência do cliente, buscando atender às demandas de forma prática e personalizada.
•	Esclarecimento de dúvidas dos clientes durante o atendimento, auxiliando na escolha dos produtos adequados.
•	Prospecção de novos clientes com base em conhecimentos técnicos especializados, aumentando o número das vendas e alcançando as metas estabelecidas.

doTERRA Brasil Ltda - Consultor de Vendas 
Taquara, RS | 01/2023 - 10/2025   
•	Vendas de óleos essenciais, fabricação da minha marca de Cosméticos, Linha de Bem-Estar e responsável pela gestão da equipe com 130 pessoas.
•	Atendimento ao cliente, incluindo abordagem, diagnóstico das necessidades e recomendação de produtos, contribuindo para os resultados da equipe.
•	Atendimento online ou presencial, conforme a preferência do cliente, buscando atender às demandas de forma prática e personalizada.
•	Esclarecimento de dúvidas dos clientes durante o atendimento, auxiliando na escolha dos produtos adequados.

Grupo Hinode Participações S.A. - Consultor de Vendas 
Taquara, RS | 01/2020 - Atual 
•	Vendas de Fragrâncias, Cosméticos, Maquiagem, Linha Infantil, Higiene Pessoal, Linha de Bem-Estar e Linha de Performance e responsável pela gestão da equipe com 77 pessoas.
•	Atendimento online ou presencial, conforme a preferência do cliente, buscando atender às demandas de forma prática e personalizada.
•	Esclarecimento de dúvidas dos clientes durante o atendimento, auxiliando na escolha dos produtos adequados.

Prefeitura Municipal de Taquara - Arquiteto e Urbanista 
Taquara, RS | 11/2013 - 11/2019 
•	Desenvolvimento de projetos no AutoCAD, projetos em 3D no sketchup, Aprovação de Loteamentos e Condomínios, Certidões de Fracionamentos, Fusão, Localização, Retificações, Zoneamento, Viabilidades para alvarás, vistorias nas Escolas, Guia de ITBI, Declarações, Acompanhamento nas obras, Projetos e Planilhas Orçamentárias para Escolas do Município.
•	Detalhamento de projetos arquitetônicos, definindo as medidas das estruturas através de desenhos técnicos para facilitar à execução das obras, evitando erros.
•	Acompanhamento e administração de obras, verificando o cumprimento das especificações dos projetos para garantir a segurança e qualidade dos trabalhos realizados, propondo soluções a possíveis irregularidades que surgissem.
•	Elaboração de projetos arquitetônicos e urbanísticos, considerando aspectos técnicos, estéticos e funcionais.
•	Realização de visitas técnicas à espaços, terrenos ou edificações, levantando as medidas das áreas para possibilitar a criação de plantas e desenhos técnicos.
•	Acompanhamento e fiscalização de obras, garantindo a qualidade e a conformidade dos projetos executados.
•	Elaboração de estudos de impacto de vizinhança, analisando os efeitos dos projetos sobre a comunidade local.
•	Elaboração de projetos de paisagismo, considerando aspectos estéticos e ambientais.
•	Análise de impacto ambiental e social de projetos, visando minimizar possíveis danos.
•	Conferência de projetos e documentação, verificando a conformidade com as normas e regulamentações aplicáveis.
•	Controle de prazos e cronogramas de projetos, assegurando à entrega dentro do prazo previsto.
•	Elaboração de orçamentos de projetos, estimando os custos com materiais, mão de obra e logística, realizando um planejamento cuidadoso a fim de evitar gastos desnecessários.
•	Definição do cronograma de obras, desenvolvendo estratégias de construção que auxiliassem no cumprimento dos prazos dos projetos.
•	Elaboração de plantas de edificação, criando representações gráficas com cortes que auxiliassem na visualização dos detalhes do projeto.
•	Levantamento arquitetônico das edificações, conferindo as medidas e detalhes do ambiente de construção, viabilizando à execução do projeto.

Renata Marques Arquitetura e Urbanismo - Projetista 
Parobé, RS | 10/2012 - 08/2013 
•	Projetos Residenciais e comerciais, finalizações dos cíveis (sito localização, planta baixa, fachadas, cortes, projetos: elétrico, hidrossanitário e hidráulico), cálculo da fossa e filtro anaeróbio, esteriograma. Conferência de todo o projeto antes de ir para a prefeitura. Desenvolvimento dos projetos com AutoCAD, sketchup, render kerkythea.
•	Apoio à equipe na realização de tarefas diversas conforme a demanda, garantindo à agilidade e eficiência.
•	Limpeza e manutenção da área de trabalho, garantindo a boa imagem do ambiente profissional.
•	Execução das tarefas designadas pela equipe, com atenção aos detalhes para evitar erros.
•	Realização de atividades extras à função quando solicitado, auxiliando colegas e superiores pelo benefício da equipe.
•	Participação em reuniões com à equipe, discutindo novos processos para melhorar à eficiência e a qualidade do serviço.

Prefeitura Municipal de Parobé - Projetista (Estágio) 
Parobé, RS | 01/2011 - 10/2012 
•	Desenvolvimento de projetos no AutoCAD, projetos em 3D no sketchup, orçamentos, Declarações, certidões, Projeto de canalizações, Cadastro imobiliário, Acompanhamento nas obras, Projeto de mobiliários, Colocar Informações no sistema do MEC.
•	Atendimento presencial e telefônico, esclarecendo as principais dúvidas dos contribuintes.
•	Inserção de dados em sistema, contribuindo de forma eficiente para a gestão de informações do Município de Parobé.
•	Atendimento telefônico, encaminhando chamadas para os departamentos apropriados ou funcionários específicos.
•	Conferência de documentos e dados, identificando discrepâncias para corrigir conforme necessário.
•	Impressão e cópia de documentos, prezando pela qualidade dos materiais para atender às necessidades da equipe.
•	Digitação e formatação de documentos, garantindo que relatórios e correspondências seguissem os padrões indicados.
•	Acompanhamento de processos internos, garantindo o cumprimento dos prazos e das instruções recebidas.
•	Colaboração com colegas de equipe, garantindo à eficiência e eficácia das operações administrativas.

Ambienttar Móveis e Objetos - Projetista de Móveis (Estágio) 
Taquara, RS | 10/2009 - 01/2011 
•	Desenvolvimento de Projetos no Promob, Sketchup, AutoCAD e 20/20 tecnologia. Realização de visitas na casa dos clientes. Demonstração de projetos em 3D. Planilhas de orçamentos, Atendimento ao cliente, Consultor de Vendas.

Studio Arquitetura e Design - Desenhista de CAD 
Taquara, RS | 08/2009 - 10/2009 
•	Auxiliar no acompanhamento e visitas em obras, graficação em AutoCAD e no Arqui 3D, pesquisa em arquitetura de interiores, auxiliar no preenchimento de planilhas de administração do escritório e pagamento de funcionários, auxiliar no caixa comercial, orçamentos de projetos e Atendimento ao telefone. 

Grantops Granite and Quartz - Projetista 
Frederick, Maryland | 10/2005 - 02/2009 
•	Desenhista para InterCAD 2D CNC e Stone CAM 3D, orçamentos de projetos, tirar medidas na casa dos clientes, Controle de estoque no Almoxarifado, Controle de Cartuchos, Auxiliar de Escritório, Fotógrafo, modelo de posição e Auxiliar de Limpeza da Empresa.

Leo Flooring and Tile Installation - Instalador de Piso de madeira e cerâmico 
Washington, DC | 08/2005 - 10/2005 
•	Instalação de pisos em geral.

Ana Lore Miranda Bins Difini arquiteta & Urbanista - Desenhista de CAD 
Taquara, RS | 10/2004 - 03/2005 
•	Auxiliar no acompanhamento e visitas em obras, graficação em CAD, pesquisa em arquitetura, auxiliar no preenchimento de planilhas de administração do escritório, auxiliar no caixa comercial, orçamento de projetos.','Sou formado em Arquitetura e Urbanismo, com experiência em projetos, planejamento e atendimento ao cliente. Complemento minha formação com cursos de curta e média duração nas áreas de vendas, liderança e atualização profissional. Também possuo certificações voltadas para consultoria em beleza, bem-estar e saúde, que ampliaram minhas habilidades comerciais e de relacionamento.',NULL,'Administrativa, Arquitetura, Comercial, Engenharia',NULL,NULL,'Agência de Empregos','não','2.800,00','Sim',NULL,'Arquiteto / Consultor de Vendas/ Quero me inscrever no Banco de Talentos da Young','Isso é um pouco do Jefferson na vida pessoal: alguém que ama cozinhar pratos vegetarianos, veganos e doces, sempre aprendendo algo novo na cozinha. Gosto de assistir séries turcas em espanhol, mantendo contato com o idioma. Tenho experiência e cursos nas áreas de beleza, bem-estar, saúde, arquitetura e vendas; já atuei com spa facial, massagem corporal e criação artesanal de produtos com óleos essenciais. Sou comunicativo, sociável e gosto de estar sempre conhecendo novas pessoas e construindo boas conexões.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-14T02:08:00.000Z'::timestamptz),
  ('Lucas Arocha Marques','engc.lucasam@gmail.com',NULL,'55999296031','1995-10-15',30,'Solteiro(a)','0','Sim','Santa Maria/rs','https://drive.google.com/uc?export=view&id=1corXX_kCJiL4OkwuIHB0dIy9CMEWvRyQ','Engenharia Civil','Pós-graduação Completa','URI Santo Ângelo','2022-07-09','Sou formado','TECNIKA ENGENHARIA ESPECIALIZADA
Engenheiro Civil – Produção
Santa Maria/RS | 2025 - Atual
Obra: Metalúrgica Cofelma
- Gestão de equipes em obra industrial de 26.423m², com estrutura em concreto pré-moldado e cobertura metálica;
- Coordenação das etapas de terraplenagem, fundações, superestruturas, gesso, instalações, acabamentos (cerâmica e pintura), pisos industriais e impermeabilizações;
- Execução de 11.000m² de Pavimento Urbano de Concreto (PUC) e 4.000m² de paver, para áreas externas;
- Controle de cronogramas, RDO e negociações com fornecedores e contratantes.

TECNIKA ENGENHARIA ESPECIALIZADA
Engenheiro Orçamentista
Santa Rosa/RS | 2024 - 2025
- Elaboração de orçamentos e propostas técnicas/comerciais;
- Análise de projetos, levantamento de quantitativos e estudos de viabilidade;
- Avaliação de riscos e otimização de soluções técnicas;
- Interface direta com clientes e fornecedores.

CONSTRUTORA BAGGIO
Engenheiro Civil – Produção / Pós-obra e Assistência Técnica
Santo Ângelo/RS | 2022 - 2024
Obra: Hospital Unimed Missões
Engenheiro de Produção:
- Gestão de equipe com mais de 200 colaboradores;
- Responsável pela execução de hospital com 13.000m² (11 pavimentos, 170 leitos, UTI, salas cirúrgicas, elevadores, central de gases, subestação);
- Coordenação de todas as etapas da obra: terraplenagem, fundações, estruturas, instalações, até os acabamentos finais;
- Controle de orçamentos, cronogramas, medições e negociações.
Pós-obra e Assistência Técnica:
- Gerenciamento do pós-obra e assistência técnica;
- Levantamentos quantitativos, elaboração e análise de orçamentos;
- Condução de negociações com fornecedores e clientes;
- Identificação e resolução de problemas técnicos, garantindo qualidade e satisfação do cliente.

PROGETTA ENGENHARIA
Sócio Proprietário/Engenheiro de Produção
São Luiz Gonzaga/RS | 2020 - 2022
- Gerenciamento de obras residenciais e comerciais de alto padrão;
- Elaboração de projetos arquitetônicos e complementares (estrutural, elétrico, hidrossanitário);
- Regularizações, desmembramentos e fusões imobiliárias;
- Destaques: execução de ampliações, reformas e edificações completas (343,27 m², 374,86 m² e 251,82 m²).

TRABALHOS VOLUNTÁRIOS
Hospital de São Luiz Gonzaga – Participação na reforma;
Praça do Bairro Auxiliadora – Projeto de revitalização;
Estádio Municipal de São Luiz Gonzaga – Participação na laboração de projeto de reforma.','Engenheiro Civil, pós-graduado em MBA de Gestão de Obras, focado na aplicação dos princípios do Lean Construction, otimizando processos, reduzindo desperdícios e aumentando a  produtividade, em obras.',NULL,'Engenharia',NULL,'https://drive.google.com/open?id=1V79Yn2mIbN3KBNhQiSRAJIpykOPTLKlU','Instagram','Não','R$7.000,00','Sim','Eng. Civil Paulo Victor Correa
Contato: (34) 9 9909-3464
Cargo: Engenheiro Residente
Empresa/Obra: Unimed Missões
Cidade: Santo Ângelo/RS

Eng. Civil William Raphalski
Contato: (41) 9 9998-2423
Cargo: Coordenador de Obras
Empresa/Obra: Unimed Missões
Cidade: Santo Ângelo/RS

Eng. Civil Daniel Almeida
Contato: (55) 9 9910-2350
Cargo: Coordenador de Obras
Empresa/Obra: Construtora Flach & Werle
Cidade: São Luiz Gonzaga/RS','Engenheiro Civil','Possuo um perfil dinâmico, proativo e orientado a resultados, com forte excelência técnica e organizacional. Tenho grande foco na aplicação dos princípios do Lean Construction, buscando constantemente otimizar processos, reduzir desperdícios e aumentar a produtividade no canteiro de obras.

Sempre tive facilidade de convivência com colegas e equipes sob minha gestão, prezando por um ambiente colaborativo, respeitoso e transparente. Ao longo das experiências que tive, conduzi times com poucos conflitos, tratando todos com igualdade e valorizando cada contribuição, independentemente do cargo ou função.

Além do trabalho, sou uma pessoa alegre e curiosa, que gosta de explorar novos lugares, viajar e manter uma rotina ativa através da prática de esportes. Acredito que equilíbrio, respeito e melhoria contínua — tanto pessoal quanto profissional — são essenciais para construir jornadas mais leves e resultados mais consistentes.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-17T00:26:00.000Z'::timestamptz),
  ('JULIANA ALVES DA SILVA CARDOSO','Julianaalvesdasilvacardoso@gmail.com',NULL,'51998787008','1989-09-01',36,'Casado(a)','2','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=11ppfPY0lnIzjsVNoNI2vXWTFjWwFTBsH',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Mercado rissul 
Operadora de caixa 1 a o e 10 meses 

D''casa Alimentícias 
Auxiliar se produção 
5 meses',NULL,NULL,'Administrativa',NULL,NULL,'Agência de Empregos','Nao','A cima de dois mil reais','Não',NULL,'Consultora de vendas',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-18T13:24:00.000Z'::timestamptz),
  ('Fabiane paschoal da veiga','faby.veiga@hotmail.com',NULL,'55991028394','1994-06-08',31,'Solteiro(a)','0','Sim','Ijuí/rs','https://drive.google.com/uc?export=view&id=1jZrd6lmyTQy3UBRcEtoAHkwAwAcwRnaG','Engenharia Civil','Pós-graduação Completa','Universidade de cruz alta','2022-12-01','Sou formado','Apenas fiz estágios e estudei!!','Sou formada em engenharia civil, administração de empresas e tenho mestrado na área de engenharia',NULL,'Administrativa, Engenharia',NULL,NULL,'Instagram','Nao','2500','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou do interior, gosta da vida no  campo e isso me deu oportunidade de apenas estudar e nunca fui CLT, mas no momento sinto que estou preparada pra crescer profissionalmente e contribuir com o sucesso da empresa!! Ahh e o interior, sempre vai permanecer pra descanso!! O mestrado me permitiu ser autodidata então reposabilidade não faltará!!!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-18T23:03:00.000Z'::timestamptz),
  ('Maria Eduarda Rodrigues Oliveira','meduardarodriguesoliveira@gmail.com',NULL,'51998896207','2004-04-26',21,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1wIepjY3Y-6IeE8Uaz-AGwukH89PA5vXT',NULL,'Ensino Superior Incompleto',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Trabalhei na Via Uno de 1 de junho de 2021 até 16 de agosto de 2023, JS ateliê de 1 de setembro de 2023 até  junho de 2025 e na MLC Calçados comecei dia 9 de junho e é onde estou atualmente.
Trabalhei na fabricação de bolsas e sapatos, e acabei virando comserteira em todos os lugares em que trabalhei.',NULL,NULL,'Administrativa, Comercial, Estágio, Financeiro',NULL,NULL,'Instagram','Não','Dois mil e quinhentos reais.','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho noções básicas de computação, e consigo me comunicar um pouco em inglês e espanhol','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-19T23:55:00.000Z'::timestamptz),
  ('Fabiane Helbich','fabi.helbich@gmail.com',NULL,'47920024262','1978-01-08',48,'Solteiro(a)','2','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1iGeTd5wisrPEDk9appH3aep5mCjgF2lF',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Geral Engenharia, 1999- Acompanhamento do controle de Qualidade da obra de oleoduto Tedut/Refap. 2000- Sedutos- Documentação Técnica de acompanhamento das Obras de ramais de gás da Sul Gás em Porto Alegre e ramificações de gás da usina termelétrica Wiliam Arjona , Campo Grande, MS. Fiscalização documentos técnicos MSGÁS das cidades de Três lagoas, Corumbá e Campo Grande.',NULL,NULL,'Administrativa, Financeiro, Engenharia',NULL,NULL,'Já Trabalhei No Parque Da Guarda','Não','2500','Sim',NULL,'Banco de talentos','Estava morando em SC, trabalhando de coletor de precificação de postos de combustíveis das cidades de Itajaí, Balneário Camboriú, Itapema e Tijucas, fiquei 5 anos nesse trabalho, agora estou em Santo Antônio da Patrulha.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-20T21:19:00.000Z'::timestamptz),
  ('Thamiris de Souza Guterres','thamirisdesouzaguterres@gmail.com',NULL,'55991359587','2001-12-07',24,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1rxdDnqzl8Sj5acbXz2-n39slWE7pdnAi','Administração','Ensino Superior Incompleto','Uniasselvi / IERGS','2026-12-31','Não, no momento pausei/parei por um período.','1) Rama Advogados Associados

Cargo: Instrutora de Treinamentos Pleno

Período: 03/2025 a 08/2025

Principais atividades:

Responsável pelo setor de Qualidade, onboarding e treinamentos.

Condução de feedbacks, reciclagens e acompanhamento de performance dos times negociais.

Análise de ligações e negociações, apoio ao time de monitoria.

Elaboração de reports e indicadores para diretoria e clientes como Santander.

Criação de ações de incentivo, dinâmicas e melhorias para operação de cobrança.

2) Vanga Consultoria Empresarial

Cargo: Líder Comercial

Período: 08/2024 a 03/2025

Principais atividades:

Atuação como representante comercial do escritório Lini & Pandolfi (Pessoa Física).

Gestão de equipe comercial com definição e acompanhamento de metas e estratégias.

Treinamentos, feedbacks e desenvolvimento do time.

Responsável por processos seletivos e apoio à diretoria nas decisões comerciais.

3) Vigitrack – Rastreamento & Gestão de Frota

Cargo: Executiva de Contas PJ

Período: 03/2024 a 08/2024

Principais atividades:

Gestão de carteira de clientes PJ e renovação contratual.

Condução de negociações, rapport, upsell e cross-sell.

Quebra de objeções, reuniões via Meet e atendimentos presenciais na região de Porto Alegre.

Elaboração e fechamento de minutas contratuais.

4) Grupo Fit – Academias & Bem-Estar

Cargo: Gerente Comercial

Período: 03/2022 a 11/2023

Principais atividades:

Implementação e gestão dos setores de pré-venda, venda ativa, receptiva e telemarketing.

Criação de estratégias de retenção, atendimento ao cliente e marketing local.

Treinamentos de equipe em perfil comportamental e técnicas de vendas.

Organização de eventos, parcerias comerciais e ações de captação.

5) C.Vale – Cooperativa Agroindustrial

Cargo: Auxiliar de Recursos Humanos

Período: 05/2018 a 05/2020

Principais atividades:

Atuação no Departamento de Transportes, com responsabilidades em recepção, secretaria, compras e logística.

Suporte ao RH em processos de contratação, demissão, folha-ponto e documentação.

Agendamento de entrevistas e exames admissionais.

Apoio no contato com planos de saúde e participação em processos seletivos.',NULL,NULL,'Comercial, Marketing, Novos Negócios, Engenharia',NULL,NULL,'Agência de Empregos','não','2700 a 4000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Eu sou uma pessoa dedicada, curiosa e com muita vontade de aprender. Sempre gostei de gente, de ouvir, ajudar e organizar tudo ao meu redor. Por isso acabei passando por áreas diferentes como comercial, RH e treinamento, e em cada uma delas entendi um pouco mais sobre quem eu sou e no que realmente me destaco.

Tenho facilidade em ensinar e treinar pessoas. Gosto de orientar, acompanhar e ver alguém evoluir depois de um toque meu. Trabalhar com pessoas realmente me move.

Também sou muito prática. Já trabalhei em RH, liderei equipe comercial, dei treinamentos, fiz negociações, organizei processos e também já toquei meus próprios projetos, como minha produção de doces gourmet. Ali eu aprendi na marra sobre organização, atendimento, controle e responsabilidade.

Fora do trabalho, sou alguém que está sempre buscando evolução. Gosto de treinar, estudar temas que me fazem crescer e me conectar com pessoas. Sou intuitiva, comunicativa e tenho facilidade de criar vínculo.

Hoje busco um lugar onde eu possa usar tudo isso que faz parte de mim: minha comunicação, minha experiência real, meu jeito humano e minha vontade de entregar o melhor.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-22T16:57:00.000Z'::timestamptz),
  ('Rafaela Cortelini Acosta','rafaelacortelini@gmail.com',NULL,'55997233399','2001-11-08',24,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1NGBLTwicbpg64hc2zDEeve7m0ra1fH_e','Administração de empresas','Ensino Superior Completo','Unopar Universidade','2024-02-05','Sou formado','Trabalhei como estagiária no Alegrete Prev, onde realizava o atendimento ao público, atividades administrativas, montava processos de aposentadorias e pensões,  2022/2023.
Trabalhei como vendedora na Óptica Cristal, onde fazia vendas, caixa, controle de estoque 2023/2024.
Trabalhei como auxiliar administrativo na Tec Vidros, onde realizava o atendimento ao público, vendas e pós vendas, caixa, controle de estoque, pedidos de vidros e ferragens, tirava notas de vendas e serviços 2024/2025.
E por último trabalhei na Caal Cooperativa Agroindustrial, como safrista no laboratório, atividades referente a safra 2025/2025.','Cursos on-line na Fundação Bradesco.
Atendimento ao público, educação financeira e estratégia de negócios.',NULL,'Administrativa, Comercial, Financeiro, Marketing',NULL,NULL,'Instagram','Não','1900','Não',NULL,'Área administrativa ou financeira.','Sou carismática, dedicada, organizada e responsável.
Me considero uma ótima colega de trabalho.
Gosto muito de animais.
Sou vegetariana.
E estou em busca de uma oportunidade na minha área.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-24T14:31:00.000Z'::timestamptz),
  ('Bruna Noami Pes','brunanpes@gmail.com',NULL,'55997091757','2000-03-03',25,'Solteiro(a)','0','Sim','Santo Ângelo/rs','https://drive.google.com/uc?export=view&id=15AYW14gER7dipMZbB6wPbNsjIKdGpsFW','Estética e cosmética','Ensino Superior Completo','Instituto federal Farroupilha','2024-10-17','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Iniciei minha trajetória com um estágio no setor de rh da prefeitura municipal de chiapetta pelo tempo de 100 horas, desempenhando funções simples como arquivamento de documentos, licitações, auxilias nas folhas de pagamento. Após já em 2022 fiz estágio em uma clínica de estética (Oligoflora) de agosto de 2022 até outubro de 2023 desempenhando funções como atendimento ao cliente, procedimentos estéticos, arquivamento de documentos, avaliações estéticas, fotos e vídeos. Em outubro de 2023 iniciei como vendedora em uma loja de varejo (Chens Presentes) até janeiro de 2024, fazendo atendimento ao cliente, organizando a loja, repondo estoque. Em março de 2024 iniciei como auxiliar administrativo em uma empresa de engenharia e elevadores (LL Serviços e Engenharia), em maio de 2025 fui promovida a gerente administrativa atuando principalmente na área financeira, fazendo controle de contas, contas a pagar e receber, emissão de cobranças, manutenção e atualizações no sistema erp, folhas de pagamento, recrutamento e seleção de vagas, relatórios e planilhas.','Possuo técnico em administração, e atualmente faço graduação em administração',NULL,'Administrativa, Estágio, Financeiro',NULL,NULL,'Indicação','Não','Média da função exercida','Sim','Raquel Ramser Ceretta - Oligoflora 55984339267
Fabrício Leal - LL serviços e engenharia 55999099044','Estágio Financeiro','Tenho conhecimento no pacote office, facilidade com redes sociais, conhecimento em sistema erp, conhecimento sobre tributações e alíquotas, sou dedicada, curiosa e gosto de estar sempre aprendendo e me aperfeiçoando.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-25T23:57:00.000Z'::timestamptz),
  ('Bruna Oliveira Carlesso','bruncarlesso@hotmail.com',NULL,'55996701184','1996-07-21',29,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=19-CZ4YNAVzfNutIHWreHxKnnV0Qfz4iU','Estética e cosmetologia e estou fazendo pós em recursos humanos','Pós-graduação Incompleta','Unopar e Uniasselvi','2020-04-20','Sou formado','Prefeitura municipal de Alegrete diretora de RH','Pós em recursos humanos',NULL,'Administrativa, Comercial, Novos Negócios',NULL,NULL,'Instagram','Nao','2000','Não','Parte administrativa e financeira','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-27T00:07:00.000Z'::timestamptz),
  ('Keila Alves Ventura','keilaventura.arq@gmail.com',NULL,'519993254204','1989-07-22',36,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1nIKMPsw5qwqrKat-23Wsj3QGwBBM_OnO','Arquitetura','Ensino Superior Completo','Uniritter','2019-01-01','Sou formado','BG Arquiteutra | Arquiteta | Atualmente 
Atividades: Atuação na implantação do sistema BIM (Archicad), realizando
configurações de template e integração de processos.

Ambidestro | Arquiteta | 2024 -2025
Atividades: Desenvolvimento de projetos executivos de edificação, desenvolvimento de detalhamentos e
compatibilização de projetos complementares.

POZ Arquitetura e Design | Arquiteta | 2022 -2024
Atividades: Desenvolvimento de criação de projetos de arquitetura de interiores; compatibilização de projetos complementares, desenvolvimento de projetos executivos, desenvolvimento de detalhamentos, acompanhamento de obras.

Arquiteta
Escritório Autônomo | 2019 - 2022
Atividades: Desenvolvimento de projetos de arquitetura de interiores em todas as suas etapas, acompanhamento de obras, orçamentação e atendimento ao cliente.','Sou formada em Arquitetura e Urbanismo, área na qual desenvolvi uma base sólida em projeto arquitetônico. Busquei complementar minha formação com cursos para aprimoramento técnico e na especialização em ferramentas essenciais para a prática profissional. Entre eles, destaco:

Modelagem e Projetos em ArchiCAD – capacitação voltada para fluxos BIM, desenvolvimento de projetos executivos e otimização de processos;

Renderização e Apresentação de Projetos – estudo de técnicas visuais para criação de imagens realistas e apresentações profissionais;',NULL,'Arquitetura, Engenharia',NULL,NULL,'Agência de Empregos','Não','6.000,00','Sim',NULL,'Arquiteta','Gosto de explorar diferentes formas de aprender e me desenvolver, tanto na área da arquitetura quanto em interesses pessoais. Tenho facilidade com programas de criação e projetos, especialmente Archicad e ferramentas de apresentação visual, e estou sempre em busca de aprimorar minhas habilidades técnicas.

Além disso, procuro manter uma rotina equilibrada entre trabalho, bem-estar e desenvolvimento pessoal. Sou apaixonada por atividades físicas, principalmente corrida e musculação e é o que me ajuda a manter foco, disciplina e energia no dia a dia. Também adoro viajar, conhecer novos lugares, culturas e referências que ampliam meu repertório criativo e influenciam diretamente meu olhar para a arquitetura.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-27T14:02:00.000Z'::timestamptz),
  ('Julia Mendes','juliamendes02899@gmail.com',NULL,'51997569508','2008-07-01',17,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1_3uOO7ZiPLzXdqaspfP69eVQQC7NXrjC','Administração de empresas','Ensino Médio Completo',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Trabalhei 2 anos no RH da Guimarães',NULL,NULL,'Administrativa',NULL,NULL,'Indicação','Simm pela Carol Freiberger','0','Não','Francisca neves .','Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-28T17:53:00.000Z'::timestamptz),
  ('Renata de Lins Freiberger','renatadelinsfreiberger@gmail.com',NULL,'51995080518','2007-11-05',18,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1TvqZ8TJh74761-oDJiJ5m0sYLAojV5_5',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Madereira Monjolo (janeiro 2023/atual) 
Atuando no atendimento, vendas, notas, recebimento de mercadorias e organização 

Estribo Hotel (Desembro 2024/ Janeiro2025) 
Temporário, atuando na parte de recreação e atendimento ao público',NULL,NULL,'Administrativa',NULL,NULL,'Indicação','Sim, Carol Freiberger','2.500,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-11-28T22:04:00.000Z'::timestamptz),
  ('Fabrício Valério Monteiro','fabriciovalerio2705@gmail.com',NULL,'53991088266','2003-05-27',22,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1Ws15qegWq8UlEoZFDyiRtQlzB85P4Vt-',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Empresa: Duplik Cópias e papelaria.
Período: 01/08/2022 - Atualmente
Cargo: Atendente
Função principal é a parte do atendimento e vendas

Empresa: Comercio de Medicamentos Brair LTDA.
Período: 15/04/2019 - 28/05/2020
Cargo: Aprendiz - Ass. Serv. Administrativos
Obs: Jovem Aprendiz','TECNICO EM VENDAS 
Entidade: Geteco
Cursando no período da noite

FERRAMENTAS DE MARKETING DIGITAL
Entidade: Senac-RS

CURSO TÉCNICAS DE VENDAS E ATENDIMENTO
AO CLIENTE
Entidade: Digital TI Consultoria e Treinamento - Projeto Crescer

APRENDIZAGEM PROFISSIONAL COMERCIAL EM SERVIÇOS ADMINISTRATIVOS - JOVEM APRENDIZ
Entidade: Senac-RS',NULL,'Administrativa, Comercial, Marketing, Novos Negócios',NULL,NULL,'Instagram','Não','A partir de R$1.800','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou um profissional dedicado, pontual e comprometido, com mais de três anos de experiência na Papelaria Duplik, atuando diretamente no atendimento e nas vendas. Atendo em média cerca de 50 pessoas por dia, o que desenvolveu em mim agilidade, boa comunicação, paciência e foco em resultados.
Atualmente curso Técnico em Vendas à noite, buscando aprimorar ainda mais minhas habilidades profissionais. Também procuro uma oportunidade que ofereça flexibilidade aos sábados, pois desejo iniciar o curso de Teologia.
Busco um ambiente que valorize o equilíbrio entre vida pessoal, estudo e trabalho, mantendo um salário compatível ou superior ao que recebo hoje. Acredito que posso somar à equipe com minha experiência, ética, responsabilidade e vontade de crescer continuamente.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-01T06:02:00.000Z'::timestamptz),
  ('Silvia Inês Pereira','silviainespereira_@hotmail.com',NULL,'51995857741','1996-09-12',29,'Solteiro(a)','0','Sim','São Leopoldo/rs','https://drive.google.com/uc?export=view&id=1ySuP6niVg7bYF3OgR4vFsqdMGxgD2LeZ','Design de Interiores','Ensino Superior Completo','Unisinos e Feevale','2026-02-28','Sou formado','Outubro de 2025
Cargo: Analista de Projetos 
Empresa: Alltec Soluções
Principais atividades: Desenvolvimento de Projetos de pavilhões comerciais e industriais. Detalhamentos. Visita e reuniões com clientes.

 Agosto de 2023 até Setembro de 2025
Cargo: Auxiliar Administrativo 
Empresa: Unisinos 
Principais atividades: Demandas administrativas, no que tange o currículo acadêmico do aluno como disciplinas, aproveitamentos de estudos e atividades complementares. 
Junho de 2022 até agosto de 2023 
Cargo: Estagiária 
Empresa: Unisinos – Setorial Arquitetura e Urbanismo 
Principais atividades: Auxílio na organização do Acervo do curso (Biblioteca Setorial), como também, orientação aos alunos na busca de informações que se encontram no acervo. Auxílio em diversas atividades promovidas pela coordenação do curso de Arquitetura e Urbanismo e Centro Acadêmico. Atendimento de demandas de professores contribuindo na transmissão de informes aos estudantes. Auxílio na produção de material gráfico de divulgação de assuntos de interesse do Curso. 
Março de 2022 até maio de 2022 
Cargo: Medidora 
Empresa: De Carli Mármores e Granitos 
Principais atividades: Visitar clientes para fazer a medição do local, fazer desenhos com medidas para a produção. Conferir medidas, acompanhar a produção e instalação, contato com profissionais e clientes. 
Agosto de 2020 até janeiro de 2022 
Cargo: Projetista 
Empresa: Agência K2 (Grupo K1- Kappesberg) 
Principais atividades: Desenvolver projetos de móveis planejados (Idélli e My Home) para ambientes comerciais e residenciais, desenvolver projetos de showroom para lojas franqueadas em todo o Brasil, realizar medições em obras, detalhamento demontagem, conferências de projeto, especificação de materiais. 
Maio de 2020 até agosto de 2020. 
Cargo: Projetista de móveis planejados 
Empresa: Leroy Merlin 
Principais atividades: Desenvolver projetos de móveis planejados para ambientes comerciais e residenciais, realizar medições em obras, detalhamento de montagem, conferências de projeto, especificação de materiais, atendimento à clientes e negociação de valores. 
Fevereiro de 2019 até fevereiro de 2020. 
Cargo: Estagiária Arquitetura 
Empresa: Agência K2 (Grupo K1- Kappesberg) 
Principais atividades: Auxiliar em projetos de móveis planejados (Idélli e My Home)para ambientes comerciais e residenciais, realizar medições em obras, detalhamento de montagem, conferência. 
Outubro de 2017 até fevereiro de 2019. 
Cargo: Projetista de móveis planejados Empresa: Euro Móveis e Esquadrias 
Principais atividades: Projetar móveis em MDF para ambientes comerciais e residenciais, realizar medições em obras, negociar valores com clientes e acompanhar montagem.','Conhecimento avançado em Autocad, Sketchup, Promob, Vray e Revit',NULL,'Arquitetura, Engenharia',NULL,NULL,'Agência de Empregos','Não','4.500,00','Sim',NULL,'Arquiteto',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-02T13:06:00.000Z'::timestamptz),
  ('Raphael Camara Campos','raphaelcc87@gmail.com',NULL,'51996467923','1987-12-29',38,'União estável','0','Sim','Charqueadas/rs','https://drive.google.com/uc?export=view&id=1PxUbia_Wlbrt28flskOKoqVXU5F5wkU5','Engenharia Civil','Ensino Superior Completo','PUCRS','2022-08-09','Sou formado','1) LES soluções industriais 2) iniciei como assistente de engenharia, posteriormente passei a supervisor de obras e hoje atuo também na área de orçamentos ainda como supervisor de obras/orçamentos 3) início 07/2023 até o momento. 4) todas atividades são relevantes e importantes para um bom fluxo acontecer, na parte de de execução de obras, o planejamento na minha visão é a parte mais relevante pra ali conseguimos prever tudo que precisaremos, estimar datas, traçar metas, dimensionar mão de obra, comunicar cliente caso seja necessário alguma demanda ou recurso que dependa de liberações devido as normas internas de cada cliente. Juntamente nessa etapa é possível planejar, agendar entrega de materiais nas datas corretas e quantidades, previsão de ferramentas especiais e/ou recursos que será necessária para alguma atividade específica. Tudo isso é de responsabilidade no meu caso do supervisor prever e comunicar, lançar pedidos de compras e agendamento de recursos. Além de um bom ambiente de trabalho e relacionamento com equipe, pois passamos mais tempo em nossas atividades do que com nossa família, então prezo muito por um bom ambiente de trabalho, colaborativo e acima de tudo respeito e educação, independente de posição ocupada na empresa todos devem ser tratados com respeito e educação. Enfim tenho experiências diversas em execução de obras civis residenciais, condominiais, industriais, ppci. Disponibilidade de viagens e mudança se preciso for, assim como facilidade de novos aprendizados. Se alguém sabe fazer eu também posso aprender, eu sigo este pensamento.','Treinamentos sobre liderança, comunicação não violenta, entre outros',NULL,'Engenharia',NULL,NULL,'Agência de Empregos','Não','12000','Sim','Prefiro não indicar referências que das obras anteriores não tenho o contato dos responsáveis mais, e atualmente ainda estou na empresa, LES soluções industriais contato Fernanda que é a proprietária  051993844670','Quero inscrever-me no banco de talentos da Young!','Sou de fácil comunicação e gosto das coisas certas, bom relacionamento em equipe, busco sempre melhorar os processos e buscar novos métodos de execução. Priorizo respeito e educação em todas a áreas da vida, não só no ambiente de trabalho e tenho muita determinação em tudo que faço eu busco fazer a melhor entrega, dentro das condições que são oferecidas. Nas férias gosto muito de ir para praia, sou apaixonado pelo mar e natureza e animais 🤣','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-02T16:31:00.000Z'::timestamptz),
  ('Lilian barcella rodrigues','li.barcella@gmail.com',NULL,'51989918585','2008-05-27',17,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1WIfVQCCrbbA18Q862h52xrhFD07R3Xnh',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Trabalhei na HIAB, empresa de guindastes hidráulicos como jovem aprendiz no setor de compras, onde lá eu cobrava os fornecedores e fazia os pedidos de compra.','Inglês Wizard
informática básica e informática aplicada
desenhos técnicos
marketing de vendas',NULL,'Arquitetura, Financeiro, Marketing, Engenharia',NULL,NULL,'Instagram','Não','R$ 2,000 / 1,800','Não',NULL,'Marketing',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-02T18:39:00.000Z'::timestamptz),
  ('Carla Tressoldi','carla@youngempreendimentos.com.br',NULL,'36625145','1999-05-31',26,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=15Ur76NDnKF98gxgabRl_lJ-gU8LVTWAq','Ciências Contábeis','Ensino Superior Completo',NULL,NULL,'Sou formado','teste',NULL,NULL,'Administrativa',NULL,NULL,'Indicação','teste','teste','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-03T12:53:00.000Z'::timestamptz),
  ('Natália Govoni','nataliagovoniarq@gmail.com',NULL,'51995782304','1996-12-27',29,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1jWMZsRRDQWsbEyfoJKp1uNNeaGiR9Daz','Arquitetura','Ensino Superior Completo','PUCRS','2022-08-06','Sou formado','BRNL GESTÃO E ENGENHARIA
Arquiteta/Orçamentista - maio/2025 até o momento
Atualmente atuo com administração, planejamento e controle de obras, sendo responsável,
juntamente com a equipe, pela gestão completa do empreendimento — desde a estimativa de
custos até as contratações de projetos complementares, acompanhamento de entregas e revisões,
elaboração de orçamentos e cronogramas de execução, além do planejamento e controle das
atividades para garantir o cumprimento de prazos, custos e qualidade.
CONSELHO REGIONAL DE ADMINISTRAÇÃO DO RIO GRANDE DO SUL - CRA/RS
Arquiteta/Assessora Técnica de Arquitetura - janeiro/2024 a maio/2025
Inicialmente atuei como assessora técnica, logo fui promovida a Chefe de Setor de Arquitetura no
Conselho Regional de Administração do Rio Grande do Sul, onde era responsável por toda
infraestrutura da Sede do conselho e suas seccionais localizadas em cidades do interior do estado.
Atuando como fiscal de diversos contratos, coordenando equipes de manutenção, limpeza,
portaria, vigias e demais facilites. Responsável pela elaboração de documentos e estudos para
andamento de processos de licitação de itens relacionados a minha atribuição técnica, responsável
por propor melhorias, mudanças internas de layouts, fachadas, obras e demais atividades inerentes
a minha função.
MARINI E SILVA ARQUITETURA E CONSULTORIA
Licenciadora - 10/2022 até 12/2023
Atuei como Licenciadora em projetos Urbanísticos e Ambientais, realizando montagem de
processos de licenciamento, análise, estudos, memoriais e diagnósticos/relatórios. Realizava o
protocolo e posteriormente era responsável pelo acompanhamento dos processos juntamente as
prefeituras e órgãos competentes, controlando e cobrando prazos pra emissão das Licenças e
documentos competentes; contato direto com o cliente; conhecimento das legislações municipais
e estaduais; demais atividades.
MOTTIN BECK ARQUITETURA
Arquiteta 08/2022 até 10/2022 - Estagiária 04/2021 até 07/2022
Desenvolvimento e planejamento nas etapas de projeto, planilhas orçamentárias;
acompanhamento de prazos e alinhamento com fornecedores para cumprimento dos mesmos;
contato direto com clientes e fornecedores; apresentações; acompanhamento as obras; auxílio no
setor financeiro; aprovação de projeto em prefeituras; elaboração e auxílio em documentação de
projeto; participação em eventos e demais atividades relacionadas a arquitetura.
PREFEITURA MUNICIPAL DE PORTO ALEGRE - SMS SETOR DE PLANEJAMENTO E
GERENCIAMENTO DE OBRAS
Estagiária | 07/2020 -04/2021
Execução e planejamento de projetos internos incluindo análises dentro da instituição e em outras
secretarias; auxílio na elaboração de layout e racionalização de espaços; auxilio na graficação de
projetos; auxilio no desenvolvimento de estudos em Autocad; auxilio no levantamento cadastral
planiautimetrico; contato com fornecedores; elaboração de orçamentos e demais atividades.
FERK - ENGENHARIA
Estagiária | 06/2019 - 07/2020
Licenciamento ambiental e urbanístico nos estados RS, SC e PR. Contato direto com clientes e
fornecedores. Montagem de processos de licenciamento; auxiliar em estudos, memoriais,
diagnósticos e relatórios; acompanhamento e gerenciamento de processos junto as prefeituras e
órgãos competentes; conhecimento das legislações municipais e estaduais; demais atividades.
CONSELHO DE ARQUITETURA E URBANISMO DO RIO GRANDE DO SUL - CAU/RS
Estagiária | 06/2017 - 12/2018
Auxiliar no acompanhamento e conhecimento da Lei 12.378/2010 e das normativas do CAU/BR e
do CAU/RS; Atividades referentes aos processos que tramitam na Gerência Técnica e nas
Comissões; Controle de prazos processuais;','pós em governança, gestão de riscos e compliance',NULL,'Arquitetura, Engenharia',NULL,'https://drive.google.com/open?id=1Uc-rYVsQmqXpLcuSz8pbfGuosRNUJnX0','WhatsApp','nao','7000','Sim','Anaí, Conselho Regional de Administração do RS - 5199130-6673','Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa organizada, com senso de urgência, resiliência e boa comunicação. Possuo facilidade para atividades que exigem liderança e coordenação. Sou espontânea e comunicativa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-03T17:20:00.000Z'::timestamptz),
  ('Daiane Eckert','daiane_eckert@hotmail.com',NULL,'51993897272','1990-08-21',35,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1VoIrlAlGNbGKQVe_1n5dIUluX-dUrard','Arquitetura','Pós-graduação Incompleta','Graduação: Universidade Feevale | Mestrado: UFRGS','2019-01-25','Sou formado','Ambidestro Arquitetura | 2025 atual Cargo: Arquiteta plena
Atividades: Produção de projetos residenciais e edificações;
Desenvolvimento de anteprojetos arquitetônicos, projetos executivos,
detalhamento executivo; Compatibilização de projetos complementares, gerenciamento e pesquisa de fornecedores, suporte a obra.
Mayresse Arquitetura | 2022 à 2024 Cargo: Arquiteta
Atividades: Produção de projetos residenciais e edificações;
Desenvolvimento de anteprojetos arquitetônicos, executivos,
detalhamento executivo, e criação de interiores; Encaminhamento
de projetos junto aos órgãos responsáveis pela aprovação e
licenciamento de obras dentro de cada municipalidade;
Responsável pelo suporte e gerenciamento de modelos bim.
LUPA ARQUITETURA | 2018 à 2022
Cargo: Estagiária / Arquiteta e Urbanista associada
Atividades: Gerenciamento de equipe; Produção e gerenciamento
de projetos arquitetônicos e de design de interiores; Graficação de
projetos arquitetônicos, executivos e complementares; Confecção
de maquetes 3d foto realistas; Detalhamentos; Encaminhamento e
gerenciamento de projetos junto aos órgãos responsáveis pela
aprovação e licenciamento de obras dentro de cada
municipalidade; Planejamento de obras, planilhas orçamentárias,
fiscalização, acompanhamento de execuções, regularizações;
Prospecção de clientes e investidores para projetos de risco.','Arquiteta e Urbanista, graduada pela Universidade Feevale em 2018/02; Mestranda no Programa de Pós-graduação em Planejamento Urbano e Regional UFRGS, com previsão de defesa para jun/2025.
Trabalho com arquitetura à mais de dez anos, passando por diversas áreas de atuação, arquitetura de interiores, arquitetura de edificações alto padrão, sendo elas de médio e grande porte, desenvolvimento de projetos do nível preliminar ao detalhamento executivo, gerenciamento e compatibilização de projetos complementares, em Archicad, utilizando também a ferramenta bimcollab; modelagem de projetos em 3D, renderizações; planejamento de obras, planilhas orçamentárias; fiscalização e acompanhamento de execuções; regularizações e encaminhamentos de projeto legal em diversas
municipalidades.',NULL,'Arquitetura, Engenharia',NULL,'https://drive.google.com/open?id=1JRlT_ETWFs1D7gmoovI-QXQuJJfO3z6u','Agência de Empregos','Não','5000,00 /6000,00','Sim','Raquel Zaffalon - Socia fundadora Ambidestro (51)9911-6565','Quero inscrever-me no banco de talentos da Young!','Tenho mais de dez anos de experiência na área, atuando em diferentes frentes da arquitetura, incluindo projetos de interiores e edificações de médio e alto padrão e complexidade, desde a concepção preliminar até o detalhamento executivo. Minha trajetória inclui o desenvolvimento e compatibilização de projetos em Archicad, utilizando a ferramenta BIMcollab para interação com outros setores, além de modelagem 3D, renderizações, planejamento de obras, orçamentos, fiscalização e acompanhamento de execuções, regularizações e encaminhamentos de projeto legal em diversas municipalidades.
Além disso, ministro cursos e workshops sobre BIM com foco no Archicad desde 2019, e fui responsável pela implementação do software em diversos escritórios da Região Metropolitana de Porto Alegre.
Caso queira conhecer mais sobre meu trabalho, meu portfólio digital está disponível em: https://www.behance.net/daianeeckert.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-05T15:47:00.000Z'::timestamptz),
  ('Adriana Guilehrmano Leal','adriana.guilhermano@gmail.com',NULL,'21984429400','1986-10-30',39,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1pArwkzVfUkRYrlFTOvjE6up68PN4x7gW','Arquitetura','Pós-graduação Completa','UFRGS','2015-12-18','Sou formado','La Salle- analista de arquitetura set/2025- atual
Atividades de gestão de projetos e obras, orçamentação, projeto, acompanhamento de
Obras, acompanhamento financeiro em projetos de reformas e novas unidades de escolas da rede Lá Salle. Contato com fornecedores e escritórios.
Ábaco Urbanizadora-analista de arquitetura- novembro 2024 a setembro de 2025.
Gestão de projetos e obras, atividades de projeto, em todas as etapas, para arquitetura condominial, paisagismo e urbanismo; Acompanhamento legal em prefeituras e outros órgãos.
Urbana Paisagismo- diretora criativa e proprietário maio 2025- atual
Atividades de projeto, gestão e coordenação de equipe em projetos de paisagismo de empreendimentos condominiais.
Takeda Arquitetura, Paisagismo e Urbanismo. Analista de arquitetura e coordenadora. Jan 2017 - nov/ 2024
Atividades de estudo preliminar, anteprojeto, projeto executivo, compatibilização com demais disciplinas, avaliação de imagens de vendas, alinhamento com cliente, gestão de equipe em projetos de áreas condominiais, parques, hotéis e shoppings como Parque do Pontal e Hotéis da rede Hard Rock','Bacharel em arquitetura pela UFRGS, com mestrado em Arquitetura pela UFRJ na linha de pesquisa Cultura, Paisagem e Ambiente Construído. Integra o Laboratório de arquitetura, subjetividade e cultura onde investiga as dimensões culturais e relações sociais entre ambiente construído e pessoas. Possuí curso de gestão de projetos pela FGV e formações diversas nas áreas de urbanismo, artes, desenho e criatividade',NULL,'Arquitetura, Engenharia',NULL,'https://drive.google.com/open?id=1MoO3-3El5jy2bh-T8bsdTF-KlnlMjqwl','Indicação','Não','7500','Sim','Juliana Arderius 51 99161-7962','Quero inscrever-me no banco de talentos da Young!','Possuo habilidades nos softwares Autocad, Revit, Archicad, Sketchup, pacote Office, pacote Adobe','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-05T17:43:00.000Z'::timestamptz),
  ('Carla Maisner de Oliveira','carlamaisner@gmail.com',NULL,'51993702365','1998-01-26',28,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=15aVegvMFcRIqV43knx6EMJJ7n0wUsq-Z','Técnica em Edificações','Ensino Superior Incompleto','Escola Técnica Estudal Parobé','2025-11-22','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Mills Locações, Serviço e Logística S/A
Fiz estágio como desenhista durante 1 ano, após estágio fui contratada e sigo no cargo como desenhista.','Conclui meu técnico em Edificações neste ano, iniciei em 2022 e fiz estágio através do técnico. Atualmente trabalho com autocad, tenho conhecimento em revit, sketchup e estou fazendo curso de renderização. Também curso arquitetura, estou no 4° semestre da faculdade.',NULL,'Arquitetura, Estágio, Engenharia',NULL,NULL,'Agência de Empregos','Carla','2.500,00','Sim',NULL,'Estágio Engenharia e/ou Arquitetura',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-08T19:30:00.000Z'::timestamptz),
  ('Juliana Portal Heinzelmann','ju_portal@hotmail.com',NULL,'51984699795','1989-07-10',36,'União estável','1','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=187snm7vq2YK1xAyGDX-naKPIVRK2kN-P','Sou Formada em Gestão Financeira, com pós em Gestão Empresarial. Atualmente cursando Arquitetura e Urbanismo.','Pós-graduação Completa','Formada pelo IBGEN. Atualmente na Uniritter','2013-12-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Na área da arquitetura e urbanismo estou em busca da minha primeira oportunidade, porém estou em transição de carreira, ou seja, possuo experiência na área administrativa, sendo que já trabalhei em grandes empresas, como SLC Agrícola, TKE Elevator e Sicredi.',NULL,NULL,'Arquitetura',NULL,NULL,'LinkedIn','Não','Entre R$ 1mil e R$ 2mil','Não',NULL,'Estágio Engenharia e/ou Arquitetura','Em transição de carreira para arquitetura, trago comigo a bagagem de ano de experiência em funções que exigiram organização, análise e gestão de demandas. Atualmente estudante, ainda sem muita bagagem de uso de sistemas, estou em busca de um estágio que me permita aprender e transformar conhecimento acadêmico em prática, contribuindo com ideias criativas e aprendendo com profissionais da área.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-08T19:50:00.000Z'::timestamptz),
  ('Maurício Guterres Ribeiro','mauricioribeiro8021@gmail.com',NULL,'51999062073','1998-01-21',28,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1OyEyw17BrqegIZI2lAbRi6qJ13ag2GWS','Arquitetura','Ensino Superior Incompleto','PUCRS','2027-12-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Acadrolli - Assistente Administrativo - 04/2015 até 11/2025
laboração de cálculos e pareceres contábeis voltados para a liquidação de processos civeis de complementação acionária em diversos estados do país (RS, SC, RJ, AM, etc.), com ênfase no cumprimento de prazos.',NULL,NULL,'Arquitetura, Estágio, Engenharia',NULL,NULL,'Agência de Empregos','Não','R$1.600,00','Não',NULL,'Estágio Engenharia e/ou Arquitetura','Busco uma oportunidade de estágio para aplicar os conhecimentos adquiridos na graduação,
desenvolver habilidades práticas em projetos e colaborar com uma equipe profissional. Tenho interesse
especial em interiores, urbanismo, sustentabilidade e processos construtivos, estou motivado a
aprender, contribuir e crescer profissionalmente.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-09T17:03:00.000Z'::timestamptz),
  ('Johnatan Fraga Neris','johnatanfraganeris@gmail.com',NULL,'51985197897','1995-01-30',31,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1E2EOG_KJwSjl-uYVViWoIxeZa7ip8BJd','Arquitetura','Ensino Superior Completo','Uniritter','2020-12-01','Sou formado','1) Roseli Melnick Arquitetura e Interiores

Cargo: Arquiteto Líder de Projetos
Período: Março de 2025 – Atual
Principais atividades:

Desenvolvimento de anteprojetos e projetos executivos de arquitetura.

Atuação na liderança de equipe, controle de qualidade e planejamento de entregas.

Compatibilização com projetos complementares.

Apoio à coordenação para cumprimento de cronogramas e escopos.

Acompanhamento da evolução das etapas e orientação dos desenvolvedores no processo de modelagem em Revit.

2) Evo2b

Cargo: Coordenador de Projetos
Período: Outubro de 2022 – Março de 2025
Principais atividades:

Coordenação do desenvolvimento de projetos em diversas plataformas (BIM, CAD, Sketch).

Gestão de prazos, equipes e integração entre disciplinas multidisciplinares.

Atendimento ao cliente, análise de qualidade e supervisão de equipe.

3) Evo2b

Cargo: Especialista de BIM
Período: Janeiro de 2021 – Outubro de 2022
Principais atividades:

Elaboração de projetos arquitetônicos e quantitativos em plataforma BIM (Revit).

Compatibilização de projetos e interação com equipes multidisciplinares.

Atendimento ao cliente e orientação técnica à equipe interna.','Sou arquiteto e urbanista, formado pela UniRitter em 2020. Também possuo cursos de curta duração em gestão de pessoas e gestão de projetos, realizados na PUCRS',NULL,'Arquitetura',NULL,'https://drive.google.com/open?id=1CcELbUM_pLmWpF8DRey3Uo7kybXNoZnU','Agência de Empregos','Não','8.500,00','Não',NULL,'Coordenador de Projetos',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-09T20:45:00.000Z'::timestamptz),
  ('Gustavo Bisso Teixeira','gustavobisso31@outlook.com',NULL,'51999032506','1982-06-22',43,'União estável','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=17qhZwom03E61aSS6KKIwfhicGgxgv1t6','RH','Pós-graduação Completa','Uniasselvi','2025-12-17','Sou formado','Desde de 2015, trabalho na prefeitura de Santo Antônio da Patrulha, já trabalhei no setor de patrimônio e almoxarifado, a partir de 2021, na recepção do posto de saúde, exercendo diversas atividades, como agendamentos, protocolos, entre outros.','Gestão de RH, pós graduação em gestão de unidade básica de saúde, e pós graduação em saúde pública.',NULL,'Administrativa',NULL,NULL,'Agência de Empregos','Não','3.000,00','Não','Marilize (51) 9915-6706 atual chefe.','Auxiliar administrativo','Procuro espaço no mercado de trabalho em busca de novas oportunidades de crescimento.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-17T17:29:00.000Z'::timestamptz),
  ('Ana Julia Rodrigues Braga','ana.braga@educasap.com.br',NULL,'51997469680','2009-02-02',17,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1K4vZLemcka79jfQ581xRas6eKA9iOKQa',NULL,'Ensino Médio Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','MAGNA COSMA INTERNACIONAL
Jovem aprendiz 
Novembro/2023 -Outubro/2025

Funções:
•Organização e arquivamento de documentos
•Apoio em rotinas administrativas 
•Suporte as demandas do setor',NULL,NULL,'Administrativa, Estágio, Financeiro, Marketing',NULL,NULL,'Agência de Empregos','não fui','Meu objetivo é ingressar como jovem aprendiz; não tenho uma expectativa salarial fixa e estou aberta ao valor oferecido.','Não','Transportadora Fleck Expresso- 
Fernando Fleck
51 99561-4429','Quero inscrever-me no banco de talentos da Young!','Tenho interesse em ingressar como jovem aprendiz na área administrativa/financeira. Sou organizada, responsável e atenta a detalhes. Possuo conhecimentos básicos em informática, especialmente Excel e Word, e facilidade para aprender rotinas administrativas e financeiras','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-17T18:22:00.000Z'::timestamptz),
  ('Kauanna correia batista','kauannacorreia045@gmail.com',NULL,'51989663139','2000-03-23',25,'Solteiro(a)','2','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1g-Ne4WyzleNY3A9HbtO64IIvC2aRbjzK','Não curso nem uma faculdade','Ensino Médio Completo','Não curso faculdade, ensino médio completo',NULL,'Não, no momento pausei/parei por um período.','Trabalhei em duas imobiliárias nas quais as funções era recepção de clientes,prospecção de clientes, atendimento antes da venda e pós a venda.',NULL,NULL,'Administrativa, Marketing',NULL,NULL,'Agência de Empregos','Nao','1800','Não','Cafra imobiliária','Quero inscrever-me no banco de talentos da Young!','Olá boa tarde, me chamo kauanna atualmente moro em santo Antonio da patrulha, sou proativa, tenho facilidade em aprender coisas novas, sempre gostei muito de atendimento ao público e vendas internas, gosto de vender e conquistar o cliente, atualmente a empresa que eu trabalhava se mudou pra uma nova cidade e eu procuro uma oportunidade para que eu possa junto com outros profissionais ajudar no crescimento da empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-17T18:27:00.000Z'::timestamptz),
  ('Marilaine de fraga','marifraga140588@gmail.com',NULL,'51985151101','1988-05-14',37,'Solteiro(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1I0Ff56bESHeXiMRUkMcYFFSPop2y6V60','Técnico em administração','Ensino Médio Completo','Polo sap','2025-11-19','Sou formado','.',NULL,NULL,'Administrativa',NULL,NULL,'Facebook','Nao','A combinar','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-17T18:39:00.000Z'::timestamptz),
  ('Angélica Ferreira Ramos','profissionalramos22@gmail.com',NULL,'51995824517','2005-04-22',20,'Casado(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1oOh_LZ9gwAhcsz0AEamXjoyV8KYfe_Cg','Cursando administração','Ensino Médio Completo','Uniasselvi',NULL,'Não, no momento pausei/parei por um período.','Empresa Rac Saneamento 
Período de 2020 a 2023
Cargo de auxiliar administrativo 
Fazia todas as demandas administrativas da empresa, e RH, atuava sozinha no escritório então fazia toda a parte administrativa, compras, contratações, controles de gastos, pagamentos entre outras demandas administrativas da empresa.

Caixa econômica federal 
Apenas três meses tirando férias de outros funcionários 
Atendimento ao público 
Atendimento telefônico','Estou estudando administração no primeiro semestre',NULL,'Administrativa',NULL,NULL,'Facebook','Não','Estou aberta a ouvir a proposta da empresa e alinhar uma remuneração justa para ambos','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou a Angélica, tenho experiência em administração e já atuei como auxiliar administrativo e atendimento ao público. Gosto de trabalhar com metas e organização, e acredito que posso contribuir com os desafios da vaga trazendo comprometimento, foco em resultados e boa comunicação.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-17T19:01:00.000Z'::timestamptz),
  ('Maise Kailany dos Santos Kenes','kenesmaise@gmail.com',NULL,'51992621991','2005-02-16',21,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Epn4YgGAD3DzzQv3Px0sywdiYulkIN2E','Relações Públicas','Ensino Superior Incompleto','Universidade do Vale do Rio dos Sinos - UNISINOS','2028-12-17','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','ASSISTENTE PESSOAL | GRUPO KATIA DECORAÇÕES E LOCAÇÕES | MAI/2023 – NOV/2025
- Organização de rotinas administrativas e apoio direto às demandas pessoais e profissionais.
- Planejamento e gestão de compromissos, agendas, viagens e reuniões.
- Controle de documentos, relatórios e informações confidenciais com sigilo e precisão.
- Comunicação com clientes, parceiros e fornecedores, garantindo alinhamento e eficiência.
- Atendimento e suporte personalizado, solucionando demandas e antecipando necessidades.

CONSULTORA DE VENDAS | MK PRODUÇÃO DE EVENTOS | ABR/2022 – FEV/2023
- Atendimento consultivo a clientes, auxiliando na definição de pacotes e soluções para eventos.
- Organização de demandas comerciais, orçamentos e acompanhamento de pedidos.
- Suporte à produção e logística de eventos, garantindo pontualidade e qualidade na entrega.
- Negociação com fornecedores e parceiros estratégicos.
- Acompanhamento do cliente no pré e pós-evento, garantindo experiência satisfatória.

ESTÁGIO CURRICULAR | EMATER-ASCAR/RS | FEV/2023 – MAI/2023
- Prestação de suporte técnico e extensão rural para agricultores familiares, pescadores, comunidades indígenas e quilombolas.
- Apoio em projetos de sustentabilidade e inovação, com foco no desenvolvimento socioeconômico das comunidades.
- Orientação sobre práticas de cultivo sustentável, produtividade e gestão rural.
- Organização de reuniões e atividades de campo, fortalecendo a comunicação entre técnicos e comunidades.
- Elaboração de relatórios e registros das ações realizadas para acompanhamento institucional.','Graduanda em Relações Públicas com experiência em comunicação, organização, atendimento e suporte administrativo. Atuei em
diferentes contextos – incluindo eventos, empresas e extensão comunitária – desenvolvendo competências em secretariado, organização
em diversas áreas, gestão de ferramentas de comunicação, filtragem de informações e relacionamento com clientes.
Tenho as seguintes certificações: 
Espanhol Avançado | Inglês Intermediário
E-commerce com Gestão Comercial – IE University
Transformação Digital – MIT (Massachusetts Institute of Technology)
Business for All – Harvard Business School Publishing
Comunicação Estratégica e Trabalho em Equipe – IE University
Rotinas Administrativas - Unialcance Escola de Educação Profissional
Comunicación Efectiva - Santander Open Academy
Secretária Executivo - Unialcance Escola de Educação Profissional',NULL,'Administrativa, Comercial, Financeiro, Marketing',NULL,NULL,'Agência de Empregos','Não fui indicado','1.800','Não',NULL,'Assistente administrativo',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-17T19:31:00.000Z'::timestamptz),
  ('Cecilia Muniz dos Passos','ceciliamuniz9763@gmail.com',NULL,'51995155594','2007-05-21',18,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1C0_3GWuwPqldJexUWdT7RyKYfifsyu58','Técnico em enfermagem','Ensino Médio Completo','Qi faculdade e escola técnica','2028-03-17','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Defensoria publica
cargo ocupado estagiário
 principais atividades:elaboração de petições, atendimento ao público 

Reni Pires advogados
Cargo secretaria 
Principais atividades elaboração de petições e atendimento ao público','Curso técnico de enfermagem',NULL,'Administrativa',NULL,NULL,'Instagram','Não','2.500,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-17T19:38:00.000Z'::timestamptz),
  ('Elisiane Maria de Souza Correa de Nunes','elisianesouzacorrea@gmail.com',NULL,'51992965649','1974-07-15',51,'Casado(a)','2','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=17DuGcypAUIclq0c7ecUuqHJ5fj1LnWvf','Administração de empresas','Ensino Superior Incompleto','FAEL','2025-12-17','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Aldeias Infantis SOS Brasil/auxiliar administrativo 01/09/2024 a 31/12/2025','Cursei pedagogia até o sexto período, sou formada como bombeiro civil, atualmente curso administração, estou no quarto período.',NULL,'Administrativa',NULL,NULL,'Instagram','Não','A combinar','Sim','99382358 Márcia Figueira, coordenadora das aldeias Infantis','Quero inscrever-me no banco de talentos da Young!','Gosto de gente! Trabalhar com pessoas me motiva. Gosto de ler, de me envolver em projetos com a comunidade, de aprender, lido bem com o novo, gosto de desafios, tenho experiência com pacote Office especialmente Word e Excel, adoro cozinhar, e tenho projetos com adolescentes uma de minhas paixões. Gosto de dividir experiências, fazer amizades. Sou honesta e comprometida, procuro fazer até o fim o que me proponho e não me importo com críticas, sei separar o pessoal do profissional, respeito hierarquia e quando afrontada mantenho a calma e procuro resolver conversando.acho que sou uma boa colega pois procuro sempre ajuda-los quando minhas demandas já estão feitas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-17T19:41:00.000Z'::timestamptz),
  ('Miguel Alexsander Fagundes Alves','pk.fagundes10@gmail.com',NULL,'51989123009','2008-01-29',18,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1a3y7IemC8JHqiKtb-tT-7CBkcy9B1lxt',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Fiz Menor Aprendiz durante 1 ano na agência dos correios com o cargo de Assistente Administrativo. Durante esse período era responsável por arquivar documentações, separar relatórios e demais funções pertinentes ao setor.',NULL,NULL,'Estágio',NULL,NULL,'Agência de Empregos','Não','A partir de R$900,00','Não',NULL,'Assistente Administrativo',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-17T19:43:00.000Z'::timestamptz),
  ('Érika Oliveira da Silva','erika.osilva2507@gmail.com',NULL,'5551980206573','2008-07-25',17,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1lF7j2QHnbWEJNH_wyPOtFlBq-NPp-rqI','Nenhuma ainda, estou no 2° ano do ensino médio.','Ensino Médio Incompleto','E.E.E.M Prof. Cândido de Barros',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Dacolônia Alimentos Naturais- Entrei atuando como embaladora, mas como tive interesse em outras áreas me permitiram aprender, ainda mais que eu era jovem aprendiz. Trabalhei 3 meses no RH e 1 ano na produção.
Santo Antônio Alimentos- Entrei atuando também na embalagem, mas não mais como jovem aprendiz, e passeio por outros setores interessantes. Já tinha 16 anos então consegui pegar um serviço com horários normais. Trabalhei por 6 meses.','Estou no 2° ano do ensino médio, ano que vem pretendo terminar a escola. Tenho curso de informática por enquanto, mas pretendo ter muito mais.',NULL,'Administrativa, Estágio, Financeiro, Marketing',NULL,NULL,'Agência de Empregos','Não','2.000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Eu sou nova, tenho 17 anos então estou sempre a procura de novas experiências. Nesse meio tempo, quis aprimorar um dos meus interesses que é manicure e pedicure, é uma coisa que gosto muito de fazer, mas não sei se é para mim. Tenho facilidade em trabalhar em grupo e principalmente sozinha, mas sempre bom ter um companheiro. Pretendo fazer muitos cursos pela frente para aprimorar mais meu conhecimento.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-17T19:49:00.000Z'::timestamptz),
  ('Amanda Joshua Silva da Rosa','nandajoshua@gmail.com',NULL,'51999244286','2006-07-01',19,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=18ctSWussnU20gQtpqUWn-yZXQE-Flt-Q',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Prefeitura Municipal – Estágio em Recursos Humanos / Administração
Período: 2023 -2024

Atuei como estagiária nas áreas de Recursos Humanos, Administração e Financeiro, com foco no suporte aos processos internos e atendimento ao público. Minhas principais atividades incluíam o atendimento direto a servidores e candidatos, organização e conferência de documentações de novos contratados, controle e arquivamento de documentos internos dos setores, conferência de notas fiscais, apoio em requisições de materiais necessários para o funcionamento do setor, elaboração e atualização de planilhas de controle, organização de arquivos e auxílio na construção de relatórios administrativos. Também realizava entrega e protocolo de documentos, garantindo que os processos seguissem corretamente os fluxos internos.

Essa experiência me proporcionou uma visão prática sobre rotinas administrativas, responsabilidade com informações sensíveis e a importância de organização, comunicação clara e atenção aos detalhes.

Vero Internet – Suporte Técnico / SAC
Período:  2025 - Atualmente 

Atualmente atuo na área de Suporte e SAC, realizando atendimento direto aos clientes, sanando dúvidas, identificando problemas e buscando soluções de forma clara, ágil e eficiente. Meu trabalho envolve escuta ativa, análise de situações técnicas e administrativas, orientação ao cliente e acompanhamento das demandas até a resolução, sempre prezando pela qualidade do atendimento e pela experiência do cliente.

Essa função exige equilíbrio emocional, boa comunicação, responsabilidade e capacidade de resolver problemas, além de adaptação a diferentes perfis de clientes e situações.',NULL,NULL,'Administrativa, Financeiro, Novos Negócios',NULL,NULL,'Agência de Empregos','Não','Pelas minhas pesquisas e pelo que entendo das atribuições do cargo, acredito que uma faixa em torno de R$ 2.413 seja compatível. De qualquer forma, fico aberta a dialogar e avaliar a proposta.','Sim','Secretária Municipal de Administração e Finanças: Cléia Juçara Airoldi (51) 999441070','Assistente Financeiro','Além das minhas experiências profissionais, já tive bastante contato com rotinas administrativas e organização de processos. Trabalhei com documentos, controles, atendimento ao público e sistemas internos, o que me fez entender na prática a importância de organização, responsabilidade e atenção aos detalhes.

Tenho conhecimento no Pacote Office, principalmente Excel para planilhas e controles, além de Word e e-mail corporativo. Tenho facilidade em aprender novas ferramentas e me adaptar aos processos da empresa.

Me considero uma pessoa comprometida, organizada e com boa comunicação, sempre buscando contribuir de forma responsável para que as atividades do setor fluam bem no dia a dia.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-17T20:19:00.000Z'::timestamptz),
  ('Juliana Santos de Fraga','jujuguardavelha@gmail.com',NULL,'51996533746','1987-03-04',38,'Solteiro(a)','2','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1jWLI7TWJYH6v9PHPnvL7Er0VYiv6KK0W',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','1- Clínica dentária Santo Antônio da Patrulha 
2- recepção+ administrativo 
3- janeiro de 2018 a fevereiro de 2020','Curso técnico em contabilidade (IFSUL) CONCLUIDO',NULL,'Administrativa, Financeiro',NULL,NULL,'Instagram','Nao','2.800,00','Não','Sorrifacil Santo Antônio da Patrulha - Dra Catiane','Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa responsável, organizada e comprometida com tudo o que faço. Tenho facilidade em aprender, bom relacionamento interpessoal e gosto de trabalhar com atendimento ao público e rotinas administrativas.
Tenho experiência com organização, atendimento telefônico e suporte ao cliente, além de conhecimentos na área administrativa/contábil.
Sou mãe, amo minhas filhas e elas são minha maior motivação — tudo o que faço é pensando em construir um futuro melhor para elas. Isso reflete diretamente no meu comprometimento, dedicação e responsabilidade no trabalho.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-17T20:21:00.000Z'::timestamptz),
  ('Maria Julia Soares dos Santos','Soaresmaju2105@gmail.com',NULL,'51996390245','2000-03-26',25,'Solteiro(a)','1','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1NQ57eQB1NRsCB9QCAVWmfhNqNJDTcUii','Técnico auxiliar administrativo','Ensino Superior Completo','Encceja','2020-08-11','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Ultimo serviço foi de secretária fiquei durante 6 meses','Estou cursando técnico auxiliar administrativo',NULL,'Administrativa, Financeiro',NULL,NULL,'Instagram','Nao','1.800','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou muito pró-ativa, tenho facilidade em aprender em área novas e muita disposição para crescimento profissional e pessoal','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-17T20:23:00.000Z'::timestamptz),
  ('Gisele dos Santos Amaral','amaralgisele178@gmail.com',NULL,'51991295531','1986-03-11',39,'Casado(a)','3','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=12fClaxHaOalJE677jrcY3RXKZ5jm8Kld',NULL,'Ensino Médio Completo',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Farmácias São João/ encarregada de loja/ admissão 09/04/2024',NULL,NULL,'Administrativa, Financeiro',NULL,NULL,'Agência de Empregos','Nao','2500','Sim',NULL,'Financeiro/administrativo',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-17T20:47:00.000Z'::timestamptz),
  ('Dienifer Farias Santos','dieniferfariass@gmail.com',NULL,'51980251623','1994-12-26',31,'União estável','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=16xDkOFSc2Kcg_2tnV0Yjhy8uknM2igPO','Administração de empresas','Ensino Superior Completo','FACCAT','2018-12-17','Sou formado','Atuo desde 2019 na Lojas Americanas S.A. como Gerente de Loja, com sólida experiência em rotinas administrativas e financeiras. Sou responsável por controle de caixa, conferência de valores, acompanhamento de indicadores, organização de documentos, lançamentos, apoio em fechamento mensal, controle de estoque e cumprimento de processos internos.

Tenho vivência com análise de resultados, relatórios, planejamento, organização de informações e suporte à tomada de decisão, além de atenção a prazos, normas e procedimentos. Perfil analítico, organizado e responsável, com facilidade para lidar com números, sistemas e rotinas administrativas.','Administração',NULL,'Administrativa, Financeiro',NULL,NULL,'Agência de Empregos','Nao','A combinar','Sim',NULL,'Assistente Financeiro ou Administrativo','Sou formada em Administração, com pós-graduação em Marketing Digital, e possuo sólida experiência em rotinas administrativas, organização de processos e controle de informações. Tenho facilidade com números, sistemas, relatórios e acompanhamento de indicadores, além de perfil organizado, responsável e analítico.
Sou comprometida com prazos, normas e qualidade na execução das atividades, tenho boa comunicação, senso de responsabilidade e facilidade para aprender novos processos. Busco uma oportunidade na área administrativa/financeira onde eu possa contribuir com organização, atenção aos detalhes e apoio à tomada de decisão.No meu tempo livre gosto de estar com minha família , meus cachorros , amo praticar musculação , muy thay .','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-17T20:50:00.000Z'::timestamptz),
  ('Jéssica Gosch de Vargas','Jessicagdevargas97@gmail.com',NULL,'51997846434','1997-07-11',28,'Solteiro(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1LLFyaboT_mfahoA5fBpN0zzROcplMz9o',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Boa tarde! Meu nome é Jéssica, tenho 28 anos e sou mãe de um menino de 4 anos. Tenho experiência sólida com atendimento ao público, tendo trabalhado por 3 anos em uma transportadora no setor de pendências, onde desenvolvi habilidades em sistemas internos, atendimento por e-mail, telefone e WhatsApp, cobrança e resolução de demandas. Antes disso, atuei por 3 anos no Supermercado Nacional, também diretamente com o público, fortalecendo minha comunicação, agilidade e capacidade de lidar com diferentes situações do dia a dia. Sou uma profissional proativa, com facilidade de aprendizado, boa relação com colegas e foco em resultados. Caso seja selecionada, espero agregar ao time e contribuir para o crescimento conjunto da equipe e da empresa.',NULL,NULL,'Administrativa, Comercial, Financeiro, Licenciamentos',NULL,NULL,'Agência de Empregos','Nao','2.200,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-17T22:23:00.000Z'::timestamptz),
  ('Andréia Dos Santos Pacheco','andreiap062008@gmail.com',NULL,'51','2008-01-06',18,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1yp0zUa65NvoynVmJqS_DVlRubJyKdy8y',NULL,'Ensino Médio Completo','Uninter',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Secretaria de Obras, Trânsito e Segurança de 
Santo Antônio da Patrulha, 
Trabalhei como estagiária na parte administrativa da secretaria. 
No período de 27/01/2025 á 17/12/2025.
Fazia atividades como: Anexar documentos, realizar ofícios, atender ao público, entre outros documentos.','Conclui o curso de Auxiliar Administrativo no Polo Universitario de Santo Antônio da Patrulha, durante 1 ano.',NULL,'Administrativa, Estágio',NULL,NULL,'Indicação','Não','R$ 2.500 á R$ 3000.','Não','Secretaria de Obras, Trânsito e Segurança de Santo Antônio da Patrulha.','Quero inscrever-me no banco de talentos da Young!','Sou uma profissional organizada, excelente capacidade de comunicação, proativa, ótima em agilidade de aprendizagem, responsável e pontual com tarefas recebidas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-18T01:14:00.000Z'::timestamptz),
  ('Tainara Kray da Rosa','tainarakray@hotmail.com',NULL,'51980589928','1995-07-17',30,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1uRcFgs6gdLL6kOeyF6X-7MVgEwsqG_lk','Cursando Processos Gerenciais','Ensino Superior Incompleto','Anhanguera','2027-12-17','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Agente Administrativo – Prefeitura Municipal de Riozinho/RS (Jan/2023 – Jul/2024)
• Atendimento ao público e suporte administrativo
• Controle de ponto e relatórios mensais
• Gestão de patrimônio e atualização em sistema interno
• Liberação de consultas e exames via empresa conveniada
• Alimentação de dados e controle de processos administrativos

Recepcionista – Prefeitura Municipal de Riozinho/RS
(Jan/2021 – Jan/2023)
• Atendimento ao público e triagem de demandas
• Apoio administrativo e organização de documentos
• Suporte às rotinas de secretaria e registro de informações

Técnica de Enfermagem / Auxiliar de Saúde Bucal – Prefeitura Municipal de Riozinho/RS
(Jul/2024 – Dez/2024)
• Controle e esterilização de materiais odontológicos
• Verificação de sinais vitais e administração de medicamentos IM
• Apoio a procedimentos e remoção de pacientes
• Gestão de materiais e registros de utilização','Minha área de estudo é voltada à gestão e à área administrativa. Sou Técnica em Secretariado, com formação pelo Senac Taquara/RS, e possuo curso de Assistente Administrativo, que me deram uma base sólida em rotinas administrativas, organização e atendimento ao público.

Buscando atualização constante, concluí o curso de Comunicação e Atendimento ao Cliente pelo IFRS e tenho formação em Informática, o que contribui para uma atuação mais organizada e eficiente no dia a dia.
Atualmente, estou cursando Gestão de Processos Gerenciais, ampliando minha visão sobre gestão, processos e funcionamento das organizações.',NULL,'Administrativa',NULL,NULL,'Agência de Empregos','Não','Estou aberta a propostas compatíveis com o mercado e com minhas qualificações.','Não','Ramão Corso - (51) 9611-6096
Karla Nunes - (51) 8492-7370

Ambos,  ex-gestores que acompanharam meu desempenho profissional.','Assistente Administrativo','Sou uma pessoa organizada, responsável e muito comprometida com o que faço. Tenho facilidade com rotina administrativa, organização de processos e atendimento ao público, sempre buscando resolver as demandas com atenção e cuidado.
Aprendo rápido, me adapto bem a novas funções e gosto de entender o todo para contribuir da melhor forma possível.
Tenho conhecimento em Word, Excel, PowerPoint e e-mail.
Sou muito ligada à família, valorizo ambientes de trabalho respeitosos e acredito em crescer junto com a empresa, com dedicação, responsabilidade e vontade de evoluir.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-18T01:27:00.000Z'::timestamptz),
  ('Camila Espíndola Messaggio','camilaespindola767@gmail.com',NULL,'51980163375','1993-03-05',32,'Casado(a)','2','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1q8RgDVX53bGxCKLJvYHwZ6U3PW4V98eA','Administração de empresas','Ensino Superior Incompleto','Uniasselvi','2027-01-29','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Atuo no momento no setor de vendas do comércio, loja Natural Light, vendedora a 3anos','Curso de vendas, curso de informática básica, curso de rotinas diárias de empresa.',NULL,'Administrativa, Estágio, Financeiro, Novos Negócios',NULL,NULL,'Agência de Empregos','Não','A combinar','Sim',NULL,'Administrativo','Bom sou uma pessoa calma, atenciosa e dedicada procuro sempre novos desafios e conhecimentos, quero me dar a oportunidade de viver novas experiências.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-18T03:45:00.000Z'::timestamptz),
  ('Ana paula da luz soares','anapaulasoares186@gmail.com',NULL,'989201006','2002-05-03',23,'Casado(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=13I5Soy8zFjhrbb7MyHJnR8xb9yfEs_m9',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Trabalhei durante um curto período na SAP ASSESSORIA no setor de contabilidade, aprendi lançamentos contábeis, conciliações entre outros.',NULL,NULL,'Financeiro',NULL,NULL,'Agência de Empregos','Não','1.900,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Então, não tenho muita experiência, mas estou disposta a fazer tudo que tiver ao meu alcance, e tenho vontade de aprender, darei 100% da minha disposição e dedicação, só preciso de uma oportunidade! obrigada.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-18T10:32:00.000Z'::timestamptz),
  ('Jéssica Mariá Mançoni de Souza','jessicamanconi40@gmail.com',NULL,'51992491813','1995-05-03',30,'Solteiro(a)','3','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=17xv1ae9eUPiHEGUl7DUkYBLWJbZHJu6-','Administração de empresas','Ensino Superior Incompleto','Estácio',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Redemac - vendedora - Abril de 2017 até novembro de 2019;
Eficazz engenharia - Aux. de compras -dezembro de 2019 até janeiro de 2025.
Exercia no escritório todas funções do setor administrativo.','Técnico em transações imobiliárias',NULL,'Administrativa, Comercial',NULL,NULL,'Indicação','Não','R$4.000,00','Sim','Maira - empresa redemac 51 9879-2424
João - empresa eficazz engenharia 41 8808-7949','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-18T12:32:00.000Z'::timestamptz),
  ('Ana Clara Magni de Souza','anaclaramagni88@gmail.com',NULL,'51995677862','2007-09-16',18,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1al91nvc6PhWR4-o4RPW6fv5davPAeqIP',NULL,'Ensino Médio Completo','E. E. E. M. Patrulhense','2025-12-18','Não, no momento pausei/parei por um período.','Vero internet, como jovem aprendiz no ramo administrativo, fiquei por dois anos, registro de imóveis permaneci por dois meses por situações pessoais, me encontro no tabelionato de notas a três meses, mas busco outra experiência profissional no momento','Cursos de informática e administração',NULL,'Administrativa, Financeiro',NULL,NULL,'Instagram','Não','2.100','Sim',NULL,'Assistente financeiro','Sou uma pessoa que gosta da pontualidade, me esforço até alcançar meus objetivos, se começo uma coisa só paro após concluir tudo nos conformes.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-18T13:28:00.000Z'::timestamptz),
  ('Rafaela Flores da Silva','rafaflores2016@outlook.com',NULL,'51995796016','1999-02-25',26,'Solteiro(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=15_CGb45U8IdTZMQQNExC-rr0doWSdm4t',NULL,'Ensino Médio Completo','Neeja','2019-11-18','Não, no momento pausei/parei por um período.','1- transportadora expresso via mar, auxiliar de escritório 
2- academia w11 Sports como gerente',NULL,NULL,'Administrativa, Financeiro',NULL,NULL,'Agência de Empregos','Não','R$2.000,00','Não','Academia W11 sports','Administração',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-18T14:35:00.000Z'::timestamptz),
  ('Diulia Jerônimo Souza','diuliasouza98@gmail.com',NULL,'51995382980','2003-06-27',22,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=14vJiDA0e8iSTih-G_CJKLQkngXEH_K5Z','Processos Gerenciais','Ensino Superior Incompleto','Estácio','2025-12-18','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Trabalho atualmente no Escritório Contábil Estecopal Tenho 11 meses de experiência na área de Recursos Humanos, atuando na conferência e apuração de cartões de ponto, organização e controle de documentos, lançamento de pagamentos em sistema e apoio na elaboração do Imposto de Renda de Pessoa Física.',NULL,NULL,'Administrativa, Financeiro',NULL,NULL,'Agência de Empregos','Não','2.600,00','Não',NULL,'Assistente de RH',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-18T15:49:00.000Z'::timestamptz),
  ('David Otto Goncalves','davidottop1@gmail.com',NULL,'51991065119','2000-02-05',26,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1vej6q9D4t2wy7DT1cK2sHfI6Aq7Lva93','Ciências Contábeis','Ensino Superior Completo','Uniasselvi','2024-12-16','Sou formado','1) caixa econômica federal. 
2) estagiário 
3) fevereiro de 2019 até junho de 2020
4) abertura de conta, atendimento ao público. Conferência de documentos 

1) Magna Cosma internacional 
2) estagiário de controladoria 
3) Março de 2021 até outubro de 2022
4) pagamento de contas, baixa de títulos a receber, conciliação bancária, relatórios em Excel, emissão de boletos, encontro de contas 

1)Magna Cosma internacional 
2) assistente fiscal 
3) outubro de 2022 até fevereiro de 2024.
4) emissão de notas fiscais de entrada e saída, notas fiscais de serviço, conciliação fiscal, notas de importação e exportação.

1) prefeitura de Tramandaí 
2) tesoureiro bancário 
3 ) emprego atual
4) conciliação bancária',NULL,NULL,'Financeiro',NULL,NULL,'Instagram','Nao','3200','Sim',NULL,'Assistente financeiro','Conhecimento em Excel','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-18T19:31:00.000Z'::timestamptz),
  ('Adriana Silva','adriannemarysilva0207@gmail.com',NULL,'51995612940','2005-08-10',20,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=105nKlYNT9RefISxqdKshLaxNRVvsqpVV','Enfermagem','Ensino Superior Incompleto','Faccat- Instituições Integradas de Taquara','2030-03-18','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Trabalhei nas empresas : Guimarães, Dacolonia e Picadilly. Em todas estive envolvida na área de produção nunca tendo grandes oportunidades de crescimento ao qual eu procuro. Dacolonia entrei em fevereiro de 2024 e saí em julho do mesmo ano. Picadilly entrei em agosto de 2024 e saí em junho de 2025. Na Guimarães entrei em julho e ainda trabalho na empresa.',NULL,NULL,'Administrativa, Comercial, Marketing, Novos Negócios',NULL,NULL,'Agência de Empregos','Não, fui. E não conheço ninguém da YOUNG','2','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou curiosa e gosto de seguir regras (quando condiz com o respeito e para manter as coisas devidamente nos seus lugares). Já aprendi crochet sozinha e fiz um casado inteiro sozinha. Já aprendi chinês e coreano apenas por curiosidade e porque acho que chinês também devia ser uma língua global como o inglês. Quero trabalhar na área da saúde mas também quero fazer tudo o que puder fazer enquanto sou saudável e jovem.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-18T19:45:00.000Z'::timestamptz),
  ('Melissa de Freitas Pereira','melissafreitasp@gmail.com',NULL,'51995080803','2003-08-10',22,'União estável','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=17dB5Ur9srwdNuisrc9xb3_msS0bkiJE8','Arquitetura','Ensino Médio Completo','PUCRS','2027-11-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1.A TL Arquitetura e Prevenção - 2.A Estagiária 3.A set/2023-mai/2024 4.A Auxílio na elaboração de projetos de PPCI, graficação de edificios as built, aprovação de projetos de PPCI. / 1.B Sartori Arquitetos 2.B Estagiária 3.B set/2024-dez/2025 4.B Auxílio no desenvolvimento de projetos arquitônicos em AutoCAD e SketchUp e apoio em atividades administrativas, aprovação de projetos e desenvolvimento de materiais de apresentação de projetos para clientes;','Atualmente curso Arquitetura na PUCRS; Também tenho curso de Elaboração de PPCI pelo SENGE-RS!',NULL,'Arquitetura, Estágio',NULL,NULL,'Agência de Empregos','Não','800-1200','Não','X    
                                                                                                                                                                                   Meu portfólio: (tem mais de 10MB, por isso lhes envio o link nesse campo) https://www.canva.com/design/DAG5RolVI9Q/I4yfK4NPIRF0K1K6k5s6eQ/edit?utm_content=DAG5RolVI9Q&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton','Estágio Engenharia e/ou Arquitetura','Só gostaria de adicionar que busco novas experiências e amo aprender e estar em novos ambientes. Estou saindo de um estágio no momento e já anseio por novos lugares que possam fazer parte da minha formação e jornada profissional :)','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-18T21:03:00.000Z'::timestamptz),
  ('Paula Jacques Barreto','paulajbarreto@msn.com',NULL,'51992960076','1991-02-12',35,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1-J8p7e-rLIjuDcdjYJJ_fm9Site7ItVK','Marketing','Pós-graduação Completa','PUCRS e UNISINOS',NULL,'Sou formado','https://www.linkedin.com/in/paulajbarreto/',NULL,NULL,'Marketing',NULL,NULL,'LinkedIn','Carla Tressoldi','10.000','Sim',NULL,'Marketing',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-19T15:53:00.000Z'::timestamptz),
  ('Aline de Cássia Gomes','alinegomes8185@gmail.com',NULL,'51998216541','1989-06-02',36,'Casado(a)','2','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1-ICo9H1Vf642U3NwdGv8gl4M_thmd0JU','Tec contabilidade e licenciatura matemática','Ensino Superior Incompleto','Ifsul faccat',NULL,'Não, no momento pausei/parei por um período.','Madeira porto Emerim, mecânica Gomes, tecnocar, sempre no ramo de auxiliar administrativo, recepcionista, emissão NF, contas a pagar e receber...','Capacitação profissional em rotinas administrativas, técnico em contabilidade, informática',NULL,'Administrativa, Financeiro',NULL,'https://drive.google.com/open?id=1_g0GTibKC26oBtucntGI-8DcQ0oDTiMI','Agência de Empregos','Nao','2.000,00','Não','Nairo 51 999806343
Porto Emerim 36622577
Tecnocar 36622165','Estágio Financeiro','Tenho as facilidade de aprendizagem, bom desempenho em trabalho em grupo, procuro uma empresa onde eu possa crescer juntamente com ela. Tenho interesse em vaga meio turno também, preferencialmente a tarde.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-20T22:08:00.000Z'::timestamptz),
  ('LUCIANE DE AZAMBUJA','luazamb@gmail.com',NULL,'51981287200','1974-03-25',51,'União estável','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1LFyR1XR_-ae8aVgt7R9TzwiHHljr4iBc','Arquitetura','Pós-graduação Completa','UNISINOS','2003-01-03','Sou formado','Atulamente sou diretora no SAERGS e trabalho na secretaria de obras do governo do RS, trabalhei na Secretaria de Cultura e na Secretaria de Obras da Prefeitura de Porto Alegre, trabalhei na prefeitura de Campo Largo/ PR com projetos de UBSs, também nas prefeituras de Sapiranga e Igrejinha nas secretarias de educação, fui coordenadora da subregional da secretaria de obras em Santo Antônio, trabalhei no FNDE Brasília com análise de projetos e obras, por três vezes fui contratada pela UNESCO, trabalhei no Iphan Alagoas, fui coordenadora do escritório do IPHAN em Congonhas/ MG, trabalhei como diretora de engenharia e arquitetura na Prefeitura de Santo Antônio. Fiz parte do conselho do patrimônio de Santo Antônio e Igrejinha.','Mestranda em Museologia e Patrimônio - UFRGS e cursando Sociologia, Especialista em Patrimônio Cultural - UFRGS, Espec. em Gestão Pública - IFSC, Espec. em Docência na Educação Incluiva IFMG. Experiência em compatibilização de projetos e atualização de orçamentos, gestão de pessoas e equipes, obras de grande porte, restauração, além de projetos arquitetônicos em várias áreas.',NULL,'Administrativa, Arquitetura, Engenharia',NULL,NULL,'LinkedIn','Fui chamada pela Carla Tressoldi','12.000,00','Sim','Precisando é só me pedir, posso passar contato de todos os lugares onde trabalhei.','Fui convidada via Linkedin para um cadastro que a Young estaria realizando dos arquitetos da região.','Tenho muita experiência na minha área principal de formação, além da gestão. Meu hoby é cozinhar, inclusive estava cursando uma pós em gastronomia cultural que, infelizmente, tive que trancar após passar no mestrado. Dei aula na turma de arquitetura e urbanismo da UFRGS nesse ano, como estagiária docente - mestranda.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-21T00:02:00.000Z'::timestamptz),
  ('Eduardo Weber dos Reis','eduardowreis@gmail.com',NULL,'51995005977','1999-12-12',26,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1-HxX1hm8YiBn56ETmxkqEGWCDNGPS5Vm','Engenharia Civil','Ensino Superior Completo','UFRGS','2024-10-11','Sou formado','SPM Engenharia 07/2021 - 12/2021 
Estágio na área de projetos de PPCI trabalhando com softwares Revit e AutoCAD

ELBRUS Engenharia - 01/2022 - 04/2023 Estágio na área projetos de PPCI trabalhando com softwares Revit e AutoCAD

Construtora Tenda 05/2023 - 05/2024
Estágio na área de obras, garantindo o padrão de qualidade da empresa através das fichas de verificações de serviços e auxiliando o engenheiro com cronogramas e planejamento de materiais. Passando pela equipe de Infraestrutura, acabamentos e entrega.

Construtora Tenda 05/2024 - 10/2024
Efetivado como Assistente de Operações na equipe de acabamentos. Garantindo o padrão de qualidade da empresa, coordenação dos estagiários e encarregados das metas de cerâmica, hidráulica, impermeabilização e esquadrias metálicas.

Construtora Tenda 10/2024 - 07/2025
Promoção para o cargo de Analista de Operações 1 na equipe de Infraestrutura. Auxiliando o engenheiro responsável na coordenacão de toda a equipe de infraestrutura nas obras Morada do Campo e Parque Ventura 3 para realização das fundações, pavimentação, vagas, rede de esgoto, rede pluvial, rede elétrica BT e MT, controle do descarte de resíduos conforme legislação ambiental e documentação para legalizacão da obra.

Construtora Tenda 07/2025 - Atual
Promoção para o cargo de Analista de Operações 2 na equipe de Estrutura. Auxiliando o engenheiro responsável na construção modular dos prédios e coordenação de toda a equipe, garantindo a efetividade da equipe para concretagem de 4 apartamentos/dia.','Tenho cursos na área de BIM com utilização do software Revit e Naviswork e curso intermediário de excel',NULL,'Licenciamentos, Engenharia',NULL,NULL,'Agência de Empregos','Não.','R$9.000,00','Sim','51 8407-7600 Tomaz Paniz Dono da Elbrus Engenharia
+55 51 9998-2085 Anielle Engenheira responsável pela equipe de acabamentos da Construtora Tenda','Quero inscrever-me no banco de talentos da Young!','Gosto de esportes ao ar livre, fui atleta de natacão durante minha adolescência, adoro um bom churrasco e sair com os amigos. Tenho curso de inglês e estou aprendendo japones','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-21T00:37:00.000Z'::timestamptz),
  ('Renan Teixeira Luiz','renantxrluiz@gmail.com',NULL,'51985517043','1992-10-28',33,'Casado(a)','2','Sim','Tramandaí/RS','https://drive.google.com/uc?export=view&id=1Q3T45O4cExv4TFrZChAAGPY35sFEvymi','Engenharia Civil','Ensino Superior Completo','Unisinos','2016-06-01','Sou formado','Atuei na Ulma Brasil como projetista de sistemas de formas e escoramentos entre 2011 e 2013. Entre 2013 e 2016 atuei como projetista de estruturas na Stumm Projetos. Desde 2016 atuo como gerente de projetos integrados da Prática Engenharia, desenvolvendo a compatibilização de projetos de arquitetura e engenharia para edificações e loteamentos/condomínios.','Possui formação em projetos BIM, cursos de instalações elétricas e hidrossanitárias, e capacitação em projetos estruturais.',NULL,'Engenharia',NULL,'https://drive.google.com/open?id=19fUz6b5L5gWL8Vp3pv77tfC39vYmMPSj','Agência de Empregos','Não','R$7.500','Não','Alana Cantú - Arquiteta - Melnick - 51 99282-4701','Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-21T19:16:00.000Z'::timestamptz),
  ('Bruno Sikora Soares','brunosikora@hotmail.com',NULL,'51996030804','1989-09-19',36,'União estável','2','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1MGfAHC9jdD9Ul7R3-81fWs7kkmACw8MG','Engenharia Civil','Pós-graduação Incompleta','PUCRS','2020-07-31','Sou formado','Experiência profissional
04/2025 – Atual – Engenheiro Civil Residente na LYX participações e empreendimentos. • atuando nas obras Avalon, Fontain vale e Concord. Porto Alegre, RS. Obras compostas por vinte e cinco torres, sendo 1000 apartamentos e 74.731,26 m² de área construída.
06/2022 – 12/2023 – Engenheiro Civil Residente na empresa Baliza construtora. • atuando na obra Residencial Ibiza, Novo Hamburgo, RS. Obra composta por três torres, sendo 243 apartamentos e 18.524,64 m² de área construída.
03/2021 – 06/2022 – Engenheiro Civil Residente na empresa Lotus Incorporadora. • Atuando na obra Mais Alto Petrópolis, Porto Alegre, RS. Obra composta por quatro torres, sendo 256 apartamentos e 16.711,00 m² de área construída.
08/2018 – Atual – SS Engenharia. Gestão de obras, reformas e construção. • Gestão de obras: Mais alto Petrópolis, Ibiza, Avalon, Fontain Vale e Concord. • Reformas comerciais: -Sala EGSYS: 70 m² sendo drywall, marcenaria, instalações elétricas, inst. Hidráulicas, pintura, A.C e esquadrias de alumínio. -Beach Play: 819m² sendo drywall, marcenaria, instalações elétricas, inst. Hidráulicas, pintura, piso de porcelanato, churrasqueira, A.C, esquadrias de alumínio, jardinagem, mezanino metálico 68m², 3 quadras poliesportivas, • Reformas residências: -Casa em condomínio: 120 m² sendo revisão da elétrica e hidráulico, retirada dos papeis de parede, pintura, marcenaria, funilaria, pedras, pergolado, contrapiso, porcelanato externo, esquadria de alumínio e vidros do pergolado. -Apartamento Assis Brasil: 90 m² sendo vistoria para entrega da unidade, porcelanato sala e quartos e marcenaria. 08/2015 – 07/2018 – Melnick Even - Assistente de Engenharia
• 12/03/2018-19/07/2018 – Gran Park Lindóia: Obra com seis torres com 708 unidades residenciais, 11 lojas e 179 salas comerciais. • 12/08/2015-11/03/2018 – ICON Assis Brasil: Obra de cinco torres com 448 unidades residenciais, 23 lojas e 112 salas comerciais. -Responsável pela execução da torre c de 16 andares sendo 2 de estacionamentos e 112 unidades com fundação de estaca metálica, estrutura de concreto moldado in loco (ciclo de 7 dias no pavimento tipo), piso zero, alvenaria externa de vedação com paginação das fiadas, reboco paredes, gesso corrido teto, cerâmica no piso e paredes das áreas úmidas, dry wall nas paredes internas, forro de gesso nas áreas úmidas, pias de cozinha e banheiro em pedra granito, esquadrias de pvc e portas de madeira. Sendo o responsável Currículum Vitae pelo planejamento da semana, solicitação de materiais, execução, conferência dos serviços, medição dos empreiteiros, a entrega das unidades para os clientes e das áreas comuns da torre para o condomínio. • 06/08/2014-11/08/2015 – Estagiário na obra ICON Auxiliar no processo de execução, levantamentos, conferências e sendo efetivado por assumir reponsabilidades e sendo proativo.','Liderança e gestão de pessoas',NULL,'Engenharia',NULL,NULL,'Agência de Empregos','NÃO','15000','Sim',NULL,'Engenheiro Civil','Colaborador procurando espaço como coordenador de obras.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-22T11:31:00.000Z'::timestamptz),
  ('Julia Caroline Alonso Simão','julia.caroline01@gmail.com',NULL,'51994402348','2002-09-25',23,'Solteiro(a)','1','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1CJfef0m6LeMiM5syiFLQ0fP4Xu3uAj57','Administração de empresas','Ensino Médio Completo','Secretaria da Educação do RS','2019-11-21','Não, no momento pausei/parei por um período.','Grupo Sequoia Logística e Transportes
Cargo: Auxiliar Administrativa / Auxiliar de Logística
Período: Julho/2022 a Junho/2025

Atuação direta em rotinas administrativas, com emissão e conferência de notas fiscais, organização e controle de documentos, atualização de informações em sistema, apoio ao controle de estoque e acompanhamento de processos internos. Experiência com sistemas de gestão, organização de arquivos físicos e digitais, cumprimento de prazos e suporte às demandas administrativas do setor.

Grupo Sequoia Logística e Transportes
Cargo: Jovem Aprendiz – Administrativo/Logístico
Período: Setembro/2020 a Julho/2022

Responsável por atividades administrativas como lançamento de informações no sistema, digitalização e organização de documentos, escaneamento de minutas, controle de arquivos e apoio à prestação de contas. Desenvolvimento de organização, atenção aos detalhes, responsabilidade e boa comunicação no ambiente administrativo.',NULL,NULL,'Administrativa',NULL,NULL,'Indicação','Não','2.480','Sim',NULL,'Administrativo','Sou uma pessoa organizada, responsável e com facilidade para aprender novos processos. Tenho experiência com rotinas administrativas, uso de sistemas, organização de documentos físicos e digitais e apoio a demandas internas. Me adapto bem a ambientes dinâmicos, gosto de trabalhar em equipe e prezo por comunicação clara e cumprimento de prazos. Possuo conhecimentos em Pacote Office (básico a intermediário) e sistemas de gestão logística. Estou em busca de uma oportunidade onde eu possa contribuir com organização, comprometimento e vontade de crescer junto com a empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-22T15:34:00.000Z'::timestamptz),
  ('Thiago Tamanchievicz Prates','thiagotamanchievicz@gmail.com',NULL,'51992971248','1996-10-19',29,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1j67Zl4LiVgj1DFe_FMqhmuCCnY5zIMkx','Engenharia Civil','Pós-graduação Incompleta','PUCRS','2025-01-10','Sou formado','1) Genesis reformas
2) Assistente de Engenheiro Civil
3) 10/05/2025 - 15/08/2025
4) Responsável pela reforma de 3 escolas municipais 

1) Multiplan Imobiliária - Golden lake
2) Auxiliar de Engenheiro Civil
3) 17/07/2024 - 05/05/2025
4) Medições de empreiteiros e acompanhamento de serviços

1) Ecoplan Engenharia
2) estagiário 
3) 03/03/2021 - 03/03/2024
4) Realização de pesquisa de matérias, projetos geotécnicos e de pavimentação 

1) Dinfra
2) estagiário 
3) 17/07/2017 - 17/07/2019
4) Fiscalização.','Curso pós graduação em de gestão,orçamento e planejamento em andamento',NULL,'Arquitetura, Financeiro, Engenharia',NULL,NULL,'Agência de Empregos','Carla Tressoldi - via linkedin','R$6.000,00','Sim',NULL,'Engenheiro Civil','Sou espontânea, criativo e atleta(pratico diversos esportes). Tenho conhecimento avançado em Excel e AutoCAD.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-22T15:53:00.000Z'::timestamptz),
  ('Lucas Leão Freire','lucaslfreire@hotmail.com',NULL,'51991939889','1991-03-24',34,'Casado(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=10PHXKUIYlLAFLb6_TYtF1ck3PvXih21v','Engenharia Civil','Pós-graduação Completa','UFRGS','2017-02-03','Sou formado','1) MRV Engenharia
2) Cargo atual: Consultor de Planejamento e Controle - início em 10/2017 como analista de controle e promoção para consultor de planejamento e controle em 2021.
3) 07/2021 - atual
4) Planejamento de longo, médio e curto prazo de obras (Las Planner System) através do MS Project e ferramentas e técnicas do Lean Construction. Acompanhamento do fluxo de caixa das obras através de reuniões semanais e mensais de custo.
Reports semanais e mensais de prazo e custo para diretoria, análise de indicadores, estimativas e projeções de custos e definições de planos de ação junto às equipes de obras para aderência às metas do empreendimento e da empresa.','Formado em Engenharia Civil pela UFRGS, com especialização em Gestão de Projetos pela UFRGS e experiência de 8 anos na área de planejamento e controle de obras em empresa de grande porte.',NULL,'Engenharia',NULL,NULL,'Agência de Empregos','Carla Tressoldi','12000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou engenheiro civil com experiência em planejamento e controle de obras na MRV Engenharia mas tambem tive uma passagem pelo Grupo Zaffari onde pude ajudar a implementar um departamento de planejamento e controle, criando métodos, ferramentas e rotinas de acompanhamento das obras. Na MRV, participei do treinamento de implementação do Lean Construction na empresa onde aplicamos diversas técnicas no nosso dia a dia (Last Planner System, PDCA, ritmo, etc.). Possuo domínio do MS Project e Excel e conhecimentos de Power BI. Sou formado em curso de Língua Inglesa (Cultural) e fiz intercâmbio na África do Sul por 2 meses onde pude aperfeiçoar os conhecimentos na língua estrangeira e realizar trabalho voluntário com crianças em dificuldade de aprendizado.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-22T19:48:00.000Z'::timestamptz),
  ('Gisele Fátima de Paula Bonfim','giemel.fbonfim@gmail.com',NULL,'51998400216','1981-10-31',44,'Casado(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1CyXr3BgyqPvdauLjb443rrfar0p0y3v5','Gestao Recursos Humanos','Pós-graduação Incompleta','Anhanguera','2007-12-07','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Gerenciamento completo do processo de admissão, incluindo a
análise de documentos, a realização de exames admissionais,
demissionais, trocas de funções, a assinatura de contratos e a alta
de novos colaboradores no sistema.
Desenvolvimento jovem aprendiz, contratos, admissões e
processos.
Cálculo , descontos e benefícios.
Controle de Ponto SECULLUM
Monitoramento do registro de ponto, controle de jornada de trabalho,
inclusão e exclusão de colaboradores.
Benefícios:
Gestão de benefícios, como vale-refeição, vale-transporte, plano de
saúde, entre outros.
Homologações sindicais.
Assistência direta a coordenação, gerência, diretores e lideres.
Como a todos os colaboradores da empresa.
Experiência
Guimarães Alimentos
Assistente administrativa de RH
janeiro de 2024 - Present (1 ano 10 meses)
Brasil
Recrutamento e Seleção:
Publicar anúncios de vagas, triar currículos, agendar entrevistas e manter
contato com candidatos. 
Treinamento e Desenvolvimento:
Auxiliar na organização e implementação de programas de treinamento e
desenvolvimento para os funcionários. 
Administração de Benefícios:
Auxiliar na gestão de benefícios como férias, licenças e outros benefícios
oferecidos aos colaboradores.
Manutenção de Registros:
Manter registros precisos e atualizados dos funcionários, incluindo
informações cadastrais e contratuais. 
Registros de Pontos Secullum
Resolução de Dúvidas e Problemas:
Atender às dúvidas e solicitações dos funcionários em relação a questões
trabalhistas e de RH. 
Apoio em Rotinas Administrativas:
Realizar tarefas administrativas como preparação de documentos, controle de
ponto e organização de arquivos. 
Comunicação:
Diretamente com a gerência, diretores e líderes. 
Homologação em sindicato 
Admissão e rescisão.
J&T Express Brasil
9 meses
Atendimento ao cliente
maio de 2023 - janeiro de 2024 (9 meses)
Santo Antônio da Patrulha, Rio Grande do Sul, Brasil
Prestar suporte às atividades cotidianas ou atípicas do seu setor, conforme
orientação e solicitação de 
seu superior imediato, contribuindo com o desenvolvimento e agilidade das
atividades; 
• Executar serviços inerentes ao atendimento, soluções e encaminhamento
das solicitações e 
reclamações efetuadas pelos consumidores e clientes da empresa; 
• Manter controles e follow-up dos contatos efetuados a fim de acompanhar as
devidas soluções até o 
final dos processos, auxiliando na continuidade e otimização dos serviços
prestados; 
• Manter-se atualizado quanto às tendências de sua área de atuação e às
novas ferramentas, recursos e 
tecnologias disponíveis no mercado, bem como normas vigentes do Código
de Defesa do Consumidor; 
• Apoiar a elaboração das minutas de relatórios mensais das atividades,
registrando as ocorrências 
relativas aos produtos da empresa, solicitações, reclamações e providências,
objetivando contribuir paraa tomada de decisões; 
• Manter o sistema de atendimento abastecido com todas as informações
necessárias, referentes a cada 
caso; 
• Realização de demais atividades correlatas e inerentes ao cargo, assim
como atividades atribuídas pelo
seu superior imediato.
Auxiliar de operações logísticas
maio de 2023 - janeiro de 2024 (9 meses)
Santo Antônio da Patrulha, Rio Grande do Sul, Brasil
LATAM Airlines
Analista de operações
janeiro de 2011 - dezembro de 2016 (6 anos)
São Paulo, Brasil
Administração - Administração Geral (Analista)
Analisar e responder os pedidos de pontuação dos Parceiros Multiplus e
Cartão Cobranded. - Analisar e responder as reclamações e dúvidas do
Catálogo e Site Multiplus. - Atendimento geral aos Parceiros Multiplus em
relação às regras de pontuação, operação do Sistema Web e informações
de processamento de arquivo.- Atendimento geral ao Call Center TAM em
relação as regras de pontuação dos Parceiros.- Analisar os pedidos de
estornos de pontuação solicitados pelos parceiros Multiplus.- Disponibilizaro sistema Web e Portal de Parceiros aos parceiros Multiplus – certificação
do computador, solicitação de usuário/senha e treinamento.- Resgate
manual de pacotes TAM Viagens- Cadastro e atualização dos parâmetros de
negociação nos sistemas: Fidelidade, Corporativo, Faturamento e Siebel.-
Acompanhamento diário dos processamentos dos alguns arquivos de
pontuação e cadastro: controle do recebimento, análise de rejeições e quando
necessário acionamento TI.- Participações em homologações referentes às
corretivas e melhorias no sistema Siebel e implantações de novos parceiros
de coalizão e/ou resgate no Catálogo Multiplus.
Baleeiro odontolgia
Representante comercial de vendas
julho de 2009 - outubro de 2010 (1 ano 4 meses)
São Paulo, Brasil
Comercial, Vendas - Representação Comercial (Consultor)
Realizar atendimento a clientes, negociar preço, prazo, condições de
pagamento e descontos da venda, orientar quanto às especificações dos
produtos e/ou serviços. Controlar os pedidos dos clientes, qualidade dos
produtos e prazo de entrega estabelecido. Auxiliar os clientes na escolha,
demonstra funcionamento, oferece degustação ou distribui amostras.
Grupo Contax
Representante de atendimento ao cliente
fevereiro de 2009 - julho de 2009 (6 meses)
São Paulo, Brasil
Telemarketing - Telemarketing / Call Center Receptivo (Operacional)
atendimento receptivo a clientes do banco ITAU.','Pós graduando MBA PNL, PSICOLOGIA ORGANIZACIONA E GESTAO DE PESSOAS. 
CERTIFICADO NR1, RELACOES TRIBUTÁRIAS E OUTROS',NULL,'Administrativa',NULL,NULL,'Agência de Empregos','Não','3.500,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Uau...esse formulário é atração pura! Parabéns,  pois prendeu minha atenção!!
Tenho exatamente esse perfil,  se tiver que fazer e ser...tem que ser agora,  com autenticidade, verdade e pronto.  Simples assim. Sem enrolação,  sem mi-mi-mi.  Somente entregar e fazer bem feito. Essa sou eu.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-22T23:47:00.000Z'::timestamptz),
  ('Luiz Carlos kifer maia pereira','engenheiroluizkifer@hotmail.com',NULL,'22997017096','1993-03-14',32,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1FVB5IaQXSF9VFk7RtN3r6nbG6V6cPUIX','Engenharia Civil','Pós-graduação Completa','candido mendes - campos rj','2018-12-01','Sou formado','Empresa: Âmbar Engenharia
Função: Engenheiro Residente
Período: 01/2025 aos dias atuais
Atividades:
•
Coordenação integral do projeto de revitalização da orla, assegurando aderência aos padrões de qualidade, segurança e diretrizes técnicas;
•
Supervisão da construção de estruturas de concreto ao longo de 2 km, garantindo conformidade com normas vigentes e especificações de engenharia;
•
Planejamento e implementação de soluções de drenagem eficientes, mitigando riscos de alagamento e preservando a funcionalidade urbana do local;
Empresa: Construtora Projeto Novo
Função: Engenheiro Residente
Período: 01/2023 a 12/2023
Atividades:
•
Supervisão da obra com gestão de empreiteiros, medições, controle orçamentário e cronogramas no MS Project;
•
Manutenção de diário de obra e registro sistemático das atividades;
•
Acompanhamento da execução com orientação técnica às equipes e conformidade às normas de segurança
Empresa: Fina Engenharia
Função: Engenheiro Civil
Período: 01/2018 a 12/2019
Atividades:
•
Planejamento e execução de obras, com conformidade às especificações do projeto e às diretrizes das NBRs;
•
Participação na elaboração e revisão de projetos, assegurando viabilidade técnica e atendimento às normas;
•
Supervisão de serviços terceirizados, medições, apropriações de materiais, levantamento de serviços extras e preparação de relatórios para aditivos contratuais;','sou engº civil com especialização em gestão de pessoas, pós graduado em segurança do trabalho, tenho cursos complementares na área, tais como: drenagem, gestão de pessoas, NR33,35, excell entre outros.',NULL,'Arquitetura, Novos Negócios, Engenharia',NULL,'https://drive.google.com/open?id=1Jt1f8-Gf2OdbqIsOmapPbtuKwCKYMzzW, https://drive.google.com/open?id=1MJF0rcLzef0TQXE-BhJAiXlJmAk-kHWE, https://drive.google.com/open?id=1eDt_iX3rbUwJsJnoVeENUYOiWaWQjkmO, https://drive.google.com/open?id=1xRdv_hB-oDkqYafgTOzXVDgwEE94FlIQ, https://drive.google.com/open?id=1gJe4HFQogslCHm-Q6Fztb_mM6kAxL3g5','Agência de Empregos','não.','13000','Sim','vinicio veiga-> 22 997171270','Engenheiro Civil','sou dedicado atualmente em gestão de pessoas e execução de obras de medio e grande porte. gosto de trabalhar com revit, ajudo moradores de rua com cestas básicas, gosto de malhar e correr... e amo tomar cafe da manha aos finais de semana olhando para o guaíba. sou cristão. uma coisa bem importante, não como cebola crua hahaha.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-24T15:00:00.000Z'::timestamptz),
  ('Enzo Bortoluzzi Barbosa','enzobbarbosa@hotmail.com',NULL,'51986076340','1998-10-05',27,'Solteiro(a)','0','Sim','Gravataí','https://drive.google.com/uc?export=view&id=1OgJjIrfj2vOe3S4jfZu1mz0DLX6BG3vR','Engenharia Civil','Pós-graduação Incompleta','PUC-RS','2023-01-07','Sou formado','Emab Incorporadora - Estagiário de engenharia.
Consul Engenharia - Engenheiro trainee.
Grupo Dienstmann - Engenheiro produção.','Pós graduação em Tecnologia da impermeabilização pelo IDD, Conceituação básica em Bim pela Plataforma BIM Brasil, General english pela Sela em Sydney/Australia.',NULL,'Engenharia',NULL,'https://drive.google.com/open?id=1pc_EY4C9-J4er3YuLxyKH1Ta8ZnHX5vh','Agência de Empregos','Não','R$12.000','Sim','Alex Dias - gerente Consul Engenharia - 71 981233269
Juliana Chaves - gerente Dienstmann - 51 993499763','Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-24T21:52:00.000Z'::timestamptz),
  ('César Augusto Goldenfun','cgoldenf@terra.com.br',NULL,'51999870253','1960-01-08',66,'União estável','2','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1Nu1dKqyIqi1uwsMMbIZMELfV6oJ48vb_','Engenharia Civil','Pós-graduação Completa','UFRGS','1982-12-10','Sou formado','Engenheiro civil pós graduado em engenharia civil e MBA em finanças com mais de 40 anos de atuação em empresas de grande e médio porte e atividades autônomas. Experiência no
planejamento, orçamentação, execução e fiscalização de obras, gerenciamento de projetos, e
construção de empreendimentos residenciais de alto e médio padrão, comerciais, hotelaria e
industriais, com atuação também na área de Shopping Centers, obras de Varejo e Condomínios
Residenciais (infraestrutura e parte civil), Urbanização e infraestrutura, loteamentos residenciais e
industriais. Atividades diretivas, gerenciais, administrativas, gestão de contratos, coordenação de
equipes de projetos, produção e planejamento, conceitos de produtos e manutenções completam o
perfil. Larga experiência em instalações elétricas, telefonia/segurança, hidráulicas e inst. de
incêndio, gestão de contratos e gerenciamento de projetos. Atuação gerencial direta na obra, com
foco em qualidade, custos e prazos.','Pós graduado em técnica planejamento e controle da construção pela UERJ e MBA de finanças pela FGV',NULL,'Arquitetura, Engenharia',NULL,'https://drive.google.com/open?id=1VaJmnzPCjyywARWOZc4122HuQzGNX-1s','Agência de Empregos','Não','18000','Sim',NULL,'Gerente de obras',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-25T17:45:00.000Z'::timestamptz),
  ('Fabiane Magdalena Lessa','fabianelessa70@gmail.com',NULL,'51997858716','1992-07-26',33,'Casado(a)','0','Sim','Osório/RS','https://drive.google.com/uc?export=view&id=1c5_egG9YEm0JbjUsOaqwQfelz-QiY5FZ','Ainda não tenho formação mas estou cursando ciências contábeis 1 semestre','Ensino Superior Incompleto','Uniasselvi',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1 Afistec escritório de contabilidade 2- auxiliar fiscal 3- 22/02/2022 á 10/10/2025',NULL,NULL,'Administrativa',NULL,NULL,'Carteira Digital De Trabalho','Nao','2500','Sim','Afistec escritório de contabilidade','Vaga para financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-25T19:14:00.000Z'::timestamptz),
  ('Carla Martins de quevedo','carlamquevedo13@gmail.com',NULL,'55997307736','1995-05-31',30,'Solteiro(a)','2','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=14MeYdDJM0leeC2pbsFRIygnH7x4D1r8v',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','1.Mb farmácias - caixa atendente - 12/2023-09/2025- operadora de caixa , vendedora medicamentos e perfumarias , organização de setor e entrada de notas.2. Nosso Mercado - auxiliar administrativo - 11/2021- 12/2023 - principal função era RH , desempenhava função de controle de vencimentos de produtos , entrada e organização de notas fiscais, fiscal de caixa.3. Lojas Regla -Farroupilha RS - 05/2021 - 11/2021 - Vendedora varejo - função vendedora. 4.Loja Morango tango -FARROUPILHA - 03/2018 - 06/2019- vendedora varejo - 5. Loja Requinte modas - 03/2015- 12/2015 - vendedora.','Curso gestão e comercio',NULL,'Administrativa, Comercial',NULL,NULL,'Facebook','Nao','2000','Não',NULL,'Comercial','Possuo experiência também em vendas com empréstimos , trabalhei para uma instituição vendendo produtos como FGTS , empréstimos CLT e bolsa família , também já fui manicure , trabalhei em lancheria e pizzaria, decoração de festas e baba.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-26T12:16:00.000Z'::timestamptz),
  ('Rafael Azambuja de Deus','rafaazd@gmail.com',NULL,'55981783913','1987-12-22',38,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1Rr3t5k9r3Th0qxiXHqQw0KvSBc1AGjT8','Engenharia Civil','Pós-graduação Completa','UNIPAMPA','2023-09-09','Sou formado','1) Corsan - 2008/2009
2) Prefeitura Municipal de Alegrete - Setor de topografia - 2022/2023','Meu nome é Rafael Azambuja de Deus e tenho interesse na vaga. Sou formado em Engenharia Civil e possuo pós-graduação em Engenharia de Segurança do Trabalho. Ao longo da minha trajetória profissional, atuei principalmente como autônomo, desenvolvendo projetos, acompanhando obras e realizando regularizações de imóveis.

Apesar da experiência prática que adquiri nesse período, reconheço que ainda tenho muito a evoluir profissionalmente em um ambiente corporativo estruturado. Por isso, busco uma oportunidade que me permita aprimorar minhas habilidades, aprender com uma equipe experiente e ampliar minha vivência técnica na área.

Mesmo atuando de forma independente, desenvolvi competências alinhadas aos requisitos da vaga, como:

Utilização de AutoCAD, conhecimento em BIM e Excel;

Leitura e interpretação de projetos técnicos;

Quantificação de materiais e serviços;

Levantamento de áreas e medições;

Elaboração de relatórios e cronogramas de obras;

Facilidade com ferramentas digitais e computadores;

Organização, flexibilidade cognitiva e vontade contínua de aprender.

Tenho grande interesse em integrar a equipe, contribuir com meus conhecimentos e, ao mesmo tempo, desenvolver minha experiência profissional em uma empresa que ofereça crescimento técnico e oportunidades de aprendizado.',NULL,'Arquitetura, Comercial, Engenharia',NULL,NULL,'Facebook','Não','3 salários mínimos','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-26T17:39:00.000Z'::timestamptz),
  ('Fernanda de Mattos Bruch','ferdibruch@gmail.com',NULL,'51997842121','1978-09-09',47,'Casado(a)','1','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1MDjyXyKDM1IKR7wA4ZqnYP-jSpvHBLaw','Arquitetura','Pós-graduação Completa','Ritter dos Reis','2000-08-18','Sou formado','Zebl arquitetura- coordenadora-mar/16 até hoje. Coordenadar o time de arquitetos para o desenvolvimento dos projetos de acordo com os objetivos estabelecidos.','MBA de Gestão de escritórios de arquitetura na FGV',NULL,'Administrativa, Arquitetura, Novos Negócios, Engenharia',NULL,'https://drive.google.com/open?id=1Ag1XdpveLKK-vrzSWuLOwNAQqD1PGOEP','Agência de Empregos','Não','10.000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma profissional em busca de mudança, falo inglês fluente e italiano básico (apesar de ser formada é uma língua que não pratico).  Tenho disponibilidade para viagens e gostaria muito de me mudar de Porto Alegre. Sou mãe de uma menina de 11 anos e adoro viajar.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-29T19:06:00.000Z'::timestamptz),
  ('Maria Eduarda Nunes de Souza','phrgil14@gmail.com',NULL,'51992241883','2006-05-22',19,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1zsLli0Ruj5AheQ-2ztFf-ktaQa7lOSr9','Administração de empresas','Ensino Médio Completo','Uninter','2027-12-09','Não, no momento pausei/parei por um período.','.',NULL,NULL,'Administrativa, Marketing',NULL,NULL,'Agência de Empregos','Não','1.500,00','Sim','.','Marketing',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-29T19:07:00.000Z'::timestamptz),
  ('Lucas Tedesco da Silva','lucas.silvars@hotmail.com',NULL,'51994284198','1994-10-30',31,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1GgmQqTfr9vTIiEG1MRzkR-tJKdGFi_L1','Técnico em Administração','Ensino Médio Completo','Instituto Federal','2022-09-23','Sou formado','Imap Indústria e Comércio 
Analista Comercial
Atendimento ao público, visitas a clientes etc.

ING Guindastes 
Analista de planejamento 
Programação de suprimentos da fábrica',NULL,NULL,'Administrativa, Comercial, Financeiro, Marketing',NULL,NULL,'Agência de Empregos','Não','2800','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho habilidade no pacote Office, trabalho com o público também criando um vínculo com o cliente. Técnicas de planejamento e resolução de problemas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-29T19:15:00.000Z'::timestamptz)
;

INSERT INTO young_talents.candidates (full_name, email, email_secondary, phone, birth_date, age, marital_status, children_count, has_license, city, photo_url, education, schooling_level, institution, graduation_date, is_studying, experience, courses, certifications, interest_areas, cv_url, portfolio_url, source, referral, salary_expectation, can_relocate, professional_references, type_of_app, free_field, status, tags, origin, created_by, original_timestamp)
VALUES
  ('Maria Gabrielli Fantinel Da Silveira','gabriellifantinel19@gmail.com',NULL,'51997523578','2005-02-10',21,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Zm3oPcr0X4QL-5nXNH-2It_Zu3kRh-WB',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Papelaria Kraft
Atendente, fazia as impressões, atendia ao público, organizava, fazia o marketing.
Nesta inicie antes, mas assinaram minha carteira após 6 meses de trabalho.

Consultório Odontológico Sorrifácil
Recepcionista, atendia ao público, organizava o espaço, trabalha com o caixa, fazia pagamentos, fazia o marketing também.
Após 3 meses de experiência que assinaram minha carteira.

Farmácia São João
Onde estou atualmente, sou Operador Financeiro, mas atendo ao público, organizo e limpo meu setor, bato metas e faço minha parte no caixa.
Iniciei em 23/04/2025 e estou ate o momento.',NULL,NULL,'Arquitetura, Marketing, Engenharia',NULL,NULL,'Agência de Empregos','Nao','2.250,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou ótima com impressões, até faço em casa também, sou ótima em negociação e vendas, adoro vender, sempre bato metas e sou ágil.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-29T19:32:00.000Z'::timestamptz),
  ('Maise Kailany dos Santos Kenes','kenesmaise@gmail.com',NULL,'51992621991','2005-02-16',21,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1KxwGjvOVHNq84Vx0az9HY-gG8fow_7Kg','Marketing','Ensino Superior Incompleto','Universidade do Vale do Rio dos Sinos','2027-12-08','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','ASSISTENTE PESSOAL | GRUPO KATIA DECORAÇÕES E LOCAÇÕES | MAI/2023 – SET/2025
- Organização de rotinas administrativas e apoio direto às demandas pessoais e profissionais.
- Planejamento e gestão de compromissos, agendas, viagens e reuniões.
- Controle de documentos, relatórios e informações confidenciais com sigilo e precisão.
- Comunicação com clientes, parceiros e fornecedores, garantindo alinhamento e eficiência.
- Atendimento e suporte personalizado, solucionando demandas e antecipando necessidades.

CONSULTORA DE VENDAS | MK PRODUÇÃO DE EVENTOS | ABR/2022 – FEV/2023
- Atendimento consultivo a clientes, auxiliando na definição de pacotes e soluções para eventos.
- Organização de demandas comerciais, orçamentos e acompanhamento de pedidos.
- Suporte à produção e logística de eventos, garantindo pontualidade e qualidade na entrega.
- Negociação com fornecedores e parceiros estratégicos.
- Acompanhamento do cliente no pré e pós-evento, garantindo experiência satisfatória.

ESTÁGIO CURRICULAR | EMATER-ASCAR/RS | FEV/2023 – MAI/2023
- Prestação de suporte técnico e extensão rural para agricultores familiares, pescadores, comunidades indígenas e quilombolas.
- Apoio em projetos de sustentabilidade e inovação, com foco no desenvolvimento socioeconômico das comunidades.
- Orientação sobre práticas de cultivo sustentável, produtividade e gestão rural.
- Organização de reuniões e atividades de campo, fortalecendo a comunicação entre técnicos e comunidades.
- Elaboração de relatórios e registros das ações realizadas para acompanhamento institucional.','Espanhol Avançado | Inglês Intermediário
E-commerce com Gestão Comercial – IE University
Transformação Digital – MIT (Massachusetts Institute of Technology)
Business for All – Harvard Business School Publishing
Comunicação Estratégica e Trabalho em Equipe – IE University
Rotinas Administrativas - Unialcance Escola de Educação Profissional
Comunicación Efectiva - Santander Open Academy
Secretária Executivo - Unialcance Escola de Educação Profissional',NULL,'Administrativa, Financeiro, Marketing',NULL,NULL,'Agência de Empregos','Não','R$1.800','Sim','Grupo Kátia Decorações e Locações- número 5199337-2820 - Kátia','Assistente Administrativo',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-29T19:36:00.000Z'::timestamptz),
  ('Raika Eduarda da Silva Portal','silvaraika957@gmail.com',NULL,'51996088257','2007-07-14',18,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1stvITvf0KTjTP7VeLZjWeLAGwXYaVqa4',NULL,'Ensino Médio Completo','Instituto Estadual de Educação Santo Antônio da Patrulha','2025-12-17','Não, no momento pausei/parei por um período.','Empresa: Prefeitura Municipal de Santo Antônio
Cargo: Auxiliar Administrativo e recepcionista
Período: 1 ano e 11 meses
Empresa: Masal
Cargo: Auxiliar Administrativo
Período: 9 meses',NULL,NULL,'Administrativa',NULL,NULL,'Agência de Empregos','Não','R$1.800','Não',NULL,'Marketing','Tenho boa experiência na área administrativa e sou uma pessoa muito dedicada e comprometida com minhas atividades.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-29T19:42:00.000Z'::timestamptz),
  ('Tainara Kray da Rosa','tainarakray@hotmail.com',NULL,'51980589928','1995-07-17',30,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=10Iq9ghDyOkjclbtoMOT66duSWO9y4k97','Processos Gerenciais','Ensino Superior Incompleto','Anhanguera Educacional','2025-12-29','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Agente Administrativo – Prefeitura Municipal de Riozinho/RS (Jan/2023 – Jul/2024)
• Atendimento ao público e suporte administrativo
• Controle de ponto e relatórios mensais
• Gestão de patrimônio e atualização em sistema interno
• Liberação de consultas e exames via empresa conveniada
• Alimentação de dados e controle de processos administrativos

Recepcionista – Prefeitura Municipal de Riozinho/RS
(Jan/2021 – Jan/2023)
• Atendimento ao público e triagem de demandas
• Apoio administrativo e organização de documentos
• Suporte às rotinas de secretaria e registro de informações

Técnica de Enfermagem / Auxiliar de Saúde Bucal – Prefeitura Municipal de Riozinho/RS
(Jul/2024 – Dez/2024)
• Controle e esterilização de materiais odontológicos
• Verificação de sinais vitais e administração de medicamentos IM
• Apoio a procedimentos e remoção de pacientes
• Gestão de materiais e registros de utilização.','• Técnico em Secretariado, Eixo Tecnológico Gestão e Negócios – Senac Taquara/RS 
(Concluído, Mai 2021)

• Assistente Administrativo – Prime Cursos (Concluído, Jun 2020

• Comunicação e Atendimento ao Cliente – IFRS (Concluído, Mai 2024-Ago 2024)

• Informática – Unialcance (Concluído, Jan 2011- Set 2012)',NULL,'Administrativa',NULL,NULL,'Agência de Empregos','Sem indicação','Minha expectativa salarial é compatível com o mercado e com as responsabilidades da função, estando aberta a negociação conforme o pacote de benefícios e possibilidades de crescimento.','Não','Ramão Corso - (51) 99611-6096
Gestor com quem atuei na Prefeitura Municipal de Riozinho.','Tenho interesse na vaga de Assistente Administrativo','Sou uma pessoa dedicada, responsável e que coloca carinho no que faz. Gosto de organização, de aprender coisas novas e de contribuir de forma positiva no ambiente de trabalho. Tenho experiência com rotinas administrativas, atendimento ao público e uso de ferramentas como Word, Excel, PowerPoint, E-mail.

Sou muito ligada à família, que é minha base e influência direta no meu senso de compromisso e responsabilidade. Nas horas de lazer, gosto de ficar em casa, aproveitar momentos simples com a família e recarregar as energias para seguir focada e motivada no dia a dia profissional.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-29T19:49:00.000Z'::timestamptz),
  ('Andressa Barcela','andressabarcela99@gmail.com',NULL,'996417161','1997-09-17',28,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1vXANToQptLi2BrTCuF4UQTt9lO7XemnJ','Administração de empresas','Ensino Superior Completo','Centro Universitário da Grande Dourados Unigran','2019-12-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Auxiliar de Escritório
Sindicato dos Trabalhadores Rurais de Santo Antônio da Patrulha
Fevereiro/2023 – Maio/2024

·        Atendimento ao público

·        Emissão de notas no bloco de produtor

·        Resumo do bloco de produtor

·        Organização de arquivos

·        Atualizações de convênios

·        Outras atividades administrativas

Auxiliar Administrativo
Supermercado Nacional - Grupo Carrefour
Abril/2016 – Junho/2022

·        Impressão de relatórios

·        Supervisão dos preços do supermercado

·        Controle de estoque

·        Pedidos de produtos de uso interno

·        Entrada e emissão de notas fiscais

·        Recebimento de mercadorias

·        Rotinas administrativas','Sou formada em Administração de empresa, com pós-graduação em Gestão de Pessoas e, atualmente estou cursando técnico em contabilidade.',NULL,'Administrativa',NULL,NULL,'Agência de Empregos','Nao','A partir de 2.000,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-29T20:00:00.000Z'::timestamptz),
  ('Amanda Gabrieli Corrêa de Fraga','amandagabrieli007@gmail.com',NULL,'989817254','2005-03-02',20,'Casado(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1GdhH7fjNOSmGvKqUMuuHv-UXDy4EPdWP',NULL,'Pós-graduação Incompleta','Unifacvest','2029-01-29','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Minha primeira experiência foi no ramo calçadista, onde trabalhei 2 anos. 
Após fui vendedora de loja de roupas, durante 4 meses. 
Minha última experiência foi como representante comercial, onde trabalhei com vendas online durante 1 ano e meio.',NULL,NULL,'Administrativa, Comercial, Marketing',NULL,NULL,'Agência de Empregos','Não','2.600,00','Não','Débora Tomaz, 51 993231434','Assistente administrativo','Me chamo Amanda, tenho 20 anos e posso dizer que a minha maior habilidade é a comunicação, gosto muito de cozinhar e atualmente trabalho com delivery de doces. 
Procuro uma oportunidade para aprender coisas novas e me desenvolver, o novo nunca foi um problema para mim!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-29T20:10:00.000Z'::timestamptz),
  ('Elisangela dos santos consul','consulelisangela@gmail.com',NULL,'51998897206','1984-01-07',42,'Divorciado(a)','1','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1CBq0YhkHpJiMSmAVr4QDnCSVczxC1fiv','Pedagogia','Ensino Superior Incompleto','Unifacvest','2028-04-08','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Secretaria','Técnico em Magistério',NULL,'Administrativa',NULL,NULL,'Agência de Empregos','Não','1800','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-29T20:23:00.000Z'::timestamptz),
  ('João Pedro dos Santos Tetour','jptetour@gmail.com',NULL,'51995929886','1999-11-29',26,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1lsBdqwMaFWrsVEJaRoeb9bc44NBD5oXs','Licenciatura em Filosofia - Pós Graduação em Inglês','Pós-graduação Completa','UFPEL - Graduação. Instituto Dom Alberto - Pós-Graduação','2024-01-22','Sou formado','Agente de arrecadação na empresa CCR Via Sul no período de fevereiro/ 2019
Inspetor de qualidade na empresa Magna Cosma no período de setembro/ 2019 - março/ 2020
Operador de Caixa no Supermercado Gomes - novembro/ 2022 - novembro/ 2023
Auxiliar de Formas em RR Calçados/ Via Uno Calçados - agosto/ 2024 - janeiro/ 2025
Professor de Inglês na Schoenardie English School - janeiro/ 2025 - agosto/ 2025','Tenho licenciatura plena em Filosofia. Tenho também completa uma Pós-graduação em Metodologia de Ensino da Língua Inglesa. Sou formado pela Wizard (Nível W12), tendo fluência plena em língua inglesa e concluído o curso.',NULL,'Administrativa',NULL,'https://drive.google.com/open?id=1Y_ByKMB_iE9O_lZ_jXW9N4ooIE7qkRRm','Agência de Empregos','Não','1600','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Desde que concluí as minhas formações, tanto a Graduação quanto a minha Pós-graduação, estou em busca de uma oportunidade para demonstrar o meu potencial e gostaria de realizar isso na Young!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-29T20:47:00.000Z'::timestamptz),
  ('Renata Speransa Fraga','resperansa752@gmail.com',NULL,'51996127242','2002-05-07',23,'União estável','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1gGLYUwtAY9gHqzlxnbPzo4vct2QTsntT','Administração de empresas','Ensino Superior Completo','Universidade Federal do Rio Grande (FURG)','2024-03-06','Sou formado','Estágio Administrativo - Banrisul (Banco do Estado do Rio Grande do Sul): 19/10/23 - 19/10/2025
Durante meus dois anos no Banrisul, atuei nas áreas de Pessoa Física e Jurídica, realizando abertura de contas, operações de crédito, empréstimos consignados, vendas de seguros, consórcios e outros produtos financeiros. Fui responsável por oferecer um atendimento consultivo e humanizado, identificando as necessidades dos clientes para apresentar soluções adequadas à sua realidade financeira. Desenvolvi sólida experiência em crédito consignado, análise de contratos, conciliação financeira, liquidação de parcelas, atualização cadastral e gestão de indicadores de inadimplência. Atuei também na portabilidade de crédito, na regularização de contratos e no acompanhamento de propostas. Além disso, desempenhei rotinas administrativas e de controle interno, assegurando a precisão dos dados e o cumprimento de prazos operacionais.

Estágio Administrativo - SMTDS (Secretaria do Trabalho e Desenvolvimento Social), exercendo atividades profissionais no PROCON: 01/07/2019 - 01/02/2020
Responsável pelo atendimento ao público visando solucionar suas reclamações, entrando em contato com os fornecedores, sempre levando em consideração o Código de Defesa do Consumidor. Também, em determinadas ocasiões, me responsabilizava pela recepção, nas entregas de fichas, atendimento ao telefone e orientação ao público. Além disso, exercia atividades administrativas, fazia registros, arquivamentos e entregas de intimações para fornecedores necessários.','Sou formada em Administração e atualmente curso Ciências Contábeis, o que me proporciona uma base sólida nas áreas de gestão, finanças, contabilidade e análise de processos. Possuo a certificação CPA-20 (ANBIMA), que reforça meu conhecimento técnico em produtos financeiros, crédito, investimentos e atendimento ao cliente no mercado financeiro.

Sou fluente em inglês, com formação pela Wizard (2010–2018), o que me permite uma comunicação mais abrangente. Participei de cursos de educação financeira, cooperativismo, desenvolvimento pessoal e negócios, com destaque para o Programa Sicredi Crescer, voltado ao fortalecimento da cultura cooperativista, gestão, finanças pessoais e desenvolvimento social.

Também possuo curso de Corretor de Imóveis, ampliando minha compreensão sobre contratos, documentação e negociações, embora ainda não tenha realizado a prova para obtenção do CRECI. Estou em constante atualização profissional, buscando aprimorar conhecimentos técnicos e comportamentais alinhados às áreas administrativa, financeira e de relacionamento com clientes.',NULL,'Administrativa, Financeiro, Marketing',NULL,NULL,'Instagram','Não.','R$ 2.500,00.','Não',NULL,'Assistente Administrativo','Sou daquelas pessoas que gostam de aproveitar a vida nos detalhes. No tempo livre, adoro conhecer restaurantes novos e experimentar sabores diferentes, comer bem é um hobby oficial por aqui. Também amo estar em contato com a natureza: trilhas, praia, cachoeira… qualquer desculpa pra respirar ar puro e recarregar as energias.

Gosto muito de reunir os amigos pra fazer jantinhas, boas conversas e risadas que passam do horário. Quando dá, marco de sair pra jogar vôlei, me exercitar e manter o corpo em movimento, porque equilíbrio é tudo.

Na cozinha, tenho um carinho especial pelos doces, fazer sobremesas é quase uma terapia pra mim. E, claro, também curto aqueles momentos mais tranquilos, assistindo filmes e séries, seja pra relaxar ou maratonar sem culpa.

Sou uma pessoa ativa, curiosa, sociável e criativa, que valoriza boas experiências, conexões reais e tudo aquilo que traz leveza pro dia a dia.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-29T20:51:00.000Z'::timestamptz),
  ('Renata Speransa Fraga','resperansa752@gmail.com',NULL,'51996127242','2002-05-07',23,'União estável','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1ahhOrQ9WW7L3XM3Vl6d3sy4uUuXXfD9F','Administração de empresas','Ensino Superior Completo','Universidade Federal do Rio Grande (FURG)','2024-04-06','Sou formado','Estágio Administrativo - Banrisul (Banco do Estado do Rio Grande do Sul): 19/10/23 - 19/10/2025
Durante meus dois anos no Banrisul, atuei nas áreas de Pessoa Física e Jurídica, realizando abertura de contas, operações de crédito, empréstimos consignados, vendas de seguros, consórcios e outros produtos financeiros. Fui responsável por oferecer um atendimento consultivo e humanizado, identificando as necessidades dos clientes para apresentar soluções adequadas à sua realidade financeira. Desenvolvi sólida experiência em crédito consignado, análise de contratos, conciliação financeira, liquidação de parcelas, atualização cadastral e gestão de indicadores de inadimplência. Atuei também na portabilidade de crédito, na regularização de contratos e no acompanhamento de propostas. Além disso, desempenhei rotinas administrativas e de controle interno, assegurando a precisão dos dados e o cumprimento de prazos operacionais.

Estágio Administrativo - SMTDS (Secretaria do Trabalho e Desenvolvimento Social), exercendo atividades profissionais no PROCON: 01/07/2019 - 01/02/2020
Responsável pelo atendimento ao público visando solucionar suas reclamações, entrando em contato com os fornecedores, sempre levando em consideração o Código de Defesa do Consumidor. Também, em determinadas ocasiões, me responsabilizava pela recepção, nas entregas de fichas, atendimento ao telefone e orientação ao público. Além disso, exercia atividades administrativas, fazia registros, arquivamentos e entregas de intimações para fornecedores necessários.','Sou formada em Administração e atualmente curso Ciências Contábeis, o que me proporciona uma base sólida nas áreas de gestão, finanças, contabilidade e análise de processos. Possuo a certificação CPA-20 (ANBIMA), que reforça meu conhecimento técnico em produtos financeiros, crédito, investimentos e atendimento ao cliente no mercado financeiro.

Sou fluente em inglês, com formação pela Wizard (2010–2018), o que me permite uma comunicação mais abrangente. Participei de cursos de educação financeira, cooperativismo, desenvolvimento pessoal e negócios, com destaque para o Programa Sicredi Crescer, voltado ao fortalecimento da cultura cooperativista, gestão, finanças pessoais e desenvolvimento social.

Também possuo curso de Corretor de Imóveis, ampliando minha compreensão sobre contratos, documentação e negociações, embora ainda não tenha realizado a prova para obtenção do CRECI. Estou em constante atualização profissional, buscando aprimorar conhecimentos técnicos e comportamentais alinhados às áreas administrativa, financeira e de relacionamento com clientes.',NULL,'Administrativa, Financeiro, Marketing',NULL,NULL,'Instagram','Não.','R$ 2.500,00.','Não',NULL,'Assistente Financeiro','Sou daquelas pessoas que gostam de aproveitar a vida nos detalhes. No tempo livre, adoro conhecer restaurantes novos e experimentar sabores diferentes, comer bem é um hobby oficial por aqui. Também amo estar em contato com a natureza: trilhas, praia, cachoeira… qualquer desculpa pra respirar ar puro e recarregar as energias.

Gosto muito de reunir os amigos pra fazer jantinhas, boas conversas e risadas que passam do horário. Quando dá, marco de sair pra jogar vôlei, me exercitar e manter o corpo em movimento, porque equilíbrio é tudo.

Na cozinha, tenho um carinho especial pelos doces, fazer sobremesas é quase uma terapia pra mim. E, claro, também curto aqueles momentos mais tranquilos, assistindo filmes e séries, seja pra relaxar ou maratonar sem culpa.

Sou uma pessoa ativa, curiosa, sociável e criativa, que valoriza boas experiências, conexões reais e tudo aquilo que traz leveza pro dia a dia.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-29T20:55:00.000Z'::timestamptz),
  ('Maria Eduarda Rodrigues Oliveira','meduardarodriguesoliveira@gmail.com',NULL,'51998896207','2004-04-26',21,'Solteiro(a)','0','Sim','Caraá/rs','https://drive.google.com/uc?export=view&id=1vYqfxVjWKFtLlVGcrT6jPi2MDVrOk437',NULL,'Ensino Superior Incompleto',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Até o presente momento só trabalhei no ramo da indústria calçadista',NULL,NULL,'Administrativa, Estágio, Financeiro',NULL,NULL,'Instagram','Não','2.500,00','Sim',NULL,'Administrativo',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-29T21:11:00.000Z'::timestamptz),
  ('Natalia de Lima Gutierrez','natalia.lgutierrez18@gmail.com',NULL,'55984255972','1997-12-24',28,'Solteiro(a)','0','Não','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=13e09V_D8LG9zuSVfXYE_gwOY5XVJ7EUe','Administração de empresas','Ensino Superior Completo','UNIPAMPA - Universidade Federal do Pampa','2026-02-28','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Cresol - Assistente de Negócios 
MAR/2025 – MAR/2025
● Atendimento ao público em geral;
● Realização de operações de crédito;
● Prospecção de novos cooperados;
● Emissão, organização e arquivamento de documentos;
● Inserção e alteração de dados em sistemas operacionais;
● Venda de produtos e serviços bancários;
● Gestão de numerário (abastecimentos, suprimentos e recolhimentos).

Cresol - Caixa
JAN/2022 – MAR/2025
● Gestão de numerário de agência;
● Abastecimento de caixa, suprimentos e recolhimentos;
● Pagamentos de guias e contas em geral;
● Movimentações em espécie;
● Conferência de malotes
● Atendimento ao público em geral;
● Emissão, organização e arquivamento de documentos;
● Inserção e alteração de dados em sistemas operacionais;
● Auxílio na venda de produtos e serviços bancários.

CIEE, Banrisul - Estagiária
DEZ/2019 – DEZ/2021
● Atendimento ao público em geral;
● Realização de operações de crédito;
● Emissão, organização e arquivamento de documentos;
● Inserção e alteração de dados em sistemas operacionais;
● Auxílio na venda de produtos e serviços bancários.','Tenho formação superior em Gestão Pública, em breve terei o diploma de Administração. Minha carreira foi moldada no mercado financeiro, tenho certificação profissional ANBIMA CPA-20',NULL,'Administrativa, Financeiro',NULL,NULL,'Facebook','Não','2500','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho grande interesse em continuar minha jornada
profissional em um ambiente dinâmico e desafiador, 
possa aplicar minhas habilidades de atendimento, vendas e
 gestão financeira. Estou sempre em busca de aprender
 e agregar valor às pessoas e empresas com as quais me
 conecto, assim como buscar o desenvolvimento dos meios
 em que me encontro.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-29T21:38:00.000Z'::timestamptz),
  ('Viviane Silva de fraga','vivianesilvadefraga@gmail.com',NULL,'996028496','1998-09-03',27,'Solteiro(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=15DW-Xe9c7TA9Uk2gQDb2O4dTPZRgzuQ5',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Agropet várzea (trabalhei como tossadora de animais
Spazzo (trabalhei como vendedora)
Kallango fit (trabalhei como auxiliar de produção)','Gestão de pessoas',NULL,'Administrativa',NULL,NULL,'Agência de Empregos','Nao','1800','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-29T22:05:00.000Z'::timestamptz),
  ('Fabiane paschoal da veiga','fabipaschoal97@gmail.com',NULL,'55991028394','1994-06-08',31,'Solteiro(a)','0','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1vrQS_AoWIQmY-t6OStTuINsPsPFYzpvA','Engenharia Civil','Pós-graduação Completa','Unicruz','2021-12-02','Sou formado','1) geomais geotecnologia
2) estagiaria 
3) 6 meses durante o período da graduação
4) área de engenharia 

1) prefeitura de Boa vista do cadeado
2) estagiaria 
3) 2 anos durante a graduação 
4) área de engenharia ( auxiliar de engenheiro)','Sou formada em administração de empresas e engenharia civil e tenho mestrado na área de engenharia',NULL,'Administrativa, Engenharia',NULL,NULL,'Instagram','Nao','Apartir de 2400','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-29T22:08:00.000Z'::timestamptz),
  ('Juliana de Oliveira Ucha','ju.oliveira.ucha.152@gmail.com',NULL,'55996213587','2004-03-27',21,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1lcR7hT8EsDcOmPFGO4wSLxJ6aRBWOCSe','Técnico em administração(IFSUL)- Curso Normal(Magistério)- Cursando Pedagogia(UFSM).','Ensino Superior Incompleto','Pública- UFSM','2025-08-29','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Righi Supermercados- Jovem Aprendiz- 21/03/2022 a 02/03/2023- Empacotadora.
Loja Festa das Embalagens- Serviços Gerais (Vendas, caixa e marketing)- 06/03/2023 a 22/12/2023.
Associação de Ensino e Assistência Social Santa Teresa de Jesus- Monitora de anos inicias e recepcionista (Monitorava os corredores da escola, auxiliando as professoras e substituindo-as quando necessário. Na recepção atendia o público, assim como o telefone.- 28/08/2024 a 20/03/2025.
Atualmente no turno da tarde da associação de ensino citada acima, atuo como professora anos iniciais.','Curso Básico de informática.
Curso Assistente Administrativo.',NULL,'Administrativa, Comercial, Estágio, Financeiro',NULL,NULL,'Instagram','Não','Até 1000','Não',NULL,'Estágio Financeiro','Eu tenho facilidade com as tecnologias e manuseio de alguns aplicativos de designer gráfico. Procuro um emprego ou estágio meio turno.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-29T22:14:00.000Z'::timestamptz),
  ('Patrícia Pinheiro','patynanda2009@gmail.com',NULL,'53999748226','1988-07-19',37,'Solteiro(a)','1','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1VKKpbzjwh1URrG-dJ2781ha_ClElGcbk','Administração de empresas','Pós-graduação Completa','Faculdade Sobresp','2019-07-21','Sou formado','01 - Faculdade Sobresp 
02 - Assistente administrativo 
03 - 01/04/2019- 04/11/2024  
04 - Financeiro e conciliação bancária, contas a pagar e receber, várias da folha de pagamento e conferência, admissão e rescisão.','MBA em Gestão de Pessoas e MKT.',NULL,'Administrativa, Financeiro, Engenharia',NULL,NULL,'Instagram','Não','$ 2.100,00','Sim','Administrativo Dani, (55) 32141111','Assistente administrativo','Aprendi a escrever com a mão esquerda,  li várias livros infantis.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-29T22:43:00.000Z'::timestamptz),
  ('Quelli Liziane Oliveira Soares','quellioliveira03@gmail.com',NULL,'997238670','1983-05-03',42,'Casado(a)','2','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1jhf2hs0D8ScuolznxrMVMt9av3TUlIl5','Tecnologia em Agropecuária','Ensino Superior Completo','Uergs','2008-12-12','Sou formado','Marques Desenhos e Projetos, na área de projetos, secretária e atendimento aos clientes. 
Prefeitura Municipal de Alegrete como auxiliar de ensino e estagiária na área da educação infantil. 
Auxiliar de ensino na Escola de Educação Infantil Sítio do Pica-Pau Amarelo 
Vendedora temporária na Loja Marinha','Técnico em Contabilidade,  Curso Normal e em andamento Pedagogia.',NULL,'Administrativa, Comercial, Financeiro, Licenciamentos',NULL,NULL,'Facebook','Não','2500','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-29T22:54:00.000Z'::timestamptz),
  ('Angelica Hofemann','angelicahofemann@gmail.com',NULL,'55999970208','1996-09-12',29,'Casado(a)','1','Sim','Manoel Viana','https://drive.google.com/uc?export=view&id=1GnO2-2eSKeDIq465YZNoAupWT6N0Rspg','Administração de empresas','Ensino Superior Incompleto','Uniasselvi',NULL,'Não, no momento pausei/parei por um período.','Auxiliar administrativo D&M Sementes 
4 anos',NULL,NULL,'Administrativa, Comercial',NULL,NULL,'Instagram','Não','2.500,09','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-30T00:19:00.000Z'::timestamptz),
  ('Josué Mateus Silva Peterson','petersonjosue3@gmail.com',NULL,'51995691190','2002-04-25',23,'Casado(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1NKYDYY_NlLxA1Ku9_Q-ucRMK2fRd4194','Administração de empresas','Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','CSA serviços automotivos trabalhei na área administrativa por 1 ano',NULL,NULL,'Administrativa',NULL,NULL,'Agência de Empregos','Não','Pretendo receber um valor compatível com o mercado e com as responsabilidades do cargo, podendo ser negociado.','Sim',NULL,'Administração','Sou uma pessoa dedicado responsável e com facilidade para aprender coisas novas. Gosto de trabalhar em equipe, mas também tenho autonomia para executar minhas tarefas com foco e organização. Tenho interesse em crescer profissionalmente, adquirir novos conhecimentos e contribuir de forma positiva para o ambiente de trabalho. Estou sempre aberto a novas ideia e busco evolução constante, tanto no aspecto profissional quanto pessoal.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-30T01:18:00.000Z'::timestamptz),
  ('Leandra latorre barrios','leandraprimeiro@gmail.com',NULL,'55992111286','1983-07-15',42,'Casado(a)','2','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1MXzMVw0EEl5gFr9qUKCA7cNjD87pZhfH',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Posto primeiro aux financeiro fiquei na empresa por 5 anos, postos garra eu era responsável por 3 postos ao mesmo tempo fiquei na empresa por 6 anos',NULL,NULL,'Administrativa',NULL,NULL,'Facebook','Nao','2.000,00','Não',NULL,'Auxiliar financeiro','Sou muito eficiente,  sei que faço a diferença na empresa , adoro trabalhar na área administrativa e financeira e sou muito organizada.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-30T01:31:00.000Z'::timestamptz),
  ('Mauricio de Melo Viana','m2v.grafico@gmail.com',NULL,'51999097753','1984-08-18',41,'Casado(a)','2','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=10gR2-TCm4NPZ4BODOKGSuzyApH73VQxC','Marketing','Pós-graduação Completa','Uniasselvi','2019-06-10','Sou formado','2025
Ateky internet
São Ludgero - SC;
Fone: 0800 3040101;
Coordenador de Marketing Sênior;
- Gestão e estruturação do setor de Marketing;
- Planejamento e estratégias de Marketing com intersecção ao comercial;
- Marketing de relacionamento e merchandising interno;
- Gestão e estratégias de Marketing digital;
- Estratégias SEO e SEM;
- Brandformance (Estratégias de marca e performance, para crescimento contínuo);
- Análise de mercado com estratégias para crescimento e blindagem;
- Campanhas, promoções e canais de divulgação;
- Planejamento e participação ativa em feiras e eventos;
- Treinamentos e workshops temáticos;
- Planejamento estratégico, branding, comunicação on e off;
2024
Tríade Mentoring
Vera Cruz - RS;
Fone: (51) 92000-5999;
Consultor Sênior;
- Consultoria, assessoria, mentoria e treinamentos empresariais;
- Implantação de processos de marketing, comercial e RH estratégico;
2022 /2023
RMS Telecom
R. Pedro Cincinato Borges, 130 – Torres - RS;
Fone: 0800 800 1122;
Gerente de Marketing;
- Gestão e estruturação do setor de Marketing;
- Planejamento e estratégias de Marketing com intersecção ao comercial;
- Marketing de relacionamento, endomarketing e merchandising interno;
- Gestão e estratégias de Marketing digital;
- Estratégias SEO e SEM;
- Growth (Estratégias de gestão para crescimento contínuo);
- Análise de mercado com estratégias para crescimento e blindagem;
- Campanhas, promoções e canais de divulgação;
- Planejamento e participação ativa em feiras e eventos;
- Treinamentos e workshops temáticos;
- Planejamento estratégico, branding, comunicação on e off;
- Gestão de RH estratégico canalizado pelo Endomarketing;
2022
Da Colônia
Estr. Antônio Osório dos Santos, 402 - Costa da Miraguaia, Santo Antônio da Patrulha / RS;
Fone: (51) (51) 3409-1041;
Supervisor de Marketing/Comercial;
- Planejamento e estratégias de Marketing/ comercial;
- Marketing estratégico;
- Marketing de relacionamento;
- Endomarketing;
- Merchandising em PDVs;
- Campanhas e promoções;
2021
Websul Telecom
Av. Fernandes Bastos, 2201 – São José – Tramandaí / RS;
Fone: (51) 4063.6699;
Coordenador de Marketing / Comercial;
- Gestão da equipe de Marketing e equipe comercial (ativa e passiva);
- Growth (Estratégias de gestão para crescimento contínuo);
- Planejamento e estratégia de Marketing (swot, preço, praça, produto e promoção);
- Marketing de relacionamento, endomarketing e merchandising;
- Marketing digital (designer gráfico, social media e gestor de tráfego),
- Responsável pelo planejamento estratégico e plano de ação (5W2H), de mídias impressas e
digitais;
- Planejamento de pesquisas, personas, análise de mercado e funil de vendas (estratégias de
captação, maturação e conversão);
- Campanhas, promoções e canais de divulgação (publicidade e propaganda);
- Ministrar treinamentos e workshops temáticos;
2019
INB Telecom / Vero internet
Av. Paulo Maciel de Morais, 961 - Centro – Santo Antônio da Patrulha / RS;
Fone: (51) 3662.1956;
Supervisor de Marketing;
- Gestão da equipe de Marketing;
- Planejamento e estratégia de Marketing;
- Marketing estratégico, digital, de relacionamento, endomarketing e merchandising;
- Responsável pelo planejamento e desenvolvimento de mídias impressas e digitais;
- Planejamento, pesquisas e análise de mercado;
- Campanhas e promoções;
- Idealizador e criador do Projeto Speed (mascote INB);
- Responsável pelo projeto Show de Prêmios INB;
- Ministrar treinamentos e workshops temáticos;
2005/ 2018
JWM Assessoria e Administração Ltda. (Clube Cardoso Marques)
Francisco J. Lopes, 486 - Pitangueiras – Santo Antônio da Patrulha / RS;
Fone: (51) 3662.1044;
Gerente Marketing/vendas;
- Gestor de Marketing e comercial;
- Gestão orçamentária;
- Designer gráfico (desenvolver publicidades e propagandas virtuais e impressas);
- Responsável pela atualização do site da empresa e pelas redes sociais.
- Responsável por planejamento, pesquisas e análise de mercado;
- Suporte e manutenção de computadores;
- Planejar e ministrar treinamento para equipe de vendas;
- Supervisão da equipe de vendas;','GESTÃO:
- Assessoria – New Point Informática;
- Secretariado – New Point Informática;
- Auxiliar de Dep. Pessoal – New Point Informática;
- Auxiliar Administrativo – Styllu´s Informática;
- Marketing e Vendas: Clube Cardoso Marques;
- Consultoria em Vendas: Clube Cardoso Marques;
- Merchandising - SEBRAE;
- Planejamento Estratégico - SEBRAE;
- Gestão de Qualidade – D´Olho ( 5S ) - SEBRAE;
- Contabilidade aplicada ao Excel avançado - Mundo Office;
- Prevenção de Incêndio e uso de equipamentos - STRATEC (2010);
- Gestão Ambiental - MULTIAMB (2010);
- SGI / Sistema de Gestão Integrada - MULTIAMB (2010);
* Sistema de Qualidade ISO 9000;
* Sistema de Gestão Ambiental ISO 14000;
* Sistema de Saúde e Segurança do Trabalho OHSA 18000.
- EMPRETEC - SEBRAE (2015);
- Marketing de varejo – Z.T Desenvolvimento (2017);
- Gestão e desenvolvimento de Líder – Z.T Desenvolvimento (2019);
- Liderança, mantendo a equipe em alta performance – Unlock Training (2021);
- Gestão comercial 4.0 – Unisinos (2019);
- Marketing digital – Uniasselvi (2020);
- Gestão em RH – Udemy/ Margareth Martins (2023);
- Leadership: A Master Class - Liderança: Com Daniel Goleman (2025);
- Branding e Performance - Saint Paul (Escola de Negócios) e Exame (2025);
- Google Ads (Search, display e vídeo ) – EBMD - Escola Brasileira de Marketing Digital (2025);
Idioma: Inglês I ( Mundo Office 2012);
Informática:
Sistema Operacional: Windows e Linux;
Office: Word, Excel, Power Point, Outlook;
Web: Linguagem HTML e Dreamweaver;
Softwares Gráficos: Photoshop (Avançado), Flash, Corel Drawn, Audacity (Edição de áudio),
ApowerSoft e Sony vegas (Edições de vídeos), SketchUp (2017) e V-ray (Renderização 3D);
Manutenção de computadores: Montagem, Instalação de Softwares, configuração de impressoras e
redes;
Programação: Algoritmos (Lógica), PHP (Nível I);
Entidades ministrantes: New Point, Sytllu´s, Alfa Treining, SENAC, FACCAT, DATA CONTROL e CIMOL.
COMPLEMENTO
como diferencial.
Liderança, seriedade, criatividade e facilidade de trabalhos em equipe, são adjetivos que possuo
Perfil comportamental:
- Tubarão/ Golfinho/ Lobo;
- DISC: Executor/Comunicador/Planejador
- Perfil de liderança: Líder democrático/Influente',NULL,'Marketing',NULL,NULL,'LinkedIn','Não','R$10.000','Sim','Ivan Bühler: +55 47 99200-9574
Iuri Bühler: +55 51 99823-1241
Paulo Marques: +55 51 99933-3608','Marketing','Olá, sou Mauricio Viana, um verdadeiro estrategista do marketing e dos negócios, uma mente inquieta que pensa como um publicitário, age como um gestor e cria como um artista.

Especialista com mais de 18 anos de experiência, domino o marketing estratégico e digital, com foco afiado em telecomunicação, branding e performance. MBA em Administração Estratégica e Mercadológica? Check. Neuromarketing? Também. Consigo unir a teoria de ponta com a prática que entrega resultado.

Atuo em projetos diversos, pois tenho formação em administração com especialização e experiência em marketing estratégico e Neuromarketing, destaco cases como: Estruturação do setor de Marketing da Cardoso Marques, da INB Telecom, da Websul, RMS Telecom e Ateky Internet, da Connecta Telecom à Mr. Grow, atuei diretamente com branding e performance, para desenvolver marcas, proximidade, relacionamento, campanhas, cronogramas, rebrandings, treinamentos e até mascotes! Não apenas executo, estruturo, direciono e potencializo.

Multitarefas com propósito: planejo do anual ao sazonal, conecto equipes de tráfego, acompanho indicadores e transformo metas em movimentos reais. Ativo tanto em frentes comerciais quanto criativas, defendo que marketing bom vende, mas marketing estratégico fideliza.

Criativo com visão estratégica: Seja criando slogans com alma (“A minha bandeira é a comunidade”), campanhas de datas sazonais (“Amor que conecta histórias”) ou planejamentos editoriais anuais, costuro criatividade com propósito. Marketing, pra mim, é construção de valor.

No fundo, sou movido a conexões, com pessoas, ideias, marcas e resultados. E tenho feito isso com excelência, pegada autoral e muita entrega.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-30T02:05:00.000Z'::timestamptz),
  ('Gabriele de Fátima Santos Machado','gabimachado722@gmail.com',NULL,'55991180738','1996-06-09',29,'Solteiro(a)','1','Não','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1tn84fIg3dl_6hmXQ_repNK77FhSoVzt1','Administração de empresas','Ensino Superior Completo','Unisa',NULL,'Sou formado','Digitadora de notas fiscais Irmãos Linke.
Administrativo jurídico Prefeitura Municipal.
Gerente restaurante.',NULL,NULL,'Administrativa',NULL,'https://drive.google.com/open?id=15-HN_GEvvb4ZLcbdS3fTlgjZw9omnd4w','Facebook','Não','3 mil pra cima.','Sim','51991159145','Comercial','Meu tempo livre estudo,cozinho para minha família viajamos sempre que dá.Faço exercícios','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-30T04:12:00.000Z'::timestamptz),
  ('Ana Carolina Ramos Bühler','anabuhler51@gmail.com',NULL,'51999421178','1999-03-04',26,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1JMSjwESbBuP0RqDgv1M3fELPTZ65Q21A','Ciências Contábeis','Ensino Superior Completo','Uniasselvi','2024-12-16','Sou formado','ÍConte Assessoria
Auxiliar de Departamento Pessoal
28/10/2025 - atualmente 
Organização de cartão ponto e contracheques. Organização de documentos para admissão e demissão. Emissão de guias.

Bühler Expositores
Auxiliar Financeiro
07/05/2021 - 24/10/2025
Responsável pelas contas a pagar e contas a receber. Emissão de notas fiscais e controle de caixa. Serviços bancários. 

Lojas Deltasul
Caixa/Crediario
09/11/2020 - 05/05/2021
Responsável pelo atendimento ao cliente, registrando as compras e recebendo o pagamento. Cadastro e controle de crediário.

Lojas Pompeia
Caixa/Crediario
18/04/2017 - 26/10/2020
Responsável pelo atendimento ao cliente, registrando as compras e recebendo o pagamento. Cadastro e controle de crediário.','Registro de Contador ativo desde julho de 2025. CRC/RS - 106029',NULL,'Financeiro',NULL,NULL,'Instagram','Não','R$2.500,00','Não','ÍConte Assessoria - Camila Oliveira (51) 99148-0496
Bühler Expositores - Marcos Bühler (51) 99987-7550','Financeiro','Meu objetivo é colaborar na área financeira, contribuindo com a organização e eficiência
dos processos internos, aplicando meus conhecimentos contábeis e
financeiros, e buscando constante desenvolvimento profissional.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-30T11:42:00.000Z'::timestamptz),
  ('Matheus Vargas','matheussouza.vargas@gmail.com',NULL,'51995757919','2006-07-26',19,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1SVU2h64tZ93Otc1sN34e-E2mzE0osupW','educação física','Ensino Superior Incompleto','ulbra','2029-12-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Empresa Argos Hiab: Financeiro e Comercial, entre 2023 a 2024. Empresa Vero Internet, atualmente desde Janeiro de 2025',NULL,NULL,'Administrativa',NULL,NULL,'Instagram','nao','entre 1.800,00 a 2.000,00','Não',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-30T13:33:00.000Z'::timestamptz),
  ('Ana Paula Vargas de Oliveira','vargas29anapaula@gmail.com',NULL,'55999437161','2002-03-29',23,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1lJaaTmRP1ElSSFENZD1AxJQGwV4JlU6W',NULL,'Ensino Médio Completo',NULL,'2019-12-28','Não, no momento pausei/parei por um período.','Lojas quero-quero, Jovem Aprendiz, 09/2019 a 02/21; organização de loja, estoque e ajuda ao setor administrativo. Tabelionato Souza, 06/21 a 09/2023, auxiliar administrativo, atendimento ao cliente, telefone, WhatsApp e realizações de escrituras públicas. Laboratório Luiz Fernandez, 09/24 - atual, assistente administrativo, atendimento e recepção ao paciente, atendimentos ao WhatsApp e fechamento de caixa.','Aprendizagem Profissional comercial em servições de vendas, Senac Alegrete',NULL,'Administrativa, Financeiro',NULL,NULL,'Instagram','Não','1900','Sim',NULL,'Assistente administrativo','Sou muito alegre, simpática, honesta, pontual e responsável. Gosto de estar rodeada das pessoas que amo. Gosto de estar de bem com a vida','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-30T17:13:00.000Z'::timestamptz),
  ('Ana Carolini Souza','carolana330@gmail.com',NULL,'51982506632','2001-11-23',24,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1fBCkWquaJP5ijv3Q8m173bMlTEaCYQJh','Gestão em recursos humanos','Ensino Médio Completo','Cruzeiro do Sul','2029-12-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Hospital Santa casa 2021-2022 vaga temporária auxiliar administrativo/ laboratório na celular recepção','Cursos de pacote office, administração empresarial',NULL,'Administrativa, Comercial, Financeiro, Marketing',NULL,NULL,'Facebook','Não, mas conheço tainan Pugens','2300','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-30T18:03:00.000Z'::timestamptz),
  ('Henrique Cardoso Pauli','henriquecardosopdc@gmail.com',NULL,'51992772325','2008-03-28',17,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1AhletkUSbaOEKezussXPVYVJCheNpH67',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Aprendiz-Engenheira de produção – (09/2023 – 09/2025) Magna Cosma Internacional
• Atuação com excel, apoiando a Magna principalmente na parte de trabalho padronizado e soluções de problemas, buscando sempre a melhoria continua','Certificados e Treinamentos
-Industry 4.0 – 5h - 2023
-Regulatory and Safety Training: 2023
-Information Security Awareness Training: 2023
- Senac - Empreendedorismo Social 2023
- Senac - Empreendedorismo Digital 2023
- Senac - Protagonismo Estudantil, Sustentabilidade e Voluntariado 2023
-Basic Data Privacy Training: 2024
-Mafact Sustainability Management: 2024
- Senac - Técnicas Básicas de Auxiliar Administrativo 2024
- Senac - Design Thinking - Inovação, Experimentação e Empatia 2024',NULL,'Administrativa, Estágio',NULL,NULL,'Indicação','Gabriela de sap','1700','Não','Não','Administrativo/ RH','Um jovem buscando novas oportunidades de aprender e que acredita no poder da preparação e do conhecimento como fator de transformação no mundo. Habilidades em comunicação e em trabalho em equipe. Sem medo de errar e tentar novamente, aprendendo com as falhas e buscando sempre a melhoria continua. Profissional com 2 anos de experiência em padronização de processos, Problem-solving  e criação de trabalhos padronizados, com foco em eficiência e qualidade operacional. Atuei em iniciativas voltadas à ergonomia, avaliando condições de trabalho e propondo melhorias para segurança e bem-estar. Também possuo vivência na análise e avaliação de documentos de qualidade, assegurando conformidade com normas e realizando o envio e registro em bancos de dados corporativos. Ao longo da carreira, desenvolvi habilidades para analisar informações críticas, propor soluções de melhoria e colaborar para ambientes de trabalho mais seguros e eficientes. Reconhecido pela proatividade, capacidade de adaptação e busca constante por excelência na entrega de resultados. Caracterizo-me pela atenção a detalhes, organização e busca constante por melhorias contínuas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-30T18:18:00.000Z'::timestamptz),
  ('Vitória Muniz Rodrigues','muniz9761@gmail.com',NULL,'51995110037','2005-10-16',20,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1cATeDDIo2GDxpaaT5LtH9cMbDt_NNh5K','Gestão financeira','Ensino Médio Completo','Uniasselvi','2027-12-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','LM Construtora — Secretária 09/2024 – 12/2025  Realização de pagamentos de funcionários  Apoio em processos de licitação  Auxílio nos orçamentos de materiais  Controle financeiro da empresa  Controle de funcionários e folha de ponto Farmácia PMP — Operadora de Caixa 03/2024 – 09/2024  Atendimento ao cliente no caixa  Operação de cobrança e emissão de notas  Organização e abastecimento do setor  Auxílio no balcão de atendimento Infocell Assistência Técnica — Atendente 06/2022 – 01/2024  Atendimento ao público presencial e telefônico  Identificação de necessidades e dúvidas dos clientes  Venda de aparelhos telefônicos e acessórios  Organização do ambiente de atendimento','Minha área de estudo é Gestão financeira ( uniasselvi)
Tenho curso em Ciências Exatas ( FURG)',NULL,'Administrativa, Financeiro',NULL,NULL,'Agência de Empregos','Não,  fui indicado por ninguém.','2.000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-30T18:35:00.000Z'::timestamptz),
  ('DANIEL ALBANI PISONI','dpisoni.adm@gmail.com',NULL,'51996030139','2000-04-06',25,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1ZSTJxz3a1qYJFVMbI4_MsBGAHURuwGvF','Administração de empresas','Pós-graduação Incompleta','Uniasselvi','2024-07-22','Sou formado','Experiências Profissionais


Vero Internet

Supervisor de Suporte ao Cliente — 2 anos (jan/2024 – presente)
Analista Centro de Controle de Operações — 10 meses (abr/2023 – jan/2024)
Atendente de Suporte Técnico N2 — 3 anos 3 meses (fev/2020 – abr/2023)



Prefeitura Municipal de Caraá - RS

Assistente Administrativo — 3 meses (jan/2023 – mar/2023)



I-Conte Assessoria Contábil e Empresarial

Societário — 1 ano 6 meses (ago/2021 – jan/2023)



Banrisul

Estagiário — 2 anos 1 mês (dez/2018 – dez/2020)','GESTÃO DO TEMPO;
LIDERANÇA NA GESTÃO DE EQUIPES;
EXCEL BASICO
EXCEL AVANÇADO',NULL,'Administrativa, Marketing, Novos Negócios, Engenharia',NULL,NULL,'Instagram','Não','4.500,00','Sim','Augusto Ebert - 51 99873-6173','Quero inscrever-me no banco de talentos da Young!','Sou um profissional da área de Administração e Experiência
do Cliente, com mais de 5 anos de atuação no setor de
telecomunicações, atualmente como Supervisor de Suporte ao
Cliente na Vero Internet. Ao longo da minha trajetória, desenvolvi
sólida experiência em gestão de equipes, relacionamento com
clientes, análise de operações e otimização de processos, sempre
com foco em eficiência, qualidade e experiência do usuário.
Estou cursando pós-graduação em Inteligência Artificial e Ciencia de dados
e sou bacharel em Administração de Empresas, o que reforça
minha capacidade de aliar visão estratégica à execução prática.
Tenho como principais competências a liderança colaborativa,
comunicação clara e desenvolvimento contínuo, sempre buscando
evoluir e gerar resultados consistentes.
Aberto a novos desafios e oportunidades que me permitam
contribuir, aprender e crescer junto com as organizações em que
atuo.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-30T20:49:00.000Z'::timestamptz),
  ('Jaiane Fagundes Rita','jaiane.psicologa@hotmail.com',NULL,'53999725626','2000-08-16',25,'Solteiro(a)','1','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1d3nIBsp7XqwS9lep1RE7GfPaLbAc3Gth','Psicologia','Ensino Superior Completo','IDEAU BAGÉ','2023-12-12','Sou formado','•	Estágio na área Setor Direção - Câmara de Vereadores do Município de 
Candiota 18/01/2018 ~ 17/07/2018 
•	Estágio na área Setor Financeiro/Pessoal – Câmara de Vereadores do Município de Candiota 10/06/2019 ~ 09/12/2019 
 
•	Estágio na SMASI: VISITADOR SOCIAL – Prefeitura Municipal de Bagé-RS 22/06/2020 - 21/02/2022 
 
 
•	Estágio no setor de Diretoria Administrativa - Câmara de Vereadores do Município de Candiota 
•	08/03/2022 ~ 15/02/2023 
 
•	Vendedora- Loja de Roupas - Online via Instagram com envios para todo o Brasil Nome: @trespatriascandiota 
•	Contato: 53999749735 
•	Período: 10/05-2020 ~ 10/07/2025 
 
 
•	Atendimento Presencial – Empresa CGB Energia – Agência da Ceee Equatorial (Bagé) Ferista 

•	22/12/2023 – 10/05/2024 

•	Psicológa Clínica – Centro de Atenção Psicossocial (CAPS CACIMBINHAS) 13/05/2024 – 22/10/2025',NULL,NULL,'Administrativa, Comercial',NULL,NULL,'Instagram','Não. Prima de Éder Rita Faria','R$2.000,00','Sim',NULL,'Administrativo',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-31T16:08:00.000Z'::timestamptz),
  ('Jéssica Teixeira Cortes','jessicatcortes@hotmail.com',NULL,'53999730383','1988-09-21',37,'Solteiro(a)','0','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=12ydMLKPVGqC4SwJ3c7cF6imSI4vfmpMP','Agronomia','Ensino Superior Completo','Centro Universitário da Região da Campanha','2021-08-18','Sou formado','Puro Grão IND E COM de Arroz e Soja LTDA 
Analista Administrativo 
23/02/22 a 24/11/25
Atendimento ao cliente via whatsapp, balcão e ligação, compra de soja, emissão de contratos, relatórios, transferência de grãos comum e intacta 

Brasil e Brasil Agronegócio LTDA 
Auxiliar Administrativo 
05/08/20 a 30/08/21
Atuando na Contabilidade, fluxo de caixa, emissão de notas, cadastro de clientes e auxiliar em remates

Esc. De Consultoria Rural Batalha Agronomia 
Estagiária 
01/06/18 a 03/07/19
Fluxo de caixa, emissão de notas, contagem de estoque, digitalização, arquivamento, emissão e envio de documentação de clientes para financiamento em banco','Sou formada em Agronomia e possuo experiência na área Comercial e Administrativa de empresas',NULL,'Comercial, Financeiro, Licenciamentos',NULL,NULL,'Story No Watts De Um Funcionário','Não','R$3.000,00','Sim',NULL,'Financeiro','No momento estou fazendo aula para adquirir a CNH tipo B, mas já possuo a CNH tipo A','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-12-31T19:19:00.000Z'::timestamptz),
  ('Larissa Ramos Hahn','larissa.ramoshahn@gmail.com',NULL,'55997024752','1997-04-17',28,'Solteiro(a)','0','Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=16VULRo9TTMh77-eCl1oZAQ5FiosbkwOM','Marketing em andamento','Ensino Superior Incompleto','UNIASSELVI',NULL,'Não, no momento pausei/parei por um período.','Trabalho autônomo com marketing digital, socialmedia e marketing de conteúdo para redes sociais - 2020 -2026
Trabalho autônomo com marketing direcionado com aplicação de estratégias de branding e construção de marca/marca pessoal - 2025 - presente
Trabalho autônomo com consultorias e assessorias de marketing e comunicação, aplicando estratégias de branding e construção/segmentação e alimentação de tráfego orgânico - 2025 - presente
Trabalho no formato agência com equipe direcionada com foco em marketing de performance e comunicação omnichannel - 2025 - presente','Trabalho autônomo com estratégias de marketing e branding, através de planejamento e execução de estratégias de marketing omnichannel, focados em comunicação assertiva e da produção de conteúdo com foco em performance, alimentação e segmentação de tráfego orgânico e atuação como agência em equipe focada em posicionamento e marketing pessoal com construção de marca e branding',NULL,'Marketing',NULL,NULL,'Instagram','Acompanho a Carol Bortoluzzi e já tive a experiência de trabalhar em oportunidades separadas com a empresa, prestando serviços e em um projeto de consultoria de marketing e comunicação, no período pré e de lançamento do Erico Verissimo','R$3.500','Sim',NULL,'Marketing','Me chamo Larissa Ramos Hahn, trabalho de forma autônoma com minha própria agência com marketing e após um longo período trabalhando "sozinha" busco uma oportunidade para centralizar meu conhecimento prático em um projeto à longo prazo.

Tenho inglês intermediário-bom, com nível médio de conversação, aprendo rápido e tenho muito interesse em análises de mercado e tendências de comportamento humano.

Acredito que a compra seja uma consequência de comportamentos induzidos e que a venda precise ser assertiva para comunicar à nível emocional, encurtando o processo.

Também acredito na importância dos dados e números para a venda, mas que sem o olhar humano do "para quem" o "que" não chega em quem quer comprar.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-02T11:44:00.000Z'::timestamptz),
  ('Bruna Estela da Silva Quevedo','estela.queved@gmail.com',NULL,'55997097002','2000-06-06',25,'Solteiro(a)','0','Não','Itaqui/RS','https://drive.google.com/uc?export=view&id=1CsGlsX6d5Fwuem69desNeL3CdnkwFAcR','Gestão Financeira','Ensino Superior Incompleto','UNILASALLE','2026-08-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Santa Casa De Porto Alegre - Atual
Técnica de Hospedagem (líder)
Universitário de Canoas (FUNAM) 10/2023 – 10/2024 (Supervisora De Governança, Rouparia e 
Costura)
Meber Metais 08/2023 – 09/2023 - (Montagem e embalador)
Rinaldi S/A 06/2022 – 06/2023 - (Confecção de carcaça – pneumático)
Móveis Dalla Costa 06/2021 á 02/2022 - (Auxiliar de embalagem, auxiliar em máquina de corte e 
operador de máquina)
Fruteira São Roque 03/2021 á 06/2021 - (Operadora de caixa)
Supermercado Dato 09/2017 á 08/2018 - (Jovem aprendiz','UniLaSalle/Canoas – Gestão Financeira (cursando 4/4)
I’M Instituto Mix: Gestão Profissional e Empresarial 
I’M instituto Mix: Gestão Profissional e Pessoal - V2 
I’M Instituto Mix: Assistente contábil
Cursos Online Educa: Etiqueta Empresarial 
Cursos Online Educa: Oratória e Apresentação em Público
Data Master Informática: Secretariado 
Escola Estadual São Patrício – Ensino médio completo',NULL,'Administrativa, Comercial, Financeiro, Licenciamentos',NULL,NULL,'Instagram','Nao','2,5','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-02T14:44:00.000Z'::timestamptz),
  ('Camila Talhaferro Moraes','camilatalhaferro931@gmail.com',NULL,'55991410725','2000-04-24',25,'Solteiro(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=13bKsgVfO-7VtX301NJSSiEQ-9lkyah-2','Serviço Social','Ensino Superior Incompleto','Uninter','2026-01-02','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','CFC Moroca atendendo 4 anos desde 2021
Cootil Assistente administrativa 1 ano 2019','Assistente administrativo, Recursos humanos, Atendimento ao cliente e informática básica',NULL,'Administrativa',NULL,NULL,'Instagram','Não','2.5000','Não','Cfc moroca 34321361','Assistente administrativo','Comunicação clara
• Organização e disciplina
• Proatividade
• Bom relacionamento interpessoal','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-02T16:25:00.000Z'::timestamptz),
  ('Camila Talhaferro Moraes','camilatalhaferro931@gmail.com',NULL,'55991410725','2000-04-24',25,'Solteiro(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1iz3rkqDo1ug6DXuxH2BHC59X-XikGkMv','Serviço Social','Ensino Superior Incompleto','UNINTER',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Profissional com 5 anos de experiência administrativa, sendo 4 anos em CFC e 1 ano em
cooperativa. Atua com atendimento ao público, organização de documentos, suporte interno e
controle de informações. Proativa, responsável e com facilidade de adaptação.','Assistente Administrativo
• Recursos Humanos
• Atendimento ao Cliente
• Informática Básica e Pacote Office',NULL,'Financeiro',NULL,NULL,'Instagram','Não','2.500','Não','CFC Moroca 34321361/ 984412333','Estágio Financeiro','Comunicação clara
• Organização e disciplina
• Proatividade
• Bom relacionamento interpessoal','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-02T16:31:00.000Z'::timestamptz),
  ('Pâmela Valença Ouriques','pamelavalenca.csm@gmail.com',NULL,'55984534968','1999-02-14',27,'Solteiro(a)','1','Não','Itaqui/RS','https://drive.google.com/uc?export=view&id=1kY1SJdEP6qHV8yrZZEpcpwHC7QqMON8c','Administração','Ensino Superior Incompleto','Cruzeiro do Sul','2029-01-02','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Experiência de mais de dois anos como assistente administrativo na construtora csm Ltda. Início em 2021 e fim no ano de 2023.',NULL,NULL,'Administrativa',NULL,NULL,'Instagram','Não','A tratar','Não',NULL,'Auxiliar administrativo',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-02T16:59:00.000Z'::timestamptz),
  ('Igor Ribas Rosa','igorribasr@gmail.com',NULL,'51995170396','1998-03-22',27,'Casado(a)','3','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1_DeujefCuYXwBJ7KmllF2qphVU-qj4BF',NULL,'Ensino Superior Incompleto','UNINTER (Cursando Tecnólogo em Marketing)',NULL,'Não, no momento pausei/parei por um período.','1) Nome da Empresa: Rupe Creative (Agência de Marketing e Estratégia)
2) Cargo que ocupo: Fundador e Gerente de Marketing Sênior
3) Data de início e final: Jan/2017 – Atualmente (9 anos de experiência de mercado)
4) Principais atividades: Atuo como estrategista e gestor de marketing "hands-on" (mão na massa), atendendo clientes de diversos nichos com foco em construção de marca e performance.

Gestão 360º: Planejamento completo de marketing, desde o branding até a campanha de vendas.

Design e Criação: Produção ágil de peças publicitárias, identidades visuais e apresentações comerciais utilizando domínio avançado de Adobe Photoshop, Canva e Edição de Vídeo.

Inovação com IA: Implementação de Inteligência Artificial nos processos criativos para escalar a produção de conteúdo e reduzir custos operacionais.

Tráfego e Dados: Criação de campanhas focadas em ROI e análise de métricas para otimização constante de resultados.
_____

1) Nome da Empresa: DocService IT Solutions (Startup de Tecnologia)
2) Cargo que ocupei: Publicitário / Gestor de Marketing
3) Data de início e final: Jun/2021 – Jan/2023 (1 ano e 8 meses)
4) Principais atividades: Fui o responsável integral pelo departamento de marketing desta Startup, atuando desde o planejamento estratégico até a execução tática das campanhas.

Gestão de Lançamentos: Planejamento e divulgação de eventos e workshops da empresa, garantindo adesão e visibilidade da marca.

Marketing Digital 360º: Criação de todo o enxoval criativo (Cards para redes sociais, banners) e gestão de canais de aquisição.

Comunicação Direta: Implementação de estratégias de WhatsApp Marketing e E-mail Marketing para nutrir leads e gerar oportunidades comerciais.

Foco em B2B: Desenvolvimento de estratégias de conteúdo voltadas para o mercado corporativo, alinhando a comunicação técnica com objetivos de vendas.
_____

1) Nome da Empresa: Simpay (Fintech / Tecnologia Financeira)
2) Cargo que ocupei: Coordenador de Marketing
3) Data de início e final: Jan/2023 – Dez/2024 (2 anos)
4) Principais atividades: Liderei o setor de marketing desta empresa de tecnologia financeira, focando na aquisição e retenção de usuários em um mercado altamente competitivo.

Estratégia Corporativa: Desenvolvimento de planos de marketing alinhados às metas de crescimento da Fintech.

Conteúdo e Multimídia: Gestão do calendário editorial e produção técnica de materiais ricos, incluindo edição de vídeos institucionais e posts para redes sociais.

CRM e E-mail Marketing: Estruturação de réguas de relacionamento automatizadas para nutrição de leads e fidelização da base de clientes.

Coordenação de Projetos: Organização de demandas internas e garantia da consistência da marca em todos os pontos de contato digital.','Advanced Leadership Seminar (Seminário de Liderança Avançada) Haggai International — Abril de 2024.

UNINTER Centro Universitário Internacional
Curso Superior de Tecnologia (CST), Marketing — Cursando',NULL,'Comercial, Marketing',NULL,NULL,'Instagram','Rodrigo Ribas (Marketing)','R$5.000','Sim','Rodrigo Ribas (Irmão) - (51) 998 730 488','Marketing','Para além do currículo, sou o pai orgulhoso do Davi Lucca, do José Otávio, da Maria Luiza e à espera da Maria Cecília, e marido da Vitória. Minha família é meu maior combustível e o motivo pelo qual busco sempre a excelência no que faço.

Sou um entusiasta de tecnologia e Inteligência Artificial. Nas horas vagas, estou sempre testando novas ferramentas e automações (é um hobby que virou diferencial profissional). Acredito que o marketing deve ser humano na essência, mas tecnológico na execução. Busco na Young um lugar onde eu possa aplicar essa visão inovadora e crescer junto com uma empresa sólida da nossa cidade.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-02T18:34:00.000Z'::timestamptz),
  ('Micaéla Santos de Abreu','micaelava17@gmail.com',NULL,'55984437016','1996-08-09',29,'Solteiro(a)','1','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=18WRD5Hewu1NzstdHootdE2rfoxA0XZV8','GESTÃO DE RECURSOS HUMANOS','Ensino Superior Completo','Unifael','2023-12-25','Sou formado','Meu trabalho atual é como Auxiliar de Atividades Sociais,  em uma escola do município no qual faço parte do quadro fazem 4 anos, mas trabalho na área fazem 12 anos.
No momento busco trabalhar na minha área de formação,  quero novas oportunidades e experiência.','Sou formada em Gestão de RH, iniciei agora um pós em Supervisão escolar  e pretendo fazer pós de gestão pública.',NULL,'Administrativa, Comercial, Financeiro, Engenharia',NULL,NULL,'Instagram','Não.','Partindo de um salário comercial mais benefícios.','Sim','Rúbia Meneses/ Vice- Diretora
55996815884','Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-02T19:11:00.000Z'::timestamptz),
  ('enrique irala','enriquelopes01@gmail.com',NULL,'55996155310','1993-05-10',32,'Solteiro(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1akOZRlRxy8CI0Sa0Iv16mjUzDYqF04Hn','engenheiro agronomo','Ensino Superior Completo','universidade federal do pampa','2024-02-16','Sou formado','na empresa sheik biju tinha o cargo de marketin, realizava toda estrategia de vendas no commerce, criação de conteudo com fotos e edição de videos, treinamentos de vendas e pós vendas, gestão das redes sociais. tive a experiencia de abril 2022 até março de 2023

na empresa projem energia solar e soluções eletricas, ocupei cargo de gerente marketing, realizava criação de conteudos como fotos e videos e edições, criação de cards para as redes sociais, funil de vendas e gestão de leads, orçamentos e pós vendas dos clientes.','sou formado em agronomia, mas estou realizando especialização em marketing, ja trabalhei na area como gestor de marketing em 2023 era responsavel pelas midias sociais da empresa em ramo de varejo, em 2024 tive a oportunidade de ser gerente de uma empresa de energia solar e soluções eletricas, realizava estrategias de vendas e negociações, carteira crm e funil de vendas',NULL,'Marketing',NULL,'https://drive.google.com/open?id=1tOj1BtHnDnQsAkebhYq4XLtrFbrCsXSP','Instagram','não','1850','Sim','graciele_requelme gerente da sheik biju','Marketing',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-02T23:22:00.000Z'::timestamptz),
  ('Mari T dos Santos','mtsantos1807@gmail.com',NULL,'55996802280','1987-01-09',39,'Solteiro(a)','1','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1TmXbGVYB5y6gO5a6kjpQRZncgQVF9S_A',NULL,'Ensino Superior Incompleto','Unifacvest','2027-06-16','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Angelos Assistência Familiar, Agente Funerário, outubro/2020 - novembro/2021',NULL,NULL,'Administrativa',NULL,NULL,'Google','Não','3200,00 aproximadamente','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-03T10:39:00.000Z'::timestamptz),
  ('Douglas Bassani Aquino','douglasaquino.aluno@unipampa.edu.br',NULL,'+5511920018934','1995-10-05',30,'Solteiro(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1p0ZzvT1uVUBUwGJ2HKo0Qo4n6vO8KZFH','Engenharia Cartográfica e de Agrimensura','Ensino Superior Incompleto','Unipampa','2030-12-03','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Trabalhei como administrador de Empresas próprias e estágios em escolas profissionalizantes','Trabalho na área de informática e tecnologia desde 2012 e no momento me aperfeiçoando na engenharia cartográfica',NULL,'Estágio, Marketing, Novos Negócios, Engenharia',NULL,NULL,'Instagram','Não','2500','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-03T13:48:00.000Z'::timestamptz),
  ('Jéssica Gosch de Vargas','Jessicagdevargas97@gmail.com',NULL,'51997846434','1997-07-11',28,'Solteiro(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1wY3agkIdUMt-qpAJ4-XHn8ObP8f0HD78',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Boa tarde! Meu nome é Jéssica, tenho 28 anos e sou mãe de um menino de 4 anos. Tenho experiência sólida com atendimento ao público, e setor administrativo, tendo trabalhado por 3 anos em uma transportadora no setor de pendências, onde desenvolvi habilidades em sistemas internos, pacote Office, atendimento por e-mail, telefone e WhatsApp, cobrança e resolução de demandas. Antes disso, atuei por 3 anos no Supermercado Nacional, também diretamente com o público, fortalecendo minha comunicação, agilidade e capacidade de lidar com diferentes situações do dia a dia. Sou uma profissional proativa, com facilidade de aprendizado, boa relação com colegas e foco em resultados. Caso seja selecionada, espero agregar ao time e contribuir para o crescimento conjunto da equipe e da empresa.',NULL,NULL,'Administrativa, Comercial, Financeiro, Licenciamentos',NULL,NULL,'Carteira De Trabalho Digital','Nao','2,300.00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Boa tarde! Meu nome é Jéssica, tenho 28 anos e sou mãe de um menino de 4 anos. Tenho experiência sólida com atendimento ao público, e setor administrativo, tendo trabalhado por 3 anos em uma transportadora no setor de pendências, onde desenvolvi habilidades em sistemas internos, pacote Office, atendimento por e-mail, telefone e WhatsApp, cobrança e resolução de demandas. Antes disso, atuei por 3 anos no Supermercado Nacional, também diretamente com o público, fortalecendo minha comunicação, agilidade e capacidade de lidar com diferentes situações do dia a dia. Sou uma profissional proativa, com facilidade de aprendizado, boa relação com colegas e foco em resultados. Caso seja selecionada, espero agregar ao time e contribuir para o crescimento conjunto da equipe e da empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-03T15:16:00.000Z'::timestamptz),
  ('Hellen Cardoso Santos','hellencs2203@gmail.com',NULL,'995926939','2008-03-22',17,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1L8qxKVzTQRNKPyY2TsCeLz55jS0ke9Sw',NULL,'Ensino Médio Completo','Gregório de Mendonça','2025-12-18','Não, no momento pausei/parei por um período.','Prefeitura municipal de Santo Antônio da Patrulha
Estagiária
04/11/2024 - 17/12/2025
Auxiliava em praticamente todas as atividades dos demais colegas',NULL,NULL,'Administrativa',NULL,NULL,'Agência de Empregos','Não','2,5','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-03T21:50:00.000Z'::timestamptz),
  ('Ruth Abigail Moreira Agostini','ruthabigail031120@hotmail.com',NULL,'55984348881','2000-11-03',25,'Casado(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1twQnujzHnNIqdf88fB37smqv-VamA-G7','Ciências Contábeis','Ensino Superior Completo','Anhanguera','2022-03-04','Sou formado','Auxiliar Administrativo
Vitivinícola Cordilheira de Sant''
ana | Março de 2025 - Agosto de 2025
Financeiro
Controle de estoque
Faturamento
Atendimento ao público
Ventas
Controle de alvarás

Serviços Contábeis
Contabilidade Autônoma | Novembro de 2023 - Fevereiro de 2025
Imposto de Renda
Abertura e fechamento de Mei
Lançamento de notas fiscais

Auxiliar Escritório / Administrativo
Reinigend | Agosto de 2022 - Maio de 2023
Lançamentos de notas fiscais
Faturamento
Negociação de cotação de frete
Organização da parte logistica

Auxiliar Escritório
Provisão Supermercado | Agosto de 2021 - Junho de 2022
Conferir Estoques
Conferir mercadorias recebidas
Lançamentos de notas fiscais
Alterações de valores referente aos produtos
Conferir mercadorias com data curta
Auxiliar na Administração e Gerenciamento
Fechamento de caixa
Coordenar as redes sociais

Auxiliar Contábil ( Estágio)
Contabilidade Azevedo | Outubro de 2019 - Março de 2020
Lançamentos Contábeis
Lançamentos de notas fiscais
Escrituração','Gestão Financeira
Workshop DP e eSocial do Zero

SEBRAE - 3h
Nith Treinamentos - 4h
Propaganda e Marketing',NULL,'Administrativa, Financeiro',NULL,'https://drive.google.com/open?id=1NGfmB9HgJ9ABPYuCuI6PRJ5at8qCMuPs','Instagram','Não','R$ 2.500 para cima','Não','Silvia - 5598435-0764 (Provisão)','Assistente administrativo ou financeiro','Gostaria de fazer parte da equipe','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-04T00:47:00.000Z'::timestamptz),
  ('Stephanie Teixeira da Silva','stephanieteixeira250@gmail.com',NULL,'55984476981','1992-06-03',33,'Solteiro(a)','0','Não','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1cueW_kjg9L1BaGSMrzP1Cwp37vKcdW0J','Economia','Ensino Superior Incompleto','Unipampa','2027-06-30','Não, no momento pausei/parei por um período.','Assistente Administrativo Financeiro
BENAPAR OBRAS DE INFRAESTRUTURA EIRELI-São José, SC
outubro de 2020 a janeiro de 2023
Gerenciamento de pagamentos, notas fiscais, ordens de compra e fechamento de caixa. Controle de fluxo
de caixa, planilhas e documentação de produção da obra. Responsável pela contratação de funcionários e
gestão de folha de ponto. Destacada pela pontualidade e capacidade de organização em tarefas críticas.

Analista de Licitação
SIS Licitações-São José, SC
março de 2023 a Data Atual
Realização de cotações, pedidos e disputas de pregões. Gerenciamento e solicitações de prorrogação de
prazo. Colaboração proativa na melhoria de processos internos.
Experiência com os Sistema ERP: Winner. Effecti, leitura, análise e interpretação de editais;
Montagem de declarações propostas e separação da documentação para licitações;
Manter a documentação atualizada entre outras atividades da área.
Fazer cadastramento das licitações para disputa nos orgãos ou portais (Bec, Comprasnet,
Compraspublicas, Licitações-e, BNC, BLL COMPRAS, E-LIC, LICITAR DIGITAL,..entre outros portais)
Monitorar chats dos pregões e das modalidades dispensas e cotações;
Acompanhar julgamento das propostas e negociar quando necessário;
Enviar propostas atualizadas e documentos complementares quando solicitados.
Conferir as atas para assinatura e recebimento de empenho
Fazer relatorios semanais dos pregões em julgamentos, homologados etc...
Responder e-mails.e entre outras atividades relacionadas ao setor.
Acompanhar o processo das licitações até o envio do empenho.
Como preparar uma defesa, recursos, contrarrazões, etc..',NULL,NULL,'Administrativa, Comercial',NULL,'https://drive.google.com/open?id=1Ii7c7H5OjHZu0qv2DvT9xih7TVRSQMk5','Instagram','Não','3000','Sim',NULL,'Administrativo','Certificações e licenças
Controle e manutenção de estoque Assistente administrativo
outubro de 2021 a outubro de 2022
Administração de recursos humanos
agosto de 2022 a setembro de 2022
Recrutamento e seleção
agosto de 2022 a setembro de 2022
Assistente de RH
agosto de 2021 a agosto de 2022','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-04T02:00:00.000Z'::timestamptz),
  ('Ivânia de Souza Rodrigues','ivania9306@hotmail.com',NULL,'51980125264','1985-05-01',40,'União estável','2','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1vvJ1Lo4BLqnXWi7Iyxcse_yiYB55nn73','Administração de empresas','Ensino Superior Incompleto','Uniasselvi',NULL,'Não, no momento pausei/parei por um período.','WILD IMÓVEIS - SDR - Pré Vendas - Dez/24 até Out/25.
Realização ativa de ligações para leads qualificados oriundos das ações de marketing;
Agendamento estratégico de reuniões entre clientes e Corretores, contribuindo para o
 aumento da taxa de conversão; Atualização contínua do CRM com informações
detalhadas sobre cada contato, garantindo precisão nos processos de vendas;
Aplicação de scripts e fluxos de qualificação alinhados às diretrizes comerciais da
 empresa; Colaboração com os times de marketing e Corretores na otimização das
estratégias de captação e nutrição de leads;
DALLÉ CONSTRUTORA - SDR - Pré Vendas -
Out/23 até Dez/24
·Realização de ligações diárias para clientes oriundos do atendimento da equipe de marketing; Agendamento de reuniões entre clientes e o time de vendas; Manutenção do cadastro de clientes atualizado com as informações detalhadas sobre cada contato; Seguir scripts de chamadas e processos de qualificação definidos; Colaboração com a equipe de marketing e vendas para melhorar as estratégias de captação de leads; Acompanhamento e relato de resultados e métricas de desempenho; participação de treinamentos e reuniões de equipe para aprimorar técnicas de qualificação e agendamento. Monitoramento e registro de métricas de
 desempenho (KPIs); Participação ativa em treinamentos internos e reuniões de
alinhamento para aprimoramento de técnicas de prospecção.

Um pouco das minhas habilidades profissionais.
Profissional com sólida experiência no setor administrativo, destacando-se em atendimento ao cliente, pré-vendas (SDR) e gestão de rotinas administrativas. Atuou em setores como serviços financeiros e construção civil, demonstrando amplo domínio em processos administrativos e operacionais. Possui forte capacidade de comunicação e relacionamento interpessoal, sempre com foco em resultados. Com perfil proativo e colaborativo, contribuiu significativamente para a eficiência de equipes comerciais e operacionais, sempre orientado a processos.','Atualmente estou retomando minha graduação em Tecnólogo em Gestão Financeira, precisei pausar por motivos pessoais. Tenho curso de Libras e informática. Fiz um curso de LGPD e atendimento ao cliente junto a Construtora Dallé onde trabalhei em Bagé.',NULL,'Administrativa, Comercial, Financeiro',NULL,NULL,'Instagram','Não','Em torno de R$2.300,00','Sim','Gabriel Rodrigues - (Responsável pelo setor Comercial da Dallé Construtora)
(53) 999362732','Auxiliar Administrativo ou setor Comercial.','Eu sei que a minha experiência é mais voltada para o setor Comercial, porém, estou retomando meus estudos na área Administrativa e gostaria muito de uma oportunidade para que eu possa crescer e agregar junto a Young. Tenho habilidade em Libras, sou pró ativa e um tanto curiosa quando quero aprender algo novo.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-04T13:27:00.000Z'::timestamptz),
  ('Carina Rodrigues dos Santos','carinasarates@gmail.com',NULL,'51981092286','1984-01-26',42,'União estável','3','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1EULwdTN6uY6fouroUrIGoSoeUHwjFQjz','Ciências Contábeis','Ensino Superior Incompleto','Uniasselvi',NULL,'Não, no momento pausei/parei por um período.','1) Maria Conceição Barrufi ( escritório contábil) auxiliar de escritório em geral. 02/01/2005 - 24/11/2009
2) Artefatos de Cimento Maravilha, Gerente Comercial. 02/08/2/10 - 13/04/2012
3) Supermercado Maravilha, Auxiliar administrativo. 22/11/2012 - 01/07/2014',NULL,NULL,'Administrativa',NULL,NULL,'Agência de Empregos','Não','3.000,00','Não','Eraci , escritório contábil, 51-36661230','Auxiliar financeiro','Gosto muito de aprender e também tenho fácil em trabalhar em grupo. Vasta experiência administrativa , já fui empresária autônoma.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-05T18:59:00.000Z'::timestamptz),
  ('Cristiane Azevedo dos Santos','santoscris150583@gmail.com',NULL,'51997490519','1983-05-15',42,'Divorciado(a)','2','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=15EOVP4OWimXZ_M66rEFi5zJtjMjswf8n','Administração de empresas','Ensino Médio Completo','Senac','2026-12-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Ótica Exata - 09/23 - 12/23 - Caixa/Crediário/Atendimento ao cliente 
Combo atacadista - 09/24 - 11/24 - Atendimento ao cliente/Operadora de Caixa
Imobiliária Dagostin - 01/25 - 03/25 - Atendimento ao cliente/ Auxiliar administrativo 
Autônoma 04/25 - até o momento','Curso de Auxiliar em Recursos Humanos - Senac
Cursando Técnico em Administração - Senac',NULL,'Administrativa',NULL,NULL,'Agência de Empregos','Não','1.800,00','Sim',NULL,'Estágio Financeiro','Boa tarde, tenho conhecimento no setor administrativo, de imobiliária, óticas e engenharia.
Atendimento ao cliente, cuidadora e cozinheira 
Pró - ativa, com disposição para aprender e colaborar para o crescimento da empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-06T20:49:00.000Z'::timestamptz),
  ('Camila Gonçalves Marques Bolson','camilagmarques8@gmail.com',NULL,'55991203834','1993-09-28',32,'Casado(a)','2','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=122btYes8nusFIM-YlmV1OLWSSW9qJjVj','Técnico em Administração','Ensino Médio Completo','Uab - Polo Itaqui','2025-10-17','Sou formado','Prefeitura Municipal de Santa Maria - Estágio - De 07/10/2019 a 13/01/2021
Atendimento ao contribuinte, emissão de guias de pagamento, relatório de débitos, tramitação de processos judiciais para Procuradoria Geral do Município.','Curso Profissionalizante de Recursos Humanos - Exattus

Curso de Informática - Exattus 

Curso Técnico em Administração - UAB - Polo Itaqui',NULL,'Administrativa, Comercial, Financeiro',NULL,NULL,'Instagram','Não','A combinar','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa que gosta de aprender, de ter novas experiências e que gostaria muito de aprender e contribuir para com a empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-07T00:35:00.000Z'::timestamptz),
  ('MARICELE AIRES PIRES','maricelepires.eng@hotmail.com',NULL,'55996909678','1998-04-17',27,'Solteiro(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1SfB9CL-KKQG5ASwfYm0vSYfTvXC9-TAK','Engenharia Civil','Ensino Superior Completo','ANHANGUERA - CAMPOS PELOTAS','2021-02-22','Sou formado','Ainda na faculdade eu comecei estágio na empresa GEBRAS (Grupo Energia do Brasil), na cidade de pelotas. Lá eu tinha o cargo de analista de eficiência energética, meu trabalho era voltado à clientes de todas as modalidades, tais como, AMBEV no qual eu era responsável pelas unidades do RS, SP E RJ, lojas da cidade de pelotas, shopping, mercados e clientes rurais. Eu analisava as faturas de energia e buscava melhorias com estratégias de economias. Além disso, o trabalho se estendia com quantitativos de CO2 - referente a energia solar. Eu trabalhei nesta empresa de agosto de 2019 até janeiro de 2022. 
Após sair de lá, vim embora para a minha cidade natal Itaqui, no qual comecei trabalhos como pessoa jurídica, no qual eu trabalho atualmente, presto serviços com projetos, sendo: Arquitetônicos, elétricos, prevenção de incêndio, laudos técnicos. 
Atualmente também presto serviços para o banco do Brasil, com projetos elétricos.','Sou formada em engenharia civil, e estudante de engenharia elétrica.',NULL,'Engenharia',NULL,NULL,'Instagram','Não.','A partir de R$ 5.000,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Bom, sou formada desde 2021 em engenharia civil - na primeira empresa no qual trabalhei como estagiária, fui efetivada - porém resolvi vir embora em 2020 na pandemia, trabalhei até 2021 na mesma empresa em Home office. Após esse tempo resolvi encarar a vida como pessoa jurídica, fazendo prestações de serviços, trabalho até o momento como PJ, faço projetos com maior ênfase em projetos elétricos e de prevenção à incêndio, no ano de 2024 fui contratada (ainda como prestadora de serviços PJ) por uma empresa de Brasília para fazer o acompanhamento da execução  de uma pista de skate feita aqui em Itaqui, a execução foi concluída em setembro de 2025. Após a conclusão dessa obra, fui contratada pelo banco do brasil para serviços de projetos elétricos, no qual já foram todos entregues. Estou  aqui em busca de novas oportunidades e desafios, alias buscar o novo, sempre é bom, não é mesmo?! Se surgir a oportunidade, tenho disponibilidade para mudanças de cidade, tenho CNH B e CREA ativo, com vistos em RS, RJ e SC. Habilidades: boa comunicação, trabalho em equipe, gestão de projetos e acompanhamento técnico.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-07T14:11:00.000Z'::timestamptz),
  ('Leonardo Portigliotti de Souza','leonardoportigliotti@gmail.com',NULL,'51991743932','1996-01-24',30,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1G5Q_T5xyHxvcdnBu_WBqHujsVw66wT41','Engenharia Civil','Ensino Superior Completo','Centro Universitário Ritter dos Reis - UniRitter','2019-01-25','Sou formado','SUM Engenharia SP LTDA
Engenheiro Civil | 2025
Gestão de obras
Planejamento
Compatibilização de projetos
Coordenação de equipes
Execução de obra
Controle de cronograma
Gestão e acompanhamento de clientes
Levantamento de quantitativos
Medição de empreiteiros
Contratação de mão de obra e terceiros

Construtora Belmais SA
Engenheiro Civil | Líder de Obra | 2025
C A R R E I R A
Gestão de obras
Planejamento
Controle de Cronograma
Coordenação de equipes
Execução de obra
Solicitação de insumos e equipamentos
Administrativo de obra
Atendimento a órgãos competentes e fiscalização
Contratação de equipe
Medição de empreiteiros
Relatório e Diário de obra

Prumosul Engenharia e Construções LTDA
Auxiliar de Engenharia | 2019 - 2025
Gerenciamento de obras
Acompanhamento técnico
Balancete financeiro de obra
Coordenação de equipes
Contratação de terceiros
Desenvolvimento de projetos
Compra de materiais, equipamentos e insumos
Negociação fornecedores
Atendimento a clientes
Logística

Prumosul Engenharia e Construções LTDA
Auxiliar de Escritório | 2012 - 2019
Atendimento a clientes e fornecedores
Atividades administrativas
Auxílio no desenvolvimento de projetos
Auxílio no acompanhamento de obras
Orçamento de insumos
Compra de suprimentos para o escritório','A graduação em Engenharia aconteceu de modo natural por já estar inserido no meio da construção civil através da minha família que trabalhava no ramo. Aprendi muito na prática, mas o curso trouxe toda a visão do teórico por trás da obra. Durante a graduação realizei alguns cursos de curto prazo sobre AutoCAD, segurança do trabalho e meio ambiente, onde expandiu ainda mais minha percepção sobre os temas. Após graduado, analisei cursar especialização nas áreas de gestão de obras, pessoas e projetos, sendo ainda objeto que almejo realizar.',NULL,'Administrativa, Arquitetura, Comercial, Engenharia',NULL,'https://drive.google.com/open?id=18nEMbZosHYDcln4Bahaislx3W2kHmhS3, https://drive.google.com/open?id=1kkIhrh8pAD9HZsYwcK8CICiHaKUwYzCn, https://drive.google.com/open?id=1zgZVNaTTKcdBxnaqhLYy87X7zT5Q2-tl, https://drive.google.com/open?id=1aMGQtVjjai6BMJbrYYBcK143n49CTrIt, https://drive.google.com/open?id=1E7WUhlNs_H6uWAU_90cyuQeW644hEg2p','Agência de Empregos','Carla Tressoldi','12000','Sim','Prumosul Engenharia
Eng. Lucídio
(51) 99174-3932','Engenheiro Civil','Bom, sou uma pessoa bem descontraída, de comunicação fácil. Na engenharia e obras, que sempre estiveram presentes na minha vida, gosto de estar no canteiro de obras, mantendo relações desde os prestadores de serviço até ao cliente, resolvendo as situações, executando o projeto. Nas horas vagas, gosto de estar em família e amigos, churrasco e alegria. Gosto também de viajar, conhecer lugares e descansar. Ainda, sou grande apreciador de automobilismo, então quando posso, estou envolvido com algo do meio.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-07T19:02:00.000Z'::timestamptz),
  ('Pedro Gomes Rolim','rolim.pg@gmail.com',NULL,'51997411710','1993-01-15',33,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1CGXTa6oPpUKyvU_MTtLeKW2VZwg5Kx8U','Ciências Contábeis','Ensino Superior Completo','Unicnec','2021-06-30','Sou formado','Guimarães Indústria e Alimentos Ltda
2016 – 2025
Analista Fiscal
Conferência, classificação, escrituração e emissão de
documentos fiscais, apuração de impostos, emissão de
guias, manutenção do cadastro de produtos e análise
tributária, atendimento aos clientes e fornecedores,
definição de rotinas e melhorias dos processos fiscais,
auxílio na implementação do setor de compras e
liderança no projeto de controle de estoque.
Financeiro (Contas a Pagar)
Agendamento de pagamentos e controle do fluxo de
caixa, conciliação bancária e baixa dos pagamentos.
Magna International
2015 – 2016
Estágio – Financeiro (Contas a Receber)
Controle de recebíveis, conciliação e baixa dos
recebimentos, controle de inadinplência e cobrança de
débitos e emissão de relatórios financeiros.
Escritta Assessoria Contábil
2011 – 2015
Assistente de Sistemas Fiscais
Integração de diferentes softwares para obtenção de
dados, emissão e escrituração de documentos fiscais,
suporte e treinamento aos clientes para emissão de
documentos fiscais, validação e entrega de obrigações
acessórias (EFD Fiscal e Contribuições).',NULL,NULL,'Financeiro',NULL,NULL,'Agência de Empregos','Não','5.000','Não',NULL,'Financeiro','Contador formado desde 2021, com CRC ativo e mais de 10 anos de experiência nas áreas contábil, fiscal e financeira. Atuei em escritório de contabilidade, multinacional e indústria alimentícia, com destaque para emissão e apuração de impostos, implantação de controles fiscais e financeiros, contas a pagar/receber e fluxo de caixa. Tenho experiência em coordenação de equipes, implementação de processos, gestão de estoque e redução de custos, sempre com foco em eficiência e conformidade.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-08T11:33:00.000Z'::timestamptz),
  ('Rita Franciele de Moura Santos','ritafrancielesantos@gmail.com',NULL,'55935052659','1995-08-21',30,'Solteiro(a)','3','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=15JGkRWXj14Oy8EK_I4wp5H7KFMCvjx_a','Licenciatura em Matemática','Ensino Superior Incompleto','Anhanguera','2029-01-29','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Tenho experiência em atendimento, através de empresa familiar.','Curso Normal (magistério)',NULL,'Administrativa, Comercial, Licenciamentos',NULL,NULL,'Agência de Empregos','Não.','R$1.200,00','Não',NULL,'Consultor de vendas','Gosto de trabalhar em equipe, aprendo rápido, tenho experiência em atendimento ao público e sou proativa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-08T14:14:00.000Z'::timestamptz),
  ('Teylor Willian de Almeida de Carvalho','twialc@outlook.com',NULL,'48991763485','2005-06-01',20,'Solteiro(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1670Er3mek4-UHHhDKcr_0t4L8sGKXmbC',NULL,'Ensino Médio Completo','I.E.E. Osvaldo Cruz','2023-12-11','Não, no momento pausei/parei por um período.','1. RAROZ ALIMENTOS - Jovem Aprendiz (Auxiliar Administrativo)

14/02/2024 - 21/12/2024 - Emissão de Notas Fiscais para PF; Criação de Pedidos de Mercadorias; Registro de Contranotas.

2. GRAZZIOTIN S.A - Orientador de Vendas (Tottal Casa e Lazer)

16/04/2025 - 02/01/2026 - Ofertar os produtos da loja; organização de setor; bater metas; registro dos produtos no programa de vendas; gerenciamento dos produtos na plataforma de estoque; participação do programa de GD’s (Gerente em Desenvolvimento).','Administração e Mercado de Trabalho; Telemarketing; Pacote Office Básico e Avançado.',NULL,'Administrativa, Estágio, Marketing',NULL,NULL,'Facebook','Não','1.700','Sim','Danyllo Rocha Gonçalves - Gestor das Lojas Tottal (55 98119-6338)','Quero inscrever-me no banco de talentos da Young!','Tenho muita facilidade com programas de gestão. Todas as plataformas que eu não tinha conhecimento, quando fui ensinado eu consegui gerir todos os programas e tarefas que me eram dados para operar nos computadores. Desenvolvi um forte perfil comercial com a minha experiência em vendas, e aprendi a ter uma rotina administrativa com base na experiência anterior. Sou muito organizado, e cumpro com as tarefas dentro do prazo. Busco por uma oportunidade em uma empresa que também busque desenvolver seus colaboradores, pois acho que todo mundo tem um talento que pode se tornar uma descoberta.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-08T16:29:00.000Z'::timestamptz),
  ('Wendel Belmonte Trindade','belmontewendel@gmail.com',NULL,'55997080608','1992-10-09',33,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=10zLaZIIz9qPX59hoqDI0anM-OWPHRmSe','Arquitetura','Ensino Superior Completo','Instituto Federal Farroupilha','2025-04-04','Sou formado','1- Grupo S2L Scalla Engenharia
Duração: Janeiro de 2019 a Maio de 2019
Cargo: Estagiário em Arquitetura
Atividades Desenvolvidas: Atendimento ao público, desenho arquitetônico 2D, ofícios, levantamento de orçamentos diversos

2- Engenheira Márcia Raquel Goral de Paula Moraes
Duração: Fevereiro de 2022 a Janeiro de 2024
Cargo: Auxiliar na Graficação de Projetos.
Atividades Desenvolvidas: Atendimento ao público, desenho arquitetônico 2D e 3D, renders, levantamento, ofícios, acompanhamento de obras.

3- Grupo Maqções Engenharia
Duração: Junho de de 2024 a Novembro de 2024 
Cargo: Estagiário em Arquitetura
Atividades Desenvolvidas: Atendimento ao público, projetos arquitetônicos e complementares em BIM, levantamento, ofícios.','Formado em Arquitetura e Urbanismo, possuo ampla experiência com interpretação de projetos e graficação de projetos, com um maior foco nos projetos arquitetônicos, projetos elétricos e hidráulicos, lançamentos  de infraestrutura urbana e estudos de massas urbanas, aplicando todo o meu conhecimento para graficar nos softwares AutoCAD, SketchUp e Revit, utilizando também os softwares de renderização Twinmotion e Enscape.
Possuo conhecimentos nas áreas de legalização e regularização urbana, atuando do inicio ao fim do processo podendo desenrolar e resolver quaisquer embaraço que possa surgir pelo caminho.',NULL,'Arquitetura, Engenharia',NULL,'https://drive.google.com/open?id=1sD8yQLIj-krLfFlcZaoFi0VEafVMMu_r','Facebook','Não','R$ 3.000,00 a R$4.500,00','Sim',NULL,'Arquiteto e Urbanista',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-08T17:38:00.000Z'::timestamptz),
  ('Thomás Laydner Quinteiro Vasconcellos Leal','thomasleal053@gmail.com',NULL,'51991479813','1994-12-01',31,'Casado(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1CdLuUsj-axDbIQI-ic979SgTbe4qDEPH','Engenharia Civil','Pós-graduação Completa','UFRGS','2020-12-10','Sou formado','LBF Engenharia: julho/2019-atual. Responsável pelo gerenciamento e controle de produção da equipe técnica e operacional de obras e contratos: Residencial Winter Park – Fase III (496 unidades), Unidades Comerciais e de Serviços no Loteamento Irmãos Maristas (41 unidades), Contrato de Manutenção com a Prefeitura Municipal de Porto Alegre, Manutenção de Subestações da CEEE/Equatorial, Residencial Park Poente (244 unidades). Planejamento e programação de materiais, equipamentos e mão-de-obra, garantindo o alinhamento entre o cronograma executivo e as necessidades de produção. Realização das medições semanais para acompanhamento da evolução da produção e mensais para fechamento, assegurando precisão nos relatórios de progresso. Elaboração e acompanhamento de cronograma físico-financeiro, conduzindo reuniões semanais de metas para análise de desempenho, definição de estratégias e tomada de decisão. Utilização da plataforma Sienge para análise e autorização de solicitações de compra, 
elaboração e gestão de contratos, definição de previsões financeiras e análise de resultados por meio de relatórios gerenciais extraídos do sistema. Atuação direta no planejamento e controle de custos, assegurando aderência ao orçamento e identificação de desvios. Responsável pela gestão do sistema de qualidade das obras e contratos, incluindo fiscalização por amostragem no canteiro, avaliação de empreiteiros, elaboração e monitoramento de indicadores, participação em auditorias externas e compatibilização de projetos. Atuação integrada no gerenciamento de custos, prazos e resultados, garantindo eficiência operacional e conformidade técnica.','Pós Graduação em Gerenciamento de Projetos - Fundação Getúlio Vargas',NULL,'Engenharia',NULL,NULL,'LinkedIn','Carla Tressoldi','R$19.500,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','No presente momento, atuo como engenheiro civil responsável pelo gerenciamento e controle de produção de equipes com o principal objetivo de mantê-los motivados e comprometidos com o desenvolvimento das suas respectivas atividades. Sou um profissional dinâmico, comprometido, organizado, proativo e com foco em resultados. Minhas principais competências são: planejamento e controle da produção, controle de custos, domínio dos softwares Sienge e Excel e gestão do sistema de qualidade (SIAC/PBQP-h).','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-08T18:11:00.000Z'::timestamptz),
  ('Eduarda de Fraga Pisoni','eduadafragapisoni@gmail.com',NULL,'51999222130','2004-06-28',21,'Solteiro(a)','0','Não','Caraá/rs','https://drive.google.com/uc?export=view&id=1jeEwQrfm0Au1GD06SJVLjdwWs5-pj2lK','Gestão da Tecnologia da informação e cursando administração','Ensino Superior Completo','Uniasselvi','2024-07-17','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Eu trabalhei na prefeitura de caraá, na escola Carlos Gomes como auxiliar de sala de aula. Ajudando a professora em várias atividades como ajudar as crianças, ajudar ela na tecnologia( fazendo a chamada, ajudando a colocar as aulas no sistema...).','Fiz 2 cursos de computação ainda no ensino fundamental, onde aprendi as coisas básicas da informática e como ser profissional.',NULL,'Administrativa, Estágio',NULL,'https://drive.google.com/open?id=1uegqyQGJnDN6_4MOnjqiBBRJca5bRXb7, https://drive.google.com/open?id=19jurrqkL5QozSZLfVcTb_kV51ijN8j5r','Instagram','Não','R$2.000,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-09T13:27:00.000Z'::timestamptz),
  ('Renata Dorneles da silva','renatadorneles88@gmail.com',NULL,'55996277131','1987-05-28',38,'Divorciado(a)','2','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1K05Z7XTTiyB7W9A2QPLKLK4ZXd588GcG',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Vendedora na empresa Fábio Fagundes de Andrade trabalhei durante um ano',NULL,NULL,'Comercial',NULL,NULL,'Instagram','Nao','1640','Não','Fábio Fagundes de Andrade 55999625152','Comercial','Tenho cursos de vendas já trabalhei vários lugares de vendedora','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-09T16:32:00.000Z'::timestamptz),
  ('Deise da Rosa souza','deisecamargo210@gmail.com',NULL,'55997155145','1193-12-13',832,'Solteiro(a)','2','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1xMMWs-RUrlBBdHsYeoToWXoCoxwzrIdZ',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Responsável pelo depósito de gás na empresa Cancian&cancian','Técnico em enfermagem',NULL,'Administrativa',NULL,NULL,'Indicação','Não','Três mil','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-09T16:51:00.000Z'::timestamptz),
  ('Mauricio Quiles Raimundo','mauriciorquiles@gmail.com',NULL,'51998236552','1972-10-14',53,'Divorciado(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Cz3iJ3fAgKwraYqYNpdhjYkKCO-K_ee_','Geografia (graduação) / Economia Internacional e Diplomacia (pós-graduação)','Pós-graduação Completa','Unigran (graduação) / Uninter (pós-graduação)','2023-06-01','Sou formado','Granja Ribeiro; administrador/gestor de operações; março/2016-dezembro/2023; responsável por escritório em fazenda de grande porte. Administração das dinâmicas
relacionadas às operações diárias do administrativo e financeiro. Pagamento dos
compromissos com fornecedores, bancos e funcionários. Controle de recebimento de
credores e clientes. Emissão de notas fiscais e controle de planilhas de operações.

LMM Decorações Ltda; controlador de dados; abril/2013-abril 2014; controle das operações do sistema, implantação, organização e manutenção do banco de dados
da loja, eventual atendimento à clientes, fechamento diário de caixa.

F.A. Dos santos; controle de caixa; novembro/2011-setembro/2012; controle, operação e fechamento de caixa em Loja de shopping center.

Benoit Eletrodomésticos Ltda; consultor de vendas; novembro/2009-junho/2011; atendimento ao público, vendas diretas ao consumidor, organização de setor e estoque, foco nas vendas e metas.

Diementz Comércio de Eletromóveis Ltda; consultor de vendas; setembro/2001-janeiro/2008; atendimento ao público, vendas diretas ao consumidor, organização de setor e estoque, foco nas vendas e metas.

*entre outros anteriores','Graduado em Geografia (2021), pós-graduado em Economia Internacional e Diplomacia (2023), Inglês Intermediário (Nova Zelândia-2008), Técnico em Segurança do trabalho (2007).',NULL,'Administrativa, Financeiro, Novos Negócios, Engenharia',NULL,'https://drive.google.com/open?id=1y3ulHUIzbXp6HEQGlyWh0G-Wq3m0KCB8','Agência de Empregos','não','aproximadamente R$ 2.000,00','Sim','Alessandra Ribeiro (51-996512579)','Quero inscrever-me no banco de talentos da Young!','Tenho conhecimento razoável em Office, fiz intercâmbio e posteriormente morei na Nova Zelândia. Já trabalhei em vários segmentos e estou voltando ao mercado de trabalho após, por motivos de saúde, pedir o desligamento da última empresa. Sou 50+ e acredito no processo saudável de inclusão no mercado.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-09T18:29:00.000Z'::timestamptz),
  ('Décio Emanuel Monteiro Alderete','demanuel9002@gmail.com',NULL,'55984121422','2009-02-21',17,'Solteiro(a)','0','Não','Itaqui/RS','https://drive.google.com/uc?export=view&id=109MGK7y4DbJrt5hxB9TSZmHTjS0pfxqz',NULL,'Ensino Médio Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Trabalhei como Jovem aprendiz na empresa CGE Foletto, atuando como auxiliar de serviços gerais, atendendo clientes e preenchendo informações sobre vendas e funcionários em planilhas. O contrato foi do dia 10/04/2023 até 16/12/2024, infelizmente não pude ser efetivado na empresa devido a minha idade naquele momento.','Realizei os cursos de:
Informática (Básica)*
Auxiliar de serviços jurídicos 
Inglês (Básico ao Avançado, ainda cursando)*
  *Eu já tenho um conhecimento mais avançado do que o que obtive no curso (após finalizar ou atualmente)',NULL,'Estágio',NULL,NULL,'Indicação','não','R$800,00 (Não poderia trabalhar um períodos completo devido as aulas)','Sim','Paulo
+55 55 9691-2509
CGE Foletto 
(Contabilista que mais teve contato comigo no trabalho)','Quero inscrever-me no banco de talentos da Young!','Eu sou uma pessoa proativa, carismática e pontual, tenho conhecimento de ferramentas de edição de documentos (Como Word, Canva, Excel), além de fluência alta em inglês, mas estou sempre disposto a aprender mais. Estou acostumado a atender e trabalhar com pessoas, sempre sendo gentil, eficiente e respeitoso. Por fim, gostaria de agradecer a oportunidade, e, caso possível, perguntar quais foram as minhas respostas nesse formulário que foram menos atrativas, para que eu possa investir em melhora-las.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-09T21:30:00.000Z'::timestamptz),
  ('Alisson Peixoto Marta','mandarim2002@gmail.com',NULL,'51998369969','1976-03-02',49,'União estável','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1arXA6-Z5V-0KhNvw0W42qiGyq95cehE9',NULL,'Ensino Superior Incompleto','Faccat',NULL,'Não, no momento pausei/parei por um período.','FC florestal, ocupo o cargo Administrativo dando suporte para o financeiro e RH. Sou responsável por toda rotina administrativa da empresa. Onde estou atualmente desde 2021 completando 4 anos.','Tenho diversos cursos na área administrativa e financeira',NULL,'Administrativa, Comercial, Financeiro',NULL,NULL,'Agência de Empregos','Nao','2500','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-10T17:48:00.000Z'::timestamptz),
  ('Pamela Tuparay Da Costa','tuparaypamela@gmail.com',NULL,'55999190793','2003-12-01',22,'Solteiro(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1MNYMwSQ6IoHDEUaZgneTmuHNUi6f6Zqb',NULL,'Ensino Superior Incompleto','Universidade Federal do Pampa',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Estou procurando o meu estágio final, obrigatório da faculdade, ainda não tive contanto com a área a não ser pelos trabalho realizados pela faculdade, estou a procura de uma oportunidade profissional.','No momento estou curando o curso de Engenharia Cartográfica e Agrimensura, estou procurando um estágio na área, pois tenho planos de projetos para o meu futuro tcc.',NULL,'Estágio',NULL,NULL,'Instagram','Não fui indicado','Por agora, eu teria apenas a expectativa de um estágio, sendo remunerado ou não.','Sim',NULL,'Estágio Engenharia e/ou Arquitetura','Tenho algumas familiaridade com softwares, como Excel, Qgis, Autocad, mas caso precise posso aprender outros softwares específicos da empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-11T01:43:00.000Z'::timestamptz),
  ('jukasantiago10@gmail.com','jukasantiago10@gmail.com',NULL,'47991946759','1994-10-30',31,'Casado(a)','2','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=11jDyUTfTkIVfuTV1-owpNROfUR2VdkU9','Administração de empresas','Ensino Superior Incompleto','Uniasselvi','2028-01-11','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Santorini Imóveis - 2023/atualmente
Corretor de imóveis - especializado em prospecção, atendimento e fechamento de vendas de imóveis de alto padrão no litoral catarinense (Itapema e região)','Técnico em Transações Imobiliárias, curso de performance em vendas para mercado imobiliário de alto padrão.',NULL,'Administrativa, Comercial, Novos Negócios',NULL,'https://drive.google.com/open?id=1qNVooPRjldoNvqWoyDLQQJFb_142Uh_4','Instagram','Não','R$ 3.000,00 (quero trabalhar para ganhar sempre um bom salário!)','Sim',NULL,'Comercial','Sou Juliano Santiago, tenho 31 anos, atualmente atuo como corretor de imóveis na cidade de Itapema, focado em imóveis de alto padrão. Minha paixão com a área comercial começou a muitos anos, e eu abracei cada oportunidade que me foi apresentada. Tenho sede de aprender, atualmente curso administração de empresas para aplicar meus conhecimentos e aprender novas áreas de negociações.
Tenho 2 filhos, sendo um menino de 12 anos e uma menina de 3 meses, motivo que está me levando de volta para o RS, para o seio de família onde teremos uma rede de apoio maior para a educação de nossos filhos.
Tenho disponibilidade para residir em qualquer região, disponibilidade para viajar e estou entregue total para o que a empresa precisar de mim, bastante apenas uma oportunidade para fazer a diferença.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-11T18:27:00.000Z'::timestamptz),
  ('Natalia Guedes Correa','nataliaaguedescorrea@gmail.com',NULL,'55992261094','2001-08-18',24,'Solteiro(a)','0','Não','Itaqui/RS','https://drive.google.com/uc?export=view&id=1KI23h8yAFKklEk6272RytKlCLKzL7GlL','Administração de empresas','Ensino Superior Incompleto','Uniasselvi - polo São Borja','2029-06-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Experiência como Assistente de Escritório - EXPLORER CALL CENTER Porto Alegre. 
Experiência em Atendimento ao público - KUCHAK COMERCIAL DE ALIMENTOS Ijuí','Assistente de Recursos Humanos - IFSUL
Mercado financeiro - ANBIMA (CPA-20)
Resiliência e Liderança - PUCRS',NULL,'Administrativa, Comercial, Estágio, Financeiro',NULL,'https://drive.google.com/open?id=1vnJdhLO_lNGEanETPuGE57TSHZnYj57c','Indicação','Não','1.700','Sim','55984330115 (Nilsa) 
55996042358 (Andréia)','Quero inscrever-me no banco de talentos da Young!','Olá! Me chamo Natalia e tenho 24 anos. Sou estudante de Administração na instituição Uniasselvi. Ainda estou em conclusão do meu curso em Bacharel de Relações Internacionais pela Cruzeiro do Sul. 
Tenho disponibilidade de horários e dias, sem problema algum. 
Resido em Itaqui e moro a poucos minutos da Young! 
Peço uma chance apenas para mostrar minhas qualidades e meu profissionalismo. Grata desde já!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-12T14:52:00.000Z'::timestamptz),
  ('Alessandra Debus Borges','adebusborges@gmail.com',NULL,'55991727407','2003-04-25',22,'Solteiro(a)','1','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1F-5KZ0aVOdyEOt9dOSjnqBbS-VOPIt26','Engenharia Civil e Superior em Empreendedorismo, ambas em andamento.','Ensino Superior Incompleto','Universidade Cruzeiro do Sul','2027-01-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Empresa 1:
1) Empresa: Magazine Luiza;
2) Cargo: Auxiliar Administrativo Aprendiz;
3) Data: 2021-2022 (9 meses) 
4) Atividades do setor administrativo, telemarketing, pré e pós vendas, atendimento ao público e estoque.

Empresa 2: 
1) Empresa: Banco do Estado do Rio Grande do Sul
2) Cargo: Estágio Remunerado
3) Data: 02/2025 - atualmente
4) Atividades do setor administrativo; arquivo; atendimento aos clientes; recepção; atualizações de cadastro; auxílio para transações bancárias presenciais e por telefone.',NULL,NULL,'Administrativa, Estágio, Financeiro, Engenharia',NULL,NULL,'WhatsApp','Não','R$2.600','Não','(18) 98650-5410 - Gerente da Magazine Luiza, meu supervisor de estágio em 2021;
(55) 99956-4480 - Supervisor de estágio no Banrisul','Estágio Engenharia e/ou Arquitetura','Tenho familiaridade com AutoCAD e com o Pacote Office (Word, Excel e PowerPoint), que utilizo no dia a dia para organização, planilhas, relatórios e apresentações.
Participei por 8 anos de um projeto social, experiência que moldou muito minha forma de ver o mundo, fortalecendo valores como empatia, responsabilidade e trabalho em equipe.
Também pratiquei boxe e dança de salão, o que me ajudou a desenvolver foco, disciplina e comunicação.
Nos meus momentos livres, gosto de ler, cozinhar, viajar, passar tempo com a família e estar perto de animais — atividades que refletem meu lado criativo, curioso e humano.
Sou uma pessoa proativa, organizada e sempre aberta a aprender coisas novas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-12T15:08:00.000Z'::timestamptz),
  ('Jhenifer Rodrigues dos Santos','jhenifer.rsantos24@gmail.com',NULL,'55996315723','2005-01-13',21,'Solteiro(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1tZwZGBh77zJ5X_mTZgqInJkS3mLNqxX6',NULL,'Ensino Médio Completo','Cruzeiro do Sul','2026-12-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Lojas total 
Auxiliar de loja','Informática profissional (Data Master)
Gestão financeira (Cursando, Cruzeiro do Sul)',NULL,'Administrativa, Estágio, Financeiro',NULL,NULL,'Agência de Empregos','Não','1800','Sim',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-12T16:06:00.000Z'::timestamptz),
  ('Deivid Diego da Silveira','engenheirodeividdiego@gmail.com',NULL,'51985392323','1983-07-30',42,'Casado(a)','2','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=12MzJa5C5F7nMDi2EfZxnYfO0_kJFNCUr','Engenharia Civil','Ensino Superior Completo','Uniritter','2024-06-30','Sou formado','Multiplan S.A. ; Ass.Engenharia Civil; 14/04/2024 - 30/07/2025 - Atuação na área de Engenharia e Suprimentos em obras residenciais de alto padrão, incluindo os empreendimentos Golden Lake e Condomínio Lake House. Responsável pela elaboração de orçamentos, negociações com fornecedores e empreiteiros, levantamento e planejamento de materiais, controle de saldos e gestão de contratos. Gestão de almoxarifado, com implementação e utilização de software de controle, além do acompanhamento e medição da execução dos serviços conforme os métodos construtivos adotados.',NULL,NULL,'Engenharia',NULL,NULL,'Agência de Empregos','Não','8800','Sim','Diretor Eduardo Corrêa','Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-12T16:11:00.000Z'::timestamptz),
  ('Everton Meus Alderete Júnior','alderete27200@gmail.com',NULL,'55996332606','2000-05-27',25,'Solteiro(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1mFauQlgJ9GEv47Xn7axr1ljcSK0lq-XZ','Educação física','Ensino Superior Incompleto','Cruzeiro do Sul','2000-05-27','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Primeiro emprego nessa área',NULL,NULL,'Estágio, Financeiro, Licenciamentos',NULL,NULL,'Grupo Da Faculdade','Não','2000','Sim',NULL,'Estágio Financeiro','Estou no último ano do serviço temporário do exército','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-12T16:14:00.000Z'::timestamptz),
  ('Maria Eduarda Machado Emmel','eduardaemmel6@gmail.com',NULL,'55999684187','2004-10-18',21,'União estável','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1yZmCsQucR1fic5xIpUgHJxHIRSRjPiB4','Administração','Ensino Médio Completo','Universidade Cruzeiro do Sul',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1: Prefeitura Municipal de Itaqui 
2: Estagiária (auxiliar administrativo) no departamento pessoal 
3: 13/03/2024 à 21/03/2025
4: As principais atividades descritas no contrato eram: auxiliar na digitação e elaboração de planilhas, atendimento ao público e telefone, no quadro administrativo e demais áreas administrativas. 
Porém, sempre ajudava os colegas quando precisavam, realizando bem mais atividades do que era atribuído ao cargo de estagiária, auxiliava  na contratação de funcionários, cadastramento dos mesmos no sistema, conferência de planilhas, chamamentos públicos, dentre outras atividades.','Técnica em contabilidade – Instituto Federal de Educação, Ciência e Tecnologia Sul-Rio-Grandense. 

Informática, completo – Data Master escola profissionalizante (104 horas)

Práticas administrativas, completo – Capacitar Fael escola técnica (100 horas)',NULL,'Administrativa, Financeiro',NULL,NULL,'WhatsApp','Não','Busco algo que eu não ganhe apenas um salário mínimo, que o salário seja de acordo com o cargo que ocupo.','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-12T16:21:00.000Z'::timestamptz),
  ('Regis de Almeida kohls','regismariceli2018@gmail.com',NULL,'55997164215','1987-02-18',39,'Casado(a)','1','Não','Itaqui/RS','https://drive.google.com/uc?export=view&id=1tpGnf0fyUeVrq_aAQxWAu5poOnssiUMe','Logística','Ensino Superior Incompleto','Cruzeiro do Sul','2026-11-27','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Prefeitura de Itaqui- AGENTE COMUNITÁRIO DE SAUDE- 08/2023 - 08/2025, Realizava cadastros, levantamento de alguma comorbidades na população do bairro onde atuava.','Informática basica',NULL,'Administrativa, Comercial, Estágio',NULL,NULL,'Agência de Empregos','Não','A combinar','Não','55996357474 Eduardo kulman
55999028015 Ver. José Silveira','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-12T16:26:00.000Z'::timestamptz),
  ('Neidi Alessandra Teichmann','neiditeichmann2@gmail.com',NULL,'55999821243','1993-06-16',32,'Solteiro(a)','1','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1Xln4etsWBHpP1YrP3y2cRPXIFMPyijNo','Ciências Contábeis','Ensino Superior Completo','Cruzeiro do Sul','2026-03-27','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Trabalhei bastante tempo no Comércio como caixa em lojas e casas lotéricas, nesse ultimo emprego tive experiência no escritório onde fazia o financeiro cobranças conferência de mercadorias cadastramento de produtos e atendimento ao cliente quando estava no caixa. LOCAL: SOLANGE PAGLIARINE COMERCIO DE COMBUSTIVÉIS EIRELI Inicío:07/03/2022 Final: Julho/2025  cargo:caixa/administrativo',NULL,NULL,'Administrativa, Financeiro',NULL,NULL,'Universidade Cruzeiro Do Sul','Não','2300','Não','Posto Charrua, gerente : Evandro telefone :  55 99683-5331','Quero inscrever-me no banco de talentos da Young!','Eu sou uma pessoa muito disposta a aprender coisas novas. Sou uma pessoa que zela muito pela honestidade e caracter. Sempre tive a confiança dos meus antigos patrões sempre confiaram muito em mim. Gosto de ajudar e gosto de organização. Sou muito família sou mãe e gosto de ter tempo com meu filho ele tem 6 anos. Nos antigos empregos eu não tinha disponibilidade de horários o que dificultava meus momentos com ele e a permanência no emprego.Quero trabalhar onde eu possa somar na empresa e poder conciliar a vida em casa com meu filho em questão de horários.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-12T16:54:00.000Z'::timestamptz),
  ('Thalyta de Aquino Cabeleira','thalytadeaquino29@gmail.com',NULL,'55999719542','2002-05-25',23,'Divorciado(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=123VEpKxJlIYzt1FMBcwaICNCW_eGn-W9','Administração de empresas','Ensino Superior Incompleto','Cruzeiro do Sul','2026-05-06','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Pro Fit Academia
Cargo: Recepcionista
Período: Maio de 2022 a Março de 2023
Principais atividades: Atendimento ao público, recepção de clientes, vendas de produtos e serviços, organização de informações e suporte administrativo básico.

Explorer Call Center
Cargo: Operador Receptivo
Período: Março de 2023 a Dezembro de 2024
Principais atividades: Atendimento telefônico receptivo, recebimento de ligações, esclarecimento de dúvidas dos clientes, fornecimento de informações, registro de atendimentos no sistema e suporte ao cliente.

Camil Alimentos
Cargo: Ajudante na Produção (Safrista)
Período: Janeiro de 2025 a Maio de 2025
Principais atividades: Lançamento de análises no sistema, recebimento, conferência e atualização de notas fiscais, apoio às rotinas administrativas e operacionais do setor.

Secretaria Municipal de Saúde
Cargo: Estagiária
Período: Outubro de 2025 – Atual
Principais atividades: Marcação e encaminhamento de exames, atendimento ao público, organização de demandas, atualização de informações em sistema e apoio às rotinas administrativas do setor.','Estou concluindo a faculdade bacharel em administração, e também faço faculdade de Recurso humanos. Possuo cursos complementares na área administrativa, como Assistente Administrativo, Auxiliar de Escritório, Fluxo de Caixa e Informática Básica. Ao longo da minha formação, desenvolvi conhecimentos em rotinas administrativas, organização de documentos, controle financeiro, atendimento e uso de ferramentas de informática, buscando sempre o aprimoramento profissional e a atualização contínua.',NULL,'Administrativa, Comercial, Estágio, Financeiro',NULL,NULL,'Agência de Empregos','não','1500','Sim',NULL,'Estágio Administrativo','Sou uma pessoa responsável, organizada e comprometida, com facilidade de aprendizado e boa comunicação. Tenho conhecimentos em informática básica, com uso de ferramentas como Word, Excel e sistemas administrativos. Possuo experiência em atendimento ao público e rotinas administrativas, o que contribuiu para o desenvolvimento de habilidades como organização, atenção aos detalhes e trabalho em equipe. No meu tempo livre, gosto de ir à academia, atividade que contribui para disciplina, bem-estar e constância, e também pratico crochê, o que desenvolve minha concentração e paciência. Estou sempre aberta a aprender coisas novas, me adaptar a diferentes ambientes e contribuir de forma positiva para a equipe e os resultados da empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-12T17:54:00.000Z'::timestamptz),
  ('Crystyelle Pinheiro pereira','crystyellepinheiro2002@gmail.com',NULL,'51999916696','2002-07-07',23,'União estável','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1d2aVGG7mZ4L4TOqXwLKfLOxwHCPFIWTC',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','- Experiência Profissional

    - Consultora de Vendas - Engenharia do Corpo (01/2021 - 04/2025)
        - Trabalhei em uma rede de academia, com foco em vendas e atendimento ao cliente.
        - Desenvolvi habilidades em vendas, comunicação e trabalho em equipe.

    - Operadora de Caixa - Farmácia PMP (11/2020 - 01/2021)
        - Atuei no caixa, lidando com pagamentos e atendimento ao cliente, fechamento de caixa.

    - Empreendedora - Strong Fit (05/2020 - 11/2020)
        - Criei e gerenciei uma página para venda de salgados proteicos, cuidando da produção, marketing e entregas.

    - Jovem Aprendiz - Telemarketing (01/2020 - 04/2020)
        - Trabalhei em telemarketing em uma clínica de dentista, com foco em atendimento ao cliente.

- Sobre Mim
    - Profissional com experiência em vendas, atendimento ao cliente e empreendedorismo. Buscando novas oportunidades e experiências em Santo Antônio da Patrulha. Sou uma pessoa com bom desenvolvimento pessoal, gosto de aprender coisas novas, gosto de trabalhar em equipe.','Cursos feitos dentro da empresa. 
Atendimento ao cliente.
Treinamento em vendas.
Treinamento para consultora de vendas.',NULL,'Administrativa, Comercial, Marketing',NULL,'https://drive.google.com/open?id=1xlx56YqtH09OAehfsl1VkeTBl9A-hPGd','Agência de Empregos','Não.','R$1.700','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou Crystyelle, tenho 23 anos e estou em busca de novas oportunidades em Santo Antônio da Patrulha. Com experiência em vendas, atendimento ao cliente e empreendedorismo, sou uma pessoa criativa, educada e organizada. Acredito na importância da comunicação e organização para um ambiente de trabalho produtivo. Minhas experiências profissionais mais marcantes são: 

Trabalhei como consultora de vendas em uma rede de academia, onde desenvolvi habilidades em:
- Vendas e atendimento ao cliente
- Gerenciamento de base de dados
- Marketing e organização de estoques

Também tive uma experiência empreendedora no ramo alimentício, onde pude usar minha criatividade e desenvolver habilidades. 

Busco uma oportunidade para aplicar minhas habilidades e aprender mais em um novo desafio.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-12T18:17:00.000Z'::timestamptz),
  ('Ebenezer da Rosa Molina','ebenezerdarosa@gmail.com',NULL,'055999793238','1992-01-20',34,'Solteiro(a)','0','Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1kaWoVhifrDHc-Nhb88frAwHT_1h0Xzvw','Técnico em Comércio','Ensino Médio Completo','Escola de Educação Basica Dr Lauro Dorneles','2019-12-10','Não, no momento pausei/parei por um período.','Meu nome é Ebenézer iniciei minhas atividades profissionais como Auxiliar de Almoxarifado no Ramo de tubulação e construção civil onde eu fiquei trabalhando por 11 meses',NULL,NULL,'Administrativa',NULL,NULL,'Google','Nao','1,800,00','Sim',NULL,'Auxiliar Administrativo',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-12T20:22:00.000Z'::timestamptz),
  ('Myrthielen Minhos Rodrigues','myrthielen.mrodrigues@gmail.com',NULL,'55997064545','1999-03-02',26,'Solteiro(a)','1','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=161TL2do6XhjZqx2NgpU8UHMSNbZY3pOQ','Administração de empresas','Ensino Superior Incompleto','Cruzeiro do Sul Virtual',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Supermercado Tonial Ltda fui operadora e fiscal de caixa e conferente. De outubro de 2019 a junho de 2024
E.M.S. Comércio de Alimentos atualmente operadora de caixa desde 3 de setembro de 2025',NULL,NULL,'Administrativa, Comercial, Estágio, Financeiro',NULL,NULL,'WhatsApp','Não','1.800','Não','Helena gerente Supermercado Tonial 54 99925-2317','Estágio Financeiro','Já fui voluntária na Escola Ulissea Lima Barbosa','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-12T21:58:00.000Z'::timestamptz),
  ('Karlize Morais Adolpho','123karlize@gmail.com',NULL,'55996307524','2002-03-12',23,'Solteiro(a)','0','Não','Itaqui/RS','https://drive.google.com/uc?export=view&id=1OBcdp9BvaCH01KAOuzN0QonRR9zaeAZd','Administração de empresas','Ensino Superior Incompleto','Unifacvest',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Empresa na qual trabalhei foi na Data Master Cursos, Treinamentos e Estágios,  exercia o cargo de Secretária/Atendente data de início Setembro/2021 até Maio/2025
Exercia a parte de rotinas administrativas e organização de documentos,  atendimento presencial e telefônico,  registro de dados ,recebimentos de pagamentos  e conferência de recibos e suporte às atividades administrativas.','Estou cursando faculdade de Bacharelado em Administração,  fiz curso Profissionalizante em Assistente Administrativo',NULL,'Administrativa, Financeiro',NULL,NULL,'Instagram','Não','R$1.600','Não','André Silva (55 9925-3825) Dono da empresa','Para a vaga de assistente administrativo e Assistente financeiro','Sou proativa, trabalho bem com equipe, gosto de aprender coisas novas, sou comunicativa tenho experiência em informática básica, sou responsável e busco crescer com a Empresa','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-12T23:00:00.000Z'::timestamptz),
  ('Heliandra Espíndola Flain','espindolaflainheliandra@gmail.com',NULL,'997246147','2007-05-22',18,'Solteiro(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1eDPQTMLFVH6ZRDsqAXo4RR1EyeqP8FL4',NULL,'Ensino Médio Completo','Osvaldo Cruz','2025-12-20','Não, no momento pausei/parei por um período.','1) Camil Alimentos 
2) Aprendiz administrativo
3) 10/04/2023- 16/12/2024 (contrato)
4) experiência exel, Word, experiência com público, comunicativa, pró-ativa, facilidade em aprender a mexer em sistemas','Curso de inglês avançado
Ensino medio completo 
Experiência em escritórios (1 ano atuando no escritório de manutenção da empresa Camil Alimentos)',NULL,'Administrativa',NULL,NULL,'Instagram','Nao','2000','Não',NULL,'Estágio financeiro ou administrativo',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-13T03:18:00.000Z'::timestamptz),
  ('Darlyn Monique Rodrigues dos Santos','moniquerodrigues004@gmail.com',NULL,'55999967868','2005-04-03',20,'Solteiro(a)','0','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1Z-1RbkCkHCyDwUfd9TpJoYGfLelmrm6S','Administração de empresas','Ensino Superior Incompleto','Unopar - Anhanguera','2027-01-13','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Uffa mercado - assistente administrativo RH de 2024 - atualmente : Admissão, rescisão, lançamento de folha de pagamento, férias, cadastros, controle de planilhas, orçamento e organização de eventos internos, contato com gerentes e colaboradores, gestão de benefícios (plano de saúde e vale transporte), apuração de ponto, endormarketing, integração, controle de uniformes','Possuo ensino médio completo e faculdade de administração em andamento',NULL,'Administrativa, Estágio',NULL,NULL,'Instagram','Não','1500,00 - 2000,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Me chamo Darlyn Monique Rodrigues dos Santos, tenho 20 anos, resido em Cruz alta Rs, iniciei no mercado de trabalho aos 16 anos, possuo conhecimento na área de grãos, gestão de pessoas, departamento pessoal, administrativo e logística.
- Segue algumas habilidade : 
- Conhecimento em sistemas. 
- Conhecimento básico no pacote office. 
- Digitar e elaborar e-mails. 
- Manter a organização de arquivos. 
- Pontualidade. 
- Flexibilidade. 
- Discrição e seriedade. 
- Boa comunicação.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-13T14:40:00.000Z'::timestamptz),
  ('Leandra latorre barrios','leandraprimeiro@gmail.com',NULL,'55992111286','1983-07-15',42,'Casado(a)','2','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1yZICeLZr5kNWo4sjqvUPL2spyb3yWG88','Recursos humanos','Ensino Superior Incompleto','Unicesumar',NULL,'Não, no momento pausei/parei por um período.','Tenho uma grande experiência no setor financeiro pois atuei durante 11 anos , eu era responsável por 3 empresas ao mesmo tempo , e adorava esta rotina. 
Sou uma pessoa organizada,  focada e pro ativa.
Me adapto a qualquer ambiente e função.',NULL,NULL,'Administrativa, Comercial, Financeiro',NULL,NULL,'Facebook','Infelizmente nao','1950','Sim',NULL,'Assistente financeiro','Eu sou uma pessoa que amo trabalhar com papel ,com responsabilidade,  gosto tambem de trabalhar em equipe,  eu sai da antiga empresas agora dia 8/12 eu estava trabalhando na rede Chevrolet eu atuava como garantista,  onde eu era responsável por todo processo de garantia tanto de veículos novos como semi novos.
Eu so prende uma oportunidade para mostrar que eu faço a diferença na equipe .','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-13T18:45:00.000Z'::timestamptz)
;

INSERT INTO young_talents.candidates (full_name, email, email_secondary, phone, birth_date, age, marital_status, children_count, has_license, city, photo_url, education, schooling_level, institution, graduation_date, is_studying, experience, courses, certifications, interest_areas, cv_url, portfolio_url, source, referral, salary_expectation, can_relocate, professional_references, type_of_app, free_field, status, tags, origin, created_by, original_timestamp)
VALUES
  ('Leandra latorre barrios','leandraprimeiro@gmail.com',NULL,'55992111286','1983-07-15',42,'Casado(a)','2','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1bwWU87IYcwH6Jr6rcYTOw-lJOs_O5-uk',NULL,'Ensino Superior Incompleto','Unicesumar',NULL,'Não, no momento pausei/parei por um período.','Trabalhei onze anos na parte administrativa de três empresas ao mesmo tempo , era uma das coisas q eu mais adorava fazer , amo trabalhar com papel , pois sou muito organizada.',NULL,NULL,'Administrativa, Financeiro',NULL,NULL,'Facebook','Nao','1950','Sim',NULL,'Assistente administrativo','Sou uma pessoa responsável, adoro trabalhar com papel, sou muito pontual e focada.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-13T19:01:00.000Z'::timestamptz),
  ('Thayanne Rodrigues bender','Thaybender.9@gmail.com',NULL,'55996001839','1993-12-27',32,'Solteiro(a)','1','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1dKgK4e731D0uk6NZq3VuQzf0yXBJDcMT','Administração de empresas','Ensino Superior Incompleto','Uri santo angelo',NULL,'Não, no momento pausei/parei por um período.','Bitolandia Parafusos e ferragem, 4 anos de empresa depois Mac engenharia 2 anos',NULL,NULL,'Administrativa, Engenharia',NULL,NULL,'Instagram','Nao','R$2,300.00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Meu nome é thayane tenho 32 anos sou uma pessoa esforçada gosto muito de desafios e de crescer profissionalmente dentro da empresa sou uma pessoa otimista e com muita vontade de trabalhar.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-13T19:01:00.000Z'::timestamptz),
  ('Nathiele Garcia Lopes','lopesnathii15@gmail.com',NULL,'55996895161','1997-07-16',28,'Solteiro(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1NZpnVSBSAncQ2FcWfp7tqoC6WTPyXkt1','Agronomia','Ensino Superior Completo','Unipampa','2024-02-16','Sou formado','1) Camil Alimentos; 2) Auxiliar de produção; 3) 21/02/2024 até 11/06/2024; 4) Realização de classificação de grãos de arroz, Emissão de notas fiscais, criação de planilhas e processo de Pesagem de caminhões.

1) Prefeitura Municipal de Itaqui; 2) Estagiário; 3) 11/11/2024 até 18/08/2025; 4) Auxílio na organização de planilhas, atendimento ao público, auxílio em projetos ambientais.','Sou formada em Agronomia, e atualmente curso pós graduação em Educação Ambiental.',NULL,'Licenciamentos',NULL,NULL,'Instagram','Não','2.000','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-13T20:07:00.000Z'::timestamptz),
  ('Milena Brissow Moraes','milenamoraes.aluno@unipampa.edu.br',NULL,'55996475240','1998-12-10',27,'União estável','2','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1rxHJ67LzX5SDObK4yb0TlRK8JtelUX1n','Relações Públicas','Ensino Superior Incompleto','Unipampa - Campus São Borja',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Experiências Profissionais
1) Nome da empresa: Foco Comunicação
2) Cargo: Apoio em Marketing Digital / Criação de Conteúdo
3) Período: Trabalho pontual e informal (freelance)
4) Principais atividades e informações relevantes:
Atuação de forma pontual e informal em apoio às atividades da agência, auxiliando na criação de conteúdos para redes sociais e ações de marketing digital. Contribuí no desenvolvimento de ideias criativas, roteiros de conteúdo e sugestões de pauta, além de apoiar em edições simples e ajustes de materiais digitais. Essa experiência contribuiu para o desenvolvimento de visão estratégica de conteúdo, criatividade, entendimento de comunicação digital e trabalho colaborativo com equipe de marketing.

2) SENAC – São Borja
2) Cargo: Professora de Inglês
3) Período: 2021-2022 e 2025
4) Principais atividades e informações relevantes:
Atuação como professora de inglês, responsável pelo planejamento de aulas, criação de materiais didáticos e condução de turmas. Desenvolvi fortemente habilidades de comunicação, didática, criatividade e adaptação de linguagem para diferentes públicos. A experiência contribuiu para minha capacidade de transmitir ideias de forma clara, engajar pessoas e estruturar conteúdos, competências diretamente relacionadas à área de marketing e comunicação.

3) CVC – São Borja
2) Cargo: Agente de Viagens
3) Período: 2021-2023 e 2025
4) Principais atividades e informações relevantes:
Atuação no atendimento ao cliente e área comercial, realizando venda de pacotes turísticos, elaboração de roteiros personalizados e organização de viagens conforme o perfil do cliente. Trabalhei com abordagem consultiva, persuasão, entendimento de necessidades do público e apresentação de soluções, o que fortaleceu habilidades relacionadas a marketing, como comunicação, relacionamento com o cliente, argumentação de vendas e foco em experiência do consumidor.','Sou estudante de Relações Públicas, ingressando no 3º semestre em 2026. Em 2024, concluí um curso de curta duração em Análise de Marketing e Mídias Sociais, com foco em estratégias digitais e produção de conteúdo. Também possuo experiência prática em uma agência de comunicação, auxiliando no desenvolvimento e na produção de conteúdos para clientes, o que contribui para a aplicação prática dos conhecimentos adquiridos.',NULL,'Comercial, Marketing',NULL,NULL,'Facebook','Nao','2.000,00','Não',NULL,'Marketing','Tenho como principal característica um olhar humano e empático, buscando sempre compreender diferentes pontos de vista antes de comunicar. Acredito que essa sensibilidade é fundamental para o marketing, pois contribui para uma comunicação mais clara, estratégica e conectada com as pessoas.
Acompanho o trabalho da Young Empreendimentos há cerca de três anos e me identifico com a forma como a empresa atua no desenvolvimento do interior do Rio Grande do Sul, demonstrando visão, planejamento e impacto positivo nas regiões onde está presente.
Atualmente estou em formação acadêmica e, mesmo nos primeiros semestres, fui convidada por professores a participar de projetos como bolsista, em função do meu envolvimento, interesse pelo aprendizado e dedicação. Tenho facilidade para aprender, gosto de colaborar e busco constante desenvolvimento, especialmente na área de comunicação e marketing.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-13T20:46:00.000Z'::timestamptz),
  ('Anna Carolina Maretoli Rios','annacmaretoli@hotmail.com',NULL,'55999902841','2002-03-16',23,'Solteiro(a)','1','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=11a-A8lmkznO8jQjOacyG1U9zujuCqBIa',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Andrade tenis(auxiliar administrativo) 11/2023-05/2025 
Contratos, pagamento de salário, recebimento de mercadorias, pagamento de boletos 
Solargrid 10/2025- em aberto',NULL,NULL,'Administrativa',NULL,NULL,'Instagram','Não','Salario compatível com o cargo.','Não','Solargrid, 55 9615-1825 (DP)','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-13T21:21:00.000Z'::timestamptz),
  ('Bruno Machado da Silva','tankianbruno742@gmail.com',NULL,'55996810655','2001-07-16',24,'Solteiro(a)','1','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1n-QNrayjy28H4IU5gLb4GCz03ilJC_r5',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','consultor de negócios - VIVO 
consultor de vendas - CLARO
Vendedor - Osirnet
Suporte Técnico - Tchenet 
Vendedor - Brasil Free Shop 
Setor comercial - A PLATEIA','Auxiliar Administrativo, Gestor de Microempresas, Operador de Computador, Tecnologia da Informação, Técnica de Vendas',NULL,'Comercial',NULL,NULL,'Instagram','Não','2000','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-14T18:31:00.000Z'::timestamptz),
  ('Bruno Machado da Silva','fsavargas@gmail.com',NULL,'55996186097','2008-02-27',17,'Solteiro(a)','0','Não','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1aivtyuZzcFp-DuoNvtD97fakjzfQr4Vy','Técnico em recursos humanos','Ensino Médio Completo','Senac','2026-12-30','Não, no momento pausei/parei por um período.','Sul frangos – Repositor – 12/2024 – Atual.
Atua como repositora na loja Sul Frangos, responsável por organizar e reabastecer corredores no período da tarde (14:00 às 18:00).
Escola particular Castelinho Encantado – Professora – 12/2024 – 02/2025.
Atuou como professora na turma do berçário onde era responsável por todas as tarefas e cuidados diários com as crianças, em período de férias.
Emei Gente Pequena – Estagiária – 03/2024 – 12/2024.
Atuou como estagiária na EMEI Gente Pequena onde ficava responsável por auxiliar as crianças em suas atividades cotidianas.
Recofran – Auxiliar administrativa – 09/2023 – 12/2023.
Atuou como auxiliar administrativa no departamento pessoal.
Loja Braz – Auxiliar de loja – 06/2022 – 08/2022.
Atuou como auxiliar de loja, na loja de roupas e acessórios Braz. Era responsável por auxiliar em vendas e organização da loja.','Recepcionista
Instituição de Ensino Aplicativo Cursa – 2 horas – Concluído em 02/2023.
Auxiliar Veterinária
Instituição de Ensino Pronade – 200 horas – Concluído em 11/2023.
Departamento Pessoal
IPED – 80 horas – Concluído em 04/2025.
Contas a Pagar e Receber
IPED – 80 horas – Concluído em 05/2025.
Técnico em Recursos Humanos
Senac – Cursando.',NULL,'Administrativa, Comercial, Estágio, Financeiro',NULL,NULL,'Instagram','Não','3.000','Sim',NULL,'Estágio Financeiro','Profissional com facilidade de trabalho em grupo, calma, educada, proativa, pontual e focada em resultados. Disponibilidade de horários. Disposta a aprendizagem. Cursei magistério/ensino médio durante 6 meses em 2023. Quero ter a oportunidade de crescer profissionalmente, estou sempre buscando estudar e aprender tudo que posso','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-15T00:55:00.000Z'::timestamptz),
  ('Fabiana Pederiva','financeiropederiva@gmail.com',NULL,'55992122238','1990-06-17',35,'Casado(a)','1','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1mwuYpTz6Q7qL2fxavM6VfEB5k3dQhCFR','Arquitetura','Pós-graduação Incompleta','Universidade Franciscana- UFN','2017-01-05','Sou formado','Sempre trabalhei com escritório próprio desde 2016, mesmo antes de formada fui sócia de escritório de arquitetura.
Proprietária da Pederiva Construções Pre-moldados, empresa que atualmente não existe mais, mas com uma vasta lista de clientes em todo estado e com execução de mais de 100 obras.
Atualmente com escritório de arquitetura, trabalhando com projetos de arquitetura e engenharia e atendendo em todo o estado','Cursando auditoria, avaliação, perícia em Engenharia.
Experiência em gestão de obras e desenvolvimento de custos.
Experiência em projetos de engenharia
Escritório com 4 anos em São Borja.
Projetos em todo o estado, Paraná e DF
Experiência em projetos, e com gestão de pessoas',NULL,'Arquitetura',NULL,NULL,'Instagram','Não','O que a empresa está disposta a investir em um profissional de qualidade? Estou disposta a investir meu tempo e experiência nesta empresa que admiro','Sim','@arquiteta.fabianapederiva','Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-15T01:07:00.000Z'::timestamptz),
  ('Vanessa doa Santoa Pinheiro','vprs29@hotmail.com',NULL,'55984473766','1983-03-29',42,'União estável','0','Não','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1icAvTkcgsDzv05JTNQAE2mRLG7fKIThx','Direito','Ensino Superior Completo','Urcamp',NULL,'Sou formado','Confer - Construtora Fernandes - Técnica de Qualidade
Dalle-  Auxiliar de engenharia
Construtora Galanos- Auxiliar Administrativa',NULL,NULL,'Engenharia',NULL,NULL,'Facebook','Não','2.500,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-15T01:18:00.000Z'::timestamptz),
  ('Matheus Luigi Berengan','matheusluigib@hotmail.com',NULL,'51985798572','1992-12-17',33,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1Nxk9XJrunFXsXB6KUn_7shiZcfsnHY5E','Engenharia Civil','Ensino Superior Completo','Uniritter','2020-02-20','Sou formado','Engenheiro Civil- Empresa Pertho, Março 2025 até presente momento. 
Engenheiro Civil- Empresa Vasco, Outubro de 2023 até  Março de 2025 
Analista de Engenharia Senior- Empresa Melnick.  Fevereiro de 2022 a Outubro de 2023 
Auxiliar Tecnico de Engenharia-  Empresa Encorp Morana. Julho de 2016 a Setembro de 2021 
Técnico em Edificações- Empresa  Nex Group. Agosto de 2012 a 2015','Técnico em Edificações',NULL,'Engenharia',NULL,NULL,'Agência de Empregos','Carla Tressoldi- Linkedin','Depende do tipo de contratação.','Sim','Gerente Samantha- Empresa Vasco, Contato 51 98548-3138
Gerente Willians- Empresa Melnick. Contato  51 9727-2359','Engenheiro Civil','Sou engenheiro civil, com experiência em obras e acompanhamento técnico, atuando com foco em planejamento, controle de qualidade e cumprimento de prazos. Tenho facilidade para trabalho em equipe, boa comunicação com fornecedores e clientes, e perfil analítico para resolução de problemas em campo.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-15T18:52:00.000Z'::timestamptz),
  ('Andressa Rodrigues Da Silva','andressrodr27@gmail.com',NULL,'55996475160','2007-06-18',18,'Solteiro(a)','0','Não','Itaqui/RS','https://drive.google.com/uc?export=view&id=1nbtMU_ICJZ-10TtclULXTECn2OVjvg-D',NULL,'Ensino Médio Completo','Escola Odila Villordo de Moraes','2025-12-03','Não, no momento pausei/parei por um período.','Não possuo experiência formal registrada. Tenho conhecimentos em informática profissional','Informática Profissional, com foco em digitação, internet e ferramentas do pacote Office.',NULL,'Administrativa',NULL,NULL,'Agência de Empregos','Não','A combinar','Não','Por enquanto não possuo nenhuma experiência profissional','Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa dedicada, responsável e com muita vontade de aprender. Tenho curso presencial de Informática Profissional, com conhecimentos em pacote Office, Gostaria também se tivesse a oportunidade para trabalhar em Home Office, Busco uma oportunidade para crescer profissionalmente e contribuir com a empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-16T03:51:00.000Z'::timestamptz),
  ('Mayara Brasil Tondolo','arqmayaratondolo@gmail.com',NULL,'55984675842','1995-11-19',30,'Solteiro(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=17MuAXynjtL59mvbDxQVvb9LRj00WgUAl','Arquitetura','Pós-graduação Completa','Graduação - UFN; Mestrado - UFSM','2019-01-05','Sou formado','1) Prefeitura Municipal de Itaqui; 2)Arquiteta e Urbanista; 3)Atualmente; 4) Elaboração de Projetos; Acompanhamento de obras; Elaboração de Orçamentos e Laudos. Análise e Aprovação de Projetos. 
1) Mayara Tondolo - Arquitetura e Urbanismo; 2) Profissional Autônomo - Arquiteta e Urbanista; 3)Atualmente; 4) Elaboração de Projetos Arquitetônicos, Hidrossanitários e Elétricos, de Interiores, Mobiliários Planejados; Execução de obras;
1) Mariana Schenini Arquitetura e Urbanismo; 2)Arquiteta e Urbanista; 3) 2024-2024; 4) Elaboração de Detalhamentos de Projetos Arquitetônicos e de Projeto de Interiores com ênfase em Projeto de Mobiliários Planejados; Acompanhamento de Obras.
1) Caroline Gudolle Arquitetura e Urbanismo; 2)Arquiteta e Urbanista; 3) 2024-2024; 4) Elaboração de Detalhamentos de Projetos Arquitetônicos, Paisagísticos, Hidrossanitários, Elétricos, Interiores e de Mobiliário Planejados; Acompanhamento de Obras.
1)Grenoble Móveis Planejados; 2)Projetista; 3)2023-2023; 4)Detalhamento Projetos de Móveis Planejados.
1) MSM Móveis; 2)Projetista; 3) 2023-2023; 4) Detalhamento Projetos de Móveis Planejados.','Mestrado em Arquitetura, Urbanismo e Paisagismo. Com enfoque nas seguintes áreas: Planejamento Urbano e Regional; Arquitetura; Identificação da Paisagem natural e cultural a partir de análises com geoprocessamento;  Patrimônio Cultural. Curso em Fiscalização de Obras pela DPM.',NULL,'Arquitetura, Licenciamentos, Engenharia',NULL,NULL,'Indicação','Arq  Urb. Fernanda DeArq  Urb. Fernanda Dellamorallamora','4500','Sim','Mariana Schenini, Arquiteta e Urbanista, (55) 99913-1919.','Quero inscrever-me no banco de talentos da Young!','Software: Autocad, Sketchup, Arcgis. Monitoria voluntária como Tutora na disciplina de Geoprocessamento para Arquitetura, no curso de graduação em Arquitetura e Urbanismo (CAU/UFSM); Participação em eventos e congressos científicos; Feira de Materiais e Móveis; Trabalho voluntário para distribuição dos presentes das cartinha de Natal para as crianças.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-16T10:39:00.000Z'::timestamptz),
  ('Karen Brum','canaldakahballora@gmail.com',NULL,'55992160869','2007-07-21',18,'Solteiro(a)','0','Não','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1nVTu1Yz0riceltks3ISACWRWnjFz-ULK','Administração de empresas','Ensino Superior Incompleto','Uninter','2028-01-10','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','nenhum.','Sou estudante da área de Administração, com foco no desenvolvimento de competências voltadas à gestão, organização e apoio administrativo. Minha formação contempla conhecimentos em gestão de pessoas, rotinas administrativas, finanças básicas, planejamento, organização empresarial e atendimento ao público.
Ao longo da minha formação, busco constantemente aprimorar meus conhecimentos por meio de cursos de curta e média duração, especialmente nas áreas de administração, informática, organização de processos e desenvolvimento profissional, visando ampliar minha qualificação para o mercado de trabalho.
Tenho interesse em continuar minha formação por meio de cursos de especialização e certificações profissionais, com o objetivo de aprofundar meus conhecimentos práticos, acompanhar as demandas do mercado e contribuir de forma eficiente para o ambiente organizacional.',NULL,'Administrativa',NULL,NULL,'Facebook','Não lembro','1000','Não','nenhum.','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-19T15:48:00.000Z'::timestamptz),
  ('Caroline Kunt de Ramos','carolinekunt2003@gmail.com',NULL,'55996671197','2003-01-02',23,'Solteiro(a)','0','Não','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1YvSj0iXfXZ3Mjkq1qja_Ylk4vzS0Dnv8','Administração de empresas','Ensino Superior Incompleto','Unopar','2029-02-19','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Clínica Brasil Dentistas, secretaria onde estou atualmente',NULL,NULL,'Administrativa, Financeiro',NULL,NULL,'Facebook','Não','1809','Não',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-19T17:13:00.000Z'::timestamptz),
  ('Thaís de Macedo','thaais.de.macedo@gmail.com',NULL,'54991806216','1999-02-28',26,'Solteiro(a)','1','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1sFsYFPlMgLrCLSmmbEdLVtkTCcQ0CuO2',NULL,'Ensino Médio Completo',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Unicruz- 
Assistente de contas a receber - 2024/2025

•Relacionamento com cliente.
• Lançamento e atualização de contas a receber.
• Emissão de boletos e recebimentos financeiros.
• Gestão de agenda.
• Análise de crédito e perfil dos clientes.
• Atendimento aos clientes sobre informações de contas a receber.
• Auxilio na reconciliação de contas bancárias e financeiras.
• Colaboração com a equipe para a melhoria dos processos de tesouraria.
• Manutenção e atualização de registros financeiros no sistema',NULL,NULL,'Administrativa, Financeiro',NULL,NULL,'Facebook','Não','2.200','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Profissional com forte habilidade em atendimento ao cliente, tanto presencial
quanto online, aliada a uma sólida experiência na área administrativa e financeira.
Comprometido com a excelência e sempre disposta a aprender e se adaptar a novas situações.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-19T20:36:00.000Z'::timestamptz),
  ('Juan Pablo Dutra Besutti','juan.besutti0722@gmail.com',NULL,'55991055416','2002-05-22',23,'Solteiro(a)','0','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1ItDOF-9vyKAGZMDAjdWz1w5gJ8Z3_aBI','Administração de empresas','Ensino Superior Incompleto','Anhanguera','2026-12-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Banrisul, estagiário, 04/11/2024 04/11/2026
 Desenvolvo conhecimentos na rotina administrativa e operacional de uma instituição financeira, lidando com organização, atendimento, processos internos, responsabilidade com informações, prazos, vendas de seguros, consórcio, investimento e capitalização, Essa experiência tem fortalecido meu senso de organização, atenção aos detalhes e postura profissional.
Antes disso, trabalhei no almoxarifado do Hospital São Vicente, experiência que me ensinou a importância do controle, da responsabilidade e do trabalho em equipe em um ambiente onde tudo precisa funcionar com precisão. Também atuei como auxiliar administrativo na empresa Luiz Eduardo Klein, sendo responsável pelo recebimento de materiais, insumos e agrotóxicos, controle de saídas, lançamento de notas fiscais e apoio aos processos administrativos em geral.','Empreendedorismo e inovação 
Processos de criatividade 
Gestão de projetos
Modelos de gestão',NULL,'Administrativa',NULL,NULL,'Google','Não','2500','Sim','Paulo Ricardo da Rosa- Banrisul 

51 9745-3203','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-20T14:12:00.000Z'::timestamptz),
  ('Franciely Sá Vargas','fsavargas@gmail.com',NULL,'55996186097','2008-02-27',17,'Solteiro(a)','0','Não','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1DkmYCa4Lk0FK7gXXA_XLsPT004KtzC6G','Técnico recursos humanos','Ensino Médio Completo','Senac','2026-12-20','Não, no momento pausei/parei por um período.','Sul frangos – Repositor – 12/2024 – Atual.
Atua como repositora na loja Sul Frangos, responsável por organizar e reabastecer corredores no período da tarde (14:00 às 18:00).
Escola particular Castelinho Encantado – Professora – 12/2024 – 02/2025.
Atuou como professora na turma do berçário onde era responsável por todas as tarefas e cuidados diários com as crianças, em período de férias.
Emei Gente Pequena – Estagiária – 03/2024 – 12/2024.
Atuou como estagiária na EMEI Gente Pequena onde ficava responsável por auxiliar as crianças em suas atividades cotidianas.
Recofran – Auxiliar administrativa – 09/2023 – 12/2023.
Atuou como auxiliar administrativa no departamento pessoal.
Loja Braz – Auxiliar de loja – 06/2022 – 08/2022.
Atuou como auxiliar de loja, na loja de roupas e acessórios Braz. Era responsável por auxiliar em vendas e organização da loja.','Recepcionista
Instituição de Ensino Aplicativo Cursa – 2 horas – Concluído em 02/2023.
Auxiliar Veterinária
Instituição de Ensino Pronade – 200 horas – Concluído em 11/2023.
Departamento Pessoal
IPED – 80 horas – Concluído em 04/2025.
Contas a Pagar e Receber
IPED – 80 horas – Concluído em 05/2025.
Técnico em Recursos Humanos
Senac – Cursando.',NULL,'Administrativa, Comercial, Estágio',NULL,NULL,'Instagram','Não','2000','Sim',NULL,'Estágio para área administrativa','Sou uma profissional com facilidade de trabalho em grupo, calma, educada, proativa, pontual e focada em resultados. Disponibilidade de horários. Disposta a aprendizagem. Cursei magistério/ensino médio durante 6 meses em 2023. Sempre busco estudar e aprender coisas novas, me adapto facilmente!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-20T16:07:00.000Z'::timestamptz),
  ('Janaina Cabreira da Cunha Ocanha','janainacunha7704@gmail.com',NULL,'55984388823','2000-10-08',25,'Solteiro(a)','0','Não','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1IcGqrtay4zNVBI8fA6p3QTvk48N1ncFt','Administração de empresas','Pós-graduação Incompleta','Anhanguera','2028-12-18','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Supermercado Rigui, operador de caixa 2023-2024 .
Estágio no Sistema de Previdência Municipal (SISPREM).
Atividades desenvolvidas: Atendimento ao público, arquivamento de documentos,criação de planilhas e atividades administrativas. 
Contabilidade HP, Auxiliar de contabilidade.
10/01/24 á 21/10/24 
Atividade desenvolvida: Elaboração da Folha de pagamento, Guias, Notas Fiscais e Atividades Administrativas.','Já sou formada em Tecnólogo em Administração e estou cursando Bacharel em Administração.
Tenho cursos de Informática e Assistente Administrativo.',NULL,'Administrativa, Comercial, Estágio, Marketing',NULL,NULL,'Instagram','Não','2.000,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','O motivo pelo qual escolhi a área da Administração foi porque fui criada no meio do comércio, desde pequena meus pais tiveram e acabei pegando gosto pela área, gosto muito de tratar com pessoas e me considero uma pessoa proativa e com muita vontade de aprender.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-20T16:29:00.000Z'::timestamptz),
  ('Kamily Martins Barcellos','kamilymartinsbarcellos@gmail.com',NULL,'55991418201','2004-04-20',21,'Solteiro(a)','0','Não','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1IbJkzK3jwYrUDS3mMWWYDeUsCHwFexvC','Educação Física Bacharelado','Ensino Superior Incompleto','UNISA','2028-03-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1. Comercial Zaffari
Cargo: Menor Aprendiz (Pacote, Reposição e Auditoria)
Período: ago/2020 – ago/2022
Principais atividades: Organização de estoque, reposição de mercadorias, apoio no pacote, conferência básica de produtos, atendimento ao cliente e atividades de auditoria interna.

2. Escola Santíssima Trindade
Cargo: Estagiária – Auxiliar de Ensino
Período: mar/2023 – mai/2023
Principais atividades: Apoio às professoras, auxílio em sala de aula, acompanhamento dos alunos e suporte nas rotinas pedagógicas.

3. Secretaria de Educação
Cargo: Estagiária – Auxiliar Administrativo
Período: jul/2023 – dez/2024
Principais atividades: Atendimento ao público, organização de documentos, suporte administrativo, preenchimento de planilhas e auxílio nas demandas internas do setor.

4. Clínica Brasil Dentista
Cargo: Recepcionista
Período: 2 meses
Principais atividades: Atendimento ao público, agendamento de consultas, organização administrativa e suporte na comunicação com pacientes.

5. Espaço Saúde e Condicionamento
Cargo: Estagiária de Educação Física
Período: 7 meses
Principais atividades: Auxílio na orientação de alunos, acompanhamento de treinos, organização do ambiente de atividades físicas e suporte nas rotinas da academia.

6. La Pinapi
Cargo: Secretária
Período: 4 meses
Principais atividades: Atendimento ao cliente, organização administrativa, comunicação interna/externa, controle de agenda e apoio geral às rotinas do estabelecimento.','Tenho curso do IFRS, assistente administrativo e também computação : fundamentos.',NULL,'Administrativa, Estágio, Financeiro',NULL,NULL,'Facebook','Não','1.800','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa dedicada, responsável e com facilidade para aprender e me adaptar a diferentes funções. Gosto de trabalhar em equipe, tenho boa comunicação e procuro sempre entregar meu melhor em tudo o que faço. Busco uma oportunidade onde eu possa crescer profissionalmente, contribuir com a empresa e desenvolver ainda mais minhas habilidades.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-20T17:21:00.000Z'::timestamptz),
  ('Paola ferreira','pgfcdi8057@gmail.com',NULL,'51995451278','1997-11-11',28,'Solteiro(a)','2','Não','Gravataí','https://drive.google.com/uc?export=view&id=1qgbHOwnKGoJ_BpdST--6Ag1EjxIOitgy',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Trabalhei na Bolognese empreendimentos , iniciei como jovem aprendiz , e efetivei contrato , desde 2013 até 2020 , passei por diversas áreas , e conclui na área do RH na parte financeira. 
Hoje curso o técnico de TTI , devido a experiência que tive e quero voltar ao mercado de trabalho.','Estou cursando Técnico de transações imobiliárias',NULL,'Administrativa, Comercial, Financeiro, Novos Negócios',NULL,NULL,'Instagram','Não','A combinar.','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho um curso de administração, fiz inglês básico também.
Realizei um voluntariado na época em que aconteceu as enchentes , atendemos as pessoas em abrigos e ajudávamos na distribuição de doações , cozinhávamos e ofertava aquilo que valor algum compra , colo , atenção , abraço e solidariedade pra todos que chegavam até nós.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-20T19:12:00.000Z'::timestamptz),
  ('Diego Leandro Cunha Lisboa','diegoleandrolisboa@gmail.com',NULL,'11982054745','1982-06-25',43,'Casado(a)','1','Sim','São Paulo, Morei Em Pelotas/rs Em 2020, Tenho Muito Interesse Em Trabalhar No Rio Grande Do Sul','https://drive.google.com/uc?export=view&id=1Lz_aIhi1gIblJjAxQrGf1_wdTbI-WVFb','Engenheiro civil em 2010, MBA Gestão de Projetos em 2018, Tecnólogo em Edifícios em 2005','Pós-graduação Completa','Universidade Nove de Julho (engenharia), Fatec Centro Paula Souza (MBA e Edifícios)','2010-12-20','Sou formado','CONCREMAT ENGENHARIA E TECNOLOGIA (Gerenciadora) – 11/2018 a 08/2020 e 02/2022 a 05/2025.
 Engenheiro civil, Fiscal de obras (PJ)
-Coordenação de obras federais, verificação de escopo, controle de custos, stakeholders, indicadores para o cliente, acompanhamento e cobrança de produtividade, melhoria contínua, monitoramento do cumprimento das normas de segurança em canteiro de obras;
-Elaboração de relatórios gerenciais mensais para o cliente, diário de obras, relatórios de avanço físico e financeiro, elaboração de cronogramas, curva S, conferência de quantitativos, documentações, checklist de entrega de obra;
- Medições da construtora, controle dos custos, aditivos, atuei em obras federais em diversas cidades:  Pelotas/RS, Bragança Paulista/SP, Vassouras/RJ, São Paulo/SP e Campo Grande/MS.

H. BENIFICÊNCIA NIPO BRASILEIRA - de set/2020 a out/2021
Coordenador de Obras e projetos 
-Coordenação de obras de edifício comercial, fiscalização de serviços, reuniões semanais, contratação de empreiteiros, programações, cronograma de obras, requisições de materiais, acompanhamento do processo de compra, medições de empreiteiros, controle financeiro, contratação de mão de obra,  monitoramento do cumprimento das normas de segurança em canteiro de obras; 

SL ENGENHARIA E CONSTRUÇÃO LTDA (Construtora)- de junho/2015 a dezembro/2017
Coordenador de obras (PJ)
-Coordenação de execução de edifício residencial em São Paulo;
-Contratação de empreiteiros, elaboração de contratos de empreiteiros, medições de empreiteiros;
-Elaboração de cronograma de obras, programações de serviços, reuniões;
-Levantamento quantitativo, requisição de material, acompanhamento do processo de compra, controle da obra, controle físico financeiro;
-Fiscalização dos serviços, monitoramento da produção, checklist, olhar crítico.

TEIXEIRA DUARTE (Construtora)- de maio/2014 a junho/2015
Engenheiro de Obras
-Execução de obras residenciais de edifício em São Paulo, planejamento, programações, medições, controle de obra, reuniões técnicas, relatórios técnicos, atualização de cronogramas;

MULTICON ENGENHARIA (Construtora) - de julho/2012 a fevereiro/2014
Engenheiro de Obras
-Execução de obras nas forças armadas;
-Liderança da execução da obra;
-Reuniões com a fiscalização;
-Elaboração de cronograma de obras, atualização, curva S, base line;
-Contratação de mão de obra, escopo, elaboração de contratos de empreiteiros;
-Controle de medições de empreiteiros, programações de obra;
-Levantamento quantitativo, requisições de materiais.','Destaco ter realizado cursos tecnólogo em edifícios, graduação em engenharia civil e MBA, dominío os softwares Pacote office, auto cad, MS Project, sienge, sap, corel draw, photoshop, revit, canva, chatgpt, pdf, meet. Ingressei em 2026 em curso do software Prevision.',NULL,'Engenharia',NULL,NULL,'Agência de Empregos','Não','Aberto a proposta da empresa, minha espectativa: valores de mercado.','Sim','Jorge Teles: whatsaap 81-981825035 (Chefe na Concremat); Luiz Fernando: whatsaap 61-992809002 (cliente final Ministério da Saúde); Eduardo Verri, whatsaap 27-996459453, (Chefe na Concremat).','Engenheiro Civil','Atuei em obras em Pelotas RS em 2020 e tive boas referências de Bagé RS, tenho muito interesse em viver no Rio Grande do Sul, tenho sólida experiência em execução de obras, atuei por seis anos com obras de edifícios residenciais e comerciais, forte habilidade com equipes de obras, contratação de equipes de mão de obra, empreiteiros, elaboração de cronogramas, acompanhamento e cobrança de produtividade, melhoria contínua, cumprimento das normas de segurança em canteiro de obras. Tenho mais de vinte anos vivendo em canteiros de obras.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-20T19:47:00.000Z'::timestamptz),
  ('Carlos Alberto borges melo','borgesyoshi@gmail.com',NULL,'91991000568','1998-05-10',27,'Solteiro(a)','1','Sim','Castanhal','https://drive.google.com/uc?export=view&id=1uYvypjheHTOjamQoaiqx44B__w6Xco8K','Engenharia Civil','Ensino Superior Completo','Estácio','2020-01-10','Sou formado','J A comércio 
Gerente geral
2020 a 2024
Tbj engenharia 
Analista de campo 
2025 a 2025','Gerenciamento de obras pela Ipog terminei em 2024',NULL,'Engenharia',NULL,NULL,'Agência de Empregos','Não','5000','Sim',NULL,'Engenheiro Civil','Sou engenheiro civil, com experiência em coordenação de obras e levantamento de material, liderança','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-20T20:42:00.000Z'::timestamptz),
  ('Evelyn Silva Mello','evelynmello2220@gmail.com',NULL,'55992078517','2007-09-20',18,'Solteiro(a)','0','Não','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=15MqZ7NGmSgTTkIMr3_k2Be5WqNLykMgj',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Cotripal agropecuária cooperativa era Repositora e as vezes auxiliava nas atividades administrativas. Período de dezembro/2022 á maio/2024','Informatica',NULL,'Estágio',NULL,NULL,'Facebook','Não','Salário mínimo','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-20T21:45:00.000Z'::timestamptz),
  ('Derik William Assis da Silva','derikwilliam69@gmail.com',NULL,'51992239446','1999-07-05',26,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1813aoEEgeDp4Q7qa8ZuNBGWl5dGWs5Un','Arquitetura','Ensino Superior Incompleto','UFRGS','2029-01-15','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Estagiei por 1 ano no IPHAE ( Instituto do patrimônio histórico e Artístico do Estado), fazendo levantamentos e plantas de restauro, além de análise de planos diretores para deferimento ou não de petições de reformas em edifícios nos entornos dos prédios tombados pelo estado.
Atualmente estágio na SOP (Secretaria de Obras Publicas), trabalho com análise e desenvolvimento de identidades visuais para edifícios públicos do estado.','Arquitetura e urbanismo, construção civil, análise de desenvolvimento urbano, instalações hidráulicas e elétricas, áreas correlacionadas',NULL,'Arquitetura',NULL,'https://drive.google.com/open?id=1qxKb-bD9bO1YdVynsDyMqxlbVWLT9MXH','Agência de Empregos','Carla Tressoldi','1500-2000','Não',NULL,'Estágio Engenharia e/ou Arquitetura','Eu sou muito curioso, adoro ler e descobrir coisas novas, jeitos novos de fazer as coisas e soluções mais rentáveis e sustentáveis pra tudo. Sou apaixonado pela história do mundo, mitologias e contos, assim como a arte que as acompanha. Como um bom artista, vivo a vida e a vejo com os olhos de um expectador que interage com o entorno, falo fluentemente inglês, francês e italiano, além do português que é minha língua materna. Atualmente estou me desenvolvendo mais nos softwares do curso como (revit, archicad, autocad e sketchup) pois boa parte da formação eu fiz toda no desenho a mão. Busco conhecimento, aprender ao máximo e assim junto de uma equipe comprometida, quero desenvolver o futuro profissional de excelência que eu sei que posso me tornar.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-21T18:00:00.000Z'::timestamptz),
  ('Isabella Meneghetti Fuga','isabella.fuga@sou.unijui.edu.br',NULL,'55999034404','2006-07-03',19,'Solteiro(a)','0','Não','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1sje99VlA4005XBZlhGScVfs81br7-mEQ','Estou fazendo: Psicologia','Ensino Superior Incompleto','Unijui','2029-12-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Fui estagiária na secretaria municipal de saúde e na escola municipal de educação infantil (EMEI) São Francisco','Eu estou no quinto semestre de psicologia.',NULL,'Estágio',NULL,NULL,'Facebook','Não','no mínimo 1.000','Não','Não tenho.','estágio','Tenho conhecimento de pacote office, atendimento ao público tanto presencialmente quanto por telefonema, além de agendamentos, impressão e digitalização de documentos.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-21T19:22:00.000Z'::timestamptz),
  ('adriana de almeida A. Schramm','adrischramm07@gmail.com',NULL,'55981579877','1978-02-05',48,'Casado(a)','3','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1AAS2m071hP2FdPQjIvF_XVByhYdudHQv','transações imobiliária   recursos ,humanos, pedagogia, pos graduaçao psicopedagogia .','Pós-graduação Completa','fael','2015-10-01','Sou formado','unimed departamento comercial, autonoma corretora de imoveis','inteligência emocional, dicção e oratória ,tecnicas em vendas .',NULL,'Comercial',NULL,NULL,'Indicação','sim ANA CARLA PEDROSO','R$5.000,00','Sim','unimed','Quero inscrever-me no banco de talentos da Young!','Boa tarde , busco uma oportunidade na area comercial tenho disponibilidade para  vendas  na cidade sao borja e regiao tenho 47 anos e tenho tempo disponivel e posso viajar ,tenho carro proprio','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-21T20:08:00.000Z'::timestamptz),
  ('Amanda Machado do Amaral','amanda.amaraal@gmail.com',NULL,'055996728900','1997-07-16',28,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1hhzzeFklSQY9fj_td35eC5rTnrs076eP','Arquitetura','Ensino Superior Completo','Instituto Federal Farroupilha - campus Santa Rosa','2025-04-04','Sou formado','1) UNA Arquitetura e Engenharia
2) Estagiária 
3) Março de 2021- Fevereiro de 2022
4) Graficação de projetos executivos, legalizaçao e regularização de imóveis, detalhamento para marcenaria/obra, renderização de imagens, levantamento de medidas, acompanhamento de obras e atendimento ao cliente.

1) Liberali Arquitetura e Design
2) Estagiaria 
3) Maio de 2022 - Abril de 2024
4) Propostas de interiores residências e comercias, levantamento de medidas, atendimento ao cliente, detalhamento executivo, detalhamento de mobiliário, graficação em 3D, renderização de imagens, conferência de medidas em obra.

1) Liberali Arquitetura e Design 
2) Analista técnica de projetos
3) Maio de 2024 - Atualmente
4) Proposta de interiores comercial, residencial e corporativo, detalhamento executivos de projetos arquitetônico e interiores, acompanhamento de obra, responsável pela implementação de identidade visual de multinacional no ramo de maquinarios agrícolas nas concessionarias da rede','Sou formada a um ano em Arquitetura e Urbanismo. Possuo cursos de autocad, sketchup, acessibilidade e IA para arquitetos, onde aprendi a renderizar e humanizar plantas de forma rápida. Tambem sei usar o software enscape e revit. Me interesso bastante pela área de urbanismo e também de patrimônio.',NULL,'Arquitetura, Engenharia',NULL,'https://drive.google.com/open?id=1N9wBN_pSnSSVa1qSZ0ZdO6mEp4F5x0ks','Instagram','Não','3mil','Sim',NULL,'Arquiteta','Eu sou Alegretense e atualmente resido em Santa Rosa e tenho muita vontade de voltar para a fronteira. 
Me considero muito rápida em fazer propostas 3d no sketchup e gosto de coisas novas, a IA tem me chamado bastante atenção. Gosto de aprender novas habilidades (atualmente estou aprendendo a bordar) mas já toquei violão, dancei ballet, dancei em invernada e aprendi inglês. Não sou fluente, mas me viro bem.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-21T20:44:00.000Z'::timestamptz),
  ('Luciane de Azambuja','luazamb@gmail.com',NULL,'51981287200','1974-03-25',51,'União estável','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Jj4uWUyjUNiiTsAbNb-gRvULfxNHMEmX','Arquitetura','Pós-graduação Completa','UNISINOS - Graduação, UFRGS - pós graduações','2003-01-03','Sou formado','Trabalhei no IPHAN MG e IPHAN AL - administração, vistorias, laudos, notificações extrajudiciais, fiscalização de obras, análise de processos; FNDE Brasília - setor de obras - análise dos projetos e obras na área da educação de todo o país; Prefeituras: Santo Antônio da Patrulha, Sapiranga, Igrejinha, Campo Largo/ PR e Porto Alegre ( duas contratações: SMCEC em 2023 e SMOI em 2024); Consultora Técnica pela UNESCO (3 contratações em períodos distintos).','Sou especialista em Patrimônio Cultural e em Gestão Pública, experiência em Gestão de Pessoas, Execeução, Gestão e Fiscalização de Obras de pequeno, médio e grande porte, experiência com Plano Diretor, e demais atribuições relativas à Arquitetura e Urbanismo. Faço todos os cursos disponíveis para atualização profissional como revisão de normativas e leis, exemplo, atualização sobre lei de licitações. Resumindo, tenho um currículo extenso.',NULL,'Administrativa, Arquitetura, Engenharia',NULL,NULL,'Site da Empresa','Carla Tressoldi','12.000,00','Sim','Contatos no currículo, se precisarem posso enviar. Não tenho portfólio, pois trabalho com frequencia em instituições públicas ou contratações internacionais (UNESCO).','Quero inscrever-me no banco de talentos da Young!','Tenho experiência de mais de 20 anos na profissão, trabalho com AutoCad há 30 anos. Sou mestranda em Museologia e Patrimônio Cultural pela Faculdade de Comunicação da UFRGS e sou estagiária docente da cadeira  Técnicas retrospectivas na Faculdade de Arquitetura da UFRGS. Tebaldi era um grande amigo de meu pai, por isso acompanhamos o "nascimento" do Parque da Guarda e da Young Empreendimentos. Me ofereço como consultora, caso a empresa precise de algo. Hoje trabalho na secretaria de obras do RS, 18ºCROP, Osório, contrato até março de 2027.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-22T12:19:00.000Z'::timestamptz),
  ('SUELEN TESTE','SUELEN@YOUNGEMPREENDIMENTOS.COM.BR',NULL,'51999053851','1997-03-19',28,'Solteiro(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1CAG1iq4tkWzWvYgn3wR6DSB-TK1PJNsU','Ciências Contábeis','Ensino Superior Completo',NULL,NULL,'Sou formado','TESTE',NULL,NULL,'Financeiro',NULL,NULL,'Instagram','NÃO','TESTE','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-22T15:13:00.000Z'::timestamptz),
  ('Bruna Amaro Falconi','bfalconi05@gmail.com',NULL,'55992211101','2004-07-13',21,'União estável','0','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=196nG34Ufh3h__4oweY967PLh519zaQFF','Ciências Contábeis','Ensino Médio Completo','Annes Dias','2024-07-10','Não, no momento pausei/parei por um período.','Fui estagiária da prefeitura de cruz alta, meu primeiro estágio foi como auxiliar administrativo na casa de passagem, do dia 10 /11/23 até 17/12/24, lá atuei em rotinas administrativas, com organização de documentos, controle de entrada e saída de materiais, cadastro e atendimento ao público. 
No dia 10/03/25 comecei a trabalhar na Escolinha Nina Amaral como auxiliar de sala de aula, onde dava apoio às atividades pedagógicas, auxiliando o professor na aplicação de planejamentos, acompanhamento das crianças e adaptação de atividades conforme a necessidade da turma. Desenvolvimento de habilidades como paciência, organização, comunicação e trabalho em equipe.','Fiz técnico em contabilidade',NULL,'Administrativa, Estágio, Financeiro',NULL,NULL,'Facebook','não','Salário mínimo','Não',NULL,'Estágio Financeiro','Sou uma pessoa dedicada, organizada e com facilidade para aprender coisas novas. Tenho boa comunicação, gosto de trabalhar em equipe e de manter o ambiente organizado. Possuo conhecimentos básicos em informática (Word e Windows) e experiência em atendimento ao público. Estou sempre aberta a novos aprendizados e oportunidades de desenvolvimento profissional.
Gosto de aprender coisas novas. Eu adoro cozinhar, testar novas receitas, nas horas livres, gosto de olhar séries e filmes e também adoro viajar, especialmente para cachoeiras, pois gosto de estar em contato com a natureza e aproveitar esses momentos para relaxar.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-22T16:43:00.000Z'::timestamptz),
  ('Ana Luiza Leal Paz','analuizalealpaz@gmail.com',NULL,'53999918622','2004-08-30',21,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1T5mniOSBvoH8-LQmDFA2KxG4AsIgOGLv','Técnico em administração','Ensino Médio Completo','Escola geteco','2026-12-22','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Supermercados nicolini, jovem aprendiz 2 anos empacotador, início 11/2020 encerrou 06/2022
Supermercado Peruzzo, operador de loja 2 anos, início 02/2023 encerrou 09/2025','Comecei curso de técnico em administração esse ano e faço curso de gastronomia no instituto mix bagé',NULL,'Administrativa',NULL,NULL,'Agência de Empregos','Edilson Fabiano de Oliveira Luiz','1.621 salário mínimo','Não',NULL,'administrativo','Faço curso todas as terças de noites no instituto mix de chef profissional mais salgadeiro, começo esse ano técnico em administração lá no geteco','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-22T18:35:00.000Z'::timestamptz),
  ('Carla Tressoldi','carla@youngempreendimentos.com.br',NULL,'51980518665','1999-05-31',26,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1toMoP7sGj_5PaIXqrrVtb5wUJL-MdnDl','Ciências Contábeis','Ensino Superior Completo','uniasselvi',NULL,'Sou formado','teste',NULL,NULL,'Administrativa',NULL,NULL,'Agência de Empregos','nao','10000000000000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-22T20:20:00.000Z'::timestamptz),
  ('Paola do Prado Alves','paolaaprado@gmail.com',NULL,'55991464450','2000-03-24',25,'Solteiro(a)','0','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1Qj3aaRd1skA1lvlgoCzxSm4jdjTgg1tO',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Elemento Comunicação Visual e UP Suplementos - 2022 até 2023
Atividades realizada: Vendas presenciais e online, cadastro de
cliente, marketing da empresa e fechamento de caixa.
Domitila Wear Shoes - 3 mês de experiência.
Atiividade Realizada: Atendimento ao cliente, vendas
Starmaq Implementos Agrícolas - 2023 até 07/2025
Atividades realizadas: Recepcionista, atendimento ao cliente,
notas fiscais, marketing da empresa.
Parmas Pizzaria - Freelancer - 2024 até o momento.','Curso de Informática básica.',NULL,'Administrativa',NULL,NULL,'Instagram','Não','1.600,00','Sim',NULL,'Estágio Administrativo',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-22T23:58:00.000Z'::timestamptz),
  ('Rafaela De Lima Chagas','chagas24052003@gmail.com',NULL,'55991362091','2003-05-24',22,'Solteiro(a)','0','Não','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1NWACObvSUiRt8biGoCffDYxtu6HSmxYy',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Trabalhei na subway cruz alta durante 3 anos. 2022/2024','Fiz informática e algumas noções em adm',NULL,'Administrativa, Comercial, Marketing',NULL,NULL,'Facebook','Nao','1600','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-23T15:01:00.000Z'::timestamptz),
  ('Hugo Vaz Pinto Filho','hugovazpinto@hotmail.com',NULL,'53999333393','1969-11-09',56,'Casado(a)','2','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=12H8CKwOLLwgqCMjsgCV3lRP7wbo4X0Jl','Administração de empresas','Pós-graduação Completa','Universidade da Região da Campanha','2001-01-01','Sou formado','1) Casa Universal Material Elétrico 
2) Auxiliar administrativo 
3) Data de início: 01/03/1994 e data final: 06/09/2011
4) Prática e rotina administrativa, que incluía fazer contratos de locações, de compra e venda do proprietário da empresa.','Formado em Administração de Empresas pela URCAMP, com pós graduação em Recursos Humanos e Marketing pela URCAMP. Cursando Eletrotécnica pelo SENAI. Conhecimento prático em contratos de locações residenciais e comerciais e venda de imóveis.',NULL,'Administrativa, Comercial',NULL,NULL,'Agência de Empregos','Não.','R$2.500','Sim',NULL,'Consultor de Vendas','Tenho conhecimento em eletricidade, hidráulica e pintura residencial. Fiz curso básico de espanhol. Participei do Rotary, exercendo diversas áreas em dois clubes.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-23T22:12:00.000Z'::timestamptz),
  ('Bruno Rodrigues de Abreu','bruno.abreucorsan@gmail.com',NULL,'53997106697','1986-08-08',39,'Solteiro(a)','0','Sim','Dom Pedrito','https://drive.google.com/uc?export=view&id=1zBpiZ4fz7dEOI3h2GBf3HR_RBPQ-GcFa','Engenharia Civil','Pós-graduação Incompleta','Urcamp','2022-12-31','Sou formado','Corsan aegea ( 14 anos ) , atualmente ( executivo municipal de dom Pedrito - função de diretor de projetos )','Nr 35, nr 33, cursos de movimentação de terra e pavimentação, cursos em geral sobre saneamento básico, manutenção de dispositivos de rede de água e esgoto, gestor por 3 anos (operação e serviços na Corsan argea )',NULL,'Engenharia',NULL,NULL,'Agência de Empregos','Não','Entre 5000,00 e 8000,00','Sim','Denis batista de Freitas (gestor por anos na Corsan aegea e especialista em obras no saneamento básico) +55 55 9969-1639','Engenheiro Civil','Engenheiro civil executar , analista , projetista e líder','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-24T01:04:00.000Z'::timestamptz),
  ('Maria eduarda grellert','eduardagrellert@gmail.com',NULL,'51998587408','2005-07-08',20,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1KsPtVYD37PGNXBhuCnJq4hj3Si5XVP4q','Engenharia de Produção','Ensino Médio Completo','Furg','2025-12-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Encaminhado no portifolio',NULL,NULL,'Administrativa, Estágio, Financeiro, Marketing',NULL,'https://drive.google.com/open?id=1E5XzQOxGXhERUMvGRZWzw15vGIwSG7O9','Agência de Empregos','Não','2500 a 3500','Sim','Emcaminhado','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-26T21:37:00.000Z'::timestamptz),
  ('Lucas Limberger','eng.lucaslimberger@gmail.com',NULL,'55999988166','1987-10-14',38,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=13B9S1ZgK3Y4TauM1dWB8V72Uh3DtMwyF','Engenharia Civil','Ensino Superior Completo','FARO - Faculdade de Roseira','2023-06-29','Sou formado','Desenhista de Projetos
Construtora Sotrin Ltda, Alegrete - RS
Novembro de 2009 - Agosto de 2017
•	Desenvolvimento de projetos arquitetônicos, elétricos e hidros sanitários para edificações unifamiliares e multifamiliares.
•	Participação no desenvolvimento de loteamentos e condomínios, focando na infraestrutura de redes de água, esgoto, drenagem pluvial e terraplanagem.

Assistente de Engenharia e Gestão
Construtora Sotrin Ltda, Santana do Livramento - RS
Agosto de 2017 - Maio de 2021
•	Desenvolvimento e execução de projetos arquitetônicos, elétricos, hidros sanitários, e de infraestrutura.
•	Participação na execução de residências, prédios multifamiliares, prédios comerciais, e projetos de ampliação e adequação de prédio tombado historicamente.
•	Envolvimento na construção de loteamentos, condomínios e de um parque aquático, assegurando o cumprimento dos prazos e a alta qualidade das entregas.
•	Gestão de pessoas e coordenação de obras, garantindo a eficiência e a produtividade da equipe.

Engenheiro Civil e Corretor de Imóveis
Lucas Limberger Engenharia e Imóveis – Escritório Autônomo, Bagé - RS
Dezembro de 2024 – Presente
•	Atuação na compra e venda de imóveis, avaliação de mercado e assistência em financiamentos.
•	Projetos de Construção, reforma e ampliação de Edificações.
•	Regularização de Imóveis
•	Projetos e execução de obras de Infraestrutura de Loteamentos e Condomínios.

Engenheiro Civil 
Rio do Sul Urbanismo – Loteamento Petra Garden Park Living, Bagé - RS
Fevereiro de 2025 – Presente
•	Acompanhamento técnico e fiscalização das etapas da obra do empreendimento Petra Garden Park Living.
•	Elaboração e compatibilização de projetos executivos.
•	Desenvolvimento de cronogramas físicos e financeiros para controle de prazos e execução.
•	Orçamentação de serviços e obras, com levantamento de custos diretos e indiretos.
•	Planejamento e controle de compras, com listagem e especificação de materiais conforme necessidade da obra.
•	Interface com fornecedores, equipe de obra e demais profissionais envolvidos, visando assegurar qualidade, prazos e conformidade técnica.','Experiência de 11 anos trabalhados dentro de uma construtora. Concluindo o técnico e boa parte da graduação estando vivenciando a teoria e a prática na empresa.',NULL,'Engenharia',NULL,NULL,'Indicação','Evelise Hamed','7000','Sim','Leandro Lignon: 53999626444
Evelise Hamed: 53991533938','Quero inscrever-me no banco de talentos da Young!','Engenheiro Civil com sólida experiência em projetos e execução de obras, aliado a uma forte atuação no mercado imobiliário.
Ao longo da carreira, desenvolvi e gerenciei projetos arquitetônicos, elétricos e hidrossanitários, com participação direta na execução de obras residenciais, edifícios multifamiliares e comerciais, além de grandes empreendimentos como condomínios, loteamentos e parques aquáticos.
Com visão técnica e foco em resultados, atuei também como Corretor de Imóveis na RE/MAX Superação, unindo expertise em engenharia e negociação para assessorar clientes na compra e venda de imóveis urbanos e rurais.
Após o encerramento das atividades da franquia em Bagé, estabeleci meu próprio escritório, localizado na Rua Fabrício Pilar, 999, onde atuo de forma autônoma em múltiplas frentes da engenharia civil e corretagem de imóveis. Atualmente, também sou o engenheiro responsável pela execução do Loteamento Petra Garden Park Living, coordenando as atividades técnicas e operacionais do empreendimento.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-27T17:42:00.000Z'::timestamptz),
  ('Gustavo Coelho Silva Wertheimer','gustavocsw9@gmail.com',NULL,'51999536925','2000-02-13',26,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1lGw-V72A58MG3v62_6WJpiNYcyIn8Vqg','Engenharia Civil','Ensino Superior Completo','PUCRS','2023-01-07','Sou formado','Cyrela Goldstein
Estagiario de Obras
Outubro 2020 até Outubro 2021
Controlar e garantir a qualidade dos serviços da estrutura e acabamentos, cuidar e tratar diretamente com os fornecedores de material e mao de obra e garantir o cumprimento do prazo estabelecido pelo engenheiro, tudo no canteiro de obras.

Encosan - Engenharia Contruções e Sanemanto LTDA
Auxiliar tecnico
Março 2020 até Dezembro 2022 (interrompido com o estágio na Cyrela)
Engenheiro Civil 
Janeiro 2023 até o momento
Planejamento e organização da obra, garantindo cumprimento de cronograma
• Programação de serviços e acompanhamento diário da produção
• Monitoramento e controle da produtividade das equipes de campo
• Fechamento de medições mensais e interface direta com o cliente',NULL,NULL,'Administrativa, Comercial, Financeiro, Engenharia',NULL,NULL,'Agência de Empregos','Não','R$15.000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho curso de ingles completo, com ingles avançado para escrita e conversação.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-28T12:47:00.000Z'::timestamptz),
  ('Rogério Amato Pinto','rogerioamato@gmail.com',NULL,'51999084550','1972-08-05',53,'Divorciado(a)','1','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1klnffOlzy9ZV4agOEFE2PCGBGM2Z5as8','Engenharia Civil','Ensino Superior Completo','Universidade do Sul de Santa Catarina - UNISUL','2005-08-01','Sou formado','OBRA INDUSTRIAL – Aquecedor de Óleo Térmico – INNOVA
Período: 10/2025 a Atual
Local: Triunfo/RS
Implantação de bases com chumbadores para equipamentos industirais, moega, doca, esgoto de óleo, subestação, drenagem e piso industrial.
Contratante: T&R Engenharia Ltda

OBRA CORPORATIVA – Instituto Tecnológico Vale – VALE
Período: 04/2025 a 10/2025
Local: Belém do Pará/PA
Prédio corporativo com laboratórios, auditórios, salas de treinamento, banheiros, vestiários, estacionamento e portaria.
Contratante: AXION Engenharia Ltda

OBRA INDUSTRIAL - Ampliação Industrial – JOHN DEERE
Período: 11/2023 a 04/2025
Local: Montenegro/RS
Implantação de Warehouse com estacionamento de caminhões, portaria, sala de baterias, calçadas, ruas, balança, doca, escritórios, banheiros e vestiários.
Contratante: AXION Engenharia Ltda

OBRA DE SHOPPING - Pontal Shopping – SVB PAR
Período: 03/2020 a 10/2023
Local: Porto Alegre/RS
Shopping Center com 11 escadas rolantes, 08 elevadores, estacionamento com 1350 vagas, 173 unidades comerciais e parque público.
Contratante: BM PAR Empreendimentos

OBRA CORPORATIVA - Sede Administrativa da Cooperativa - SICREDI
Período: 03/2019 a 03/2020
Local: Marau/RS
Prédio corporativo com auditório, elevadores, foyer, estacionamento e portaria.
Contratante: Dimensão Engenharia e Construções Ltda.

OBRA CORPORATIVA - Sede Administrativa da Cooperativa - SICREDI
Período: 03/2018 a 03/2019.
Local: Pelotas/RS
Prédio corporativo com auditório, elevadores, foyer, estacionamento e portaria.
Contratante: Construtora Andora Ltda.

OBRA DE SHOPPING - ParkShopping Canoas - MULTIPLAN
Período: 06/2016 a 02/2018
Local: Canoas/RS
Shopping Center com 12 escadas rolantes, 10 elevadores, estacionamento com 2600 vagas, 265 unidades comerciais, pista de patinação e parque público.
Contratante: Tecplan Engenharia e Empreendimentos Ltda

OBRA INDUSTRIAL - Ampliação Industrial - BIANCHINI S/A
Período: 05/2014 a 05/2016
Local: Canoas/RS
Implantação com galpões graneleiros, silos, moegas, túneis, elevadores industriais, estacionamento, portaria, balança, doca, calçadas, ruas, escritórios, banheiros e vestiários.
Contratante: Cótica Engenharia e Construções Ltda

OBRA CORPORATIVA - Sede Administrativa da Cooperativa - SICREDI
Período: 12/2012 a 04/2014.
Local: Teutônia/RS
Prédio corporativo com auditório, elevadores, foyer, estacionamento e portaria.
Contratante: Construtora Tedesco Ltda.

OBRA INDUSTRIAL - Maltaria - AMBEV
Período: 09/2011 a 12/2012.
Local: Passo Fundo/RS
Implantação com galpões graneleiros, silos, moegas, túneis, elevadores industriais, estacionamento, portaria, balança, doca, calçadas, ruas, escritórios, banheiros e vestiários.
Contratante: Construtora Viero S/A.

OBRA INDUSTRIAL - Indústria e Armazenamento de Grãos - AGROGEN
Período: 11/2010 a 09/2011.
Local: Sete Lagoas/MG
Implantação com galpões graneleiros, silos, moegas, túneis, elevadores industriais, estacionamento, portaria, balança, doca, calçadas, ruas, escritórios, banheiros e vestiários.
Contratante: Eplak Construções Ltda.

OBRA INDUSTRIAL - Indústria de Embalagens - BRF
Período: 02/2010 a 11/2010
Local: Carambeí/PR
Implantação com galpões, túneis, elevadores industriais, estacionamento, portaria, doca, calçadas, ruas, escritórios, banheiros e vestiários.
Contratante: BSF Engenharia Ltda

OBRA INDUSTRIAL - Subestação para UHTS - PETROBRAS
Período: 09/2009 a 02/2010
Local: Canoas/RS
Prédio industrial com piso epóxi ucrete, paredes maciças duplas, dentro do in side REFAP.
Contratante: BSF Engenharia Ltda.

OBRA INDUSTRIAL - Indústria e Armazenamento de Grãos - AGROGEN
Período: 12/2008 a 09/2009.
Local: Guarapuava/PR
Implantação com galpões graneleiros, silos, moegas, túneis, elevadores industriais, estacionamento, portaria, balança, doca, calçadas, ruas, escritórios, banheiros e vestiários.
Contratante: Eplak Construções Ltda','Diversos cursos de gestão ao longo da carreira.',NULL,'Engenharia',NULL,'https://drive.google.com/open?id=194c4hHrstlHuamxt82zw33iNaTtVLwvF','Google','Não','R$15.000,00','Sim',NULL,'Engenheiro Civil','•	Experiência em obras industriais, corporativas e shoppings;
•	Gerenciamento de contratos;
•	Gestão de pessoas;
•	Profissional com conhecimentos teóricos, técnicos e práticos;
•	Habilidade de relacionamento com o cliente;
•	Foco na qualidade e resultado;','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-28T14:13:00.000Z'::timestamptz),
  ('Matheus Miranda Brasil','matheusbrasil94@hotmail.com',NULL,'53999416998','1994-05-20',31,'Solteiro(a)','0','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1E_LFeo8WrzQL-I6k5gdtTIdSB_wLAXTS','Engenharia Civil','Ensino Superior Completo','Urcamp Bagé -Rs','2022-01-03','Sou formado','2018 até 2020 - Estagiário na PREFEITURA DE CANDIOTA / RS ( Fiscalização de obras Públicas em geral , Compras .)

2022 até 2024 - Engenheiro Civil em cargo Comissionado na PREFEITURA DE CANDIOTA/ RS ( Fiscalização de Obras Públicas , Gestão de Compras e Logística.)

2025 de Janeiro até Junho - ( Engenheiro Civil , BR CONSTRUTORA BAGÉ/RS ( Execução de Obras e coordenação de equipes , controle de Cronogramas de obras , Compras de materiais.)',NULL,NULL,'Administrativa, Engenharia',NULL,NULL,'Agência de Empregos','Não','R$8.000','Sim','Marcelo Vaz ( Engenheiro Civil e Coordenador do setor técnico da secretaria de obras PREFEITURA DE CANDIOTA/RS - tel: 53 99945-1039)

Bruno Cabral ( Ceo da BR Construtora Bagé - tel: 53 99936-0176','Engenheiro Civil','Software ( AutoCAD , Revit , Pacote Office)
Muita vontade de trabalhar!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-28T18:41:00.000Z'::timestamptz),
  ('Arthur duarte da rosa','arthurdduarte15@gmail.com',NULL,'51981040421','2008-03-26',17,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1YgCrp-y26u-rPeHAlqy859tAIMSzihs3','Arquitetura','Ensino Médio Incompleto','Cristovao colombo',NULL,'Não, no momento pausei/parei por um período.','Renapsi, fiquei na area de administração e iniciei na empresa dia 11 de Novembro de 2024 e o curso terminou dia 7 de julho de 2025.
Eu efetuava diversas funcoes e atividades na empresa que eu fui direcionado, a primeira foi a FAPERGS prestação de contas, eu organização pastas antigas e recentes para algumas instituições. Após minha saida da fapergs eu fuo direcionado a outra empresa a EPA uma escola feita para moradores de rua que nao terminaram o ensino médio e lá eu tinha atividades como separar, organizar, fichar e etc.','Estou cursando o ensino médio, me destacou atualmente por minha criatividade para projetos. Sou focado e estou pronto para qualquer area!',NULL,'Arquitetura, Estágio, Engenharia',NULL,NULL,'Agência de Empregos','Nao','1','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Eu me descrevo como alguem intuitivo, faco diversas coisas que me agradam como tocar violao ou guitarra, jogo basquete quando estou livre, passo tempo com minha namorada, desenho muito bem( é o que me dizem), me considero muito focado nos meus objetivos quando preciso de algo ou quero fazer algo eu me foco o maximo possivel para alcançar o que eu preciso e eu me defino assim.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-29T15:13:00.000Z'::timestamptz),
  ('Ingritti de Fernandes Cunha','ingrittidefernandescunha@gmail.com',NULL,'53991829445','1997-10-13',28,'Solteiro(a)','1','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1Z9t55ZL3xalHDtITUc3ovQUhmGDu48v1','Administração de empresas','Ensino Superior Incompleto','Unicesumar','2027-12-18','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Banco do estado do Rio Grande do Sul
Cargo : Estagiária 
Período: 01/08/2020 até  18/08/2022
Atuei 2 anos como estagiária no Banrisul, na plataforma PF e PJ da agência, na sala de auto atendimento, e em todos os canais digitais  da agência.Tive a oportunidade de aprender  muito no dia a dia da instituição, análise, prospecção de clientes e vendas de produtos e serviços eram minhas principais atividades, lidei com metas e prazos e consegui sempre entregar os resultados solicitados. Participei de cursos e treinamentos para me aperfeiçoar e entregar sempre o melhor resultado.',NULL,NULL,'Administrativa, Comercial, Financeiro, Novos Negócios',NULL,NULL,'Agência de Empregos','Não','Salario compatível com a função.','Sim',NULL,'Consultor de vendas',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-29T17:49:00.000Z'::timestamptz),
  ('William dos Santos Carvalho','williamcarvalho2005.wc@gmail.com',NULL,'51995053266','2005-09-29',20,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1PpLo-qy5WkYHhP_O-uea126DdeOUyTt9','Arquitetura','Ensino Superior Incompleto','Unilasalle - Canoas','2027-12-15','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) MRV&CO
2) Estágiario
3) 06/11/2024 - 24/11/2025
4) Realização de conferências em execução e acabamento dos colaboradores na obra, realizava função de coordenação das atividades para atingir prazos, realizava atendimento aos clientes, leitura de projetos para a execução na obra e realização de vistorias de qualidade dos apartamentos.','Atualmente estou cursando Arquitetura e Urbanismo, na faculdade realizamos diversos projetos em grupo, também estudamos sobre materiais de construção e da execução. Já realizei curso de Autocad no início da graduação, hoje estou no 7° semestre e já tenho conhecimento dos demais softwares que foram ensinados na faculdade como Revit e Archicad.',NULL,'Arquitetura',NULL,'https://drive.google.com/open?id=1s7MVR7GeHtauuMuL8C6anD7FNZ0px22w, https://drive.google.com/open?id=1_sfIduDYBr0kQn083cpxFMuvmTZL4Q0a, https://drive.google.com/open?id=1XwPKC5JvNl5xe1S9cFmkvyHzUu0EjxCx, https://drive.google.com/open?id=1_pqZ7QOOlyaA52VIkU3lNNguO7QuMb_D','Ciee Rs','Não','R$2.000','Não',NULL,'Estágio Engenharia e/ou Arquitetura','Oii tudo bem? Ksksk
Tenho 20 anos gosto bastante de ficar em casa, passei parte das férias da faculdade jogando com minha namorada, passei um tempo na praia, gosto muito de pescar com meu pai e tenho dois gatos. Já fiz trabalhos voluntários no passado, participava de um grupo que arrecadava materiais, roupas e brinquedos para escolas de uma zona que precisava. Sobre o estágio, estou buscando minha primeira experiência em um escritório, já trabalhei em obra e aprendi muitas coisas e agora quero amadurecer mais meus conhecimentos em relação a realização de projetos, atualmente tenho conhecimentos sobre Revit, Archicad, Sketchup e Autocad. Em meu portfólio sinalizei cada software que foi utilizado (tive que partir ele pois não aceitava a memória ksksk). Sobre idiomas eu sou bem intermediário, consigo viajar e pedir comida para não passar fome ksks. Mas seria isso ksksk, gostaria de fazer parte da equipe e aprender mais e talvez ser efetivado.😁','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2026-01-29T18:33:00.000Z'::timestamptz)
;
