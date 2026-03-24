-- Parte 7 de 9 (até 300 linhas por arquivo para caber no SQL Editor)
-- Cole no SQL Editor do Supabase → Run. Depois execute a próxima parte.
-- Tabela permite múltiplos envios por email (cada linha = um envio com timestamp).

INSERT INTO young_talents.candidates (full_name, email, email_secondary, phone, birth_date, age, marital_status, children_count, has_license, city, photo_url, education, schooling_level, institution, graduation_date, is_studying, experience, courses, certifications, interest_areas, cv_url, portfolio_url, source, referral, salary_expectation, can_relocate, professional_references, type_of_app, free_field, status, tags, origin, created_by, original_timestamp)
VALUES
  ('Laura Assis da Cunha','assisdacunhalaura5@gmail.com',NULL,'998964037','2006-12-05',19,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1n82d93qMOKPFXMMqYN1EpmiywN6-_lb2','Técnico em Química','Ensino Médio Completo','Escola Técnica Estadual Monteiro Lobato','2025-07-10','Não, no momento pausei/parei por um período.','Fiz estágio na empresa DaColônia Alimentos Naturais LTDA, no setor laboratorial do controle de qualidade. Na qual eu realizava análises físico-químicas e micotoxicológicas.','Estou concluindo o Curso Técnico em Química na Escola Técnica Estadual Monteiro Lobato',NULL,'Administrativa, Financeiro','https://drive.google.com/open?id=1vwed0Q5ot-4i1ZMJX8X4c-NoTylSQIPU',NULL,'Instagram','Não','Um salário correspondente com o mercado de trabalho.','Sim',NULL,'Estágio Financeiro','Tenho felicidade em me comunicar e aprender, também tenho facilidade com línguas estrangeiras especificamente o inglês.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-04-28T22:24:00.000Z'::timestamptz),
  ('Raira Negreiros Tidra','rairatidra.tidra@gmail.com',NULL,'51996196001','2002-12-18',23,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=11Aom7uTxHCw3WnWWI-EDXnY_Q6hw08kp',NULL,'Ensino Superior Incompleto','Uniasselvi','2027-04-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Grupo Setup
09/2023 - 03/2025
Entrada em notas, controle de planilhas, controle de estoque, atendimento ao público, logística de entrega de materiais, manuseio de sistemas, entre outras funções.
Controle de ponto, Revisão e tratativas de Folha de Pagamento, lançamento de caixa, atestados, férias, agendamento ASO’s, atividades relacionadas aos colaboradores e a Departamento Pessoal, emissão de relatórios, análise de Bi e faturamento, entre outras funções administrativas.','Curso Recursos Humanos mas possuo cursos de curta duração,
Ass. administrativo, Introdução a administração, Pacote Office, Imagem e Postura profissional entre outros.',NULL,'Administrativa, Financeiro','https://drive.google.com/open?id=1hNyUnGJJHaXvjkYVJlW27Dzit8-dXxo7',NULL,'Instagram','Não','1.900,00','Não',NULL,'Assistente Financeiro','Me chamo Raira, tenho 22 anos!
Já vivi muitas experiências pessoais e profissionais que me forjaram e me fez amadurecer.
Aos 18 anos em mudei para Floripa atrás de aprendizados, fiz trabalhos voluntários com crianças e mulheres vulneráveis. 
Aos 21 retornei pra família, na minha cidade natal. Onde tive a experiencia profissional que mais aprendi (Setup), continuei os trabalhos voluntários com os desabrigados das enchentes.
Hoje, me mudei para Santo Antônio para casar! Me considero uma pessoa que ama desafios novos e aprendizagens, vivo uma fase sendo a mesma mas com desejo de estabilidade (principalmente profissional).','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-04-29T00:12:00.000Z'::timestamptz),
  ('Raíssa dos Santos Nazario','raissanaza1810.sap@gmail.com',NULL,'51997832928','2005-10-18',20,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1-5U_IVTg0OSc92dzlqbuhYguEIHXQtel','Pedagogia','Ensino Superior Incompleto','Uniasselvi','2028-02-14','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Não é meu primeiro emprego, mas é nessa área, a outra vez foi em uma escola, em Glorinha para auxiliar professores','trainee coaching 1 (administração informatizada) (concluída)
Administração, Secretariado, vendas, marketing, contabilidade, internet e Drive, pacote office e desenvolvimento humano
Instituição Mundo office','trainee coaching 1 (administração informatizada) (concluída) ● Administração, Secretariado, vendas, marketing, contabilidade, internet e Drive, pacote office e desenvolvimento humano ● Instituição Mundo office','Administrativa','https://drive.google.com/open?id=1xeY7p62gmRLVWt56GhRZ76jx48aqm-I5',NULL,'Instagram','Não','1500','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Bom eu estou procurando emprego em todos os lugares, mas é difícil ser chamada, eu quero um emprego principalmente para estabilização financeira, e para dar o melhor para meus animais de estimação, meu bebês como chamo, sou meio tímida, então não falo muito, mas sou boa com escrita e vocabulário','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-04-29T18:45:00.000Z'::timestamptz),
  ('Douglas Antonio Correa Martins','douglascm19@gmail.com',NULL,'51998569563','1994-11-22',31,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=109Wg1kc-EiyjYRdDqUDDCP1tQL9qfB8G','Análise e Desenvolvimento de Sistemas','Ensino Superior Incompleto','Unisinos',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Trabalhei na empresa Consórcio Univias, como atendente comercial, de dezembro de 2012 à dexembro de 2013, tendo como principais responsabilidades o atendimento ao cliente e controle de caixa e valores; logo após comecei na empresa Apl Apoio logístico Ltda, iniciando como arrecadador, e posteriormente sendo promovido à controlador de entrada e saída, de janeiro de 2014 à setembro de 2024, onde tive responsabilidades como gerenciamento de equipe, controle de numerário financeiro, atividades administrativas e atendimento ao cliente.','Meu curso de graduação se situa na área de tecnologia e foca na criação, manutenção e melhoria de softwares e sistemas computacionais. Envolve programação, bancos de dados, análise de requisitos, testes e gestão de projetos, com o objetivo de desenvolver soluções tecnológicas tanto para empresas quanto para usuários.',NULL,'Estágio, Financeiro, Marketing, Engenharia','https://drive.google.com/open?id=1F4fsn1-aozTKj3OTuKxJMUTjaEmiVfzV',NULL,'Indicação','Não.','2000','Sim','Valquíria - (51)998210542 - gerente na empresa Apl Apoio Logístico Ltda','Quero inscrever-me no banco de talentos da Young!','Além da minha graduação em tecnologia e grande interesse na área, sempre tive muita facilidade com inglês e me considero uma pessoa com conhecimento avançado nesta língua. Trabalhei por anos na área comercial e de atendimento ao cliente, tendo adquirido experiência com comunicação e resolução de problemas, entre outras habilidades. Sou muito receptivo e responsável eticamente, prestativo e pontual.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-04-30T01:29:00.000Z'::timestamptz),
  ('Karolina silva dos santos','karolinesilva313@gmail.com',NULL,'51996672041','2001-05-31',24,'Casado(a)','2','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1ZgstVC7IbCU_N0AXR_Y-i6ZYbAGFeU8U','Administração de empresas','Ensino Superior Incompleto','Uniasselvi','2025-10-25','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Iconte - Auxiliar Administrativo, 20/12/2023 a 20/12/2024
ViaMar - Auxiliar Administrativo, 06 a 09/2021
Fabrica de calcados',NULL,NULL,'Administrativa, Financeiro',NULL,NULL,'Facebook','Não','Apartir de $1800','Não',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-04-30T03:12:00.000Z'::timestamptz),
  ('Vanessa Santos de Souza','nessallsouza@gmail.com',NULL,'51984466044','1982-03-02',43,'Casado(a)','2','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1qZlIELJmTPrqqqna1us01VhbbfXNnEEh','Administração de empresas','Ensino Superior Completo','Uniasselvi','2023-10-30','Sou formado','D Fofonka Pintura de Automóveis e Máquinas Pesadas 
Auxiliar administrativo 
Janeiro de 2022 à Marco 2024 
Entre outras atividades a emissão denotas fiscais, emissão de DAS, licenças, declarações, compras e contas a pagar . 

Escola Adventista de Santo Antônio da Patrulha 
Secretária e tesoureira 
Setembro de 2018 à outubro de 2021.

Atendimento ao público, organização e arquivo de documentos, fechamento de matrícula ( contratos), compras , contas a pagar, cobranças, relatórios financeiros entre outros.',NULL,NULL,'Administrativa, Financeiro','https://drive.google.com/open?id=1mZOgeCVHr0YW7WBqou5jWMttAi-G302C',NULL,'Instagram','Nao','R$2.000,00','Sim',NULL,'Assistente Financeiro','Sou comunicativa, costumo compartilhar meus conhecimentos e crenças com o público da minha igreja. Gosto de trabalho em equipe, sou aberta a feedbacks e gosto de aprender. 
Procuro novas oportunidades e desenvolvimento profissional, creio que precisamos sempre estar em atualização e evolução.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-05-04T02:42:00.000Z'::timestamptz),
  ('Francieli Ribeiro Ramos','franribeiroramos14@gmail.com',NULL,'51995861831','2004-10-12',21,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1eC6pYwuDxb0J3TyJOtLjLSN3ohBOQf1i',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Britosul atacado e distribuidora, parte financeira e gestão de compras durante o período de ano 2021 ao 2023
Claudir automóveis auxiliar do financeiro de 2024 até atualmente','Frequentei o curso TC 01 Administração Informatizada.',NULL,'Financeiro',NULL,NULL,'Instagram','Nao','3 mil','Não',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-05-07T13:02:00.000Z'::timestamptz),
  ('Zara Taniz da Silva Rodrigues','zararodrigues7@gmail.com',NULL,'51996701029','1995-11-20',30,'Solteiro(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1WwBSwBDANleAsARuw3Vk__gM-SnOwrcb','Administração de empresas','Ensino Superior Incompleto','Uniasselvi','2025-12-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1)Comércio de Medicamentos Brair
2) Balco Farmacista
3)10/10/2023- Atualmente
4) Atendimento ao público, controle de estoque, operadora de caixa.','Excel; Informática.',NULL,'Administrativa, Comercial, Financeiro',NULL,NULL,'Email','Não','2000','Sim',NULL,'Assistente financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-05-07T13:16:00.000Z'::timestamptz),
  ('Francieli Ribeiro Ramos','franribeiroramos14@gmail.com',NULL,'51995861831','2004-10-12',21,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1rAQAiNHkvSDVb5VGdhSehbtzVhj_iZiC',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','BritoSul Atacado e Varejo (hoje somente distribuidor) Ocupei o Cargo de Vendedora e de Compras, de 2021 ao ano de 2023.
Claudir Automoveis, Auxiliar do Financeiro, de 2024 até atualmente','ATC 01 Administração Informalizada com duração de 80h',NULL,'Financeiro','https://drive.google.com/open?id=1QesO7T3a3vZpS2VDe--E6UNSJh4iUoeb',NULL,'Instagram','Não','acima de R$2.500','Não',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-05-07T14:18:00.000Z'::timestamptz),
  ('Felipe Pontes Machado','felipepontes2@gmail.com',NULL,'51999896713','1992-07-25',33,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1l5xdSfW2e1N5wn_Gp87VZMOluXVKM-2Z','Administração de empresas','Ensino Superior Completo','Ulbra','2017-12-22','Sou formado','1 General Motors 
2 Operador de produção 
3 29/06/12 à 05/11/24
4 Responsável pelo processo de produção e montagem de veículos. No último ano e meio estava responsável por um time de produção de maneira interina.','Curso inglês intermediário Yazigi 
Curso excel intermediário
Pacote office',NULL,'Administrativa, Novos Negócios',NULL,NULL,'Email','Não','R$2.100,00','Sim',NULL,'Auxiliar de novos negócios',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-05-07T15:11:00.000Z'::timestamptz),
  ('Kemilly dos Santos Oliveira','skeke504@gmail.com',NULL,'996509292','2003-09-26',22,'Casado(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1aOQnGR2roA4YTkELvBnghociZc89-hTI','Ciências Contábeis','Ensino Superior Incompleto','Uniasselvi',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Fortmix Ferragem - vendas 2019-2023
Ferragem Central - vendas 2023-2024',NULL,NULL,'Administrativa, Financeiro, Marketing, Engenharia',NULL,NULL,'Instagram','Não','De acordo com a minha ocupação','Não',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-05-07T17:12:00.000Z'::timestamptz),
  ('Lucas de Jesus Moreira','lucajesu452@gmail.com',NULL,'62984050451','2001-06-18',24,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1mYaDHqi3COCXvbmwF91V6HMHQFa18NAh',NULL,'Ensino Superior Incompleto','Universidade Federal do Rio Grande - FURG','2027-04-04','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Pizzaria do Zé Léleu, Minaçu, Goiás
Cargo: Garçom
Período: 06/2020 – 02/2021
Principais atividades: Atendimento ao público, anotação de pedidos, serviço de bebidas e alimentos nas mesas.

Pizzaria do Zé Léleu, Minaçu, Goiás
Cargo: Gerente
Período: 03/2021 – 12/2021
Principais atividades: Gestão de pessoas, atendimento ao público, controle de estoque e financeiro.

Casa do Estudante CEU-SAP
Cargo: Diretor Financeiro
Período: 01/2022 – 12/2022
Principais atividades: Gestão orçamentária, contabilidade, captação de recursos, conformidade e regulamentação, colaboração entre áreas e desenvolvimento de políticas.

Restaurante Casa DaColonia
Cargo: Garçom
Período: 10/2023 – até o momento
Principais atividades: Atendimento ao público, anotação de pedidos, serviço de bebidas e alimentos nas mesas, além de treinamento de pessoal.','Atualmente, estou me capacitando na área de finanças e controle de estoque, realizando alguns cursos no Sebrae para aprimorar meus conhecimentos e habilidades nesses setores. Além disso, estou desenvolvendo alguns projetos de extensão relacionados a essa área, o que tem me proporcionado uma experiência prática muito valiosa. Paralelamente, também estou investindo em minha formação por meio de outros cursos de curta e média duração que faço na plataforma aprendamais, ampliando ainda mais minha qualificação profissional.','Manutenção de Micros e Notebooks (03/2014 - 05/2015) CDI - informática e idiomas Curso front-end (09/2022 - 06/2023) Pela instituição Kenzie Academy Brasil Graduação em Administração (04/2022 - 12/2026) Universidade Federal do Rio Grande - FURG Pacote Office (06/2015 - 06/2016)','Administrativa, Financeiro, Engenharia','https://drive.google.com/open?id=1PhvOV3ZePmQX9ujk1cv2KobeDcjxhBSp',NULL,'Instagram','Ninguem','1500','Sim','Restaurante e Café Casa Da Colônia, RH Grazi 51 9842-7370','Quero inscrever-me no banco de talentos da Young!','Tenho interesse em aprender e sempre busco desenvolver novas habilidades. Possuo conhecimentos em Excel (tabelas dinâmicas e fórmulas) e estou me aprofundando no uso de ferramentas como Power BI para análise de dados. Recentemente, concluí uma extensão voltada para o desenvolvimento de um fintech, o que ampliou minha visão sobre inovação no setor financeiro.
Durante as férias, participei de um curso básico de organização financeira e gosto de atividades que ajudam a melhorar minha concentração, como caminhadas e leitura. Também participei como voluntário em um evento de arrecadação para uma ONG local, onde desenvolvi habilidades de trabalho em equipe e organização."','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-05-07T22:35:00.000Z'::timestamptz),
  ('Camila Espíndola Messaggio','camilaespindola767@gmail.com',NULL,'51980163375','1993-03-05',32,'Casado(a)','2','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1fyfsQrhQpWv4VinmackrKxjKFQgOuJ9-','Administração de empresas','Ensino Superior Incompleto','Uniasselvi','2027-02-11','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Empresa Natural Light, função de atendimento ao público exercendo a três anos.',NULL,NULL,'Administrativa, Estágio, Novos Negócios, Engenharia',NULL,NULL,'Instagram','Não','A combinar','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Bom sou uma pessoa simples, mas com uma vontade grande de crescer no ramo de empreendimentos. Dedicada, persistente e batalhadora correndo atrás dos meus objetivos. E também uma mãe que ama seus filhos e faz de tudo para dar uma futuro para eles.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-05-08T02:45:00.000Z'::timestamptz),
  ('Ketlien Vargas','ketlienvargas@gmail.com',NULL,'55996600797','1997-11-08',28,'Solteiro(a)','0','Não','Itaqui/RS','https://drive.google.com/uc?export=view&id=10SwJQ2FYmLzos5obcjEWS672vkmwThee','Administração de empresas','Pós-graduação Completa','Unibf','2028-05-09','Sou formado','Universidade Cruzeiro do Sul 
Cargo: Consultor de Carreira
Principais Atividades: Administração de cursos EAD, suporte ao acadêmico, gerenciamento de vendas','Tenho formação em licenciatura',NULL,'Administrativa, Comercial, Marketing, Engenharia','https://drive.google.com/open?id=1oDNd2STNz2R0qGfz-KEBUmFYsTr4L5wZ',NULL,'Facebook','Não','2000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-05-09T17:11:00.000Z'::timestamptz),
  ('Thamirys Netto da Silva','thamirysnetto20@gmail.com',NULL,'55999348833','2001-10-11',24,'Casado(a)','0','Não','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=18pgifXCj4x5MfTVXGF6hFgIZeNI3j-gx','Engenharia Civil','Ensino Superior Incompleto','UNOPAR','2026-12-09','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Nome da Empresa: Construtora Cattaneo 

2) Cargo que ocupou/ocupa: Auxiliar de Engenharia Civil

3) Data de início e final: inicio 03/2023 emprego atual

4) Principais atividades e demais informações:

Atuo como Jovem Aprendiz no setor de Engenharia Civil, auxiliando nas rotinas de acompanhamento de obras, controle de materiais e atualização de planilhas de execução. Participo do suporte técnico à equipe de campo, levantamento de quantitativos e organização de documentos técnicos e projetos. Também dou apoio na análise de orçamentos e cronogramas, utilizando ferramentas como Excel e AutoCAD. A experiência tem contribuído diretamente para meu desenvolvimento profissional, permitindo aplicar os conhecimentos adquiridos no curso técnico e vivenciar a prática da engenharia no dia a dia da construção civil.


1) Nome da Empresa: Drillyng Company  

2) Cargo que ocupou/ocupa: Auxiliar Administrativo

3) Data de início e final: inicio 01/2023 fim 03/2023

4) Principais atividades e demais informações:
COntrole e o lançamento de entrada de materiais no sistema da empresa, garantindo que todos os insumos recebidos sejam corretamente registrados e conferidos com notas fiscais e pedidos de compra. Execução e atualização de planilhas de controle de materiais, estoque e consumo, auxiliando na organização dos dados e na otimização do fluxo de informações entre os setores.
Suporte geral ao monitoramento das atividades da equipe, auxiliando na comunicação interna, no acompanhamento das demandas do dia a dia e na verificação do cumprimento de prazos e cronogramas. Também, colaboração na organização de agendas, apoio logístico e na elaboração de relatórios que facilitam a tomada de decisões pelos gestores.

1) Nome da Empresa: Injecar  

2) Cargo que ocupou/ocupa: Auxiliar Administrativo

3) Data de início e final: inicio 04/2022 fim 12/2022

4) Principais atividades e demais informações:
Monitoramento e controle de estoque de materiais e insumos, realizando contagens periódicas, sinalizando necessidades de reposição e garantindo a organização física e digital dos itens armazenados. Participação da elaboração de relatórios de acompanhamento de despesas, apoio na conciliação de pagamentos e controle de entrada e saída de documentos financeiros. Essa vivência contribuiu para o meu desenvolvimento profissional, fortalecendo habilidades como organização, responsabilidade, proatividade e domínio de ferramentas administrativas essenciais para o ambiente corporativo',NULL,NULL,'Administrativa, Arquitetura, Engenharia','https://drive.google.com/open?id=1MC7ZtQd-EoVVcfT3rdHyheZODxrlpeCJ',NULL,'Instagram','Não','1800','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Ao longo da minha trajetória profissional, desenvolvi habilidades em diversas áreas, com foco em adaptabilidade, organização e comprometimento. Trabalhei em ambientes desafiadores, como a área da construção civil, onde pude aplicar conhecimentos técnicos e também melhorar minha capacidade de trabalhar em equipe, de me comunicar de forma clara e objetiva, e de lidar com prazos e pressões.

Minhas experiências me permitiram aprimorar minha habilidade em resolver problemas de forma criativa e eficaz, sempre buscando soluções que atendam às necessidades do projeto e da empresa. Além disso, sou uma pessoa proativa, com facilidade para aprender novas funções e tecnologias, e sempre focada em alcançar os melhores resultados.

Tenho também uma forte visão de melhorar processos e contribuir para o sucesso coletivo, algo que tenho certeza de que posso aplicar em qualquer desafio que surgir.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-05-12T20:45:00.000Z'::timestamptz),
  ('Taylane Oliveira de Araujo','taylaneoliveira@hotmail.com',NULL,'51996529056','1989-05-07',36,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1ZybaEqQRYPMxTIlz5LPO4f19kf7K4Eau','Gestão de recursos humanos','Ensino Superior Completo','Unisinos','2022-06-01','Sou formado','Gráfica gaúcha / representante comercial / 26/06/24 a 28/04/25 / atendimentos on-line e presencial',NULL,NULL,'Administrativa, Financeiro','https://drive.google.com/open?id=144cENMVIc3Wys7XAcZOlkppNlBVTQ8o-',NULL,'Facebook','Não','2.000,00','Não',NULL,'Assistente financeiro','Profissional dedicada, com perfil proativo, facilidade para trabalhar em equipe e foco em resultados. Possuo boa comunicação, rápida adaptação a novos desafios e estou sempre em busca de aprendizado e crescimento profissional. Comprometida com a qualidade e com a entrega eficiente de tarefas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-05-13T01:47:00.000Z'::timestamptz),
  ('Maria Eduarda Muniz Fofonka','dudamuniz1130@gmail.com',NULL,'996468380','2007-06-07',18,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1IvauJIGEW_h8UIykiW6eWDlWpwmvPfdR','Administração de empresas','Ensino Médio Incompleto','IEESA','2025-12-19','Não, no momento pausei/parei por um período.','Experiência Profissional
Escritório Técnico Contábil Patrulhense - Estecopal
Assistente Administrativo
20/06/2023 – 03/12/2024
- Auxiliou nas rotinas administrativas, incluindo organização de
documentos e controle de arquivos.
- Trabalhou na área fiscal, realizando o processamento e controle de
notas de entrada/saída.
- Participou ativamente da contabilidade, fazendo lançamentos de
duplicatas e mantendo a precisão nos registros financeiros.
- Realizou atendimento ao cliente, esclarecendo dúvidas e fornecendo
informações sobre serviços contábeis.

Ohana Artes e Laser.
Atendente e Assistente Administrativo
04/12/2024 – Presente.
-Responsável pelo atendimento ao público, tanto presencial quanto por
meio do WhatsApp, assegurando um suporte eficaz e amigável aos
clientes.
-Gestão das atividades administrativas, incluindo a emissão de notas
fiscais, geração de boletos e controle de pagamentos de guias e boletos.
-Desenvolvimento de estratégias de marketing digital, utilizando a
plataforma Canva para criação de artes visuais e gerenciamento do
conteúdo da página da empresa no Instagram, promovendo a marca e
aumentando o engajamento com o público.','No momento estou cursando o último ano do ensino médio, no turno da noite.
Mas tenho como objetivo concluir o ensino médio e logo após ingressar na faculdade de Administração ou Ciências Contábeis.','No momento não l.','Administrativa, Marketing','https://drive.google.com/open?id=1aWcmaWBJJWv2Tph7mjbxKBFCz3w8Z-sG',NULL,'Instagram','Não','Valor base da área.','Não','Estecopal 3662-1922
Ohana Artes em Laser 99871-6737','Estágio Financeiro','Sou uma menina nova, mas com muita vontade de crescer e de sempre conhecer coisas novas. Tenho um bom conhecimento em sistemas e uma experiência sólida na área administrativa, que é uma área pela qual tenho muito interesse e na qual sempre busco evoluir. Gosto de trabalhar em equipe, participar de eventos e lidar com o público — isso me motiva e me faz sentir parte de algo maior. Nas horas livres, adoro estar com minha família e aproveitar momentos como rodeios, que fazem parte da minha vida. Nas férias de inverno, gosto de cozinhar com amigos e familiares, criando memórias especiais. Já pratiquei danças tradicionalistas, o que me ensinou muito sobre cultura, disciplina e expressão.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-05-13T15:08:00.000Z'::timestamptz),
  ('Cesar Augusto e Silva Machado','cesarmachado01057@gmail.com',NULL,'55997086287','1977-05-30',48,'Divorciado(a)','1','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1V2eWQ_U7BC-vZ7eoVBJXUG2bU9fTrFqR','Administração de empresas','Ensino Superior Incompleto','Unopar',NULL,'Não, no momento pausei/parei por um período.','Sou técnico em Agropecuária, trabalhei quase 20 anos de gerente de lavoura, atualmente trabalho com vendas de insumos agricolas',NULL,NULL,'Comercial',NULL,NULL,'Instagram','Nao','De acordo com trabalho','Sim','Agropecuária Pileco','Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-05-18T11:31:00.000Z'::timestamptz),
  ('Thaís Luisa Metz','thaislmetz@gmail.com',NULL,'51980435169','2001-04-12',24,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1oXNif1DuZaaNHJpe2mHuPqu38MtzbIG3','Engenharia Civil','Ensino Superior Incompleto','UFRGS','2027-07-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Na Matricial Engenharia Consultiva, como estagiária, de outubro de 2023 a abril de 2024, elaborei projetos de sinalização de trânsito, assim como auxiliei na consolidação de dados de tráfego.

No Hospital de Clínicas de Porto Alegre, atuei como estagiária de julho de 2024 a junho de 2025. A principal função é a fiscalização de obras.','Durante a graduação, tive a oportunidade de atuar como bolsista no laboratório LINCE, estagiar em diferentes áreas, sendo a última experiência em fiscalização de obra e demais atividades da área da construção civil.',NULL,'Estágio','https://drive.google.com/open?id=1QdbamC-ROvpdl5g1BJEDobZnOuVAXpNA',NULL,'Puc Carreiras','Não','1.800 reais','Não','Ana Paula Kirchheim - UFRGS - LINCE - 51 992546867
Carol Dal Agnol - HCPA - 51997787183','Estágio Engenharia e/ou Arquitetura','- Tenho tranquilidade em relação ao idioma inglês;
- Minha última experiência de estágio fez com que eu me reaproximasse da área da construção civil que tanto gosto e quero seguir. Procuro aprender, com novas experiências, mais sobre planejamento, acompanhamento e vistoria de obras, entre outras atividades da área;
- Aberta a utilizar novos softwares;','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-05-20T03:04:00.000Z'::timestamptz),
  ('Vitória Caroline da Silva Ribeiro','vittcaroline1@gmail.com',NULL,'51980105202','1999-03-24',26,'Divorciado(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1AKmSyPusrGHjW0-MqrdMogc4-Qpf_g_C','Administração de empresas','Ensino Superior Incompleto','Uniasselvi','2023-08-07','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Cuidei das redes sociais da Loja que era proprietária, já trabalhei na Via uno, como gestão de qualidade. Na Young possuo certo conhecimento em Novos Negócios área na qual sou assistente hoje.','Sou formada em Administração, e estou cursando Publicidade e Propaganda na mesma instituição.',NULL,'Novos Negócios',NULL,NULL,'Instagram','Não','1700','Não',NULL,'Novos Negócios','Acredito que serei mais produtiva na área que já possuo contato e conhecimento, tenho certo conhecimento, como já faço parte do time young, já sou familiarizada com a forma que a empresa funciona.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-05-22T15:29:00.000Z'::timestamptz),
  ('Fernando Vitorino de Souza','souzavitorino@icloud.com',NULL,'5199736086','2002-07-15',23,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1WKNToAqWM57W9NxslhHOX5OhrHXlaWCV','Engenharia Civil','Ensino Superior Incompleto','PUCRS','2027-12-12','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Trabalhei na empresa Beck de souza engenharia do dia 04/08/2021 ate 20/12/2024 uma empresa que atua na licenciaturas dos contratos de prefeituras, trabalhava na no contrato 292 que servia serviços para o Dmae, fiscalizava as obras do arrio do meio, levava os engenheiros e tecnicos para obra','Estou cursando engenharia civil no 6 semestre, pretendo me formar no segundo semestre de 2027',NULL,'Estágio, Engenharia',NULL,NULL,'Agência de Empregos','nao','1500','Não',NULL,'Estágio Engenharia e/ou Arquitetura',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-05-23T17:19:00.000Z'::timestamptz),
  ('r.schneiderbackes@gmail.com','r.schneiderbackes@gmail.com',NULL,'55984086258','1990-08-06',35,'Solteiro(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1n_EATjqu5KBOkFeIKH6D5B7LhToWt7HD','Agronomia','Pós-graduação Completa','Universidade Federal do Pampa','2017-08-12','Sou formado','Timac Agro (Consultor técnico comercial) de 11/2021 a atual: Comercialização de fertilizantes sólidos na região de Santa Rosa RS
Camera Agroindustrial SA (Consultor comercial) de 10/2020 a 07/2021: Vendas externas de insumos agrícolas
TMG (Tropical Melhoramento e Genética) de 09/2019 a 04/2020: Geração de demanda e desenvolvimento de mercado.','Especialização em nutrição e adubação de plantas','CreaRS','Administrativa, Comercial, Financeiro, Novos Negócios','https://drive.google.com/open?id=1qKBmUgkJVZtjM9Tw7enVoq6bmApATqeJ',NULL,'Instagram','Não.','R$ 3.000,00.','Sim',NULL,'Comercial','Eng. Agronomo com experiencia comercial por várias empresas tanto no RS, Fronteira oesta e missões, como MT. Atuei também com desenvolvimento de mercado. Compreendo razoavelmente inglês. Leio muito, gosto de vianar, pescar, estar com a familia. Bom dominio de ferramentas do pacote office.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-05-24T18:36:00.000Z'::timestamptz),
  ('ROSELINE VIEIRA CASTELLO','rose_castello81@hotmail.com',NULL,'53991890763','1981-02-17',45,'Casado(a)','2','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1NzHTBHbGDdS76y6W3GH7nlzIlzxZ7cND','Transações Imobiliárias','Ensino Superior Incompleto','Geteco','2025-12-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Shanadu- supervisora de vendas 
Picorrucho- vendedora
Ben Ótica- administrativo',NULL,NULL,'Comercial, Novos Negócios',NULL,'https://drive.google.com/open?id=1eM_yJ55sA-FxNU2NWfHlgC7H2lD0lGBl','Instagram','Não','R$2.500,00','Sim','Carla - Gerente Shanadu- 99905-0653
Lisandra - Gerente Novolar - 99949-0886','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-05-25T22:19:00.000Z'::timestamptz),
  ('Sarah Giovanna Alves e Souza','sarah.giovanna01@outlook.com',NULL,'19989021669','2001-04-08',24,'Solteiro(a)','0','Sim','Paulínia/sp','https://drive.google.com/uc?export=view&id=1RYA71DwYSZMzXQWNGG7kjCnvhU0spkwO','Arquitetura','Ensino Superior Completo','Centro Universitário de Jaguariúna - UniFaj','2023-12-05','Sou formado','1. Eco Vila Incorporadora - Campinas, SP
Analista de Arquitetura 
Out. 2023 - Atual 
 - Acompanhamento do desenvolvimento de projetos; Lançamento de notas no sistema Sienge; Organização de planilhas e documentos; Controle de Projetos; Acompanhamento e conferência de documentos e projetos para legalização e aprovação dos empreendimentos junto aos órgãos públicos. 

Estagiária de Arquitetura
Jun.2022 - Out.2023 
- Acompanhamento de atividades em canteiro; Análise de qualidade; Ficha de Verificação de Serviço; Rotinas administrativas; Lançamento de dados no sistema Sienge; Organização de planilhas e documentos; Controle de Medições; Vistorias e atendimento ao cliente;

2. Tecverde Engenharia SA - Paulínia,SP
Estagiária de Arquitetura 
Nov. 2021 - Jun. 2022 
- Acompanhamento de atividades em canteiro; Análise de qualidade; Ficha de Verificação de Serviço; Controle e mapeamento de consumo de materiais; Relatórios de avanço físico; Controle de Ponto; Administração de documentos admissionais; Administração de Obras.

3.Boehringer Ingelheim Animal Health - Paulínia,SP
Jovem Aprendiz - Assistente de arquivo da Qualidade assegurada 
Nov. 2020 - Nov. 2021 
- Organização e gerenciamento de planilhas; Digitalização e arquivamento dos documentos da empresa; Atendimento; Organização e gerenciamento do Arquivo; Responsável pela entrada e saída de documentos.','Sou formada em Arquitetura e Urbanismo e técnica em Design de Interiores.',NULL,'Administrativa, Arquitetura, Novos Negócios, Engenharia','https://drive.google.com/open?id=19iXH5lv_zA-kx5_LqJd1lVANOg9SlUFK',NULL,'Agência de Empregos','Não.','A partir de 3500 Reais','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Tive a oportunidade de fazer trabalho voluntário como Líder de um grupo de cerca de 30 jovens na minha igreja, onde aprendi muito sobre como lidar com pessoas, trabalhar em equipe, organizar eventos e também cuidar da parte administrativa, como montar planilhas, realizar vendas e até acompanhar processos em prefeituras. Hoje, continuo atuando como voluntária na área de Social Media, cuidando do planejamento de conteúdo, criação de posts, artes, legendas e organização das demandas usando ferramentas como Meta Business Suite e Trello. Estou procurando oportunidades para ganhar mais conhecimento e experiência, sou organizada e esforçada, sempre disposta a aprender.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-05-27T12:20:00.000Z'::timestamptz),
  ('Lívia Porfirio','porfiriolivia3@gmail.com',NULL,'51995738849','2006-10-09',19,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=17sZyp_n_dTlVX3naPsHfSpmJawl6ktr3','Administração de empresas','Ensino Médio Completo','Uninter','2029-05-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Masal S/A Indústria e Comércio (2023 a 2025)
Auxiliar Administrativo

- Realização de cotações com fornecedores e emissão de pedidos de compras.
- Migrando para o setor de engenharia, onde cadastrava peças de guindastes,
cestos aéreos no sistema interno.
(Este foi como Jovem aprendiz, no qual iniciei em janeiro de 2023 e o término de contrato foi em janeiro de 2025)

Calçados Bugor - Defiore (2021 a 2022)
Auxiliar Administrativo / financeiro

- Emissão de boletos e auxílio nos pagamentos dos colaboradores.
- Entrega de contracheques e ajuda na gestão de vales pagamentos.
(Foi meu primeiro emprego com 14 anos, então não era com carteira assinada. Iniciei ele em novembro de 2021 e acabei saindo em Dezembro de 2023)','Iniciei meu curso de administração recentemente, ainda estou no primeiro semestre. Faço na Uninter em ensino a distância, porém quero migrar para presencial aqui na Furg de Santo Antônio. Fiz alguns cursos para implementar no currículo e na área profissional. Dentre deles está um de atendimento ao público, que foi feito na Fundação Bradesco, que acho super importante e válido nos dias de hoje! Pra saber se portar e se comunicar de uma forma clara com quem conversamos.',NULL,'Administrativa','https://drive.google.com/open?id=12QgRnPiPSOE5hz7NEejxQeUFXcFSFV1E',NULL,'Instagram','Não','Acredito que o salário de quem exerce a função de auxiliar administrativo','Não',NULL,'Auxiliar Administrativo','Acredito que não tenho nenhum complemento haha, mas sempre estou aberta a novos aprendizados e gostaria muito de aprender bem mais. Sei que a pergunta não é sobre como eu sou, mas acredito que sou bem disposta para tudo e sempre procuro dar o meu melhor. Então, se houver algo novo para eu fazer, iria fazer com muita dedicação e esforço.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-05-30T15:35:00.000Z'::timestamptz),
  ('Francielle Muniz Martins','franci.muniz19@gmail.com',NULL,'51999203248','1994-05-31',31,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=10QCiw_0N63a_qQ2RQ3PpMmztkn4IRXCV','Administração de empresas','Ensino Superior Completo','Uniasselvi','2018-04-07','Sou formado','Empresa: Cooperativa Agroindustrial Cooperja
Cargo: Aprendiz Legal
Período: 18/04/2012 à 25/04/2013

Cargo: Assistente Administrativo
Período: 06/05/2013 até 04/02/2024

Funções desempenhadas:
Recepcionista: atendimento ao público presencial e por ligações; arquivar documentos, efetuar
algumas funções administrativas e participar de eventos da empresa.
Faturamento: Emissão de notas fiscais eletrônicas de saída de mercadoria, de consertos, de transferências; fazer o fechamento da produção do mês, planejar a logística, monitorar o estoque.
Financeiro: Lançamento de notas fiscais de fornecedores, programar e monitorar pagamentos,
tributações; responsável pelo caixa, lançamento de patrimônios da empresa e organiza as despesas de obras.

Empresa: Ubiratan Dias da Silva Advogados
Cargo: Recepcionista
Período: 01/03/2024 à 30/04/2025
Funções desempenhadas:
Ramo Jurídico: Atendimento ao público presencial e por ligações; Solicitar, organizar,
arquivar documentos dos Clientes; Fechar contratos referente aos serviços prestados; Cuidar do caixa;','Curso de Gestão de Pessoas e Liderança no Polo Universitário Santo Antonio, início em 03/2025 e final 07/2025.',NULL,'Administrativa','https://drive.google.com/open?id=1QDAeOGrQm6KAXrwhx4LkN0LqbogrvZ7w',NULL,'Instagram','Não','R$2.500,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Gosto de viajar mas também  de ficar em casa, reunir com os amigos e família , gosto de atividades físicas, caminhar, yoga, gosto de terapia holística, amo meus cachorros. Umas das próximas metas é fazer a carteira de motorista.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-05-30T17:02:00.000Z'::timestamptz),
  ('Josi Borba dos Reis','josiborbar@gmail.com',NULL,'51995981181','1982-09-30',43,'Casado(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1zwG5xfOOAv6ZiGymaVE3CFTCyEYhv9dW','Gestão de recursos humanos','Ensino Superior Incompleto','Unifael',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','CCR VIA SUL
Líder de equipe
Período: 14/01/2019 à 01/03/2024
Liderança de equipe
Supervisão na praça de pedágio
Recrutamento de colaboradores
Recebimento do transporte de valores
.
LOPES DISTRIBUIDORA
Auxiliar financeiro
Período: 21/10/2024 até o momento
Pagamentos de tiítulos
Controle de fluxo de caixa
Acompanhamento de extratos bancários
Conciliação bancária
Controle relatórios financeiros','Cursando Gestão de recursos humanos','Não','Administrativa, Financeiro','https://drive.google.com/open?id=1FR52FZP6z-9KDouXSiIj74hQbYiRYzZD',NULL,'Instagram','Não','2 500,00','Não',NULL,'Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-05-31T02:58:00.000Z'::timestamptz),
  ('Victoria Kroth Garcia','victkgarcia@outlook.com',NULL,'51999733947','1995-12-17',30,'União estável','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1m7BWaCmKoMwAW5_srRf5CpsjLeRz2A-q','Direito','Ensino Superior Completo','Unicnec Osório','2025-03-07','Sou formado','Estagiária Jurídica - Gabinete da 2º Vara da Comarca de Santo Antônio da Patrulha/RS
Período: 09/2022 à 09/2024
Atuação direta como estagiária de audiências,
acompanhando e prestando suporte nas sessões realizadas no Gabinete. Vivencia com processos criminais, incluindo ações de Lei Maria da Penha e delitos em geral, bem como ações de JIJ. Ainda, audiências de conciliação em ações de familia e processos cíveis em geral. Desenvolvimento de habilidades
práticas em analise processual, elaboração de minutas, elaboração de termos de audiência e acompanhamento de
trâmite judicial.

Secretária jurídica – Alves Advocacia
Período: 01/2022 à 08/2022
Principais funções: apoio no desenvolvimento de demandas jurídicas e administrativas nas áreas previdência, cível e trabalhista. Elaboração de peças processuais e administrativa. Organização e controle de prazos e exigências. Emissão e
organização de documentos, além de suporte nos atendimentos a clientes. Utilização e controle de sistemas jurídicos (EPROC TJRS e JFRS). Responsavel por tarefas financeiras como controle de pagamentos e serviços
bancarios. Execução de atividades gerais de apoio jurídico e administrativo.

Secretária jurídica – Zanotto e Beatricci Advogados
Período: 05/2013 à 01/2022
Principais funções: apoio no desenvolvimento de demandas jurídicas e administrativas na área previdência. Elaboração de peças processuais e administrativa. Organização e controle de prazos e exigências. Emissão e organização de documentos,
além de suporte nos atendimentos a clientes. Utilização e controle de sistemas jurídicos (EPROC TJRS e JFRS).
Responsavel por tarefas financeiras como controle de pagamentos e serviços bancarios. Execução de atividades gerais de apoio jurídico e administrativo.

Estagiária de ensino médio – Instituto Nacional do Seguro
Social (INSS)
Período: 01/2012 á 12/2012
Principais atividades: Responsável pelo atendimento ao público presencialmente e por telefone, realizando agendamentos, fornecendo informações, elaborando documentos. Arquivando documentos e processos.',NULL,NULL,'Administrativa, Financeiro','https://drive.google.com/open?id=1alM40-RB4GExNvKnM7H2QW1dVQ-mu3Sw',NULL,'Instagram','Não','A partir de 1.800,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-06-01T05:38:00.000Z'::timestamptz),
  ('Amanda Roos Barboza','amandrarbarboza@gmail.com',NULL,'55981478999','1999-12-30',26,'Solteiro(a)','1','Não','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1H8pCbpiyWjiVzasoLR3sg2w_-Asq_XRc','Educação Física','Ensino Superior Incompleto','Uninter','2027-03-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','SESC RS - Cruz Alta
Cargo: Auxiliar de Programas Sociais
Período 05/2023 - 01/2025

Coordenação do grupo Maturidade Ativa, organizando e executando atividades para idosos, incluindo oficinas, eventos e passeios.

Acolhimento e acompanhamento dos participantes, garantindo socialização e qualidade de vida.

Suporte logístico, registro de presença e estímulo à interação social.

Auxílio em projetos de esporte e recreação, promovendo saúde e bem-estar.


Widitec Qualyagro
Cargo: Vendedora - Comércio Exterior
Período 10/2022 - 11/2022

Prospecção e atendimento de clientes no mercado de língua espanhola.

Suporte pós-venda e divulgação de serviços da empresa.

Comunicação e negociação com clientes internacionais.


Academia Fitlight
Cargo: Consultora de Vendas
Período 12/2021 - 09/2022

Atendimento consultivo ao cliente, identificando necessidades e oferecendo soluções personalizadas.

Prospecção de clientes, negociação e fechamento de vendas.

Acompanhamento do pós-venda e suporte ao cliente, garantindo fidelização.

Gestão de materiais de venda e organização de cadastros em sistema.','Como estudante de Educação Física, sei que preciso alinhar experiência em vendas e prospecção de clientes em busca dos meus objetivos profissionais, por isso estou atualmente em desenvolvimento contínuo na área executiva de vendas, buscando aprimoramento e novas estratégias comerciais.',NULL,'Administrativa, Comercial, Novos Negócios','https://drive.google.com/open?id=1NNLgB8CnLJgaXuP5zJxmGjI6MAXf15XP',NULL,'Instagram','Não','R$2.000','Sim',NULL,'Comercial','Durante esse período, voltei-me intensamente ao meu aprimoramento profissional e pessoal por meio de cursos, especializações e experiências práticas. Sou apaixonada por aprender, curiosa por natureza e tenho o hábito constante da leitura, o que me impulsiona a buscar novos conhecimentos e me manter atualizada, especialmente na área de Educação Física. Participei ativamente de trabalhos voluntários com o Rotaract Club de Cruz Alta, onde desenvolvi habilidades valiosas como trabalho em equipe, liderança e comunicação, além de contribuir para ações sociais no município. Sempre em busca de crescimento, aproveitei as oportunidades para ampliar minha rede de contatos e me preparar cada vez mais para os desafios do mercado de trabalho.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-06-02T13:41:00.000Z'::timestamptz),
  ('Thamirys Netto da Silva','thamirysnetto20@gmail.com',NULL,'55999348833','2001-10-11',24,'Casado(a)','0','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1egc5UmjyVyvKDyII0lwBRlsHi2E2ucGW','Engenharia Civil','Ensino Superior Incompleto','Unopar','2026-12-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Construtora Cattaneo
2) Auxiliar de Engenharia 
3) 03/2023 - emprego atual
4) Planilhamentos e execução de vistorias.
Forte atuação no planejamento de atividades,
controle de prazos e gerenciamento de equipes.
Habilidade em lidar com normas técnicas,
documentação oficial, processos administrativos e
atendimento a diferentes públicos. Capacidade de organização, cumprimento de metas e adaptação a ambientes que exigem precisão, responsabilidade e pressão.

1)Drilling Company 
2)Auxiliar Administrativo 
3) 01/2023 - 03/2023
4)Controle e entrada de materias no sistema ,execução de planilhas de controle e auxílos gerais de monitoramento da equipe.

1)Mecânica Injecar 
2)Auxiliar de Escritório 
3) 04/2022 - 12/2022
4) Controle e emissão de documentos como notas fiscais e boletos e monitoramento/controle de estoque.

1)Unicruz - universidade de Cruz Alta 
2)Experiencia acadêmica 01/2021 - 08/2021
3)Bolsista de Iniciação cientifica PRONEX
4)Realização de pesquisas, relatórios e textos ,participação de reuniões e palestras no âmbito educacional.',NULL,NULL,'Arquitetura, Licenciamentos, Engenharia','https://drive.google.com/open?id=1FhHar0B7hso4g_OwZg2ePsAkl3zhYQo8',NULL,'Google','Não','1850,00 + benefícios','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Ao longo da minha trajetória profissional, desenvolvi habilidades em diversas áreas, com foco em adaptabilidade, organização e comprometimento. Trabalhei em ambientes desafiadores, como a área da construção civil, onde pude aplicar conhecimentos técnicos e também melhorar minha capacidade de trabalhar em equipe, de me comunicar de forma clara e objetiva, e de lidar com prazos e pressões.

Minhas experiências me permitiram aprimorar minha habilidade em resolver problemas de forma criativa e eficaz, sempre buscando soluções que atendam às necessidades do projeto e da empresa. Além disso, sou uma pessoa proativa, com facilidade para aprender novas funções e tecnologias, e sempre focada em alcançar os melhores resultados.

Tenho também uma forte visão de melhorar processos e contribuir para o sucesso coletivo, algo que tenho certeza de que posso aplicar em qualquer desafio que surgir.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-06-02T20:17:00.000Z'::timestamptz),
  ('Rafaela Acosta','rafaelacortelini@gmail.com',NULL,'55997233399','2001-11-08',24,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1XCjsIWJ9MtsFW93qkaosw__P0I0P6n00','Administração de empresas','Ensino Superior Completo','Universidade Pitágoras Unopar Anhanguera','2024-02-05','Sou formado','Estágio, Alegrete Prev - RPPS, atendimento ao público, emissão de contracheques, montagem de processos, como aposentadoria ou pensão - 2022 até 2023.
Vendedora, Óptica Cristal - atendimento ao público, vendas, fechamento de caixa, controle de estoque - 2023 até 2024.
Auxiliar administrativo, Tec Vidros Temperados - vendas, atendimento ao público, emissão de notas fiscais, organização de mercadorias, pedidos de vidros, pedidos de ferragens, cobranças - 2024 até 2025.
Auxiliar de laboratório, Cooperativa Agroindustrial Caal - auxiliar nas tarefas referente a safra, coletas dos grão, testes, cocções - 2025 (vaga temporária) .',NULL,NULL,'Administrativa, Financeiro, Marketing','https://drive.google.com/open?id=1k_mHUIbDn8Aqn_aJPfNacRGAOEHhAbLS',NULL,'Facebook','Não','2100','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-06-02T22:44:00.000Z'::timestamptz),
  ('Claudiane Fernanda Maciel Teodoro','claudianemaciel24@gmail.com',NULL,'51996576275','2001-02-14',25,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1qcJzIURJxKEEeqF4_qE2v0tj7o6udqCM',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Trabalhei na empresa M. P. Coelho Tintas no período de maio/2022 até outubro/2024, com os cargos de auxiliar e gerente financeiro. Minhas principais funções eram: Contas a pagar, contas a receber, conferência de caixas, conciliações bancárias e cobrança. Eu também dava suporte para os funcionários das demais lojas sobre como usar o sistema ou qualquer dúvida relacionada ao financeiro.','Voltarei a cursar Ciências Contábeis no segundo semestre de 2025.',NULL,'Administrativa, Financeiro',NULL,NULL,'Instagram','Não','A partir de R$3.000,00','Sim',NULL,'Auxiliar financeiro','Tenho curso completo de informática e auxiliar administrativo, além da faculdade pretendo começar a estudar idiomas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-06-02T23:56:00.000Z'::timestamptz),
  ('Chrystopher Robert Kopesk','chrystopherkopesk@gmail.com',NULL,'55992044465','2000-10-08',25,'Solteiro(a)','0','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1Dz0YumTFyEm88B4Rr2ZI_YDnlOh07XkY','Ciencias da Computação','Ensino Superior Incompleto','UNICRUZ','2027-02-15','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Personnalite Skate Shop

Cargo: Balconista
 Período 03/06/2021 a 02/01/2025
 Principais funções: Atendimento ao público, Abertura e
 fechamento de caixa,
 criação de conteúdo, limpeza

Exercito Brasileiro - 3 Seção (SFPC)
 Seção de Fiscalização de Produtos Controlados.
 Cargo: Auxiliar Administrativo.
 Função: Controles de Guias de Trafego e Criação de
 Certificados de Registro para Armas de Fogo (CRAF).
 Periodo: 10/05/2019 a 10/02/2020','MySQL (Banco de Dados)
 Intermediario.

Pacote Office Intermediário/Avançado:
 Excel (planilhas, relatórios),
 PowerPoint (apresentações) e Word.

 Cursando Ciencias da Computação - Bacharelado - Centro
 Universitário de Cruz Alta - UNICRUZ.
 Estado: Em andamento, 5º Semestre.',NULL,'Administrativa, Comercial','https://drive.google.com/open?id=10ZP-mFt5OjtwjLLEC62PY77o5pspA8x0',NULL,'Facebook','NAO','1800 A 2500','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Estudante de Ciências da Computação, buscando
 oportunidades para aplicar e expandir conhecimentos
 em desenvolvimento de software, análise de dados e
 tecnologia. Motivado a contribuir para projetos
 inovadores enquanto aprimoro habilidades técnicas e
 interpessoais','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-06-03T16:46:00.000Z'::timestamptz),
  ('rafael de mello pinheiro','atendimento.rafah.mello@gmail.com',NULL,'55992537887','1990-08-29',35,'Solteiro(a)','0','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1vXKvnfrJiC79m6tME6i5VQ2Z4wUEdEkT','Administração de empresas','Pós-graduação Completa','universidade federal da fronteira sul','2018-02-18','Sou formado','Empresa: Universidade de Cruz Alta 
Cargo: Contas a receber- financeiro  
Período: Faveiro de 2024 Novembro de 2024 (rotinas administrativas em geral- conciliações) 

Empresa: Prefeitura de Cruz Alta  
Cargo: Assistente financeiro II 
Período: maio de 2022 até fevereiro de 2023','MBA em gestão financeira',NULL,'Administrativa, Comercial','https://drive.google.com/open?id=19lO2v7n141tbQpIZlXuormm0D2yeMRF6','https://drive.google.com/open?id=196NUzN_m0bXyMxxJ8_VIeQQehNOIEQJr','Facebook','não','1700','Sim','Unicruz
RR consultoria e treinamento profissional','Quero inscrever-me no banco de talentos da Young!','Me chamo Rafael de Mello Pinheiro, gosto muito de ler e escrever, já ganhei 4 prêmios internacionais com meus textos. Gosto de cozinhar, miha comunicação é clara e objetiva, aos finais de semana gosto de assistir séries e sempre mandar atualizado meus estudos.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-06-03T19:00:00.000Z'::timestamptz),
  ('Jonata Martins Portela','jonata.portela@yahoo.com',NULL,'55991633628','1990-06-17',35,'Casado(a)','1','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1CIV2aELaHCi489tTglqERCFPXaeoSEMS',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','1 Volmaq Massey Ferguson / 2 Consultor de vendas/ 3. 06/2015 a 01/2017 / 4 Atendimento a clientes , vendas de máquinas agrícolas e consórcio. 
1 Campo Forte Máquinas e Ferramentas /
2 Vendedor externo/ 3. 01/2018 a 02/2019 / 4 Venda de máquinas e equipamentos agrícolas. 
1 Tovese corretora de seguros/ 2 Consultor de vendas/ 3. 02/2019 a 02/2021 / 4 Atendimento presencial e vendas de seguros agrícolas. 
1 C.vale cooperativa agroindustrial/ 2 Consultor de vendas/ 3. 02/2022 a 10/2024 / 4 Vendas do portifólio agrícola da cooperativa. 
1 Cresol Cooperativa de Crédito/ 2 Gerente de conta Agro/ 3 10/2024 a 04/2025 / 4 Gerencia de contas e atendimento ao público.',NULL,'Cursos de vendas e atendimento ao público, participação em feiras e fóruns de negócios.','Comercial','https://drive.google.com/open?id=1g3qVMihYPQNILHEJ_luEAZGgKmPDfJ-p',NULL,'Agência de Empregos','Não','3.000,00','Não','Roberto Junior Silveira 55 999452183 Gerente Sicoob','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-06-03T21:35:00.000Z'::timestamptz),
  ('Ghabriélly da Costa Rodrigues','ghabrielly.rodrigues@gmail.com',NULL,'55984256990','2002-12-30',23,'Solteiro(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=17SG-Fjm0FDEnitGGij6buIGOfNVFfJ4R',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Estou me candidatando para o primeiro emprego. 
Apenas uma experiência de um mês como atendente em estudio fotográfico.',NULL,NULL,'Administrativa, Comercial, Marketing','https://drive.google.com/open?id=1G2Iv4hnb1q5uIx4w9MrbYrPw0bPOis4a',NULL,'Instagram','Não','2000','Sim','Jhennifer Dias Fontoura 
(55) 99071381','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-06-04T17:35:00.000Z'::timestamptz),
  ('Greice Kelli kolling Dobrachinski','dobragre@gmail.com',NULL,'55991770765','1988-04-21',37,'Solteiro(a)','2','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=15xc3Z4P83I8SUlwL5nDmUIcnlpV1LrHy',NULL,'Ensino Médio Completo','IEE Professor Annes Dias',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Loja O Boticário 
Consultora de vendas e auxiliar administrativo e financeiro 
09/05/2023 até 01/09/2024
Atendimento ao revendedor, prospecção de novos clientes, auxiliava nas compras de produtos, organização da loja, recebimento e conferência de mercadorias e notas fiscais, pagamento e recebimento de contas e negociação de dividas com os clientes.

Lojas Deltasul 
Caixa/Crediarista 
05/09/2022 até 13/04/2023
Recebimentos de vendas da loja, negociação de vendas com a matriz e financeiras parceiras, cobrança e negociação com o cliente de dívidas em atraso.

Irmãos Linke e Cia e Ltda 
Fiscal de caixa 
09/12/2018 até 02/03/2022
Organização de escala de horário, controle de horas extras, abertura e fechamento dos caixas, depósito bancário, emissão de notas fiscais e fechamento da loja.','Cursando técnico em enfermagem',NULL,'Administrativa, Comercial','https://drive.google.com/open?id=1JoQhYFs2fGqRR1owVsIVMIj8HLSrcsjC',NULL,'Agência de Empregos','Não','1.900,00','Não','Áurea Stefanelli (55) 99614076 (último emprego)','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-06-04T21:11:00.000Z'::timestamptz),
  ('Frantheska Parcianello','frantheska.parcianello@gmail.com',NULL,'51991841313','1982-05-15',43,'União estável','1','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1QVMhTRt7r3Yly0bIEr-tsazi9WP6ZAhu',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Tesouraria na RR Shoes (2023/2024), Cobrança e Atendimento ao Cliente na NetComet. (2022/2023), Supervisor de Cobrança na Vero Internet (2020/2021), Assistente Comercial na DaColonia (2019/2020), Coordenadora de Controladoria na Índigo (2014/2018), etc.',NULL,NULL,'Administrativa, Comercial, Financeiro, Novos Negócios','https://drive.google.com/open?id=1jk555cv-ECZed4y1BckbBiNe-pAxBmvO','https://drive.google.com/open?id=16tlR_CoNrT0foHDCS2zlUsVKA5ao0qEN','Instagram','Não','3000','Sim','Rafael Gafforelli Ferri - companheiro','Assistente financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-06-04T21:34:00.000Z'::timestamptz),
  ('Kamilli Silva da Rocha','kamillisilvadarocha@gmail.com',NULL,'51980568735','2005-02-05',21,'União estável','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1VIQcX6a6JUNRKK2sZJAGXQutEwZQsNhj','Não tenho formação além do ensino médio mas pretendo começar a cursar administração','Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Atualmente empregada na empresa Rabelo Comércio de Calçados, Bolsas e Acessórios LTDA, ocupando o cargo de expedidora. Minha admissão é desde 2 de agosto de 2021, sendo assim meu primeiro emprego.',NULL,NULL,'Administrativa, Comercial, Financeiro','https://drive.google.com/open?id=1nqQD3qw7INWW-8YsZbBTg8inDPBfvOFI',NULL,'Instagram','Não','Em meu atual emprego recebo 1.700. Essa seria uma média salarial para mim.','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa que preza muito pela organização e o bom trabalho em equipe, gosto de sempre aprender novas coisas e por sinal aprendo com facilidade.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-06-05T02:41:00.000Z'::timestamptz),
  ('Layana de Freitas Stecanela','lalastecanela@gmail.com',NULL,'51992064856','1997-01-23',29,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1AxNI1kN9FNznhOU6eYgeGVpJbZp0TnmH','Professora/ Pedagogia','Ensino Superior Completo','Uniasselvi','2020-03-21','Sou formado','Trabalhei somente como professora, mas gosto muito das tecnologias e tenho facilidade em aprender coisas novas',NULL,NULL,'Administrativa, Marketing','https://drive.google.com/open?id=1LAM5kNtWVSzpRBfyg8LRAAsjtKHuIBPX',NULL,'Instagram','Não','2.000','Sim',NULL,'Estágio Financeiro','Bom dia, sou professora a 10anos, gosto muito da minha profissão mas hoje em dia quero aprender algo neste ramo, sou aberta a coisas novas adoro tecnologias e inovação.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-06-05T13:44:00.000Z'::timestamptz),
  ('Talia da Costa Carvalho','costadasilvataliadacosta@gmail.com',NULL,'55991785803','2006-10-23',19,'Casado(a)','0','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1-HYGjjDZXbzdas6vSbNiOkonU2ME6ZwM','Administração de finanças, e manejo de drones agrícolas','Ensino Superior Incompleto','Senar, prime cursos','2025-12-11','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.',NULL,'.','.','Administrativa, Financeiro','https://drive.google.com/open?id=1VfG1JqNeoNzUb67qR4s9NS8L3MXHf8t4','https://drive.google.com/open?id=16Iugvoh4zyIVDkenlYvKxFCQ4M6UJbKY','Agência de Empregos','.','2.00,00','Não','.','Quero inscrever-me no banco de talentos da Young!','Criativa','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-06-06T02:31:00.000Z'::timestamptz),
  ('Kauan Silvério Barnaski','kauansilverio192@gmail.com',NULL,'55992347453','2002-06-29',23,'Solteiro(a)','2','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1MdO0TCb2-UZyIMZ-9hTaEiZiLasLPPhV',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Farmácias São João- aprendiz em serviços administrativos, 03/2018-04/2019, entradas em notas fiscais/organização de notas, organização da loja, atendimento ao cliente

Farmácias São João- operador financeiro,03/11/21-25/07/22, Atendimento ao cliente, abertura e fechamento de caixa e malotes 

Farmácias MB- vendedor, 01/08/22-14/09/22, Atendimento ao cliente, organização da loja e setor 

Farmácias Nicola, 02/12/22-10/05/23, vendedor, atendimento ao cliente, caixa

Irmãos linke & CIA.LTDA, 25/08/23-06/04/24, coordenador fiscal, organização de escalas, organização de caixa/malotes, supervisão de operadores de caixas, empacotadores e recepcionista

Thalissa Nicoli ME, 19/04/24-06/11/24, Assistente administrativo, cobranças financeiras, realizações de boletos, atendimento ao público, fechamento de caixa e malotes 

Lauren nicolli LTDA, 19/04/24-06/11/24, operador financeiro, abertura/fechamento de caixa, organização da loja

Super mercado união, 02/05/25-31/05/25, auxiliar de açougue, auxiliar nos preparos das carnes, limpeza do setor','Curso de informática completa, curso de tecnologia do trabalho, aprendizagem profissional comercial em serviços administrativos',NULL,'Comercial, Estágio, Financeiro','https://drive.google.com/open?id=18dd0eupKVKBSs8xezLhK6lpQH5FL8mTU',NULL,'Agência de Empregos','Não','1800','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-06-06T02:40:00.000Z'::timestamptz),
  ('Flávia teste','flavia@youngempreendimentos.com.br',NULL,'51996583880','2025-06-06',0,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1-9xVh20_rlQYkO0eG9t6EBccgnHw-avW',NULL,'Ensino Superior Completo',NULL,NULL,'Sou formado','young',NULL,NULL,'Administrativa',NULL,NULL,'Instagram','n','1','Sim',NULL,'Estágio Engenharia e/ou Arquitetura',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-06-06T19:06:00.000Z'::timestamptz),
  ('Alana Duarte','alanaduarteoli31@gmail.com',NULL,'996721744','2004-07-31',21,'Solteiro(a)','0','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1NegvyL5JmBDWUgGOOB7ZAWgAWxafpJj0',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Loja 2 irmãos
Cargo: Operadora de caixa
Período 07/2022 – 10/2023
Principal atividades: Realizar o atendimento ao cliente no momento do pagamento,
garantindo que a finalização da compra seja feita de forma correta, eficiente e cordial.

CASTUR VIAGENS E TURISMO
Cargo: Monitora de van escolar
Período: 02/2024 – 07/2034
Principal atividades: Garantir a segurança e o bem-estar das crianças e adolescentes durante
o transporte escolar

Comercial Zaffari
Cargo: Operadora de caixa
Período 02/2025 - Até o momento
Principal atividades: registrar e receber os pagamentos das compras dos clientes, garantindo
um atendimento ágil e preciso.','Eu cursava engenharia agronômica até final do ano passado, nesse ano acabei dando uma pausa',NULL,'Administrativa, Financeiro','https://drive.google.com/open?id=18kXORuJXLk-bOaoRkk-evGAn5CLxAShK',NULL,'Agência de Empregos','não!','2.500','Não','Juliano Cassenote- (55) 981237181','Comercial','Sou uma pessoa muito esforçada e me adapto facilmente com qualquer rotina, sou leal e visto com orgulho a camisa da empresa onde estou trabalhando, tenho conhecimento nos programas power point, excel, etc… Entendo algumas coisas da língua inglesa, fui associada durante 3 anos ao LEO Clube Cruz Alta Iuri Nazário Ribas onde fizemos diversas campanhas em prol da comunidade e onde pude atuar durante 1 ano na pasta de marketing, fiz também 2 anos de agronomia na Universidade de Cruz Alta (UNICRUZ), procuro sempre dar o meu melhor em tudo que faço, me cobro bastante como pessoa e sou pelo certo! 
Espero que me encaixe em algo que procuram e que eu consiga colaborar com vocês da melhor forma!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-06-07T23:52:00.000Z'::timestamptz),
  ('Lucas Mendonça dos Santos','mendoncal293@gmail.com',NULL,'55999972804','2001-07-11',24,'Solteiro(a)','0','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1Z58Yp3Y950w00xCfhE7Ektp-RVHEQj7Y',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','1 experiência) indústria implementos agrícolas vence tudo  2 anos 
2 experiência)supermercado super últil 9 meses 
3 experiência ) crops classificadora 6meses',NULL,NULL,'Comercial',NULL,NULL,'Agência de Empregos','Não','2.300','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-06-09T17:56:00.000Z'::timestamptz),
  ('Lara Stefanello','laramickaeli2006@gmail.com',NULL,'55997058057','2006-04-20',19,'Solteiro(a)','0','Não','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1Pl4pi1pVNEByOuXlVGHP8GrByFVUQNkw',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Secretária - Salão Espaço Masculino: Atendimento ao cliente, controle de agenda, compra e venda de produtos, fechamento de caixa, marketing do estabelecimento, venda de pacotes. 
Auxiliar Administrativo - Pedro Mariano Imóveis: Atendimento ao cliente online e presencial, controle de agenda, planilhas, manutenção de site, captação de imóveis…',NULL,NULL,'Administrativa, Comercial, Financeiro, Marketing','https://drive.google.com/open?id=1VeNhASJyDg1trzAGemSURJuHnPL83eWo',NULL,'Instagram','Não','1600','Sim','Pedro Mariano Imóveis - +55 (55) 99185-5960','Quero inscrever-me no banco de talentos da Young!','Trabalho em equipe, informática intermediária, criação de mídias sociais, atendimento ao cliente, proatividade, pontualidade','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-06-09T21:04:00.000Z'::timestamptz),
  ('Evelyn Gabriele Córdova Machado','evy.machado258@gmail.com',NULL,'55991296210','2006-12-08',19,'Solteiro(a)','0','Não','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1-2Lng57GqbvyJ3N1232ICI6Sg7VaaKu1',NULL,'Ensino Médio Completo','Escola estadual de ensino Margarida Pardelhas','2024-12-20','Não, no momento pausei/parei por um período.','Loja 7, fiz um freelancer por duas semanas. Etiquetava os produtos, organizava os produtos na prateleira e atendia os clientes. 

Já vendi docinhos na rua quando morava em Santa Catarina e ajudai a minha tia com as vendas da loja virtual dela.',NULL,NULL,'Comercial, Marketing, Novos Negócios','https://drive.google.com/open?id=1HRoazvqqACNrIxCpiRdMwOxfjIzeYRrz',NULL,'Agência de Empregos','Não.','1.700,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Estou em busca de uma oportunidade de emprego, cuido da minha família e por isso não consegui trabalhar. Porém busco uma oportunidade de entrar pro mercado de trabalho e ganhar a minha liberdade financeira.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-06-09T21:52:00.000Z'::timestamptz),
  ('Thamires Luciele Teixeira Ferreira','teixeirathamires22@gmail.com',NULL,'55992306181','1997-02-16',29,'Solteiro(a)','3','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1a9igNl1P7968g0Wgm-xTP5ol5Vo5D2Wc','Enfermagem','Ensino Médio Completo','UNOPAR','2030-10-15','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Clínica odontológica - Secretária.
2) Loja vivo - Vendedora.
3) Óptica - Vendedora.
4) Sygo - Vendedora.','Informática profissional.
Auxiliar Financeiro 
Auxiliar pedagógico',NULL,'Comercial, Estágio','https://drive.google.com/open?id=1G218hJ9XhXVjYCHsrig5h6kTJFeQ6MBH',NULL,'Agência de Empregos','Não','1.600,00','Não',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-06-10T00:56:00.000Z'::timestamptz),
  ('Marilaine de Fraga','marifraga140588@gmail.com',NULL,'51985151101','1988-05-14',37,'Solteiro(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1_BzbsrSIsbxqB4qekWCy6EDE8aPAEXmP','Técnico em administração','Ensino Médio Completo','Ifsul','2025-11-21','Não, no momento pausei/parei por um período.','Inb telecom
Auxiliar administrativo 
Março 2020 a dezembro 2021
Fp gestão comercial 
Auxiliar administrativo 
Janeiro 2015 a julho 2018','Estou cursando Técnico em Administração',NULL,'Administrativa, Comercial, Financeiro','https://drive.google.com/open?id=15eHXGokmLdtKIaHwmvE6fgO7YtyAlFw_',NULL,'Instagram','Não','A combinar','Não',NULL,'Assistente financeiro','Sou Marilaine de Fraga, tenho 37 anos, estou cursando Técnico em Administração e possuo experiência em atendimento ao público, recepcionista e auxiliar administrativo.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-06-10T01:56:00.000Z'::timestamptz),
  ('Liriel Fontoura dos passos','lirielpassos14@gmail.com',NULL,'47996359423','2003-09-13',22,'Casado(a)','0','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=13xL4ROLDtWAL3jYWBs_4BjgeC0mAI6oN',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Lareiras Cruz Alta Auxiliar administrativo 15/12/2024 a 10/06/2025 emissão de notas fiscais, contas a pagar contas A receber, vendas , atendimento, lançamentos em planilha e a parte financeira.   Compmaster Vivo Vendedora fazia vendas de aparelhos celulares capas , películas , planos de celular e mechia no sistema , Curso Preparatório Futuro Auxiliar Administrativo fazia vendas dos cursos , atendia os clientes e fazia lançamento de planilhas e trabalhei como Caixa na Pizzaria A Papparella fazia vendas , cuidava do dinheiro que entrava e saía, parte financeira atendimento ao público e escalas de folgas.','Curso de Word,Excel, Instagram básico , informática e administração',NULL,'Administrativa','https://drive.google.com/open?id=15qUpw5Ypm0XhbtNGMRPlnMOCqDv2yh6D',NULL,'Indicação','Não','2000.00','Não','Mariele 55992240339 é Luiz 47 997372518','Comercial','Sou uma pessoa educada proativa , responsável eu gosto de trabalhar em equipe corro atrás dos meus objetivos, sou bem profissional no meu ambiente de trabalho, e procuro sempre melhorar dentro da empresa, sou um pouco tímida , e gosto de sempre me aperfeiçoar melhor naquilo que faço','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-06-10T18:50:00.000Z'::timestamptz),
  ('Adriana Maier Pereira','adrianamaierpereira@gmail.com',NULL,'55992139258','2004-01-22',22,'Solteiro(a)','0','Não','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1nLk6gm5p9kWIRrvy7RO5TSCrI6ZQ_guS',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Linke supermercados; Operadora de supermercado, 07/08/2020 - 05/05/2021
Executava atividades como atendimento ao público, reposição de mercadorias, caixa e empacotamento das compras 

Americanas S.A ; Supervisora de departamento,  08/04/2022 - 12/04/2023
Supervisionava o inventário da loja, analisava e tratava produtos, como validade, furto e mercadorias danificadas 

Instituto Mix de Profissões ; coordenadora de Vendas, 19/07/2023 - 25/11/2024
Atendimento ao cliente, telemarketing e vendas. Auxiliava no caixa, lançamentos de contratos e treinamento para a equipe.',NULL,NULL,'Comercial',NULL,NULL,'Instagram','Não','Acredito que em uma entrevista poderei conversar com o recrutador, e assim avaliarmos o salário ideal para as duas partes','Não',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-06-12T01:46:00.000Z'::timestamptz),
  ('Giovana Oliveira da Silva','giovana9756@gmail.com',NULL,'51995579163','2003-03-04',22,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1VG8i36FtGvR3KPumcYJDoEIaeVxLGIIX','Administração de empresas','Ensino Superior Incompleto','Uniasselvi','2025-12-22','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Possuo experiência na área administrativa e financeira, atuando atualmente como Auxiliar Administrativo na Verano Empreendimentos Imobiliários SPE, onde sou responsável por contas a pagar e receber, conciliações bancárias, elaboração de relatórios financeiros, lançamento de contratos e comunicação com fornecedores e clientes. Em 2023, também atuei como Atendente de Serviço Técnico na Vero Internet, oferecendo suporte a clientes com problemas técnicos. No mesmo ano, realizei estágio no setor financeiro da HIAB Brasil Guindastes e Serviços Ltda, com foco em contas a pagar e receber. Entre 2021 e 2022, trabalhei como Recepcionista no Pátio Urbano, recepcionando e atendendo clientes. Iniciei minha trajetória profissional como Jovem Aprendiz na DeMello Alimentos Ltda/DeMello Incorporação Ltda (2018–2020), onde posteriormente atuei como Auxiliar Administrativo (2020–2021), auxiliando nos setores de recepção, incorporação, cobrança de clientes e lançamento de contratos.','Cursando especialização em Incorporação na Construção Civil',NULL,'Administrativa, Financeiro',NULL,NULL,'Instagram','Não','3800','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-06-12T19:11:00.000Z'::timestamptz),
  ('Amanda Da Silveira consul','amandamachadosc2@gmail.com',NULL,'51998307279','2000-10-23',25,'Solteiro(a)','1','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1-TfcVEuVwnTPds3yqwE3G2GyRRpKRNsu',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Trabalhei em várias áreas, mais busco crescimento profissional, oportunidades e novos conhecimentos. Algo que tenha oportunidade de permanecer.',NULL,NULL,'Administrativa, Comercial',NULL,NULL,'Instagram','Não','1800','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Quero ter a oportunidade de evoluir, crescer, conquistar uma vida extraordinária e me dedicar a oportunidade ganhada.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-06-17T12:06:00.000Z'::timestamptz),
  ('Chrystopher Robert Kopeski','chrystopherkopesk@gmail.com',NULL,'55992044465','2000-10-08',25,'Solteiro(a)','0','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1cMRvhJzaITtpwxBuxIio9K6ETclLZqh0','Ciências da computação','Ensino Superior Incompleto','Unicruz','2027-02-10','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Personnalité skate shop
Cargo: Balconista, atendimento ao público 
Período: 03/05/2021 a 03/01/2025

Exército Brasileiro (SFPC)
Seção de Fiscalização de Produtos controlados.
Cargo: Auxiliar administrativo 
Período: 10/05/2019 a 10/02/2020','Ciências da computação 5° semestre 
My SQL intermédiario
Familiaridade com linguagens de programação 
Pacote office completo',NULL,'Administrativa, Comercial, Estágio, Financeiro',NULL,NULL,'Instagram','Não','1800 a 2500','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-06-17T22:39:00.000Z'::timestamptz),
  ('Adriana Oliveira de Leon','adrianaodeleon16@gmail.com',NULL,'53999473400','1972-02-16',54,'Casado(a)','2','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1jnvphllUWLwNJsw-WGcRP9lvICgG7E00','Estou cursando Técnico em Transações Imobiliárias e Administração','Ensino Superior Incompleto','Ibrep e Unicesumar','2025-11-15','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Pedro Obino Jr. S/A – Gerente Sênior (1994 a 2024)
Atuação na gestão e treinamento da equipe, operação da loja, supervisão de vendas, relacionamento com clientes e realização de vendas internas e externas.

Wild Administradora de Imóveis Ltda – Consultora Imobiliária (contrato de 90 dias – 2025)
Atendimento aos clientes, apresentação dos empreendimentos da Dalé, prospecções externas para divulgar os produtos que comercializávamos na imobiliária, gerando leads para buscar qualificação para efetivação de vendas.','Atualmente, estou cursando o Técnico em Transações Imobiliárias (TTI), que está me capacitando para atuar no mercado imobiliário. Também curso Bacharelado em Administração, onde desenvolvo conhecimentos nas áreas de gestão, finanças, marketing, recursos humanos e planejamento empresarial.',NULL,'Administrativa, Comercial, Marketing, Novos Negócios',NULL,NULL,'Indicação','fui contatada pela Carol Volpato, mas indicada pelo George.','R$2.000,00','Não','Matheus Wild 53 999656639 ( Imobiliária Wild) - Marcos Paulo 53 991034279  ( Lojas Obino)','consultora imobiliária (com a necessidade de treinamento)','Sou uma pessoa comunicativa, organizada, dedicada e comprometida com tudo que faço. Tenho facilidade no relacionamento com pessoas, gosto de atender, resolver problemas e trabalhar em equipe. Ao longo da minha trajetória profissional, desenvolvi habilidades sólidas em atendimento ao cliente, vendas, negociação, organização de processos e gestão de equipes. Estou sempre disposta a aprender, me adaptar a novos desafios e contribuir com o crescimento da empresa. Nos meus momentos livres, gosto de cuidar da minha família, assistir filmes e aprender coisas novas. Tenho muito interesse em continuar me desenvolvendo na área imobiliária, colocando em prática minha experiência de 30 anos no comércio, agora voltada para um novo segmento.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-06-18T16:24:00.000Z'::timestamptz),
  ('Gabriel Toledo da Rocha','gabrieltoledodarocha@gmail.com',NULL,'55992051261','2002-08-01',23,'Solteiro(a)','0','Não','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1VHk9185cacoiK3cx-T6AT8xI-qOl0LHO',NULL,'Ensino Médio Completo','Escola major Belarmino cortês','2021-12-22','Não, no momento pausei/parei por um período.','Empresa: komprão mais Linke Atacado e varejo/início:01/03/2023 até 20/06/2024/cargo: atendente de Hortifruti/super útil supermercados:20/08/2024 até o momento/cargo: atendente de Hortifruti','Curso: internet Explorer/instituto Mix',NULL,'Arquitetura',NULL,NULL,'Google','Não','1.800','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-06-19T18:49:00.000Z'::timestamptz),
  ('Jéssica Fernandes da Silva Concolatto','jessicacasenco.fernandes@gmail.com',NULL,'51997022676','2000-02-14',26,'Casado(a)','2','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1NzVTVEeV2gsUChe-PgX3CyKEtLLxWe5P',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','EXPERIÊNCIAS
Ecosol Soluções Ecologicas LTDA | Auxiliar de Data Integrity  
Fevereiro 2021 - Julho 2023
* Auditoria e verificação de dados, garantindo precisão e atualização contínua.
* Colaboração com TI e equipes de negócios na implementação de boas práticas de gestão de dados.
* Elaboração e manutenção de documentação de processos e procedimentos.
* Apoio na análise de dados e geração de relatórios para decisões estratégicas.
Comércio de Medicamentos Brair LTDA | Operadora Financeira
Agosto 2023 - Fevereiro 2025
* Atendimento ao cliente e processamento de vendas no caixa.
* Controle de estoque e conciliação financeira diária.
* Promoção de ofertas e apoio administrativo.
Guimarães Brasil Indústria e Alimentos LTDA | Embalador à Mão
Agosto 2018 - Janeiro 2019
* Embalagem manual de produtos e controle de qualidade.
* Organização do espaço de trabalho e cumprimento de normas de segurança.','Atendimento ao cliente',NULL,'Administrativa, Comercial',NULL,NULL,'Instagram','Não','2500','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa esforçada e dedicada, sempre buscando fazer o meu melhor em tudo que faço. Ainda não tenho muita experiência com vendas de terrenos, com área comercial e administrativa mas tenho um grande interesse em aprender e me desenvolver nessa área. Uma das minhas melhores qualidades, é a facilidade que tenho para aprender as coisas rapidamente, o que me ajuda a adquirir novos conhecimentos com mais agilidade. Estou sempre aberta a novos desafios e disposta a crescer, acreditando que com dedicação e vontade de aprender, posso conquistar grandes resultados.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-06-20T14:47:00.000Z'::timestamptz),
  ('Carolini Coelho Spitznagel','carolinicoelho26@gmail.com',NULL,'51999497265','2003-10-26',22,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=12wjKz0sZBvtD7n_RD9uDqUWLF6Dm31ly','Educação física','Ensino Médio Completo','Uninter','2026-12-19','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1- Gráfica Gaúcha
2- Alimentadora de produção 
3- 11/01/23 à 16/04/25
4- Atendimento ao cliente presencial e no WhatsApp, criação de artes, impressão, envios para aprovação...

1- Compmaster
2- Consultora de vendas
3- 24/01/22 à 29/08/22
4- Atendimento ao cliente, resolução de problemas, vendas...

1- Mercado Santos Muniz 
2- Operador de caixa 
3- 13/08/20 à 10/01/22
4- Atendimento no caixa, reposição de prateleiras, atualização de preços, encartes...',NULL,NULL,'Administrativa, Estágio, Licenciamentos, Marketing',NULL,NULL,'Instagram','Não','R$1.800,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-06-23T16:13:00.000Z'::timestamptz),
  ('Karen Melo','karenmilenesilva199@gmail.com',NULL,'55992042266','2005-09-06',20,'Solteiro(a)','0','Não','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=17mEHmc3VJ_hlGK_pd0nt3e5BLU_a9jA7','Formada TEC em secretariado/ cursando TEC em contabilidade','Ensino Médio Completo','i.E.E Annes dias','2024-06-19','Sou formado','Irmãos Linke & cia LTDA
Jovem aprendiz

Estoquista 
Exercendo as seguintes funções: realizando requisição de material interno da empresa, digitação de planilhas no Excel, lançamentos de NFS, contagem e acerto de estoque','TEC em secretariado/ cursando TEC em contabilidade',NULL,'Administrativa, Comercial, Estágio, Marketing',NULL,NULL,'Instagram','Não','Salário mínimo','Não','Elisandra Linke 55991231412','Quero inscrever-me no banco de talentos da Young!','Me chamo karen tenho 19 anos, trabalhei como jovem aprendiz em um supermercado da Cida logo dps fui efetivado como Estoquista na mesma empresa, gosto de jogar bola nas horas vagas, trabalhava com lançamento de planilhas no Excel,  e digitação de NFS, Gosto de me comunicar e adquirir conhecimento nas demais áreas, sou uma jovem que busca conhecimento e gostaria de uma oportunidade na empresa','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-06-23T17:35:00.000Z'::timestamptz),
  ('Luana Almeida Martins de Mello','almeidamartinsluana@outlook.com',NULL,'55992026705','1995-07-13',30,'Casado(a)','1','Não','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1FNKnS9jXJXNEhidx6NulBhHWMW3wvGoG','Ciências Contábeis','Ensino Superior Incompleto','Estácio de Sá','2027-12-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Hospital Regional Santa Lucia, auxiliar contábil, de 10/2021 a 12/2022; conciliação contábil, financeira e bancária, lançamentos contábeis, contas a pagar e contas a receber.','Auxiliar administrativo.',NULL,'Administrativa, Comercial, Financeiro',NULL,'https://drive.google.com/open?id=17JXXI07mB7g454ChaZkNzSTBawPUVHAU','Instagram','Não.','2.000,00.','Não',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-06-23T21:02:00.000Z'::timestamptz),
  ('Thiago Rech dos Santos','xtrechx@gmil.com',NULL,'51982656681','1985-07-16',40,'União estável','2','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=17W0NU3aZ4V-ipqvddRlwZvXkCqzufwCI','Bacharelado em Educação Física','Ensino Superior Incompleto','Unifatecie','2027-12-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Asun Supermercados
Cargo: Verdureiro/Repositor
12/2005 - 05/2007
Repor mercadorias e atendimento ao cliente.

Supermercado Nacional
Cargo: Repositor
12/2008 - 03/2009
Repor mercadorias e atendimento ao cliente.

Supermercado Nacional
Cargo: Repositor/Auxiliar Administrativo 
12/2009 - 06/2013
Repor mercadorias e atendimento ao cliente.
Em 03/2010 fui provido a auxiliar administrativo, função qual emitia notas de saída e fazia controle de trocas de mercadorias avariadas.

Severas Rh
Cargo: Promotor de Vendas ( Ferista )
06/2016 - 07/2016
Repor de mercadorias em lojas cadastradas, manter pontos de vendas limpos e organizados.

Xtreme Lan House ( Sala de acesso à internet e serviços gráficos )
Cargo: Atendente de Balcão, digitador, serviços de impressão 
09/2012 - 04/2020
Atendimento ao cliente presencial e via redes sociais, digitação de texto, impressões em geral.
Pri Personalizados ( Papelaria Personalizada)
Cargo: Atendente, Produção de produtos de papelaria personalizada
04/2020 - 05/2025
Atendimento ao cliente presencial e via redes sociais, digitação de texto, edição de imagens impressões em geral, montagem e produção.','Montagem e manutenção de Hardware',NULL,'Administrativa, Comercial, Financeiro',NULL,NULL,'Agência de Empregos','Não','R$1,80','Sim','51982609452','Quero inscrever-me no banco de talentos da Young!','Tenho experiência em Windows e pacote office e algumas ferramentas para design, montagem e manutenção de PCs. No tempo livre tenho hábito de treinar musculação e também correr ou pedalar todos os dias.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-06-24T03:56:00.000Z'::timestamptz),
  ('Angelo Sanchotene Chiapinotto','angelo_chiapinotto@hotmail.com',NULL,'55996091682','1992-10-24',33,'Solteiro(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=15x_ax9QB_6qCPc8CMZrhz7vivoRujmOD','Engenharia de Controle e Automação','Ensino Superior Incompleto','UniRitter','2025-12-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1)Empresa: Danilo Jose Chiapinotto
Cargo: Gerente de produção e operações agropecuária (3/2020 - 12/2022)
Principais atividades desempenhadas: Área de arroz, da preparação do solo a colheita.
Controle de estoque.
Contratação de funcionário.
Serviços financeiros.
2)Empresa: A. D. Chiapinotto
Cargo: Trabalhador agropecuário em geral (11/2014 - 12/2016)
Principais atividades desempenhadas: Área de arroz, da preparação do solo.','Curso Técnico, Windows + Office
Técnico em Contabilidade 
Curso Técnico Programação(PHP)',NULL,'Administrativa, Estágio, Financeiro, Engenharia',NULL,'https://drive.google.com/open?id=1RiVr5U3OslRnZ0ppwy6rWZgaiByza7M9','Indicação','Não','Não remunerado','Sim',NULL,'Estágio Engenharia e/ou Arquitetura','Olá tenho interesse de realizar estagio com vocês, pra finalização do curso e disponho mudança de cidade, no momento resido em Itaqui/RS.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-06-24T11:56:00.000Z'::timestamptz),
  ('Jéssica Alves dos Santos','js713311@gmail.com',NULL,'51996396642','2002-01-08',24,'Casado(a)','2','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1yZhWuRg5vS3_AXID3DPQzoPkZtaoaLiv','Ciências Contábeis','Ensino Superior Incompleto','Leonardo da vici- Uniasselvi',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1- via uno. 2- auxiliar de almoxarifado. 3- agosto de 2018 saída em junho 2025. 4- controle de entrada e saída de materiais, organização de estoque e inventário, apoio administrativo em rotinas do setor, comunicação com setores internos e fornecedores, lançamento de movimentação no sistemas.',NULL,NULL,'Administrativa, Comercial, Financeiro',NULL,NULL,'Agência de Empregos','Não','2.000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Atualmente estou cursando ciências contábeis, procuro uma vaga de trabalho, que eu consiga por em prática tudo que estou aprendendo. Tenho conhecimento básicos em Excel, sou muito atenta e aprendo rápido. Sei que se eu receber essa oportunidade vou dar sempre o melhor de mim.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-06-24T14:50:00.000Z'::timestamptz),
  ('cesarmachado01057@gmail.com','cesarmachado01057@gmail.com',NULL,'55997086287','1977-06-30',48,'Divorciado(a)','1','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1Z0VBR_owp8Txh3ih4w3Y29H0oIL4leNG','Administração de empresas','Ensino Superior Incompleto','UNIPAMPA',NULL,'Não, no momento pausei/parei por um período.','Bortolini e Silva vendas insumos agrícola','Sou técnico em Agropecuária',NULL,'Comercial',NULL,NULL,'Instagram','Nao','De acordo com a funcao','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Além vendas de insumos agrícola trabalho com vendas e arrendamento áreas rurais','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-06-24T17:49:00.000Z'::timestamptz),
  ('Maiara Cardoso flores','maiaraflores764@gmail.com',NULL,'51995830917','1996-08-31',29,'Solteiro(a)','2','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1ELu1evJzbecmccF_Xj5QBMemnJc8mJp6',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Agropecuária dando início 2015 a 2025 como vendedora na loja,caixa 

Loja de convieniencia br dando início 2009 até 2013,vendedora e caixa,reposição.',NULL,NULL,'Financeiro',NULL,NULL,'Facebook','Não','1,6','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Trabalho com o público desde de 2009 até o momento,adora trabalhar com o público,sou empenhada,sempre disposta a apreender mais,e dar o meu melhor para a empresa crescer!!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-06-25T17:43:00.000Z'::timestamptz),
  ('Helen Karoline Santos da Silva','contatohelenkaroline@gmail.com',NULL,'51995794398','1998-11-16',27,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1ThyBHE_dAQYTNwswmNqxJ-2yIqceAh5V','Processos Gerenciais','Pós-graduação Completa','Unicenec- Faculdade Cinecista de Osório','2017-12-20','Sou formado','Experiência Profissional
Autônoma- Salão de beleza (10 de novembro de 2020 a 25 de abril de 2025)
• Contas a paga e a receber;
• Planejamento financeiro;
• Compras (negociação com fornecedores).

Auxiliar financeiro – Qualicoco LTDA (21 de maio de 2019 a 09 de novembro de 2020)
• Contas a pagar e a receber;
• Planejamento;
• Execução do caixa diário.

Auxiliar administrativo - V. L. da Cunha e Cia LTDA (Mundi A Primavera)                          (16 de novembro de 2017 a 02 de julho de 2018)
• Emissão e lançamento de notas fiscais;
• Monitoramento de planilhas do Excel;
• Cobranças, aberturas de crediário e análises de crédito.

Estágio pelo CIEE - Imap Indústria e Comercio de Maquinas e Equipamentos LTDA  (09 de agosto de 2015 a 18 de agosto de 2017).
• Vendas atendimento ao público pessoalmente, por telefone e e-mail;
• Cadastros de pessoas físicas ou jurídicas através daanálise de credito;
• Criação de planilhas do Excel.

Estágio em Aprendizagem de serviços administrativos SENAC - Imap Indústria e Comercio de Maquinas e Equipamentos LTDA(09 de abril de 2014 a 15 de maio de 2015).
• Auxiliar o setor de vendas e recursos humanos;
• Arquivamento de documentos;
• Lançamento de pedidos via sistema.',NULL,NULL,'Administrativa, Comercial, Financeiro',NULL,'https://drive.google.com/open?id=1qUUkue68PYt1gkMnBmyOQYJTDGLqtmCz','Instagram','Não','2.000,00','Sim',NULL,'Financeiro','Sou uma profissional proativa, organizada e com boa comunicação. Para o ramo e nível da empresa acredito que essas qualidades são de grande valia em alguém que vai agregar a equipe.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-06-27T02:05:00.000Z'::timestamptz),
  ('Ketlin Alessandra','ketlinalessandra7@gmail.com',NULL,'55991106449','2005-11-29',20,'Solteiro(a)','0','Não','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=12FO94QmKKx289T5vx5wfsy_zY2Kc9jLV','Tecnico de enfermagem','Ensino Médio Incompleto','Escola seg','2027-06-21','Não, no momento pausei/parei por um período.','1° Empresa Super Útil, Trabalhei como operadora de caixa, inicio dia 18/02/2024 saída 20/08/2024

2° Empresa Zaz, trabalhei como vendedora externa, um empresa terceirizada.
 Início 14/10/2024 saída 22/04/2025','Olá, no momento parei com o meu curso técnico de enfermagem por questões financeiras.',NULL,'Estágio',NULL,NULL,'Instagram','Não conheço ninguem da empresa!','1,600,00','Sim',NULL,'Vendedor Externo','Oii meu nome é Ketlin tenho 19 anos, busco uma oportunidade de engrenar no mercado de trabalho qualquer vaga disponível! Sobre mim sou uma voluntária do Projeto Sopão aqui da minha cidade, sou uma ótima pessoa aprendo rápido.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-06-27T03:25:00.000Z'::timestamptz),
  ('Isadora Martins da Silveira','isadoraamsilveira@gmail.com',NULL,'51995812252','1996-10-24',29,'Solteiro(a)','2','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1JJW5iieUof5M3v0xTvlfcONE1C3zTQRj','Letras','Pós-graduação Completa','Uninter','2024-05-24','Sou formado','Professor no governo do estado/Rs desde 01/08/2022 até então.','Pós graduada em Supervisão, docência no ensino superior.',NULL,'Administrativa, Comercial, Novos Negócios',NULL,NULL,'Instagram','Não','A combinar com a empresa','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa muito volátil, que consegue se adaptar com qualquer tipo de ambiente, calma e tranquila e sempre disposta a aprender coisas novas!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-06-30T23:42:00.000Z'::timestamptz),
  ('Maria Eduarda Killip dos Reis','eduardakillip@gmail.com',NULL,'51996494708','2004-11-23',21,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1trXu8cwWva0Y13Xo1AxSzv4j5vtYea0a',NULL,'Ensino Superior Incompleto','Anhanguera','2031-03-10','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Panvel Farmácia - Atendente de Filial
Prefeitura Municipal de Santo Antônio da Patrulha - Recepcionista e Administrativo','Sou formada em Magistério',NULL,'Administrativa, Comercial, Marketing',NULL,NULL,'Instagram','Não','2.400','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Conhecimento em pacote office, SketChup','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-01T13:07:00.000Z'::timestamptz),
  ('Nicolas Rafael Padilha Scholtz','nicolasscholtz@gmail.com',NULL,'55992099633','1998-12-29',27,'União estável','1','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=13x84vBQLhnVy4OOeTuc-GsVwRbEK3Mp1',NULL,'Ensino Superior Incompleto','UNISA',NULL,'Não, no momento pausei/parei por um período.','Action Day - Gestor de Trafego pago - De: 26/08/2024 até 23/05/2025 - 
responsável por gerir contas do Meta (Facebook e Instagram) e
do Google Ads, sempre inovando com ideias criativas e cativantes
para atrair mais publico tendo juntamente a responsabilidade de
otimizar campanhas e monitorar gastos, chegando a cuidar de
investimentos de R$ 30.000,00 até R$ 150.000,00 mensal.

Grupo G10 Transportes – Auxiliar Administrativo – 01/03/2023 até 23/04/2024
responsável por cadastrar motoristas no sistema da empresa e ofertar cargas
para eles, também responsável por gerar as guias e os
pagamentos dos mesmos

CCGL (Cooperativa Central Gaúcha Ltda.): Auxiliar de laboratório - 18/06/2021 até 17/11/2022
responsável por analises químicas de controle de qualidade dos
produtos fornecidos pela empresa

 Renner: Assistente de Produtos Financeiros – 24/01/2020 até 11/02/2021
responsável por vender seguros e cartões
para os clientes, além do atendimento ao
publico 

Cartório de Registro de Imóveis: Atendente - 01/03/2016 à 30/06/2019
Responsável por pedidos
online, busca de bens e certidões de cédulas, além do atendimento ao
público',NULL,NULL,'Administrativa, Comercial, Marketing',NULL,NULL,'Facebook','não','A critério da empresa','Não',NULL,'Marketing ou Administrativo','Tenho Inglês avançado, sou analista e desenvolvedor de software, especialista em marketing digital, gosto muito de jogar video game, sou um pouco tímido, sou uma pessoa leal, honrada, e separo muito o profissional do pessoal, gosto de ficar em casa, tomo bastante café, gosto muito de ler','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-01T16:45:00.000Z'::timestamptz),
  ('Rodrigo da Silveira Ribeiro','rribeiro.sap@gmail.com',NULL,'51997173662','1990-10-28',35,'Casado(a)','2','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1HLgrzSGZABuHzIQEKaG8d1ubApYha-BN','Direito','Pós-graduação Completa','Universidade Federal do Rio Grande','2030-07-02','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','INTER PAG, CONSULTOR COMERCIAL, 02/2024 a 02/2025',NULL,NULL,'Administrativa, Comercial, Financeiro',NULL,'https://drive.google.com/open?id=1zjuC51x5IYZjGRtTgpXvoFEcbBJQfYcO','Agência de Empregos','Não','3000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-02T19:14:00.000Z'::timestamptz),
  ('João Carlos da Silva Guimarães','joaocarloss589@gmsil.com',NULL,'051996661601','1963-07-07',62,'Casado(a)','2','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1YIUz9oTZ-rvYD-nm_WQqDW1EDKYUWco_','História','Ensino Superior Incompleto','Unifael',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Func Público Estadual- EEEM Prpof Cândido de Barros de 10/08/2010 à 28/02/2023
Setor Administrativo escolar
Atendimento ao Público, Rotinas administrativas como matriculas, transferência, oficio, declarações, controle de assinatura de ponto, Censo Escolar, escrituração de documentos em geral.
Tenho experiencia em rotinas de faturamento, cobrança, e adm. financeira. Tenho experiencia em compra e venda de imóveis, carros.
Tenho experiencia em direção/motocicleta/ habilitação A3B 
Atividades paralelas: Compro/venda de  terrenos quando surge a oportunidade. Compra/venda de  carros e motos.','Curso de Gestão Administrativa-Ifisul
Curso Tecnico em Agroindústria- Furg
Ensino Médio',NULL,'Comercial',NULL,NULL,'Agência de Empregos','Não','Algo justo para ambas as partes','Sim','EEEM Professor Cândido de Barros- Diego','vaga 8475167-Cine','Sou otimista e acredito que tudo é possível, basta ter foco e persistir no trabalho  para realizar seus objetivos.  Quanto a língua, um pouco de espanhol. Tenho conhecimento operacional na área Windows, Word, Excel, redes sociais WhatsApp, Sagram, Facebook e outros. Como estou sem vínculo em empregatício, fui conhecer um pouco da Historia no berço da Civilização na Itália.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-03T19:44:00.000Z'::timestamptz),
  ('Filipe Silveira da Silva','silvafilipe151204@gmail.com',NULL,'51996977919','2004-12-15',21,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1IOwh0AbLh5ji5gfdCfZ5XdDR8qGn5shz',NULL,'Pós-graduação Incompleta','Furg',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Via Uno 
Almoxarife/Auxiliar Administrativo
20/01/2022 - 04/07/2025
Trabalho bastante com planilhas do excel, Gmax (Sistema), notas fiscais, Power BI, trabalhei como almoxarife por 5 meses, e trabalho a 3 anos como Auxiliar Administrativo.',NULL,NULL,'Administrativa, Comercial, Financeiro',NULL,NULL,'Agência de Empregos','Não tive indicacões, encontrei atravez do SINE','2.000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-03T23:11:00.000Z'::timestamptz),
  ('Jaderson cardoso ramos','jadersoncardosoramos@gmail.com',NULL,'51998403226','1998-09-11',27,'Casado(a)','3','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1htqjDQKUO7i_rzrN3f3C4CFCRnkXYTzC',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Becker metalúrgicas  Soldador Montador',NULL,NULL,'Comercial',NULL,NULL,'Agência de Empregos','Não','2500','Sim','Escola tecnica plenárius  coordenador de curso','Quero inscrever-me no banco de talentos da Young!','Procurando uma oportunidade de crescer realmente dentro de uma empresa sou responsável e fiel no que eu acredito. 
Desde ja agradeço','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-04T00:51:00.000Z'::timestamptz),
  ('RICHARD ASSIS DA SILVA','richardassisdasilva@outlook.com',NULL,'55991165157','1997-02-04',29,'Solteiro(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=11j5HarK4bCRAYIcOKmEsgc-bk9kkZVGU','Engenharia Cartográfica e de Agrimensura','Pós-graduação Completa','UNIPAMPA','2021-07-14','Sou formado','Experiências Profissionais:

2021-2022- Empresa: “GOIAS BUSINESS CONSULTORIA E SERVIÇOS LTDA” a serviço de EMPRESA BRASILEIRA DE CORREIOS E TELÉGRAFOS – CORREIOS – Agência Itaqui/RS. Cargo: Carteiro.
Funções desenvolvidas: triagem e entrega de cartas simples, registradas com e sem AR. 
Aprendizado: além do trabalho de fato, aprendi sobre questões territoriais, socioeconômicas, interpessoais, de logística e de ética. 

2022- atual- Empresa: CARTÓRIO DO REGISTRO DE IMÓVEIS E ESPECIAIS DE ITAQUI/RS. Cargo: Escrevente.
Funções desenvolvidas: 
Ofício do Registro de Títulos e Documentos: atendimento ao público; recepção, análise, orçamento, registro ou averbação de documentos, como, por exemplo, contratos, cédulas bancárias, parcerias agrícolas, arrendamentos, notificações extrajudiciais, documentos estrangeiros, etc;  atendimento via portal RTDPJ Brasil; pré-arquivamento documental, emissão de certidões; monitoramento de e-mails e telefones.
Ofício do Registro Civil das Pessoas Jurídicas: atendimento ao público; recepção, análise, orçamento, registro ou averbação de documentos, como, por exemplo, contratos sociais, estatutos sociais, atas, alterações, distratos, etc.; análise e deferimento de DBE-CNPJ, atendimento via portal RTDPJ Brasil; pré-arquivamento documental, emissão de certidões; monitoramento de e-mails e telefones; operante na Central de Atendimento RTDPJ RS.
Ofício do Registro de Imóveis: atendimento ao público; recepção, análise, orçamento, registro/ averbação e arquivamento de georreferenciamento de imóveis rurais; acesso a plataforma SIGEF – INCRA; acesso a plataforma ONR; registro de cédulas bancárias, cédulas bancárias pignoratícias, cédulas bancárias hipotecárias, cédulas bancárias hipotecárias e pignoratícias, contratos de abertura de crédito, cédulas de produto rural; também, de forma coadjuvante, atua registrando escrituras públicas, contratos com alienação de imóveis e, averbando aditivos, benfeitorias, etc.
Aprendizado: além do trabalho de fato, aprendi sobre ética e sigilo documental, aprimorei meus conhecimentos em editoração textual e de planilhas eletrônicas, apliquei conhecimentos adquiridos academicamente, aprimorei meus conhecimentos acerca de legislações territoriais e cartorárias, fiz triagem documental e desenvolvi relações interpessoais com clientes fisicamente e remotamente.

2024-2025- Empresa: “FUNDAÇÃO UNIVERSIDADE FEDERAL DO PAMPA - UNIPAMPA”. Cargo: Professor do Magistério Superior Substituto.
Funções desenvolvidas: professor do Curso de Engenharia Cartográfica e de Agrimensura e do Curso de Agronomia, ambos do campus Itaqui/RS.
Aprendizado: elaborar e ministrar aulas; elaborar provas e trabalhos; ministrar palestras na área de georreferenciamento e imóveis rurais, etc. 
Um ponto importante: fui professor por dois semestres consecutivos da disciplina de “projetos, avaliações e perícias de imóveis rurais”,  do curso de Agronomia.','Formação Acadêmica
Ensino Superior: 
	Engenharia Cartográfica e de Agrimensura – UNIPAMPA (2021).
Com especialização em:
	Engenharia de Segurança do Trabalho – FACUDADE EDUCAMAIS (2022)
	Geoprocessamento – FACULDADE PROMINAS (2023).
Complementar: 
	Informática – MICROPOINT (2009);
Rotinas Administrativas (Assessoria Administrativa, Auxiliar de Contabilidade, Auxiliar de Escrita Fiscal, Auxiliar Departamento Pessoal) - DATA MASTER  (2011);
	Inglês Básico – IFSUL (2022);
	Espanhol básico – IFSUL (2022).',NULL,'Administrativa, Licenciamentos, Engenharia',NULL,NULL,'Indicação','Sim. Eduardo (setor de suprimentos).','A combinar, dependendo do cargo.','Sim','Cristiano Galafassi (UNIPAMPA) - FONE: 54996279585','Quero inscrever-me no banco de talentos da Young!','Estou disposto a aprender e a crescer dentro da empresa; Sou organizado e responsável; Disponibilidade de horários; Boa comunicação; Proatividade; Sei trabalhar em grupo; Das coisas que não possuo (ou possuo pouco) conhecimento, busco aprender rapidamente; Na Universidade, atualizei meus conhecimentos no Pacote MS-Office, fui aluno pesquisador e desenvolvi pesquisas científicas nas áreas de geociências, astronomia, engenharia e afins; Tenho domínio em analisar e extrair informações de tabelas e/ou banco de dados; me adequo facilmente às ferramentas tecnológicas (programas, aplicativos, editoração).','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-04T21:31:00.000Z'::timestamptz),
  ('Igor Silveira Elesbão','igor.silveira2013@gmail.com',NULL,'55996799318','1998-09-22',27,'Solteiro(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1v6VAXVs5TcWKL9M-LWCDaLfkN6pN3yT8','Engenharia Cartográfica e de Agrimensura','Pós-graduação Incompleta','Universidade Federal do Pampa','2023-03-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','a) 1) Eng. Agnos Jacques Silva Araújo 2) Desenhista Cadista, Auxiliar de projetos, projetista de desmembramentos. 3) 07/2018 - Atual; 4) Inicialmente a ideia era auxiliar a montagem de layouts de projetos e plotagem, com o tempo passei a desenhar os projetos e transferi-los entre plataformas quando necessário (Sketchup-AutoCAD-Revit), após formatura, passei a realizar os processos de desmembramento, remembramento e retificação de lotes urbanos do escritório.
b) 1) Oficio do Registro de Imóveis e Especiais de Itaqui/RS; 2) Escrevente; 3) 02/2023 -a 04/2023; 4) Registro de cédulas e suas averbações;
c) 1) Universidade Federal do Pampa; 2) Professor Substituto; 3) 07/2023 a 12/2024; 4) Responsável pelas componentes dos cursos de Engenharia Cartográfica e de Agrimensura e Agronomia;','Trabalhei, antes da formatura do curso de Engenharia Cartográfica e de Agrimensura, no Cartório de Registro de Imóveis de Itaqui/RS; Após este, realizei um processo seletivo para professor substituto, nos cursos de Engenharia e Agronomia, da Unipampa, campus Itaqui, onde fui aprovado e trabalhei com as áreas de Desenho Técnico, Parcelamento Territorial, Agrimensura Legal, dentre outras componentes dos cursos. Possuo ainda, parceria desde 2018, com o Engenheiro Civil Agnos Jacques Silva Araújo, no qual auxilio nos projetos do escritório.',NULL,'Arquitetura, Engenharia',NULL,NULL,'Indicação','Eduardo do setor de Suprimentos; Ariel Brandão.','Á combinar.','Sim','Cristiano Galafassi - (54)996279585
Débora Rocha Dias - (55)999757637','Quero inscrever-me no banco de talentos da Young!','Trabalho além de tudo com informática, possuo  curso de manutenção de computadores e gosto bastante de dar aula! Inclusive todo semestre ministro aos alunos do campus Itaqui, um minicurso de Autocad.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-04T21:32:00.000Z'::timestamptz),
  ('Lorena Lucas Fleitas','fleitaslorena973@gmail.con',NULL,'53999207851','2003-10-06',22,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=19D9p-465lH_-SIUk3ZIM3XcDIeZkgSSI',NULL,'Ensino Superior Incompleto',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Jovem aprendiz-auxiliar administrativo 
Empresa: Camal
01/10/2019 a 26/02/2021
Funções administrativas, vendas, atendimento ao cliente, marketing 

Auxiliar de laboratório e operacional 
Camal
12/03/2021 a 03/02/2025
Auxiliar de recepção e expedição, funções administrativas, análises laboratoriais e funções administrativas',NULL,NULL,'Administrativa, Comercial, Financeiro, Marketing',NULL,NULL,'Facebook','Não','1800','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho algumas experiências com vendas e atendimento ao cliente, alguns treinamentos de manejo da matéria prima e segurança de alimentos. Também tenho 3 anos de técnico em informática, do qual não finalizei','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-05T12:53:00.000Z'::timestamptz),
  ('Elisandro Porcelis de Souza','corretorelisandroporcelis@gmail.com',NULL,'53999451401','1992-08-24',33,'Solteiro(a)','1','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=19Fv99SefkoOSRFhEQspTXnDPyXAIg9u1',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Corretor na Invista Imóveis por mais de 8 anos.
Vendedor automotivo na G7 automoveis por 1 ano.','Técnico em transações imobiliárias e Técnico em Administração.',NULL,'Administrativa, Comercial',NULL,NULL,'Instagram','Anúncio de vaga pelo Instagram para Bagé','Mínimo de R$ 3.500','Não',NULL,'Comercial','Tenho experiência no ramo imobiliário, tendo trabalhado na área por 9 anos, com formação em 2015.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-05T14:23:00.000Z'::timestamptz),
  ('Marcelo Monteiro','marceloluyseeduarda@gmail.com',NULL,'53991468668','1981-12-04',44,'Solteiro(a)','2','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=14TVI17UXRqV4g5BFnZGs-NB47z0gP0uu','Gestão pública','Ensino Superior Completo','Anhanguera','2023-06-16','Sou formado','Ditalia, vendedor,04/05/2023','Elétrica',NULL,'Comercial',NULL,NULL,'Facebook','N','A combinar','Sim',NULL,'Vendendor',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-06T17:19:00.000Z'::timestamptz),
  ('Marcelo Monteiro','marceloluyseeduarda@gmail.com',NULL,'53991468668','1981-12-04',44,'Solteiro(a)','2','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1FVfxkUrSUsByUKn0SlV89JZcLvFSK81B','Gestão pública','Ensino Superior Completo','Anhanguera','2023-07-04','Sou formado','New Life, vendedor e coordenador de equipe 12/05/2022*08092023','Elétrica',NULL,'Comercial',NULL,'https://drive.google.com/open?id=1kUkTUjX7XY3rds5VxV9KZR1_IENtl7AP','Facebook','N','A combinar','Sim',NULL,'Comercial','Comunicativo e resiliente','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-06T18:39:00.000Z'::timestamptz)
;

INSERT INTO young_talents.candidates (full_name, email, email_secondary, phone, birth_date, age, marital_status, children_count, has_license, city, photo_url, education, schooling_level, institution, graduation_date, is_studying, experience, courses, certifications, interest_areas, cv_url, portfolio_url, source, referral, salary_expectation, can_relocate, professional_references, type_of_app, free_field, status, tags, origin, created_by, original_timestamp)
VALUES
  ('Giulia Borges Feijó','giulia.borges1206@gmail.com',NULL,'53991414279','2000-06-12',25,'União estável','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1-uL3ylvcaypQrVfM1FYyKLPAghcucsls',NULL,'Ensino Superior Incompleto',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Prefeitura Municipal de Bagé 
Assistente Administrativo
Atendimento ao público e orientação de demandas.
Digitalização, organização e arquivamento de documentos.
Apoio nas rotinas administrativas do setor.

Clínica Odontológica – Bagé/RS
Secretária Administrativa
Agendamento de consultas e atendimento ao público.
Criação de cadastros, emissão de boletos e cobranças.
Organização administrativa e suporte à equipe clínica.

Cadora Assessoria Imobiliária – Bagé/RS
Corretora e Avaliadora de Imóveis
Atendimento ao cliente e suporte personalizado.
Negociação, venda e locação de imóveis.
Análise de documentação e redação de contratos.
Realização de vistorias e acompanhamento de processos.
Gerenciamento de redes sociais e ações de marketing digital.','Técnico em transações imobiliárias',NULL,'Administrativa, Financeiro, Marketing, Engenharia',NULL,NULL,'Instagram','Não','R$2.500,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-07T02:23:00.000Z'::timestamptz),
  ('Deiviti Bel de Barres Garcia','deiviti.garcia1980@gmail.com',NULL,'53999015102','1980-05-16',45,'Casado(a)','1','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1yc5BJE46pkAKIyimeYK0Ey5CBUrvwQ-J','Tecnologia em Processo Gerênciais','Ensino Superior Completo','Umifael','2018-07-01','Sou formado','JTI, vendedor, janeiro de 24 atual, negociação, entregas, negociação, fechamento de vendas e marketing.',NULL,NULL,'Administrativa, Comercial, Marketing',NULL,NULL,'Facebook','Naoy','2500','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-07T15:58:00.000Z'::timestamptz),
  ('Maicon Alves marques','maiconamarques@hotmail.com',NULL,'53999970480','1977-01-11',49,'Casado(a)','1','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1YCZyag7KQgZrEamhgDFYB9d4G4Y7FhaI','Administração de empresas','Pós-graduação Completa','Urcamp','2000-03-22','Sou formado','Bayer, Hypred','Fiz mestrado em relações comerciais em Berlim',NULL,'Comercial',NULL,NULL,'Facebook','Não','3,700,00','Sim',NULL,'Comercial','Sou um profissional focado no resultado, atuei na área comercial como vendedor até ser gerente comercial do estado do Rio Grande do Sul, morei em outros países onde tive a oportunidade de me desenvolver e aprender','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-07T22:11:00.000Z'::timestamptz),
  ('Claudia Regina Chaves da Rocha','claudiarcrocha1973@gmail.com',NULL,'55991101962','1973-09-19',52,'Casado(a)','2','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1PXOnz_-6sy5gKdOvBY-5MQr0Q5nfVetW','Estava cursando o Marketing digital','Ensino Médio Completo','Uninter',NULL,'Não, no momento pausei/parei por um período.','Trabalhei em vendas nos segmentos de confecções, móveis e eletrodomésticos, internet e telefonia, automóveis, peças de automóveis, sistemas operacionais pra empresas, cursos técnicos etc.. Todos com atendimento ao público, cadastro, pós venda, em uma média de 2 anos cada. O tempo maior foi em vendas de TV por assinatura, internet e telefonia durante oito anos.','Curso técnico de contabilidade, marketing digital, informática e IA',NULL,'Comercial',NULL,NULL,'Facebook','Não','R$3.000,00','Sim','Sim, Delciana Bandeira gerente da última empresa de confecções onde trabalhei 55996583460','Quero inscrever-me no banco de talentos da Young!','Estou escrevendo um livro que conta a trajetória de uma menina linda, mesmo com paralisia cerebral, era feliz e muito amada, que durou até os 21 anos, minha filha.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-08T16:27:00.000Z'::timestamptz),
  ('Alexandra Bezón Nuñez','alexandrabezon545@gmail.com',NULL,'53999625938','2006-01-10',20,'Solteiro(a)','0','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1LuZDG89NIzCe765Car5bfk7XWNHcVA84','Direito','Ensino Médio Completo','Urcamp - bagé','2028-12-28','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Estou me candidatando para meu primeiro emprego !',NULL,NULL,'Administrativa, Comercial, Estágio, Financeiro',NULL,NULL,'Instagram','Não','1412','Não',NULL,'Estágio Financeiro','Sou comunicativa, organizada e gosto de aprender coisas novas. Tenho conhecimento em Word, Excel e PowerPoint, além de saber usar o Canva para criação de materiais visuais. Possuo boa escrita e facilidade com redes sociais. Falo português nativo e tenho noções de espanhol.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-09T10:22:00.000Z'::timestamptz),
  ('Douglas Copini kroth','douglasck99@gmail.com',NULL,'55991301156','1999-01-08',27,'Solteiro(a)','0','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1N-B7IiGhGNikoXI_UTt6Hb1UGkP4jW9m','Engenharia de software','Ensino Superior Incompleto','Uniasselvi',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','RGE Sul Distribuidora de Energia/ eletricista de distribuição/ 11/08/2021- 17/02/2025/ instalação de medidores, troca de disjuntores, instalação de ramal de serviço, reparos em redes de Alta e Baixa tensão.
Comercial de Materiais de Construção Daronco LTDA / Repositor/ 12/09/2018 - 10/11/2020/ reposição de mercadorias, venda de mercadorias, auxiliar de marcenaria, auxiliar de carga e descarga.','Cursando engenharia de software na uniasselvi,
Curso profissionalizante em PHP na udemy,
Curso profissionalizante em JavaScript na udemy,
Cursando eletrotécnica na siriús politécnica',NULL,'Administrativa, Marketing, Engenharia',NULL,NULL,'Instagram','Não','3500','Sim',NULL,'Eletricista',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-09T13:24:00.000Z'::timestamptz),
  ('Vitória Oliveira de Oliveira','Oliveiravviqwe@gmail.com',NULL,'51998072562','2006-09-26',19,'União estável','0','Não','Caraá/rs','https://drive.google.com/uc?export=view&id=1q6bJPc5V4bxp_yZbwf3HJawdVO0GNDBs','Administração de empresas','Ensino Superior Incompleto','Faculdade São Francisco de Assis','2029-01-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Sou uma profissional com experiência na Prefeitura de Santo Antônio da Patrulha, no setor de Captação de Recursos e Convênios, atuando com rotinas administrativas, elaboração de documentos e atendimento ao público. Possuo facilidade com ferramentas como Excel, Word, PowerPoint e Canva. Atualmente, curso Administração, buscando aprimorar ainda mais meus conhecimentos na área.','Sou uma profissional com experiência na Prefeitura de Santo Antônio da Patrulha, no setor de Captação de Recursos e Convênios, atuando com rotinas administrativas, elaboração de documentos e atendimento ao público. Possuo facilidade com ferramentas como Excel, Word, PowerPoint e Canva. Atualmente, curso Administração, buscando aprimorar ainda mais meus conhecimentos na área.',NULL,'Administrativa, Estágio, Marketing, Novos Negócios',NULL,NULL,'Agência de Empregos','Não','1500','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Possuo facilidade com ferramentas como Excel, Word, PowerPoint e Canva.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-09T15:47:00.000Z'::timestamptz),
  ('Patrícia Fernanda Pinheiro Neves','patynanda2009@gmail.com',NULL,'53999748226','1988-07-19',37,'Solteiro(a)','1','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1ldEuTcMO8zTWx64IuIPYzbZ6SZHb1SBA','Administração de empresas','Pós-graduação Completa','Faculdade Sobresp em Santa Maria/RS','2019-07-22','Sou formado','Faculdade Sobresp/ assistente administrativo/01/04/2019 - 04/11/2024. Conciliação bancária, folha de pagamento, admissão e rescisão, contas a pagar e receber, Fies e Prouni, compras, obras.
Hotel Appel/ recepcionista/ 23/07/2019 - 06/10/2021. Check - in, checkout, abertura e fechamento de caixa.

Auttec/ vendedora /26/07/2017 - 09/10/2018 . Vendas de material elétrico, lançamento de NFs, controle de estoque, caixa, e serviços bancários.

Phase construções/ Aux.administrativo/ 19/10/2015 - 21/07/2017.Lançamento de NFs, controle de estoque, separar o material que seria usado em obras.

Auttec/ vendedora/ 03/05/2010 - 30/07/2015. Vendas de material elétrico, lançamento de NFs, Controle do estoque. 

CRM/ aprendiz do Senai/ 15/05/2006 - 02/02/2007. Aprendiz do Senai como eletricista.','Sou formada em Administração logo após já iniciei minha MBA em gestão de pessoas e marketing e fiz outra graduação em cooperativismo, antes de começar a faculdade fiz o curso técnico em enfermagem o qual me ajudou ao longo da minha carreira profissional.',NULL,'Administrativa, Financeiro, Engenharia',NULL,NULL,'Instagram','Não','$2500,00','Sim','Faculdade Sobresp, Diretor (55) 32141111

Hotel Appel, Diego proprietário (55) 991416393

Auttec e Phase, Moacir (55) 30272287','Administrativo ou RH','Quando morava em santa Maria, fui voluntária com os familiares da Kiss, com as chuvas do ano passado ajudava na separação de roupas e levava para as famílias afetas no bairros, aprendi a fazer ponto cruz, nas campanhas de vacinação do COVID, fiz nos estudantes da faculdade. Tô fazendo um curso de Power BI, e aprender a escrever com a mão esquerda.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-09T17:24:00.000Z'::timestamptz),
  ('Samuel Lucas Ferreira Valiente','lucasvaliente607@gmail.com',NULL,'53999374456','2004-05-04',21,'Solteiro(a)','0','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1ruxDo8rrleUoaxjY6apKytFK7sW3Iebu',NULL,'Ensino Médio Completo',NULL,'2022-12-13','Não, no momento pausei/parei por um período.','Jovem aprendiz – Peruzzo Supermercados 10/2019-07/2021   Término de contrato
(Empacotador e repositor de mercadorias)

Estágio – Clube Caixeiral De Bagé 12/2021-03/2022.  Término de contrato
(Portaria)

Jovem Aprendiz  – Serviço Nacional de Aprendizagem Industrial (SENAI) – Edificação Predial – Turno: Manhã 
Período: 04/2022-04/2023

RD Saúde (RaiaDrogasil S/A) 
Atendente I (Caixa)
Período – 05/2023-11/2024','Sou formado em pacote office básico tenho inglês básico pela Wizard',NULL,'Administrativa, Comercial',NULL,NULL,'Facebook','Não','2500-3500','Sim',NULL,'Comercial','Procuro uma oportunidade para desempenhar de maneira exemplar, toda as tarefas que me forem atribuídas. Sem colocar interesses pessoais acima dos interesses da empresa. Possuo uma grande disposição para apreender.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-10T00:13:00.000Z'::timestamptz),
  ('Josué Peixoto dos Reis','peixotodosreis@yahoo.com.br',NULL,'51996659366','1985-08-04',40,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1YHRaR4-8STITqI4rDTuPmByQG4bL6bto','Bacharel em Direito','Ensino Superior Completo','Ulbra Gravataí','2019-02-15','Sou formado','Meu último emprego foi num escritório de advocacia em que fiquei de setembro de 2022 até março de 2023. Já trabalhei também numa metalúrgica na função de auxiliar administrativo, de Janeiro de 2013 até junho do mesmo ano.',NULL,NULL,'Administrativa',NULL,NULL,'Agência de Empregos','Não','R$2.000,00','Não',NULL,'Assistente de compras','Treino artes marciais(karatê), corrida e musculação.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-10T18:23:00.000Z'::timestamptz),
  ('Eduarda Correa Soares','duducorreasoares992169@gmail.com',NULL,'53999015786','2004-05-14',21,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1uBSnsP83xY0L1Xrmqi5pKBnWbax4ZCPI',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Atacadaço-Vendedora externa (início:17/10/23) (final:12/08/24)
Prefeitura municipal de Bagé-Assessor administrativo (início:18/01/23) (final:08/23)
Estagiária centro administrativo (início:04/18) (Final:01/23)',NULL,NULL,'Administrativa, Comercial, Financeiro, Marketing',NULL,NULL,'Instagram','Não','2000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou ágil,gosto de aprender,de ensinar,gosto de finanças.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-10T18:59:00.000Z'::timestamptz),
  ('Graziela Jorge Lemos','grazielalemos1@gmail.com',NULL,'55996260941','2001-03-05',24,'Solteiro(a)','0','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=14Bj4rvPbyS4H0AKQpuqmcy9BUlfD4-JO',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Vendedor
Grazziotin S/A | Rio Grande do Sul, Bagé - RS
11/2024 - 12/2024
Assistente Administrativo
Hospital Tacchini | Rio Grande do Sul, Bento Gonçalves - RS
03/2023 - 11/2023
Controlar o fluxo geral do hospital
Caixa de Loja
Tribus | Rio Grande do Sul, Bento Gonçalves - RS
04/2022 - 03/2023
Fazer o caixa e organização do estoque
Vendedor / caixa
essencia jovem | Rio Grande do Sul, Bento Gonçalves - RS
12/2020 - 04/2022
Vendas e atendente de caixa','Gestão Financeira- 20h, técnico em administração- trancado',NULL,'Administrativa, Comercial',NULL,NULL,'Facebook','Não','2.000,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-10T22:34:00.000Z'::timestamptz),
  ('Carla lais alves carbajal','carlinha93alves@gmail.com',NULL,'984060165','1993-05-23',32,'Casado(a)','2','Não','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=132z-CzUmn1No21ichZEgUHNIkXNPGP4G',NULL,'Ensino Médio Completo','Nossa Senhora do livramento','2010-12-23','Não, no momento pausei/parei por um período.','Supermercado nierderauer',NULL,NULL,'Comercial',NULL,NULL,'Instagram','Nao','1800','Não','Padaria paz','Quero inscrever-me no banco de talentos da Young!','Sou mae trabalhadora so estou em busca de emprego para custear meus gastos','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-11T18:13:00.000Z'::timestamptz),
  ('Naima Rodrigues Moura','naimarodrigues93@gmail.com',NULL,'53991679256','1993-12-11',32,'Solteiro(a)','1','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1hQHtvrg1u79156h5PjXETbA50mC4C7zv',NULL,'Ensino Médio Completo','E E E M José Gomes Filho','2013-08-30','Não, no momento pausei/parei por um período.','Peruzzo super mercado 08/08/2018 até 04/12/2025 atendimento ao público',NULL,NULL,'Comercial',NULL,NULL,'Instagram','Não','O salário que for compatível ao meu setor de trabalho .','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Bom eu sou uma pessoa muito comunicativa, simpática sempre com o sorriso no rosto , gosto de desafios ,gosto de trabalhar com o público.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-11T18:45:00.000Z'::timestamptz),
  ('Sabrina corrales Buenavista','corralesbina@gmail.com',NULL,'55996142436','2003-05-29',22,'Solteiro(a)','1','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=10Zpy_kT9FShaDYZXFb_uQDGirhYl1v4a',NULL,'Ensino Médio Completo','Alceu wamosy','2020-12-23','Não, no momento pausei/parei por um período.','Walmart operador de loja  e posto larratea frentista e vendedora de roupas',NULL,NULL,'Comercial',NULL,NULL,'Instagram','Não','1800','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa tranquila, quero crescer dentro da empresa ,aprender a cada dia mais e mais ,ter oportunidades de desempenho e alcançar meu objetivos como profissional e como pessoal!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-11T20:28:00.000Z'::timestamptz),
  ('Ana Mercedes Gusmão Correia','anamercedesgusmao@hotmail.com',NULL,'55991478278','2001-02-06',25,'Solteiro(a)','2','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1UzFEzzogIVLLels0-6_ZfuufUxvQnqEd',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','1. Cartório de Registro Civil
 
Cargo: Intimador
Data de início: Fevereiro (sem data de término especificada, pois ainda estou trabalhando lá)
Principais atividades:
- Realizo intimações judiciais e extrajudiciais, garantindo a comunicação eficaz entre as partes envolvidas.
- Verifico e preparo documentos para intimações, assegurando a precisão e a conformidade com as normas legais.
- Entrego intimações em mãos ou por meio de outros meios legais, registrando as ocorrências e resultados.
- Mantenho registros precisos e atualizados das intimações realizadas, garantindo a transparência e a segurança dos processos.

2. Righi Supermercados

Cargo: Operadora de Caixa
Data de início: Outubro de 2023
Data de término: Maio de 2024
Principais atividades:
- Operei caixa e realizei transações financeiras com clientes.
- Forneci atendimento ao cliente e resolvi problemas relacionados às compras.
- Trabalhei em equipe para garantir a eficiência e a satisfação do cliente.',NULL,NULL,'Comercial, Marketing',NULL,NULL,'Facebook','Não','2000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Eu sou uma pessoa proativa e curiosa, sempre disposta a aprender e melhorar minhas habilidades. Além das minhas experiências profissionais, tenho habilidades em:

Idiomas: Português (nativo) e estou estudando Inglês.
Software: Conhecimento básico em Microsoft Office e Google Suite.
Trabalho voluntário: Participei de atividades voluntárias em minha comunidade, ajudando em eventos e projetos sociais. 
Habilidades adicionais: Sou uma pessoa organizada e detalhista, com habilidades em resolução de problemas e trabalho em equipe.

No meu tempo livre, gosto de ler, aprender novas coisas e explorar novos lugares. Acredito que a vida é uma jornada de aprendizado contínuo e estou sempre procurando novas oportunidades para crescer e melhorar.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-12T11:54:00.000Z'::timestamptz),
  ('Letícia Vidal Ferreira','vidalleticia666@gmail.com',NULL,'53999324217','1988-05-17',37,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1UUHu32RKl02PobTmXqkohvRh88WMPRsL','Psicologia','Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Olá vou colocar os últimos trabalhos 
Rosa areia -cargo vendedora 
Funções: atendimento ao cliente, foco em vendas, planejamentos de campanhas, viagens e compras, marketing digital, modelo, Lives entre outros. 
06/06/2024 ha 20/11/2024 
Lumina -cargo gerente comercial 
Funções: liderança e gerenciamento em equipe, planejamento de Lives e compras sp, organização e desenvolvimento em Lives. 
12/03/2023 ha 17/07/2024 
Entre outros: 
Mix bazar gerente comercial 
Mundo real gerente comercial 
Lojão total gerente comercial 
Líder gerente comercial 
Gestão de marketing digital loja on-line 
Fico a disposição para uma entrevista e conversa mais próxima. Grata',NULL,NULL,'Administrativa, Comercial, Financeiro, Marketing',NULL,NULL,'Facebook','Não','3.000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Estou sempre em busca de novos desafios e objetivos na minha vida. Sou solteira me dedico a minha casa e tempo livre gosto muito de viajar. Falo espanhol pois minha mãe é Uruguaia e tenho família. Sou proativa, me comunico bem, organizada, focada em sempre entrega um bom resultado… moro em bage, não tenho vícios e nem filho. Estou aberta a proposta e te mesmo pra mudar de cidade.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-12T15:44:00.000Z'::timestamptz),
  ('Juliana da Silva Amarillo Motta','jujuamarillo.ja@gmail.com',NULL,'55984519302','1983-10-21',42,'Casado(a)','2','Não','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1NQY_yZ6fD_19HZ3fuXQRYOtbQv0UJGFy',NULL,'Ensino Médio Completo','alceu wamosy','2004-12-20','Não, no momento pausei/parei por um período.','centro hospitalar santanense hotel emirates','atendimento ao publico',NULL,'Administrativa',NULL,NULL,'Facebook','nao','2400','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-12T21:40:00.000Z'::timestamptz),
  ('Patrícia Garcia de Oliveira','Pgfbage341@gmail.com',NULL,'53999964113','1977-09-07',48,'Divorciado(a)','1','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1oobVrF9xTmDCJ2FLpsAeb3vi3PX8LG9G','Serviço Social','Pós-graduação Completa','Faculdade Anhanguera','2016-04-16','Sou formado','Câmara Municipal de Vereadores de Bagé
Cargo: Assessora ParlamentarFunções: Atendimento às pessoas encaminhadas ao vereador; acompanhamento de assuntos do interesse; controle de documentos do gabinete, gastos com telefones, Xerox e correios e assessoramento às demandas do vereador.
Data de admissão: 03 de março de 1992
Data de demissão: 29 de dezembro de 2000

Editora Jornalistica Correio do Sul
Cargo: Auxiliar Administrativo
Funções: Comecei como vendedora e em seguida passei a auxiliar administrativo, responsável por realizar tarefas como elaborar relatórios e planilhas, receber e postar correspondências, organizar arquivos, preencher formulários e documentos. Com o passar do tempo assumi as funções do financeiro e RH.
Data de admissão: 01 de novembro de 2000
Data de demissão: 31 de dezembro de 2008

Santa Casa de Caridade de Bagé
Cargo: Técnica em enfermagem
Funções: Atendimento na prestação de cuidados aos pacientes em situações críticas e emergenciais, responsável por auxiliar as ações de promoção, reabilitação, prevenção e recuperação de saúde coletiva ou individual.Por aproximadamente 8 anos trabalhando somente no Pronto Socorro, após transferida para unidades de atendimento a pacientes clínicos. 
Data de admissão: 05/05/2010
Data de demissão: 08/12/2020

Hospital Mário Araújo/ Urcamp
Cargo: Técnica em enfermagem
Funções: Atendimento a pacientes internados, responsável por auxiliar as ações de promoção, reabilitação, prevenção e recuperação de saúde coletiva ou individualContratada para fazer as folgas, trabalhava em todas as unidades UTI, Clinica Adulto e Pediatria.
Data de admissão: 05/09/2013
Data de demissão: 10/01/2016

Secretaria Municipal de Assistência Social/ Bagé 
Cargo: Orientadora Social
Funções: Orientar e acompanhar as famílias e usuários que utilizam o serviço, bem como preencher fichas e avaliar o cadastro dos mesmos.
Data de admissão: 06/07/2016 
Data de demissão: 30/11/2016

UPA 24 Horas
 Cargo: Técnica em enfermagem
Funções: Atendimento na prestação de cuidados aos pacientes em situações críticas e emergenciais, responsável por auxiliar as ações de promoção, reabilitação, prevenção e recuperação de saúde coletiva ou individual.
Data de admissão: 09/03/2015
 Data de demissão: 19/01/2019

SAMU/BAGÉ RS 
Cargo: Técnica em enfermagem/ SocorristaFunções: Conhecer integralmente todos os equipamentos, materiais e medicamentos disponíveis na ambulância e realizar manutenção básica dos mesmos, executar prescrições médicas.Realizar check-list, diário, dos materiais, equipamentos e medicamentos da unidade móvel, estabelecer contato radiofônico (ou telefônico) com a central de regulação médica, conhecer a localização de todos os estabelecimentos de saúde, auxiliar a equipe nas imobilizações e transporte de vítimas, realizar medidas de reanimação cardiorrespiratória básica, entre outros.
Data de admissão: 20/01/2019 Data de demissão: Atuando atualmente (Concursada)

Support Life / Usina Pampa Sul - Candiota Cargo: Bombeira Civil/ Condutora de Veículo de Emergência
Funções: Atuar na prevenção de acidentes, conduzir ambulância quando necessário, realizar inspeções e manutenções em equipamentos de segurança, planejando rotas de fuga, orientar sobre medidas de segurança para os colaboradores da empresa.
Data de admissão: 28/08/2024
Data de demissão: 28/09/2024 
(contrato somente para período de manutenção).

Projeta Sul Pelotas / Usina ÂMBAR - Candiota Cargo: Bombeira Civil/ Condutora de Veículo de Emergência
Funções: Atuar na prevenção de acidentes, conduzir ambulância quando necessário, realizar inspeções e manutenções em equipamentos de segurança, planejar rotas de fuga, capturar animais peçonhentos, orientar sobre medidas de segurança para os colaboradores da empresa, fazer atendimento ambulatorial, verificação de sinais vitais, curativos e todo o atendimento de APH.
Data de admissão: 10/02/2025
Data de demissão: 30/04/2025 
(contrato somente para período de manutenção).

Support Life / Usina Pampa Sul - Candiota Cargo: Vigia 
Funções: Responsável pela fiscalização da entrada de colaboradores em espaços confinados, fazer registro minucioso das atividades desempenhadas no local bem como a conferência da documentação exigida e orientar sobre medidas de segurança para os colaboradores.
Data de admissão: 05/05/2025
Data de demissão: 16/05/2025 (contrato somente para período de manutenção rápida na usina.','Sou formada em Técnica de Enfermagem, Assistente Social, Bombeira Civil.

Porém já trabalhei como assessora parlamentar, recepcionista, setor de vendas, administrativo,  financeiro,  RH, departamento pessoal e recentemente fiz curso para trabalhar na SST (segurança do trabalho e enfermagem do trabalho).',NULL,'Administrativa, Financeiro, Marketing, Engenharia',NULL,NULL,'Facebook','Não','2.000,00','Não',NULL,'Vaga que tiver para Bagé-RS e o meu perfil se encaixe.','Sou Instrutora nos seguintes projetos sociais:

Projeto Brigada Mirim da Brigada Militar de Bagé, desde 2022 atuo como Instrutora Voluntária, minhas instruções de primeiros socorros, tem como objetivo ensinar como ajudar uma vítima de acidente ou mal súbito, com o objetivo de manter a vida, evitar o agravamento das lesões e até mesmo salvar vidas.
No curso de brigada mirim, nossos pequenos aprendem a realizar intervenções como avaliação do estado de consciência, respiração e circulação, controle de hemorragias, imobilização de fraturas, entre outros.

Projeto Bombeiro Mirim do Corpo de Bombeiros de Bagé, comecei em 2024 a atuar como Instrutora Voluntária, minhas instruções de primeiros socorros, tem como objetivo ensinar como ajudar uma vítima de acidente ou mal súbito, avaliação do estado de consciência, respiração e circulação, controle de hemorragias, imobilização de fraturas, entre outros.
Também auxilio os outros instrutores a desenvolver as outras matérias educação no trânsito, educação física, cuidados com os animais, educação ambiental, educação e saúde alimentar, combate ao uso de drogas, combate e prevenção ao bullying, ética e cidadania, civismo e valores.

Projeto Ensinar para Salvar – Primeiros Socorros com Ênfase na Lei Lucas, atuo desde 2023 como Instrutora Voluntária, capacito professores e demais profissionais que atuam em escolas, creches, berçários, ambientes de recreação do município, para saber identificar e agir preventivamente em situações de emergência e urgência médicas, até que o suporte médico especializado, local ou remoto, se torne possível.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-13T01:09:00.000Z'::timestamptz),
  ('franciele gomes','frangustavo40@gmail.com',NULL,'55999590372','1986-07-14',39,'Solteiro(a)','3','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=12vyPELwUanRW-8ufPhDWr8pq8Y9vZMxP',NULL,'Ensino Superior Incompleto','UNOPAR','2026-07-26','Não, no momento pausei/parei por um período.','Angelus funerária, na área administrativa',NULL,NULL,'Comercial',NULL,NULL,'Instagram','Não','3000','Sim','Hospital São Vicente de Paulo técnica enfermagem','Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-13T19:28:00.000Z'::timestamptz),
  ('Loren Natalli de Almeida Roque','roquenatalli@gmail.com',NULL,'55992389010','1999-09-28',26,'Solteiro(a)','2','Não','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1P2hZbniBmAHAh6tt2mV-Cfe7IzxOWIyt',NULL,'Ensino Médio Completo','Alceu Wamosy','2017-12-27','Não, no momento pausei/parei por um período.','Vendedora em loja de vestuário',NULL,NULL,'Administrativa, Comercial, Financeiro',NULL,NULL,'Instagram','Não','2,5','Não',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-13T23:55:00.000Z'::timestamptz),
  ('KAROLAINE RODRIGUES CARVALHO','karolainer98@gmail.com',NULL,'55996710881','1999-02-21',27,'Solteiro(a)','1','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1Z74qegcuFbwGX7l3aA2OvPiwK33qD1bt','Educação Física','Ensino Superior Completo','Anhanguera','2024-12-14','Sou formado','EMEI Joca Paiva
Cargo: Atendente / Estagiária
Principais atividades:
Atuei auxiliando professoras nas rotinas diárias da Educação Infantil, apoiando nas atividades pedagógicas, recreativas, higiene, alimentação e acolhimento das crianças. Também contribuía com a organização do ambiente escolar e dos materiais. Essa experiência foi essencial para desenvolver habilidades práticas ligadas à minha formação em Educação Física Escolar, especialmente no trato com o público infantil.

2) Consultório Odontológico Jefferson Maciel
Cargo: Secretária
Principais atividades:
Fui responsável pelo agendamento de consultas, recepção de pacientes, organização de prontuários, controle de pagamentos e atendimento telefônico. Desenvolvi habilidades administrativas e de atendimento, prezando sempre pela empatia, discrição e eficiência no contato com o público.

3) Cacau Show
Cargo: Vendedora
Principais atividades:
Atuei com vendas e atendimento ao cliente, organização de produtos, operação de caixa e reposição de estoque. Tive a oportunidade de aprimorar minhas habilidades em comunicação, persuasão, empatia e trabalho em equipe, especialmente em períodos de grande movimentação, como datas comemorativas.

4) Bardo Pub
Cargo: Atendente / Garçonete
Principais atividades:
Realizava atendimento ao público, anotação e entrega de pedidos, organização de mesas e suporte no ambiente do bar. Essa vivência contribuiu significativamente para o meu dinamismo, desenvoltura, agilidade e capacidade de manter a qualidade no atendimento mesmo sob pressão.','Sou graduada em Educação Física – Licenciatura pela Faculdade Anhanguera, com foco na atuação em ambientes escolares e no desenvolvimento motor, cognitivo e social dos alunos.
Também iniciei a formação técnica em Administração pelo SENAC (matrícula atualmente trancada), onde desenvolvi importantes habilidades organizacionais, de comunicação e gestão.
Curso de Informática – conhecimentos em pacote Office e ferramentas básicas digitais
Operador de Caixa – capacitação voltada ao atendimento ao público e controle de fluxo financeiro
Secretariado Administrativo e Contábil – com ênfase em rotinas administrativas e organização de documentos
A Arte de se Comunicar e de Vender Mais – curso voltado ao desenvolvimento de habilidades interpessoais e técnicas de atendimento e vendas',NULL,'Administrativa, Comercial, Financeiro',NULL,NULL,'Instagram','Não','1900','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-14T01:01:00.000Z'::timestamptz),
  ('Ariane Curtis dos Santos','arianecurtis87@gmail.com',NULL,'55999071505','1987-05-15',38,'Divorciado(a)','1','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1KqBFZhjk5g-Gtqf6jUvGIhAUId-RMP7q','Administração de empresas','Ensino Superior Incompleto','Anhanguera',NULL,'Não, no momento pausei/parei por um período.','Rede multicel - vendedora e gerente 
Trabalhava com a venda de planos de rede móvel vivo e também venda de aparelhos 

Sicredi- trabalhei como caixa 

Continental fomento mercantil- trabalhei na venda de empréstimos consignados

E também tive a experiência de caixa em supermercado vendedora em loja de roupas',NULL,NULL,'Administrativa, Comercial',NULL,NULL,'Instagram','Não','2500.00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho amplo conhecimento na área de vendas, sou uma pessoa bem comunicativa e que gosta de trabalhar com metas e desafios 
Sou uma pessoa focada e de bom desempenho com vendas','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-14T01:23:00.000Z'::timestamptz),
  ('Fernanda da costa Ortiz','nandazitro@gmail.com',NULL,'55991044401','2025-09-01',0,'Solteiro(a)','3','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1UkNV6x3SxH2YnlIYE9gC7eW86dIGsAYc',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Recepcionista da caixa econômica federal','Informática',NULL,'Novos Negócios',NULL,NULL,'Instagram','Nao','2000 a 3000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Dês de meus 17 anos trabalhando com público, meu primeiro emprego foi na caixa econômica federal, e assim permaneci por alguns anos entre idas e vindas tive algumas outras experiências profissionais, mas sempre trabalhando como recepcionista, secretaria e telefonista','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-14T01:27:00.000Z'::timestamptz),
  ('Emanoele Helena de Lima Portes','emanoelehelena@outlook.com',NULL,'21973617714','2000-08-03',25,'Solteiro(a)','0','Não','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=19Z_hDM7F_YCln7C_0YKwt9V5-eijxYyt',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Vivo: Vendas externas de planos de internet. Tendo o objetivo de satisfazer as necessidades do cliente. De Maio de 2023 à Dezembro de 2023
Farmácias São João: Balcofarmacista, tendo como maior objetivo o atendimento ao público, buscando agregar na compra os produtos oficiais da marca.
De Fevereiro de 2024 à Agosto de 2024
Pernambucanas: Assessor vendas. Atendimento ao público com vendas do setor de vestuário e produtos financeiros.
De Setembro de 2024 à Junho de 2025
Modazine: Vendedor Digital. Atendimento digital de venda de produtos de vestuário e produtos financeiros. Responsável pelas postagens dos produtos das empresas e criação de conteúdo digital.',NULL,NULL,'Marketing',NULL,NULL,'Instagram','Não.','2500','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou natural do Rio de Janeiro , moro em Livramento há dois anos. Fiz teatro por dois anos na minha adolescência , tenho inglês intermediário e nas horas vagas me dedico à fazer artesanatos e edições de fotos.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-14T03:32:00.000Z'::timestamptz),
  ('Ana Júlia Silva Moreira','aninhajsm91@gmail.com',NULL,'53999500343','2006-04-09',19,'Solteiro(a)','0','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1TSuFAx2zZs0Wt2QcwwOvqxzZdv0IaABT',NULL,'Ensino Médio Completo','E. E. E. B. PROF. JUSTINO COSTA QUINTANA','2024-12-20','Não, no momento pausei/parei por um período.','• Studio Mariah Martins - Recepcionista (11/2023 - 03/2024) - Recepcionar clientes, cuidar do caixa e registrar pagamentos, manter a recepção organizada, ser o elo de comunicação entre clientes e profissionais;
• ACIBa - Auxiliar administrativo (09/2024 - 01/2025) - Organizar documentos, elaborar planilhas e arquivos, auxílio na administração do app da empresa, suporte nas demandas do setor.','Curso de Qualificação Profissional para o Mercado de Trabalho - ACIBa',NULL,'Administrativa, Marketing, Engenharia',NULL,NULL,'Instagram','Não','R$2.000,00 +','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Informática básica, domínio de Word, planilhas, slides, canva etc.
Inglês básico.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-14T20:14:00.000Z'::timestamptz),
  ('Sabrina corrales','corralesbina@gmail.com',NULL,'55996142436','2003-05-29',22,'Solteiro(a)','1','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=15xSAElLEtdYZDF6_QnP0y7zsBHkzsELK',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Operador loja vendas de roupas e frentista',NULL,NULL,'Comercial',NULL,NULL,'Instagram','Nao','1800','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa tranquila estou a procura de novas oportunidades e crescimento gosto de aprender e me dedicar para alcançar meus objetivos','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-14T20:24:00.000Z'::timestamptz),
  ('Sabrina corrales','corralesbina@gmail.com',NULL,'55996142436','2003-05-29',22,'Solteiro(a)','1','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=12-rvEDA_gtvni33n0JBjxtm_tfTDFsNP',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Vendas de roupas ,frentista ,operador de loja',NULL,NULL,'Comercial',NULL,NULL,'Instagram','Nao','1800','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa tranquila gosto de trabalhar amo o que faço estou disposta a aprender e alcançar meus objetivos','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-14T21:07:00.000Z'::timestamptz),
  ('Daiana carneiro pino','daianapino96@gmail.com',NULL,'55996323040','1996-10-18',29,'Solteiro(a)','1','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=15tm6KIdxzcI8IXml6y8cC35wm67sZ96F','Economia','Ensino Superior Incompleto','Universidade Federal do Pampa','2026-07-10','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','.',NULL,NULL,'Administrativa, Comercial, Financeiro, Engenharia',NULL,'https://drive.google.com/open?id=1YaaU8ujuRtbeViL8_SUmhgBpkjSM48Ie','Instagram','Não','2000','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-15T02:27:00.000Z'::timestamptz),
  ('Luana Noble de Oliveira','luananoble@gmail.com',NULL,'53999217745','1999-02-23',27,'União estável','2','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1jLG3T-vhS1WvSeGTKg-0p5DSLm_QTl2I','Gestão Comercial','Ensino Superior Incompleto','UNIFAEL','2025-08-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Minha carreira iniciou aos 14 anos como vendedora de produtos PAP, em 2013. Até 2020 trabalhei de maneira informal, atuando como Designer Gráfico e vendedora de serviços PAP. Em 2020, comecei a prestar serviços online, seguindo vendendo produtos personalizados.
Em 2022, comecei meu primeiro emprego de maneira formal, no grupo Capacitar, onde atuei no Setor Comercial como Vendedoda de Cursos Profissionalizantes, por aproximadamente 1 ano, lidando com todas as fases da venda, da prospecção até o fechamento, passando depois para o setor administrativo da empresa, onde comecei como secretária, organizando contratos e prestando suporte aos alunos e professores. Em janeiro deste ano passei a liderar o setor, como coordenadora da escola até o momento.','Atualmente estou em processo de conclusão do curso de Gestão Comercial, na UNIFAEL. Tenho alguns cursos e certificações na área de vendas, mas atualmente atuo como gestora do setor pedagógico, tendo desenvolvido minhas habilidades para criação de processos e metodologias ágeis. Procuro novos desafios no mercado, para que eu possa mostrar minhas habilidades e cooperar para o crescimento da empresa.',NULL,'Administrativa, Comercial',NULL,NULL,'Facebook','Não','2500','Sim','Maicon Borges +55 53 9948-0089','Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-15T07:57:00.000Z'::timestamptz),
  ('Alessandra Dworakowski Azambuja','aledworakowski1@gmail.com',NULL,'53991594099','1990-11-14',35,'Solteiro(a)','1','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1anTneenzOH53DiLt2j3jGabZQE1SZ6HZ',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','ESCRISUL
Função: TeleVendas
Período: 12/2021 á 08/2024
Atendimento ao cliente online via
whatsapp, email e telefone, venda de
materiais de limpeza, escritório e
papelaria para clientes cnpj.',NULL,NULL,'Comercial',NULL,'https://drive.google.com/open?id=1AYlkpP75iHcyLrYtYze57H2ciqkUFbdx','Instagram','Não','1700','Sim',NULL,'Comercial','Profissional com muitos anos na área
comercial, com conhecimento e vasta
experiência em vendas e gestão,
focado em maximização de resultados
e a entrega do mesmo!
Auto-motivado, conhecimento em
pacote office e facilidade com rotinas
administrativas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-15T13:05:00.000Z'::timestamptz),
  ('Alessandra Farias de Lima','alessandralima161@hotmail.com',NULL,'53999942865','1994-07-30',31,'Solteiro(a)','0','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1bQGf-qf0T5UHRqkCpbTALOgb7oLQ-mVt','Técnico','Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Santa Casa de caridade de Bagé, desde 2018 até o momento, atuando como técnica em enfermagem.','Formada em técnico em enfermagem, atuando na área há 7 anos. Também tenho certificação em Secretariado Informatizado e informática.',NULL,'Comercial',NULL,NULL,'Instagram','Não','Compatível com a função.','Não',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-15T22:23:00.000Z'::timestamptz),
  ('Cauã Melo Lopes','lopesmelocaua@gmail.com',NULL,'55991752402','2004-03-02',21,'Solteiro(a)','0','Não','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=16z55Lm1jTHABx7DL6xDblOx1sBVumwIl','Ciência da Computação','Ensino Superior Incompleto','Universidade de Cruz Alta-UNICRUZ','2026-07-27','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Unicruz/ Estagiário/ 02/2023 até 12/2024/ Auxiliar de Gerenciamento de Ambientes de Aprendizagem Virtual e Atendente de TI',NULL,NULL,'Administrativa, Estágio',NULL,NULL,'Instagram','Não','2500','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-16T14:38:00.000Z'::timestamptz),
  ('Alania Irala Lopes','alaniailopes@gmail.com',NULL,'55984081835','1998-05-23',27,'Solteiro(a)','1','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1i0fAs1fLfEhKJnNmvZK2WNrU-zOgJJEW','Ciência e Tecnologia de Alimentos','Pós-graduação Incompleta','Universidade Federal do Pampa','2024-10-04','Sou formado','1) Camil alimentos 
2) laboratorista 
3) 12/2024 - 05/2025
4) laboratorista, realizações de análises do recebimento de grãos','Pós graduanda em Auditoria e Controle de Qualidade Industrial',NULL,'Administrativa, Comercial, Novos Negócios, Engenharia',NULL,NULL,'Instagram','Não','2200','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou Alania, tenho 27 anos, estou a procura de um emprego, sou bem comunicativa proativa ágil e estou a disposição para conversarmos sobre a vaga','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-16T16:52:00.000Z'::timestamptz),
  ('Mateus Barreto de Ávila','mateus.barreto.deavila@gmail.com',NULL,'53991784000','1998-11-08',27,'Divorciado(a)','1','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1nYgzDqhsI_2_iTLcdKH0MgHcSN_36zFh','Administração de empresas','Ensino Superior Incompleto','UNICESSUMAR','2028-01-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Lojas ASM
Cargo: Vendedor – Setor de Telefonia
Período: 2017 a 2019
Principais atividades:
Atuei diretamente no atendimento ao público com foco em vendas de aparelhos celulares, planos e acessórios. Prestei suporte técnico básico, esclarecendo dúvidas sobre produtos e serviços. Desenvolvi habilidades em negociação, comunicação e relacionamento com o cliente, contribuindo para o alcance de metas da equipe e fidelização da clientela.

2) Lojas Obino
Cargo: Auxiliar de E-commerce
Período: 2019 a 2021
Principais atividades:
Atuei no setor de e-commerce, realizando o cadastro e atualização de produtos nas plataformas digitais, acompanhando pedidos, prestando atendimento ao cliente e dando suporte à logística. Também participei da criação de descrições e imagens para anúncios, o que despertou meu interesse por marketing digital e me incentivou a buscar especialização na área.

3) Igreja Assembleia de Deus
Cargo: Auxiliar Administrativo
Período: 2022 a 2024
Principais atividades:
Desempenhei atividades administrativas internas, como organização de documentos, controle de agendas, apoio em eventos e reuniões, atendimento aos membros da igreja e suporte à liderança em demandas operacionais. Também atuei na comunicação institucional, contribuindo com a produção de conteúdos para redes sociais e materiais informativos. Essa experiência reforçou minha disciplina, senso de responsabilidade e compromisso com o trabalho em equipe e a missão da organização.

4) Alliance
Cargo: Sócio e Gestor de Marketing
Período: 2024 – Atualmente
Principais atividades:
Recentemente, fundei em sociedade a Alliance, um projeto voltado à área de marketing e estratégias digitais. Na empresa, atuo como responsável pela gestão de tráfego pago, criação de criativos no Photoshop e edição de vídeos para redes sociais utilizando ferramentas como o CapCut. A Alliance surgiu com o objetivo de oferecer soluções inteligentes e criativas para negócios que desejam se posicionar com mais força no ambiente digital. Essa experiência tem consolidado minha atuação como empreendedor e especialista em comunicação estratégica, unindo teoria, prática e visão de mercado.','Atualmente, estou cursando Administração, uma área que escolhi por acreditar na importância de unir estratégia, gestão eficiente e visão empreendedora para alcançar resultados sustentáveis em qualquer projeto ou negócio. Ao longo da minha trajetória, venho complementando minha formação acadêmica com cursos técnicos e práticos, que me permitem atuar de forma multidisciplinar, especialmente nas áreas de marketing digital e produção de conteúdo.

Tenho certificação em Tráfego Pago, com foco em campanhas no Meta Ads e Google Ads, o que me permite planejar e executar estratégias eficientes para atração e conversão de público-alvo. Além disso, domino a criação de criativos visuais para redes sociais utilizando o Photoshop, desenvolvendo peças com apelo estético e alinhadas com a identidade de marca de diferentes perfis e segmentos.

Na produção de conteúdo audiovisual, realizo edição de vídeos diretamente pelo celular, com domínio do aplicativo CapCut, o que me possibilita entregar materiais dinâmicos e prontos para publicação, com agilidade e qualidade, especialmente para reels, stories e vídeos curtos — formatos que estão em alta nas plataformas digitais.

Mais do que técnicas, trago comigo uma mentalidade criativa, analítica e empreendedora, com olhar atento às tendências de mercado e comportamento do consumidor. Sou uma pessoa movida por desafios, que aprende rápido, se adapta com facilidade e busca constantemente aprimorar suas habilidades, tanto no universo digital quanto na gestão de negócios.',NULL,'Administrativa, Comercial, Marketing, Novos Negócios',NULL,NULL,'Carolini Cantos','Carolini Cantos','R$ 3.000 a R$ 4.000','Sim','Referências Profissionais

José Airton Menezes
Diretor da Lojas ASM
+55 53 99972-1123

Pedro
Gerente do setor de E-commerce – Lojas Obino
55 53 99122-6034

Jeferson Dutra
Ex-Vereador
+55 55 99945-9600

Pastor Nelson
Presidente da Igreja Evangélica Assembleia de Deus em Bagé
+55 55 99958-5262','Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa curiosa por natureza. Gosto de aprender, testar coisas novas e estar sempre em movimento. Trabalho com marketing digital, design e edição de vídeo, mas também estou cursando Administração, porque acredito que entender de negócios é essencial pra crescer com propósito.

Tenho facilidade com ferramentas como Photoshop e CapCut, além de experiência prática com tráfego pago e redes sociais. Hoje sou sócio da Alliance, um projeto que nasceu da vontade de empreender e entregar resultados reais no digital — e tá sendo uma jornada cheia de aprendizado e evolução.

No meu tempo livre, curto jogar um game, sair pra comer em algum restaurante à noite, ler livros que me fazem pensar diferente e ficar ligado nas notícias — tanto do mundo em geral quanto do universo das criptomoedas, que me interessa cada vez mais. Gosto de entender tendências, acompanhar o que está acontecendo e me manter sempre atualizado.

Sou do tipo que não espera tudo estar perfeito pra começar. Se tem um desafio, eu vou lá, encaro e aprendo no processo.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-16T21:39:00.000Z'::timestamptz),
  ('Patrícia Da Silva Fagundes','patriciasilvafagundes@gmail.com',NULL,'53991411806','1994-03-27',31,'Solteiro(a)','1','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1e4ec-bRM42mHZ3ehD5l10TIiaXwuraIY',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Frimesa Cooperativa Central
Promotora de vendas
17.07.2023 a 11/07/2025
Wms supermercados do Brasil 
Fiscal de caixa
16.04.2016 a 01.08.2022','Curso de administração estratégica 
Curso de atendente na área de saúde e farmácia',NULL,'Comercial',NULL,NULL,'Facebook','Não','A combinar','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Me chamo Patrícia, tenho muitas experiências profissionais em bastantes áreas diferentes. Mais me identifico muito com a área de atendimento ao cliente.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-17T00:52:00.000Z'::timestamptz),
  ('Gabriela Souza','gabrielasouza.trabalho@outlook.com',NULL,'51995287883','2003-12-06',22,'Solteiro(a)','0','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1zlI6IhL8pjdYDPEaNpwNem-nh7jVTS3-','Gestão de Recursos Humanos','Ensino Superior Completo','Unicesumar','2025-03-01','Sou formado','Estagiário de Recursos Humanos – Alisul Alimentos.
Funções: Arquivamento de documentos, atendimento de colaboradores, contato
telefônico com candidatos a vagas e colaboradores, marcação de exames de novos
colaboradores, inserir informações em planilhas de indicadores de RH, integração de
novos funcionários, conferência e ajuste no ponto dos colaboradores, acompanhar e
executar entrevistas de candidatos a vagas, preparação de documentos de admissão,
preparar pedidos de marketing, criar ordens de compra, controlar e contar estoque de
itens de marketing, receber mercadorias de marketing, controlar e protocolar notas e
boletos.
Período: 25/09/2023 até 24/09/2024.

Jovem Aprendiz – Atacadão.
Funções: Arquivamento de documentos e organização do arquivo-morto, atendimento
de candidatos e colaboradores, contato telefônico com candidatos a vagas e
colaboradores, marcação de exames de novos colaboradores, preparação de
documentos, aplicação de contratos e entrega de benefícios.
Período: 26/10/2021 - 06/06/2023.','Aprendizagem Profissional em Bens, Comércio, Serviços e Turismo – Senac
(26/10/2021 - 06/06/2023).
Operador de Computador – Informatize (13/09/2017 - 06/12/2017)
Inglês – Yázigi (julho – dezembro de 2019).',NULL,'Administrativa',NULL,NULL,'Instagram','Não','1800','Sim','Alisul Alimentos, (51) 2123-1400.
Atacadão, (51) 3553-3200.','Quero inscrever-me no banco de talentos da Young!','Sou uma profissional com excelente capacidade de comunicação, facilidade na aprendizagem de novas rotinas e agilidade ao solucionar problemas.
Experiência em rotinas administrativas, as quais foram aprimoradas durante o curso como Jovem Aprendiz e Estágio em Recursos Humanos, entre outros cursos de especialização, assim como também, através da graduação em Gestão de Recursos Humanos.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-18T00:53:00.000Z'::timestamptz),
  ('Aline Rosa De Góes','Agoes458@gmail.com',NULL,'51999182194','2001-06-20',24,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1ezFJc58DV-8W3dsy1OG7rpBUc5ahtQpo',NULL,'Ensino Médio Completo','Colégio Estadual General Hipólito Ribeiro','2018-01-06','Não, no momento pausei/parei por um período.','Meu primeiro emprego foi como vendedora, comecei no ano de 2021 na Gathi Calçados em Bagé/RS, onde permaneci até 11/03/25, foi meu primeiro e único emprego até o momento, meu trabalho lá era caracterizado por vendas, organização, interação social, pró-atividade, metas, e sempre consegui desenvolver um ótimo trabalho dentro da empresa, sai de lá em busca de novas oportunidades, de querer conquistar uma estabilidade melhor, e poder desenvolver um crescimento profissional maior.','Curso de informática',NULL,'Administrativa, Comercial',NULL,NULL,'Facebook','Não','2.500','Não','Gathi Calçados 
53 32415000','Quero inscrever-me no banco de talentos da Young!','Me Chamo Aline Rosa de Góes, tenho 24 anos, sou natural de Pinheiro Machado/RS, atualmente resido em Bagé/RS, tenho ensino médio completo, curso de informática, curso auxiliar administrativo, meu primeiro emprego foi como vendedora de loja, onde permaneci até o ano atual de 2025, sai da empresa em busca de novas oportunidades, de um emprego que me proporcione uma estabilidade melhor e possa ter chance de crescer dentro de uma empresa, sou uma pessoa muito pró-ativa, responsável, dedicada, tenho facilidade de aprendizagem, procuro fazer o melhor em tudo o que me é oferecido, e vi na Young uma grande empresa pra realizar esse objetivo da minha vida profissional.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-19T16:56:00.000Z'::timestamptz),
  ('Alana Veiga Ferreira','alanaferreira136@gmail.com',NULL,'53999688670','2002-08-19',23,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1WViswNjVsOHx0nOliq4rgULLDm_Ck5XF','Técnico em administração','Ensino Médio Completo','Senac - RS','2024-05-20','Sou formado','Clínica Dentsul - Recepcionista (Estágio 2020 - 2022);
Atendimento presencial, telefônico e via WhatsApp dos clientes; Controle de caixa,
realizando a conferência e o fechamento diário de valores; Entrega de recibos,
cupons fiscais e demais documentos.
Coopersul - Recepcionista ( Estágio 2022 - 2023)
Receber e direcionar chamadas telefônicas, atender cooperado e público interno;
Organizar e atualizar arquivos físicos e digitais.
Lotérica Severo - Operadora de caixa (2023 - 2025)
Atendimento direto ao público; Recebimento de contas, boletos e jogos; Abertura e
fechamento de caixa e organização do setor; Emissão de relatórios, comprovantes e
organização de documentos para caixa','Administração - Senac 
Informática e Pacote Office - Microsoft Word, Excel, PowerPoint.
Curso de Atendimento ao Cliente e Técnicas de Comunicação.',NULL,'Administrativa, Comercial, Financeiro, Licenciamentos',NULL,NULL,'Instagram','Não','1.500','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma profissional comprometida, com experiência nas áreas de atendimento ao público, recepção e operação de caixa. Atuei como recepcionista, desenvolvendo um bom relacionamento com clientes e visitantes, organizando agendas, prestando informações e auxiliando na rotina administrativa com atenção e responsabilidade. Também trabalhei como operadora de caixa, sendo responsável pelo registro de vendas, manuseio de valores, organização do ambiente de trabalho e atendimento direto ao cliente com agilidade e educação. Tenho facilidade de adaptação, sou pontual, comunicativa e estou sempre disposta a aprender e contribuir com o crescimento da empresa','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-20T17:13:00.000Z'::timestamptz),
  ('Pamela de Souza Rodrigues','pamelaarodrigues85@gmail.com',NULL,'55991773877','2005-06-11',20,'Solteiro(a)','0','Não','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1f0yjmmzzKkBiUnMpuUEiInO08vHQxFFJ','Administração','Ensino Médio Completo','Uniasselvi','2029-07-21','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1-gold Merchandising,operadora de caixa 22/07/2023 até 02/04/2024
2-spar Brasil promotora de vendas 27/07/2024 até 16/04/2025
3-mazinni promotora de vendas emprego atual','Em andamento',NULL,'Administrativa, Comercial, Licenciamentos, Marketing',NULL,NULL,'Instagram','Nao','1600','Sim',NULL,'Consultor de vendas',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-21T15:49:00.000Z'::timestamptz),
  ('Mariana Bonazza Fantoni','marianafantoni8@gmail.com',NULL,'48992187954','1999-08-31',26,'Solteiro(a)','2','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=19a7Gyf2lIznJxRmF1G4SC4XovucIodAT',NULL,'Ensino Médio Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Vendedora Ferragem Pizarro',NULL,NULL,'Comercial',NULL,NULL,'Instagram','Não','1.740','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-21T16:06:00.000Z'::timestamptz),
  ('Paula Chaves Hernandes','paulachaves41147@gmail.com',NULL,'53991183553','1981-01-21',45,'União estável','0','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1VlHPOHZr9t6XAK16Jt75b2DoBxN1ozTZ',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Vendedora',NULL,NULL,'Administrativa, Comercial, Financeiro',NULL,'https://drive.google.com/open?id=1t5PrJPNPkjZco7HqfYaUkZDUhNXPIsYC','Instagram','Não','Salário da categoria','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-21T22:33:00.000Z'::timestamptz),
  ('Pedro Siqueira','pedrosiqueiraa75@gmail.com',NULL,'53999722950','2004-04-15',21,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=15Jlt55PPDD-RuXWJH-r56mG9gB0tZeNE',NULL,'Ensino Médio Completo',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Eu trabalhei na Impresa Imperial Tapetes e Interiores, eu era Assistente de Ecoomerce e Vendas! Trabalhei 3 meses lá minha funções eram comandar o site, fazer gestão de pedidos e fechar vendas.',NULL,NULL,'Administrativa, Financeiro',NULL,NULL,'Instagram','Não fui','R$1.000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Eu Tenho um curso de automação de mensagem(chat bot), Sei um pouco sobre planilhas, estudo programação em C sei o básico de informática gosto muito de aprender coisas novas, sou proativo e tenho facilidade com mudanças!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-22T14:24:00.000Z'::timestamptz),
  ('Larissa Borba','larissaoborba@gmail.com',NULL,'51996539204','1996-05-12',29,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1wxS64LjX_dlPTSTXj6tTvmWFVUK7ABZS','Administração de empresas','Ensino Superior Incompleto','Uniasselvi','2026-07-23','Não, no momento pausei/parei por um período.','Minha área profissional sempre foi voltada para área de imobiliárias e incorporadoras. Trabalhei por 3 anos e meio em uma imobiliária,  no atendimento e também fazendo os financiamentos bancários, depois por 5 anos em uma Incorporadora de Santo Antônio,  sai de lá e fui trabalhar em outra por maus 2 anos e depois 1 e meio em uma construtora.',NULL,NULL,'Administrativa, Comercial, Novos Negócios, Engenharia',NULL,NULL,'Instagram','Nao','3.000,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-23T20:57:00.000Z'::timestamptz),
  ('Shayane dos Santos Vasconcelos','shayanevasconcelos@gmail.com',NULL,'11990232732','2005-08-11',20,'Solteiro(a)','0','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1xGayIInWfaACY1ef1035fc62IdnLWfq3',NULL,'Ensino Médio Incompleto','Silveira Martins',NULL,'Não, no momento pausei/parei por um período.','Operador de caixa
Nicolini - Bagé
• Responsável pelo atendimento ao cliente, registrando as compras e recebendo o pagamento.
• Abertura e fechamento do caixa, conferindo a correspondência dos valores com as formas de pagamento.
• Controle de caixa, incluindo abertura, fechamento e reconciliação ao final do expediente, seguindo os procedimentos estabelecidos.
Operadora de loja
Mercado vitoria - Suzano, SP
• Responsável por manter a organização da loja, garantindo a reposição de produtos nas prateleiras, vitrines e área de vendas.
• Organização dos produtos na loja, contribuindo para a apresentação adequada aos clientes.
• Responsável por atender o cliente na loja e oferecer opções de acordo com as expectativas, buscando a satisfação com a compra.','Workshop Online, pela agência de empregos Carlos Moreira.
• Noções Básicas De Culinária E Empreendedorismo, pela remar Brasil.',NULL,'Estágio',NULL,NULL,'Agência de Empregos','Não.','R$1.500','Sim','Mercado Vitória- suzano sp. Contato: ‪+55 11 99979‑6713‬','Estágio.',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-23T22:29:00.000Z'::timestamptz),
  ('Lídia Maressa Ferreira','lidianeves063@gmail.com',NULL,'53999349423','2001-12-22',24,'Casado(a)','0','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=13bCdpKUpwGIWpXMDy0Tm0zGeSkaQIFtb','Curso profissionalizante','Ensino Médio Completo','Instituto mix','2026-12-25','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Loja ASM cargo vendedora (2018 a 2021.) Trabalhei nessa empresa como vendedora, auxiliar e também colaborava na área administrativa da loja. Foi minha primeira experiência com as vendas e foi muito importante para meu crescimento .','Já cursei vendas,  e atualmente estou fazendo cursos para melhorar minhas habilidades',NULL,'Administrativa, Comercial, Marketing, Engenharia',NULL,NULL,'Indicação','Não','1600','Sim','Brenda gerenta  ( 53 91326592)','Quero inscrever-me no banco de talentos da Young!','Gosto muito de música, toco violão  nas horas  vagas. Tenho bastante conhecimento do idioma espanhol ( sou fluente) sou evangélica frequento uma igreja .Gosto de esportes e fazer exercícios.  Gosto muito de fazer caminhada e cantar ( faço aulas de canto e instrumento)','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-23T22:35:00.000Z'::timestamptz),
  ('Gabriel da silva sales','gabesilva1212@gmail.com',NULL,'55984690611','2004-12-12',21,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1NTKtqMIswTmnuCtUuiIlY0BdbSFaasms',NULL,'Ensino Médio Completo','eja','2024-05-10','Não, no momento pausei/parei por um período.','Secretaria da fazenda- setor de protocolos
01/02/2022
arquivamento de documentos e atendimento ao cliente 
Exército brasileiro- administrativo 
01/03/2023
controles de viaturas e documentos','gestão empresarial marketing digital',NULL,'Administrativa, Comercial, Estágio',NULL,NULL,'Agência de Empregos','nao','2000','Sim',NULL,'Comercial','meu nome é gabriel, tenho 20 anos, gosto de trabalhar em equipe, facilidade com documento, pratico esporte, treino na academia, sou colorado, tenho ambição de aprende','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-24T13:17:00.000Z'::timestamptz),
  ('Edna Tauane da Silva Camacho','edna_tauane_@hotmail.com',NULL,'55999205882','1995-04-01',30,'União estável','2','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1D_Q6GkDJCq7t7qApggTLqypVRla4j5hP','Administração de empresas','Ensino Superior Incompleto','Universidade Federal do Pampa - Unipampa','2025-08-29','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Senff- Promotora de vendas de cartões
Righi- caixa 
Filipe Goes- Auxiliar administrativo 
Goes Advocacia- Auxiliar administrativo',NULL,NULL,'Administrativa, Comercial, Financeiro, Marketing',NULL,NULL,'Agência de Empregos','Não','R$1.800,00','Não',NULL,'Comercial','Gosto de aprender e estou sempre buscando formas de me desenvolver, tanto pessoal quanto profissionalmente. Atualmente, estou no 9º semestre do curso de graduação em Administração pela Universidade Federal do Pampa (UNIPAMPA) e tenho formação técnica em Administração, além de diversos cursos complementares, como Excel avançado, Word e rotinas administrativas. Tenho boa familiaridade com computadores e facilidade para me adaptar a novas ferramentas e sistemas.

Sou uma pessoa comunicativa, organizada, curiosa e interessada em entender como as organizações funcionam, especialmente nas áreas de atendimento, processos internos e comportamento humano no ambiente corporativo.

Acredito que todo conhecimento, mesmo que adquirido fora da sala de aula, pode contribuir para nossa atuação profissional e para um ambiente de trabalho mais produtivo e colaborativo.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-24T14:36:00.000Z'::timestamptz),
  ('Jonathan Brandão','jojocelu@gmail.com',NULL,'055935051177','1997-03-20',28,'Solteiro(a)','2','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1irguErM5v8z22q1rsQMSRdxFGgsFI_8f',NULL,'Ensino Médio Completo',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Supervisor Vendas externas - Representante Vero Internet 2024 - 2025
esenvolver estratégias baseadas em dados para expandir o mercado, focando em análise de clientes ativos e inativos. Isso envolve identificar padrões de consumo, segmentar o mercado, e entender as razões por trás da desistência de clientes. A partir daí, 
criar campanhas de aquisição e retenção mais eficazes.','Básico Designer gráfico Rede Data Work
Informática Rede Data Work
Básico em Administração Rede Data Work
Eletricista Predial, Industrial e eletroeletrônica Senai RS',NULL,'Administrativa, Comercial, Novos Negócios',NULL,NULL,'Facebook','nao','2500 3000','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-24T19:00:00.000Z'::timestamptz),
  ('Guilherme Inchausp Moreira','guiinchausp00@gmail.com',NULL,'55984041592','2000-01-18',26,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1YJo2nL6JIAlZVF0fO52lM6yIlG2WnX8g','Gestão Pública','Pós-graduação Completa','Universidade Federal do Pampa - UNIPAMPA','2020-02-15','Sou formado','1.  Secretaria Municipal de Saúde de Santana do Livramento; 2. Estagiário; 3. julho de 2018 a dezembro de 2019; 4. Realização de planejamento de compras a partir 
da revisão de controles de entrada e saída de materiais, além da realização de compras emergenciais, conforme demanda de instâncias superiores; Emissão de autorizações de empenho; Controle de entrada e saída de itens, conforme Atas de Registro de Preço e Contratos; Elaboração de requisições de processo licitatório; Emissão de memorandos.


1. Câmara de Vereadores Municipal de Sant''Ana do Livramento; 2. Assessor Parlamentar; 3. 04/01/2021 - 01/01/2025; 4.  Realização de projeções e análises com base em dados. Trabalho com enfoque no orçamento público municipal. Participei da relatoria das seguintes peças orçamentárias: PPA 2022/2025, LOA 2022, LDO 2025 e LOA 2025.Conhecimentos avançados em orçamento impositivo municipal. Atuação voltada para a transparência no setor público, trazendo ideais que busquem inovar e democratizar o acesso à informação.','Sou formado em Gestão Pública, com especialização em Gestão Pública Municipal pela FURG. Trabalhei durante um ano e meio como estagiário de compras públicas na Secretaria Municipal de Saúde, e por quatro anos como assessor parlamentar no Poder Legislativo de Sant''Ana do Livramento, realizando análise de projetos, emissão de pareceres técnicos, atendimento ao público, entre outras atribuições. Durante esses anos, realizei cursos voltados para o orçamento público, de modo a aperfeiçoar o meu desempenho profissional.',NULL,'Administrativa, Financeiro',NULL,NULL,'Facebook','Não.','R$3.000,00','Não','Sandra Denize Cardoso - (55) 99618-8996 - Contadora da Prefeitura Municipal de Sant''Ana do Livramento e responsável pelo meu estágio.

Fábio Augusto Souza - (55) 98428-6158 - Diretor Geral do Poder Legislativo Municipal de Sant''Ana do Livramento','Quero inscrever-me no banco de talentos da Young!','Eu acho difícil falar sobre si, mas procuro ser uma pessoa responsável, que trabalha em equipe e que sempre está procurando aprender e se aperfeiçoar. Um software específico que utilizei muito no estágio e no Legislativo é o Excel, além de programas de inteligência artificial mais recentemente. Fiz quatro anos de curso de língua inglesa, mas estou com pouca prática neste momento. Compreendo e falo bem espanhol, mas ainda preciso melhorar a escrita. Faço trabalho voluntário através do Rotaract Club de Livramento União, entidade em que jovens se reúnem para realizar ações sociais em prol dos mais necessitados.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-24T19:03:00.000Z'::timestamptz),
  ('Giulia Borges Feijó','giulia.borges1206@gmail.com',NULL,'53991414279','2000-06-12',25,'União estável','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1hHEtkR4MolBfIVnpyz1Q9mF6U3aAcAVv','Gestão de recursos humanos','Ensino Superior Incompleto','Unifatecie','2026-12-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Prefeitura Municipal de Bagé
Assistente Administrativo
● Atendimento ao público e orientação de demandas diversas.
● Digitalização, organização e arquivamento de documentos.
● Apoio nas rotinas administrativas do setor.
● Responsável pelo treinamento de novos funcionários aprovados em concurso público.
● Utilização do sistema de gestão DBSeller, com acesso pleno às funcionalidades
administrativas.
● Elaboração de manual de usuário do sistema DBSeller, com instruções detalhadas para
padronizar e facilitar o uso interno.
Clínica Odontológica – Bagé/RS
Secretária Administrativa
● Agendamento de consultas e atendimento ao público.
● Criação de cadastros de pacientes, emissão de boletos e realização de cobranças.
● Organização administrativa e suporte direto à equipe clínica.
● Controle de estoque de materiais e insumos, com realização de pedidos conforme
necessidade.
● Organização das contas a pagar, com controle de vencimentos e fluxo de caixa.
● Responsável pela organização e limpeza do consultório, garantindo um ambiente adequado
para os atendimentos.
Cadora Assessoria Imobiliária – Bagé/RS
Corretora e Avaliadora de Imóveis
● Atendimento ao cliente e suporte personalizado.
● Negociação, venda e locação de imóveis.
● Análise de documentação e redação de contratos.
● Realização de vistorias e acompanhamento de processos.
● Gerenciamento de redes sociais e ações de marketing digital.',NULL,NULL,'Administrativa',NULL,NULL,'Instagram','Não','3.500','Não',NULL,'Coordenador de vendas',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-24T23:48:00.000Z'::timestamptz),
  ('THAYNÃ BARBOSA','tb84175@gmail.com',NULL,'53999923146','1998-07-17',27,'Casado(a)','1','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1yWr5tDT2TOp87sR-I8wm0XfY95SwXjVl',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','1 Dalé imobiliária 
2 corretor de imóveis 
3 06/23 - 08/24
4 prospeção de clientes, atendimento, fechamento , pós vendas','Técnico em transações imobiliárias',NULL,'Comercial',NULL,NULL,'Agência de Empregos','Não','2500','Não','Rede de farmácias Agafarma, fiz um excelente trabalho de prospecção 53 99953-9463','Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-27T03:35:00.000Z'::timestamptz),
  ('Ana Júlia Rodrigues chaves','ana.juhchaves18@gmail.com',NULL,'55984349353','2001-02-13',25,'União estável','1','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1zDf0F4D4Lbtjy9g0VZjMTHw_rJcZ2MLu','Administração de empresas','Ensino Superior Completo','Urcamp','2023-12-20','Sou formado','Nação verde Santana do livramento 
Vendedor/gerencia 
27/11/2019 até 20/08/2024
Treinamento e desenvolvimento de equipes de atendimento, promovendo melhorias contínuas na qualidade do serviço.
Gestão de equipe, com foco em resultados e cumprimento de metas estabelecidas.
Responsável por operações de caixa, controle de pedidos e reposição de estoque.
Atendimento ao cliente, garantindo satisfação e fidelização.
Apoio à administração da empresa, incluindo processos de recrutamento, pagamentos e estratégias de marketing.

Granja palomas
Apoio e manutenção 
Janeiro de 2018 a maio de 2019
Realizava embalagens dos produtos, limpeza, entrega nos comércios, responsável pelos recebimentos de notas.','Atividades de marketing para comércios da cidade enquanto cursava o superior, ganhamos uma certificação de reconhecimento da prefeitura da cidade. 
Curso assistente administrativo 
Curso atendente de farmácia',NULL,'Administrativa, Comercial, Financeiro, Engenharia',NULL,'https://drive.google.com/open?id=10V67txH_b-nHzB799d2nbW_rBXSIpBBe','Instagram','Não','2.000,00','Sim','Meu antigo gestor Marcio Grassi 
55984577410','Quero inscrever-me no banco de talentos da Young!','CARTA DE APRESENTAÇÃO
Por meio desta carta, venho apresentar minhas qualificações e demonstrar meu
interesse em fazer parte da equipe de sua empresa. Acredito que minha trajetória
profissional, aliada ao meu comprometimento e à busca constante por crescimento,
pode contribuir positivamente para o desenvolvimento da organização
Com uma sólida experiência em liderança de equipes, atendimento ao cliente e gestão
operacional, acredito que posso contribuir significativamente para o sucesso e
crescimento contínuo da organização. Tenho vivência na área comercial, com foco em
resultados, relacionamento com diferentes perfis de clientes, incluindo o público PJ, forte
capacidade de negociação.
Durante minha atuação nas lojas Cacau Show e Nação Verde, desempenhei diversas
funções que aprimoraram minhas habilidades de supervisão e gestão. Fui responsável
pelo treinamento de novos colaboradores, assegurando que estivessem alinhados com
os padrões e valores da empresa. Supervisionava as equipes, monitorando
desempenho e implementando estratégias para alcançar e superar metas
estabelecidas. Além disso, gerenciava o caixa, realizava pedidos de reposição de
estoque e atendia diretamente os clientes, garantindo uma experiência de compra
excepcional.
Minhas responsabilidades também incluíam o apoio à administração da empresa,
participando ativamente dos processos de recrutamento e seleção, bem como na
elaboração de estratégias de marketing e na gestão financeira, incluindo o
processamento de pagamentos. Essa diversidade de funções me proporcionou uma
visão holística do negócio e reforçou minha capacidade de adaptação, análise crítica e
resolução de problemas.
Sou reconhecida por minha proatividade, empatia e habilidade em identificar e
solucionar desafios de forma eficaz. Valorizo um ambiente de trabalho colaborativo e
acredito que uma comunicação clara e respeitosa é fundamental para o sucesso de
qualquer equipe. Possuo domínio em ferramentas básicas de informática e
acompanhamento de metas.
Além disso, tenho familiaridade com técnicas de vendas e negociação voltadas para o
ambiente corporativo, sempre buscando entender as necessidades do cliente para
oferecer soluções assertivas. Acredito na importância de acompanhar indicadores e
resultados como base para tomada de decisões estratégicas.
Atualmente, possuo CNH categoria B, o que me proporciona mobilidade para atender
às demandas da função. Estou em processo de preparação para a certificação CPA-20,
demonstrando meu compromisso com o desenvolvimento profissional contínuo. Para
reforçar minha candidatura, minha antiga gestora está disponível para fornecer uma
carta de recomendação ou compartilhar informações adicionais sobre meu desempenho e ética profissional.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-27T13:36:00.000Z'::timestamptz),
  ('Taiane Soares Victoria','taianevictoria05@gmail.com',NULL,'55999064225','2001-08-10',24,'Solteiro(a)','0','Não','Itaqui/RS','https://drive.google.com/uc?export=view&id=1lKn6lj6MyaFcPyNnbqyMvZcVpUupNjhB','Gestão comercial','Ensino Superior Incompleto','Uninter','2026-05-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Empresa: Rusinek Materiais de Construção
Cargo: Auxiliar Administrativo
Função desempenhada: Atendimento ao público, controle de vendas,
realizações de relatórios, planilhas, boletos, caixa e lançamento de controle do
horário dos pontos dos funcionários.
Período: 2020/2023
Empresa:Empire Representações – Representação
Cargo: Consultora Comercial 
Função desempenhada: Representação comercial fábricas, preenchimento de
CRM, gestão de indicadores, preenchimento de planilhas, relatórios, reuniões
semanais para gestão de números, planejamento, estruturação e
desenvolvimento de estratégias e viagens para visitar clientes.
Fábricas Representadas: Mercoplasa, Avanti Polímeros, Harcen Medalhas e
Troféus e Monaro Sports.
Período: 2023/2025
Empresa: Imaz – Gestão de Banco de Imagens
Cargo: SDR – Representante Comercial (HOME OFFICE)
Função Desempenhada: Contato ativo através do LinkedIn e e-mail, criação de listas
de prospecção, gestão de planilhas, CRMS, reuniões e relatórios mensais.
Período: 2025/2025
Experiência Geral: Gestão de planilhas, controle de números, prospecção ativa,
marketing digital, vendas, área financeira, administrativa e serviço home office.','Me chamo Taiane, tenho 23 anos e atualmente estou cursando o ensino superior em Gestão Comercial.
Gosto de aprender e evoluir constantemente, e venho me dedicando à área de vendas e negócios com foco em resultados e relacionamento.
Meus cursos profissionalizantes que me destaco, seria nas áreas de comunicação e oratória, gestão financeira e prospecção e conversão de vendas, pilares que considero essenciais para gerar valor e crescimento nas empresas.
Já concluí cursos como Venda Todo Dia, PNL para Líderes e outros voltados ao desenvolvimento pessoal e comercial, estou sempre buscando aprimorar minhas habilidades e entregar o meu melhor em cada desafio.',NULL,'Administrativa, Comercial',NULL,'https://drive.google.com/open?id=101duEmnxemNiVDs59xajWZjxRsweZfj3','Instagram','Não','4.000','Sim','Rusinek - Jader (55) 3433-6051','Comercial','Sou uma profissional em constante desenvolvimento, com foco em resultados, relacionamento com o cliente e crescimento estratégico.
Tenho experiência sólida na área comercial e administrativa, atuando com gestão de planilhas, elaboração de relatórios, controle de indicadores e participação em reuniões estratégicas.
Na área de vendas, destaco minha atuação com prospecção ativa, ligações comerciais, acompanhamento de funil de vendas e controle de carteira de clientes, sempre com foco na conversão e fidelização.
Possuo domínio de CRMs como RD Station, Ploomes, Multiplier e Zenvia, ferramentas que utilizo para organizar processos, realizar contatos eficientes e acompanhar cada etapa da jornada do cliente.
 Sou apaixonada por animais, natureza e boas risadas. E, estou pronta para contribuir com energia, organização e resultados reais.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-27T19:34:00.000Z'::timestamptz),
  ('Sara Pogozelski','sarapogozelski@gmail.com',NULL,'51996741779','2004-10-27',21,'Solteiro(a)','0','Sim','Santa Cruz Do Sul/rs','https://drive.google.com/uc?export=view&id=1PQ-DeR-OGb_LtCo6E0hVZUVcXhgJ98-P','Engenharia Civil','Ensino Superior Incompleto','UNISC - Universidade de Santa Cruz do Sul','2027-12-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Empresa: Di Gesso e Decorações. 
Estágio de Engenharia Civil 
Função: Auxiliar de projetos, orçamentos e atendimento aos clientes. 
Período: 04/2023 a 12/2023. 

Empresa: Hillem Soluções Elétricas 
Estágio de Engenharia  
Auxiliar de Projetos Elétricos e de Automação e Criação de Procedimentos de Engenharia 
Período: 01/2024 a 06/2024. 

Empresa: Hillem Soluções Elétricas 
Efetivo Projetista de Engenharia 
Acompanhamento e gestão de obras e realização de projetos: elétrico, rede, PPCI, CFTV, 
e automação residencial. Projetos realizados em BIM (Alto Qi Builder) e AutoCad. 
Período: 06/2024 a 01/2025 

Empresa: Prosperità Construtora e Incorporadora 
Estágio de Engenharia  
Acompanhamento da execução de obras, cálculo quantitativo de materiais, elaboração de desenhos, as-built dos projetos complementares, elaboração e preenchimento de planilhas de acompanhamento de obra, realização de check-list e inspeção de qualidade da obra, montagem do Manual do Proprietário. 
Período: 01/2025 a 04/2025 

Empresa: Nervis Engenharia 
Estágio de Engenharia Geotécnica 
Auxiliar na realização de ensaios geotécnicos de laboratório, elaboração de relatórios de 
ensaios geotécnicos de laboratório, projetos e laudos na área de geotecnia. Projetos 
realizados no Software GeoStudio e AutoCad. 
Período:03/2025 (Atual)','Estou cursando Engenharia, com foco em controle de serviços, cronogramas e etapas de projetos. Além disso, estou empenhado em aprimorar minhas habilidades em BIM, especialmente na ferramenta Revit. Busco constantemente oportunidades para desenvolver minhas competências e agregar valor às empresas onde atuo.',NULL,'Arquitetura, Engenharia',NULL,'https://drive.google.com/open?id=1QMHgw7c_SaR_oFneE1JIG70tQV-Rckw7, https://drive.google.com/open?id=1ST_jmFLbq1aW6OD7qYUbRHnF4UA-Rv3p, https://drive.google.com/open?id=14REpBc2b9_sgCk3j4FOLbPdiUiEjPDxK, https://drive.google.com/open?id=1iRjywqdHYaDVyiLiMGY6LuZL3Y81Beb_, https://drive.google.com/open?id=1jfH5bFfUjRx6QkiA2ijDz4gIEoyCE7xX','Instagram','Não','R$2.000,00','Não',NULL,'Estágio Engenharia e/ou Arquitetura','Estou interessado em aprender e aprimorar meus serviços. Atualmente, participo de pesquisas e estou escrevendo um artigo em colaboração com meus professores, com o objetivo de realizar uma boa publicação. Tenho interesse em cursar uma pós-graduação e continuar meus estudos. Desejo contribuir para projetos, buscando sempre a excelência, e acredito que posso agregar positivamente às empresas nas quais atuo.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-28T17:57:00.000Z'::timestamptz),
  ('Bruna Auxiliadora Gonçalves Madeira','bruna.agmadeira@gmail.com',NULL,'53992125163','2001-03-24',24,'Solteiro(a)','0','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1jixgPKf9KbQNBmemoMZ4BPSd0M3McfaK','Medicina Veterinária','Pós-graduação Incompleta','URCAMP Bagé/RS','2025-03-22','Sou formado','Primeiro emprego, mas realizei estágios em minha área durante a graduação, tanto curriculares quanto extracurriculares, sendo eles: CBEA, Consultório Ana Luiza Cabral Risch (da URCAMP) e na Vida Pet. E trabalho como freelancer no Atacado Stephanie no momento.','Sou formada em Medicina Veterinária e no momento estou cursando uma pós-graduação em Medicina Veterinária do coletivo, a qual tem a duração mínima de 6 meses.',NULL,'Administrativa, Comercial, Marketing, Novos Negócios',NULL,NULL,'Instagram','Não','3.000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Apesar de ser médica veterinária, durante os estágios aprendi muito sobre lidar com clientes, vender nosso produto (produtos da pet shop e serviços, como cirurgias, vacinas, consultas...) e também ao longo da graduação desenvolvi habilidades de criação principalmente no Canva, mas também utilizava bastante Word, Power point, e com menor frequência Excel.
Também realizava administração e atualização de ficha de clientes em sites como vetsmart.

De março pra cá tenho realizado trabalhos como freelancer, sendo banhista em banho e tosa e atendente em loja. Além de atendimentos de pequenos animais a domicílio. Porém isso não está dando lucro. Então estou a procura de uma área que me garanta estabilidade.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-28T18:03:00.000Z'::timestamptz),
  ('Emanuel Vinicius Paz','emannuelpaz12@gmail.com',NULL,'55984229950','2002-07-21',23,'Solteiro(a)','0','Não','Itaqui/RS','https://drive.google.com/uc?export=view&id=1933MVD0mtn82wpKRpe5rlL80TfWwxs9o',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Estágio Auto Peças Itacar como estoquista em 2020 com duração de 3 meses, Grupo Grazziotin como jovem aprendiz entre 2021 a 2023, SpiderNet como vendedor de planos de Internet temporário em 2024 com duração de 3 meses.',NULL,NULL,'Administrativa, Comercial, Financeiro, Novos Negócios',NULL,NULL,'Instagram','Não','Expectativa salarial de mercado atual.','Sim','Maricele, gerente substituta que supervisionou meu trabalho no grupo Grazziotin +55 55 9647-1868','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-29T18:11:00.000Z'::timestamptz),
  ('Ana Luiza Neira Silva','analuizaneirasilva@gmail.com',NULL,'55984731024','1989-12-21',36,'União estável','2','Não','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1Th4KDo8FMee6LKaA5Vz2w9v986NorJbO',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Osirnet, Santana do Livramento/RS
2025
Consultor comercial
Recofran, Santana do Livramento/RS
2024
Operador de Caixa
Mercosul Calçados, Santana do Livramento/RS
2024
Vendedor.
Talento confecções calçados S.A, Santana do Livramento/RS
2024
Encarregado de Depósito.
Niederauer, Santana do Livramento/RS
2024
Operador de Caixa
Lorenzon Plásticos, Encantado/RS - Vale do Taquari
2010 - 2018
Auxiliar de Produção',NULL,NULL,'Comercial',NULL,NULL,'Instagram','n/a','2000','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-29T18:19:00.000Z'::timestamptz),
  ('Luan Brasil Gonçalves Da Luz','luanbrasilg123@gmail.com',NULL,'53997059957','2006-01-18',20,'Solteiro(a)','0','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=16Yib6tvI2n16J6y6E4ZiEDHOy7cq3jEL',NULL,'Ensino Superior Incompleto','URCAMP',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1-Carrefour
2-jovem aprendiz (estocador)
3-11/23-06/24
4-Possuo experiência na reposição e organização de mercadorias em
gôndolas, incluindo o controle de validade e qualidade dos produtos para garantir sua
segurança e apresentação adequada. Realizava a conferência de preços, remarcação e
atualização de etiquetas, assegurando a correção das informações para os clientes. Além
disso, monitorava e ajustava rupturas em gôndolas para garantir a disponibilidade dos
produtos. Prestava atendimento direto ao cliente, auxiliando na localização de
mercadorias, empacotando os produtos e realizando a entrega até os veículos, sempre
com foco em um serviço eficiente e de qualidade.','Certificado aluno nota 10 PROEN, curso de espanhol (em andamento), excell 2019 instituto mix, secretariado instituto mix, atendente de farmacia instituto mix, excell avançado (em andamento) instituto mix.',NULL,'Comercial, Marketing, Novos Negócios, Engenharia',NULL,NULL,'Instagram','Não','Salario minimo','Não',NULL,'Qualquer um','Estou estudando um curso de espanhol, excell completo, farei excell avançado, sei usar world canva e criar trabalhos profissionais devido a minha experiencia no curso de jovem aprendiz do senac, ensino medio e dos trabalhos de P.i criados na faculdade, sei como atender clientes PCD corretamente, realizar um atendimento adequado aos clientes, controlar estoque, e organizar os produtos e local de trabalho, trabalho bem em equipe, tenho ambição e planos de crescer profissionalmente.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-29T22:15:00.000Z'::timestamptz),
  ('Shayane dos Santos vasconcelos','shayanevasconcelos899@gmail.com',NULL,'11990232732','2005-08-11',20,'Solteiro(a)','0','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1TiWnc2tmaUsTMEQcHZT7j7o_UwdmTTqx',NULL,'Ensino Médio Incompleto','Silveira Martins',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Mercado Vitória: operadora de loja. 11 meses na empresa. Exercia as atividades necessárias no momento.',NULL,NULL,'Estágio',NULL,NULL,'Instagram','Não.','1500+','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho curso em culinária, e dois on-line sobre comportamentos na área de trabalho e na entrevista.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-30T12:59:00.000Z'::timestamptz),
  ('Isaías Lima Marques','domisaiaslima@gmail.com',NULL,'53997111390','1992-06-27',33,'Casado(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1BZvvNJLwbKjpy_ztGHCyuPPzFlkkH7u0',NULL,'Ensino Superior Incompleto',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Difere Telecom ( Agente autorizado Claro )
Coordenador
01-06-2021 - 06-02-2025
Entrei como vendedor e cheguei até o cargo de Coordenador, fui promovido 3 vezes dentro da empresa com reconhecimento pelos servidos prestados.
Objetivo sempre foi auxiliar na parte comercial, recrutamento, desenvolvimento, formação e capacitação dos líderes e consultores. Responsável pela gestão da equipe, metas, indicadores, rotinas, planejamentos, treinamentos, sistema, abastecimento, acessórios, aparelhos celulares e estoque.',NULL,NULL,'Administrativa, Comercial, Financeiro, Novos Negócios',NULL,NULL,'Instagram','Não','R$5.000,00','Não','Cristiano Lopes Mendes
53999380923','Comercial','Feedbacks evolutivo
Relacionamento da equipe
Planejamento semanal e mensal
Ações imediatistas
Gestão de pessoas e processos
Inteligência e conhecimento assertivo
Foco comercial, vendas e negócios
Visão estratégica
Gestão de conflitos
Liderança
Negociação e persuasão

Minha visão é crescer juntamente com a empresa, mantendo os valores que tenho e carrego comigo no decorrer da minha jornada profissional onde passei.
Procuro uma oportunidade para desempenhar de maneira exemplar todas tarefas que me forem atribuídas, sem colocar interesses pessoais, acima dos interesses da empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-30T17:31:00.000Z'::timestamptz),
  ('Cassiane Viegas dos Santos','kayasantos3@gmai.com',NULL,'51998240694','1987-02-13',39,'Casado(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1p8zlNkWabhyEah0SP8aOn-a8r1hiVKMw','Administração de empresas','Ensino Superior Completo','Faccat','2018-02-28','Sou formado','CFC Santo Antônio; Instrutora prática. Agosto/2021 até dezembro/2024
Lojas Colombo; Caixa; Agosto/2020 até Julho/2021
Express Restaurante; Auxiliar administrativo; Dezembro/ 2019 até abril/2020','Curso de Gestão e Liderança de pessoas. 
Certificação CPA20 - Anbima',NULL,'Administrativa, Comercial, Novos Negócios',NULL,NULL,'Instagram','Não','2.500,00','Não',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-30T22:41:00.000Z'::timestamptz),
  ('Giulia Borges Feijó','giulia.borges1206@gmail.com',NULL,'53991414279','2000-06-12',25,'Casado(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1vOu6s7KaCjReCSg_LYwqkjHPzJ67iL7_','Gestão de recursos humanos','Ensino Superior Incompleto','Unifatecie','2026-12-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Cadora Assessoria Imobiliária – Bagé/RS
Corretora e Avaliadora de Imóveis
Setembro/2021 – Atual

Atendimento ao cliente e suporte personalizado.

Negociação, venda e locação de imóveis.

Análise de documentação e redação de contratos.

Realização de vistorias e acompanhamento de processos.

Gerenciamento de redes sociais e ações de marketing digital.

Treinamento de corretores da equipe, com foco em técnicas de venda e uso do sistema.

Domínio do sistema CRM-CV para cadastro e gestão de leads.

Clínica Odontológica – Bagé/RS
Secretária Administrativa
Janeiro/2021 – Agosto/2021

Agendamento de consultas e atendimento ao público.

Cadastro de pacientes, emissão de boletos e cobranças.

Organização administrativa e suporte à equipe clínica.

Controle de estoque de materiais e insumos, com realização de pedidos conforme necessidade.

Organização das contas a pagar e controle do fluxo de caixa.

Organização e limpeza do consultório, garantindo ambiente adequado para atendimentos.

Prefeitura Municipal de Bagé – Bagé/RS
Assistente Administrativo
Fevereiro/2019 – Dezembro/2020

Atendimento ao público e orientação de demandas diversas.

Digitalização, organização e arquivamento de documentos.

Apoio nas rotinas administrativas do setor.

Responsável pelo treinamento de novos funcionários concursados.

Utilização do sistema de gestão DBSeller, com acesso pleno às funcionalidades administrativas.

Elaboração de manual de usuário do sistema DBSeller para padronização e uso interno.',NULL,NULL,'Administrativa, Comercial, Financeiro',NULL,NULL,'Instagram','Não','3.000,00','Não',NULL,'Coordenador de vendas',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-31T00:55:00.000Z'::timestamptz),
  ('Elessandra Proença carneiro','alehcarneiro25@gmail.com',NULL,'55996097920','1997-09-22',28,'Solteiro(a)','3','Não','Itaqui/RS','https://drive.google.com/uc?export=view&id=1bOdlaSE6Oxf2fxkG-p811a4BUYHKmE3x',NULL,'Ensino Médio Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Trabalhei como cuidadora de idosos
Trabalhei como atendente em lanchonete 
Trabalhei como balconista em uma padaria 
Trabalhei como empregada doméstica 
E gostaria de uma oportunidade em algo melhor',NULL,NULL,'Estágio, Financeiro, Marketing, Engenharia',NULL,NULL,'Instagram','Não','1.500,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Eu sou comunicativa, compreensiva, educada já trabalhei em várias áreas sei fazer bastante coisas eu gosto de aprender sei me socializar tenho cursos de pizzaiolo tenho curso de atendente de farmácia estou estudando 2ano do ensino médio tenho 4 filhos mas não moram comigo fui casada 14 anos nunca precisei trabalhar agora separei as 3 meses e estou a procura de uma oportunidade.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-31T01:18:00.000Z'::timestamptz),
  ('Manoela Lemes Schiefelbein','manoelalemes021@gmail.com',NULL,'55996284416','2003-01-14',23,'Solteiro(a)','0','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1PDQ9dtmK3bzSDxLq5yNyZsrlQbehphp2','Ciências da Computação','Ensino Superior Incompleto','Estácio de Sá','2029-08-05','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Minha trajetória profissional começou cedo e sempre foi marcada pela responsabilidade e pela vontade de aprender. Já atuei em diferentes áreas, o que me deu uma visão ampla do ambiente de trabalho e me ajudou a desenvolver várias habilidades.

Na Transpanorama, por exemplo, eu cuidava da prospecção de clientes para atingir as metas da empresa. Também era responsável pela organização do escritório, separação de documentos e envio por malote para a matriz. Agendava lavagens dos carros e a limpeza do escritório, além de monitorar os motoristas até o destino das cargas — não apenas os da minha equipe, mas de toda a operação. Também fiquei responsável por cuidar dos treinamentos, o que exigia organização e boa comunicação.

Com o tempo, aprendi a lidar com pressão, prazos e diferentes perfis de pessoas. Hoje, continuo me dedicando a crescer, me profissionalizar e buscar oportunidades onde eu possa contribuir de forma positiva',NULL,NULL,'Administrativa, Comercial, Marketing',NULL,'https://drive.google.com/open?id=1S1adJ88QkqJy7K7UlRTA-yQcgXoC_YkX','Instagram','Não','2500','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Gosto de aprender coisas novas e estou sempre buscando me desenvolver, tanto profissionalmente quanto pessoalmente. Atualmente, estou cursando Ciência da Computação na Estácio (formato EAD), o que tem me despertado ainda mais interesse por tecnologia e resolução de problemas.

Tenho facilidade com organização e planejamento, algo que sempre me acompanhou nos trabalhos anteriores. Também gosto muito de cozinhar nas horas vagas — principalmente doces —

Sou comunicativa, proativa e gosto de ambientes onde posso colaborar com a equipe. Já trabalhei com atendimento
, logística e rotinas administrativas, o que me deu uma base sólida para lidar com diferentes tipos de situações e pessoas.

Se for pra somar, me chama!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-07-31T13:18:00.000Z'::timestamptz),
  ('Marcio Ricardo Luiz De Luiz','marcioluizdeluiz@gmail.com',NULL,'53999485845','1965-05-02',60,'Divorciado(a)','1','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1AhTsB47r-vVkpx27Dzuplu1501AmY-hH',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','• 02/06/15 - 30/11/20 Instrutor de Trânsito CFC APRENDIZ Rosário do Sul - RS
Atuação: Instrutor teórico.
• 15/07/12 - 23/08/13 Gerente Salão de Festas Santana do Livramento - RS
Atuação: Gerente de negócios, atendimento aos clientes, responsável pelas festas e contratação de
colaboradores.
• 01/09/99 - 30/09/00 Consultor de Vendas CONESUL Adm. de CONSÓRCIO LTDA Santa Maria - RS
Atuação: Responsável pela área de consórcios, promoção de vendas, contratação de promotores,
captação de clientes e fechamento de negócios.','Formação técnica no curso Assistente de Administração. 
Cursos de aperfeiçoamento na área de vendas e prospecção de clientes.',NULL,'Administrativa, Comercial, Novos Negócios',NULL,NULL,'Indicação','Não','2.500,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-02T16:52:00.000Z'::timestamptz),
  ('Helen Caroline Pereira Castilhos','helepereira2507@gmail.com',NULL,'55984131085','1994-07-25',31,'Solteiro(a)','3','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1u7_yLxD3Cgl-ObA5-cU3fD50gxoCy7Ea','Administração de empresas','Ensino Médio Completo','Anhanguera',NULL,'Não, no momento pausei/parei por um período.','Farmácias São João/ Atendimento como Balco farmácista / atendimento ao público e vendas',NULL,NULL,'Administrativa, Comercial, Novos Negócios, Engenharia',NULL,NULL,'Facebook','Não','1800,00 a mais','Sim',NULL,'Comercial','Busco novos desafios em minha carreira, pois acredito que o constante aprendizado é fundamental para o crescimento profissional.
Com a minha experiência, busco contribuir com um clima organizacional positivo, valorizando os princípios da empresa e a colaboração.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-03T17:12:00.000Z'::timestamptz),
  ('Tatiane vidoto dos santos','tatianevidotto04@gmail.com',NULL,'55996094350','2025-02-04',1,'Divorciado(a)','1','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1nDzOwJFTbDctLeU_ordItUtwTqKNzXuf',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Supermercado santi supervisora de caixa 2017/2019','Secretariado executivo',NULL,'Administrativa, Comercial, Financeiro',NULL,'https://drive.google.com/open?id=1RX24CVWo-HFZpwq4jjn53sl9L_GHEYxb','Instagram','Não','2000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-03T22:59:00.000Z'::timestamptz),
  ('Teylor Almeida de Carvalho','teylordecarvalho@hormail.com',NULL,'48991763485','2005-06-01',20,'Solteiro(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1aJTsqmbnku-jIZFeZZefh5RgzGNMUH1C','Administração de empresas','Ensino Médio Completo','Uninter','2029-07-28','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Raroz Alimentos - Jovem Aprendiz
Trabalhei no setor de Faturamento da empresa, ao qual eu era responsável pela emissão de notas fiscais para pessoa física e jurídica. Além de ter a função de organizar os documentos e realizar os relatórios de pendências.

Tottal Casa e Lazer - Orientador de Vendas
Trabalho atualmente na área de vendas, onde sou responsável de prestar atendimento para as pessoas que vem com a intenção de comprar um produto, e acaba levando mais. Além disso, atuo na parte financeira, de modo a realizar a cobrança de clientes inadimplentes e também, na organização do meu setor e estoque.','Fiz alguns cursos como: Administração e Mercado de Trabalho, Telemarketing, Mídias Sociais, Atendente de Farmácia e Pacote Office. Iniciei há pouco tempo na área da administração, pois ganhei uma bolsa de estudos integral pelo PROUNI.',NULL,'Administrativa, Comercial, Marketing',NULL,NULL,'Instagram','Não','1600','Sim','Tottal Casa e Lazer - 54 984039667','Comercial','Eu tenho experiência com inglês, e sempre fomentei aprender mais. Além de gostar muito do idioma, adoro colocá-lo em prática. Me familizarizo com o espanhol por ter facilidade no idioma para comunicação. Sou muito detalhista, e gosto de tirar todas as minhas dúvidas. Sou uma pessoa de aprendizagem rápida e fácil adaptação. 
Amo esportes radicais! Tudo que eu puder aprender a fazer, eu faço, sempre com vontade e coragem!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-04T03:12:00.000Z'::timestamptz),
  ('Leandro Meneses da Luz','contato.leandrodaluz@gmail.com',NULL,'51998034265','1989-09-12',36,'Casado(a)','1','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1whoEVUUF5p1MSMc_Ibof12BESBKIYlo6','Ciências Contábeis','Ensino Superior Incompleto','EAD FAEL',NULL,'Não, no momento pausei/parei por um período.','Experiências:

•        Vendedor Externo :: Vero Banrisul = 01/2024 até 05/2025

•        Gerente de Região :: Ortobom Colchões = 01/2022 até 01/2024

•        Vendedor Externo :: Redecard Itaú Unibanco = 10/2020 até 12/2021

•        Supervisor de vendas :: Lojas Quero-Quero = 11/2019 até 10/2020

•        Supervisor de vendas :: Operadora  Vivo = 01/2008 até 11/2019',NULL,NULL,'Comercial',NULL,NULL,'Facebook','Não, vi o anuncio no facebook','R$2.000','Sim',NULL,'Consultor de vendas',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-04T12:54:00.000Z'::timestamptz),
  ('Thayná camargo','thaynacamargoo@icloud.com',NULL,'55996759032','2007-02-27',18,'Solteiro(a)','0','Não','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1t1-29NzwM27qACAFdEvLKgiuzWwSM5Es',NULL,'Ensino Superior Incompleto','uninter','2028-01-21','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','CIEE 2-ocupações administrativas 3-18/06/2023- 18/06/2025 4- atendimento ao público, cadastro, controle de relatórios, realização de contratos e baixa de documentos no sistema.',NULL,NULL,'Administrativa',NULL,NULL,'Instagram','não','1500 a 2000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa muito dedicada no que faço, proativa, comunicativa e sempre cumpro com minhas tarefas e atividades','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-04T16:02:00.000Z'::timestamptz),
  ('Amanda Milene Baroni','amandamilene32@gmail.com',NULL,'55984567758','2006-05-30',19,'Solteiro(a)','0','Não','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1LbevcgdF1O6TfkRxIvBijPKE6G_Gi4Sg',NULL,'Ensino Médio Completo','Liberato Salzano Vieira da Cunha','2024-12-21','Não, no momento pausei/parei por um período.','Seria meu primeiro emprego de carteira assinada.',NULL,NULL,'Comercial, Marketing',NULL,NULL,'Instagram','Não','1.900','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Me chamo Amanda Milene, tenho 19 anos e estou em busca do meu primeiro emprego de carteira assinada, visando colaborar com o crescimento da empresa. Tenho um curso completo de informática, tenho disposição em ajudar a empresa e um ótimo trabalho em equipe, também sou bastante comunicativa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-06T16:53:00.000Z'::timestamptz),
  ('Fernanda Konig','fernandaf1@mx2.unisc.br',NULL,'5551991577943','2003-07-09',22,'Solteiro(a)','0','Sim','Santa Cruz Do Sul/rs','https://drive.google.com/uc?export=view&id=1h-Ni5CGPhDw4eipafFdA_ca-vHp32eXa','Direito','Ensino Superior Incompleto','Unisc','2027-02-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Back Advocacia como auxiliar administrativo em março de 2025 data de início e final em maio de 2025 onde atendia público e organizava agenda. Fiz também estágio na defensoria em 2022 até 2024 atendendo o público e fazendo peças processuais.','Já realizei cursos de auxiliar de necropsia e psicologia jurídica',NULL,'Administrativa, Comercial, Estágio',NULL,NULL,'Instagram','Nao','Acima de 1.800','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-08T00:29:00.000Z'::timestamptz),
  ('Débora Carolina da Costa da Silva','debyjulio0309@gmail.com',NULL,'51980588440','1983-06-10',42,'Solteiro(a)','1','Sim','Esteio/rs','https://drive.google.com/uc?export=view&id=1unW_JlP7SVyM97tub1AMxmHaFA6JHFHc','Administração de empresas','Ensino Superior Completo','Universidade Lá Salle','2021-02-20','Sou formado','Produtora Content - assistente administrativo/financeiro - 10/04/2024 - 03/06/2025','MBA coach em gestão de pessoas e liderança.',NULL,'Administrativa, Comercial, Financeiro, Engenharia',NULL,NULL,'Facebook','Não','R$2.000,00','Não',NULL,'Assistente administrativo',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-08T01:04:00.000Z'::timestamptz),
  ('Yesica Moreno','morenoyesica1984@gmail.com',NULL,'51980596156','1984-10-14',41,'Casado(a)','2','Não','Torres/RS','https://drive.google.com/uc?export=view&id=1tSU0C_eJHReRyu0psnTi2W8klWn24GuI','Recursos humanos','Ensino Superior Incompleto','Facint','2027-08-08','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Administrativa en factura mente y tarjetas de recursos humanos en Osteolife, Argentina, Humanitas IT recrutamento e selecao','Recursos humanos en Argentina, recrutamento e seleção, Analista QA manual e automacão',NULL,'Administrativa, Estágio',NULL,NULL,'Instagram','Não','2300','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-08T12:27:00.000Z'::timestamptz),
  ('Natália da Rosa Silva','natirosasilva10@gmail.com',NULL,'51995713855','2006-09-15',19,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1hhE6Y6cst-bympjBLamO0v-oWOpWA3QD','Ensino Médio','Ensino Médio Completo','Esc. Est. Ens. Méd. Prof. Cândido de Barros','2024-12-26','Não, no momento pausei/parei por um período.','No momento sem experiências no mercado de trabalho, apenas freelancer em Studio Life ajudando a organizar o financeiro, Mundo Office auxiliei em alguns dias a organizar o CRM. Estou á procura do primeiro emprego, acredito que com os meus conhecimentos e desejo de aprender posso contribuir cada vez mais para o crescimento da empresa.','Cursos de: Informática Administrativa; Social Media e Designer Gráfico.',NULL,'Administrativa, Marketing',NULL,NULL,'Instagram','Não','R$1.300,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Gosto bastante da área do marketing, já fiz trabalho voluntário em época de enchentes…','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-08T12:51:00.000Z'::timestamptz),
  ('Gilvanna Rosa Consul','gilvanna.rosa19@gmail.com',NULL,'51991342593','1998-04-10',27,'Solteiro(a)','0','Sim','Capivari Do Sul/rs','https://drive.google.com/uc?export=view&id=1BcWHjDyV4lLow1L-GWGRdR_5A7f7t0wg',NULL,'Ensino Superior Incompleto','Facos',NULL,'Não, no momento pausei/parei por um período.','Trabalhei durante 6 anos em um escritório de síndica profissional, atuava na área Administrativa, realizava fechamentos de balancetes, atendimento ao público, gerava nota fiscal, fiscalizava obras, realizava pagamentos para prestadores de serviço.','Estou cursando no momento Assistente Administrativo no Senac 
Tenho certificado de Módulo de Obra: Cadastro de Projetos Básicos pela Enap',NULL,'Administrativa, Financeiro',NULL,NULL,'Instagram','Nao','2.500,00','Sim','Francele (síndica, minha última chefe) 51 981170417','Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa dinâmica, pontual e organizada. 
Faz 1 mês que me mudei para Capivari do Sul, sou de Tramandaí, no momento estou morando em um sítio, pois meu noivo conseguiu trabalho em uma fazenda, então vim para cá com ele. 
Pretendo retornar minha faculdade de Gestão Comercial, tenho ambição. 
Sai do meu último serviço, por que não me cabia mais, não haveria crescimento, estou em busca de novas oportunidades. 
Não tenho filhos, minha família é apenas eu a minha mãe e meu noivo.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-08T13:18:00.000Z'::timestamptz),
  ('Gabriela Silva dos Passos','gabrielapassos857@gmail.com',NULL,'51996620719','2004-09-27',21,'Solteiro(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Ae6BHG6KSqVxtPvBDQ5yxbH5HUtvCy6h','Cursando administração','Ensino Superior Incompleto','Uniasselvi',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Vendedora e caixa na empresa Agropecuária Passos. Organização e vendas, entrada de notas.
Secretária na empresa Fame sistemas de segurança, organização de contas a pagar.
Estágio na prefeitura Municipal de Santo Antônio da Patrulha, departamento de compras, orçamentos.',NULL,NULL,'Administrativa',NULL,NULL,'Instagram','Não','R$2.000,00','Não',NULL,'Assistente de Rh',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-08T16:05:00.000Z'::timestamptz),
  ('Patrícia Pinheiro','patynanda2009@gmail.com',NULL,'53999748226','1988-07-19',37,'Solteiro(a)','1','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1JtNAIY27XzjyOIDJXjhkS5WXyS-E2ruc','Administração de empresas','Pós-graduação Completa','Faculdade Sobresp','2019-07-27','Sou formado','Faculdade Sobresp/ assistente administrativo/ 01/04/2019 a 4/11/2024 admissão e rescisão, conciliação bancária, várias da folha de pagamento, Fies e Prouni, compras e acompanhamento de obras, contratação dos serviços.','Tenho NBA em gestão de pessoas e MKT, técnico em enfermagem o qual me auxílio bastante na época da pandemia com o auxílio aos meus colegas, e também auxiliar sobre questões de pressão alta, uso de medicamentos.',NULL,'Administrativa, Financeiro, Engenharia',NULL,NULL,'Facebook','Não','R$2.400,00','Sim',NULL,'Assistente de RH','Sou formada em técnico de enfermagem, onde fiz trabalho voluntário com os familiares da Kiss em Santa Maria, na pandemia vacinei os alunos, e sempre prestei auxílio aos meus colegas que precisavam.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-08T16:18:00.000Z'::timestamptz),
  ('Gislaine Santos Neves','giszjo@gmail.com',NULL,'51995598884','1979-05-04',46,'União estável','2','Não','Osório/RS','https://drive.google.com/uc?export=view&id=1K7sdPvquvWXS9iInhZAs-2_Nn0E-aUvu','Gestão recursos humanos','Ensino Superior Completo','Uniasselvi',NULL,'Sou formado','Solar rede construir',NULL,NULL,'Administrativa, Financeiro',NULL,NULL,'Instagram','Não','2300','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-08T16:22:00.000Z'::timestamptz)
;

INSERT INTO young_talents.candidates (full_name, email, email_secondary, phone, birth_date, age, marital_status, children_count, has_license, city, photo_url, education, schooling_level, institution, graduation_date, is_studying, experience, courses, certifications, interest_areas, cv_url, portfolio_url, source, referral, salary_expectation, can_relocate, professional_references, type_of_app, free_field, status, tags, origin, created_by, original_timestamp)
VALUES
  ('Ana Luisa Larruscain Diaz','analarruscain.psi@gmail.com',NULL,'55991098637','1998-04-14',27,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=12hEm99uheT3Z0kEJ4ldYf2yZbP4W4bfD','Psicologia','Pós-graduação Incompleta','Faculdade Integrada de Santa Maria - FISMA','2025-07-16','Sou formado','Gestione Assessoria e Desenvolvimento Profissional | maio de 2024 a março de 2025
Estagiária de Psicologia Organizacional | Estágio
Atividades: Recrutamento e Seleção; Aplicação de teste de Perfil Comportamental DISC e análise dos resultados; Verificação de compatibilidade de perfil com as vagas disponíveis; Retorno negativo aos candidatos; Hunting ativo nas plataformas de recrutamento (LinkedIn, Catho, Indeed, Grupos de Facebook, etc); Melhoria dos processos de recrutamento da empresa.

Conecta Capital Humano | março de 2024 a abril de 2025
Consultora de Recrutamento | Freelancer 
Atividades: Recrutamento de candidatos para vagas tech; Hunting ativo de candidatos no LinkedIn; Criação de artes para divulgação das vagas nas redes sociais; Abertura de vagas e gestão de candidatos na plataforma Indeed; Análise de currículo e habilidades para encaminhamento às empresas.

RGE - Rio Grande Energia | junho de 2021 a janeiro de 2024
Assistente de Atendimento | CLT
Atividades: Atendimento aos clientes; Resolução de problemas; Geração de chamados, caso necessário, a fim de solucionar o problema do cliente; Encaminhamento de solicitações feitas pelo cliente na loja; Auxílio nos processos de seleção da gerência.','Curso pós-graduação em Psicologia Organizacional, com previsão de conclusão até metade de 2026. Toda a minha trajetória na graduação foi voltada à área organizacional, portanto realizei estágios, cursos e participei de projetos visando o enriquecimento da minha futura carreira no setor.',NULL,'Administrativa',NULL,NULL,'Instagram','Não','3500','Não','CEO Jolaine Borin, +55 55 9647-8555, Gestione Assessoria e Desenvolvimento Profissional.','Assistente de RH',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-08T17:10:00.000Z'::timestamptz),
  ('Laura Oliveira da Silva Berger','lauraosilvab@gmail.com',NULL,'55981204075','1994-06-27',31,'Casado(a)','0','Não','Santa Maria/rs','https://drive.google.com/uc?export=view&id=15M_sCCzH4nbQxDtO8L2IvodK_2aoGvaG','Ciências Contábeis','Ensino Superior Completo','UNIDERP- Anhanguera','2022-03-26','Sou formado','Rede Central Pneus | Auxiliar Administrativo/Secretária (2014–2022).  - Atendimento presencial, telefônico e digital (WhatsApp/e-mail) a clientes e fornecedores.   - Organização de documentos fiscais, arquivos e planilhas de controle.   - Apoio em processos de compras, negociação de prazos e atualização de cadastros.   - Elaboração de relatórios básicos.',NULL,NULL,'Administrativa',NULL,NULL,'Google','não','2000','Não','(55) 3286-2238- Rede Central  Pneus( Avelino Baldez)','Quero inscrever-me no banco de talentos da Young!','- Sou Proativa e com facilidade para trabalhar em equipe.
Disponibilidade para horários comerciais. 

 8 anos de experiência em atendimento e organização administrativa. 
 Formação técnica e superior. 
 Perfil dinâmico e comprometido com resultados.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-08T19:09:00.000Z'::timestamptz),
  ('Andressa micelli gomes','andressamicelligomes1993@gmail.com',NULL,'53991056539','1993-08-27',32,'Solteiro(a)','2','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1A2oxnT_siyji1Ei1xy8koX6rOGbxZale',NULL,'Ensino Superior Incompleto','Uninter EAD',NULL,'Não, no momento pausei/parei por um período.','Loja Dois pontos (vestuário) no cargo de vendedora e balconista. Loja Perfil no cargo de atendentee vendedora. Posto balluarte( cargo de atendimento ao cliente em loja de conveniência.','Curso de atendimento ao cliente e vendas.',NULL,'Administrativa, Comercial, Estágio',NULL,NULL,'Facebook','Nao','1518','Não',NULL,'Comercial','Sou uma pessoa com inciativa e procuro me qualificar cada vez mais para rerornar ao mercado de trabalho. Tenho disposição e vontade de trabalhar e crescer profissionalmente. Ja trabalhei fom atendimento e tenho boa comunicação.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-10T00:46:00.000Z'::timestamptz),
  ('Bruno Machado','tankianbruno742@gmail.com',NULL,'55992232180','2001-07-16',24,'Solteiro(a)','1','Não','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1sjfizgvQsYbPqQeiZcYtEMcGauQVOy1x',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','.',NULL,NULL,'Administrativa, Comercial, Financeiro',NULL,NULL,'Instagram','.','.','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-10T21:36:00.000Z'::timestamptz),
  ('María Elisa Alvarez Melo','mariaelisa82@hotmail.com',NULL,'+59892306903','2002-10-22',23,'Solteiro(a)','0','Não','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1KkcFCERGSZ94sq-vu0po3lESUE6j_K6R','Tester de software, excel, IA, secretaria','Pós-graduação Incompleta','Foi em Uruguai agora tô em Livramento','2020-12-16','Não, no momento pausei/parei por um período.','Escritorio Uruguay (Artiga) 06/2022  01/2023
-Gestoría ante BPS, BSE, DGI (Trámites presenciales, web, entre otros).
-Atención al cliente (Personal y al teléfono)
-Exoneraciones (Sector Inmobiliario).
-Manejo de (Excel, Word, entre otros).
-Inventarios
-Depósitos, pagos por la web y presencial.
Administrativa y Secretaría de la Dra. :
- Asistí a distintos Juzgados ya sea por números de expedientes, consultas etc.
-Tramites de Jubilación, entre otros
-Manejo personal de su correo de notificaciones
(abogados), gmail.
- Atención al cliente (Personal y al teléfono)
- Orden de documentaciones en su escritorio personal.
• Aquí en el Escritorio Uruguay he trabajado tanto en el sector inmobiliario y además en conjunto con la patrona en la cual es abogada y allí tiene a parte su
escritorio personal.

Estudio Jurídico (Abogados) :
02/2023 - 03/2023
-Atención al cliente Presencial en el recibidor.
-Mandados a distintos lugares según lo qué se me pide, principalmente a los distintos juzgados de la ciudad.','Me destaco mas na área de tecnologia/informática, administrar documentos com advogados',NULL,'Administrativa, Engenharia',NULL,'https://drive.google.com/open?id=1N-RNNkkDHMu5WnGWSojcMa0SLe7HMKFj','Instagram','Nao','Acordar dependendo a atividade','Sim','-Bachillerato en Fundamentos de Programación (Instituto Bios)

-Bachillerato en Tester de Software INEFOP

-Alianza Servicios Educativos Testing Funcional

-Bachillerato en EXCEL (Udemy)','Quero inscrever-me no banco de talentos da Young!','Tá no meu curriculum ;) as ordens !','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-11T04:18:00.000Z'::timestamptz),
  ('Gabriela Rosa Dorneles','gabrielarosadorneles@gmail.com',NULL,'51985961910','2000-04-08',25,'Casado(a)','2','Não','Gravataí/rs','https://drive.google.com/uc?export=view&id=1X0p5jOqjSkjvbeo-OxCNc8YWj3VYWpak','Gestão de recursos humanos','Ensino Superior Completo','Unisinos','2024-04-06','Sou formado','EXPERIÊNCIA PROFISSIONAL
Vigia Escolar – Prefeitura de Gravataí
Jan/2024 – Abr/2024
- Controle de acesso e segurança do ambiente escolar.
- Atendimento telefônico e registro de ocorrências.
Estagiária em RH – Prefeitura de Gravataí
Jun/2022 – Dez/2023
- Apoio em admissões, rescisões, folha de pagamento e organização de documentos.
- Atendimento ao público.
Estagiária Administrativa – Unidade de Saúde Cohab C (Prefeitura de Gravataí)
Ago/2021 – Nov/2021
- Atendimento ao público e telefônico, digitalização e organização de documentos.
- Cadastro e atualização de dados em sistemas, alimentação de sistemas (CADSUS, e-SUS).
Jovem Aprendiz Administrativo – Projeto Pescar / Unicred Porto Alegre
Fev/2018 – Set/2019
- Apoio ao setor de gestão de pessoas, com atividades como admissões, férias e rescisões.
- Atendimento ao cliente, organização de malotes e documentos, uso de Excel e Word.',NULL,NULL,'Administrativa, Comercial',NULL,NULL,'Instagram','Não','1508','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Nas horas vagas sou técnica de enfermagem.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-11T12:27:00.000Z'::timestamptz),
  ('Eduarda Moraes campos','eduarda.moraescampos132@gmail.com',NULL,'51986810379','2004-01-13',22,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=14mUd6hwhSPri-iOxNJuRFTmQ6GbVOyYm','Administração de empresas','Ensino Médio Completo','Anhanguera',NULL,'Não, no momento pausei/parei por um período.','mSB - recepcionista',NULL,NULL,'Administrativa',NULL,'https://drive.google.com/open?id=1okZg6cCj82pnQOIcFSEvdOL1SFNlXwdn','Agência de Empregos','Não','2.000','Não','51994424717','Quero inscrever-me no banco de talentos da Young!','Me chamo Eduarda e tenho 21 anos, sou uma pessoa muito dedicada e esforçada','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-11T13:45:00.000Z'::timestamptz),
  ('Daniele Tramanzoli Coelho Mezera','danimezera@gmail.com',NULL,'55996460862','1993-01-27',33,'Solteiro(a)','0','Não','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1Vey68Zl53FjwBcvGOd_qjfX_C-AynCL2','Administração de empresas','Ensino Superior Completo','Unipampa','2018-01-26','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Empresa: Casa do Chopp Comércio de Bebidas LTDA, Santana do Livramento
Atribuições: Rotinas administrativas, caixa, vendas e atendimento ao público.
Ano de atuação: 2019 a 2021.

Empresa: Zona Franca Calçados LTDA, Santana do Livramento
Atribuições: Vendedor do comércio varejista
Orientador de vendas 
Ano de atuação: 2021/2022

Empresa: Grazziotin, Santana do livramento
Atribuições: Vendas e criação de cartão da loja 
Ano de atuação: 2023

Empresa: Zona Franca Calçados LTDA, Santana do livramento
Atribuições: Vendedor do comércio varejista
Ano de atuação: 2024/2025','Tenho formação acadêmica em administração, curso de gestão administrativa e no momento estou cursando bacharelado em nutrição.',NULL,'Administrativa, Comercial, Marketing',NULL,NULL,'Google','não','Entre R$ 2000,00 e R$2500,00','Sim','Chopp Brahma Express: 0800 888 1021, Thelmo Cargnelutti, Juliana Cargnelutti.','Comercial','Falando sobre minha trajetória, iniciei com a formação em Administração, onde desenvolvi habilidades analíticas sobre diversos assuntos, e a capacidade de pensar de maneira mais abrangente. Trabalhei em diversos setores, em pequenas empresas até empresas de grande porte, sempre focado em otimizar os processos e maximizar resultados. Ao longo do tempo, desenvolvi minhas habilidades no atendimento, desenvolvi minhas abordagens para conversar com o público nos setores onde atuei. Adquiri experiência em caixa, rotinas administrativas, atendimento ao público, vendas, etc. 
Tenho facilidade em trabalhar em equipe, colaborando com meus colegas para atuar com harmonia. Sou proativa, busco manter meu trabalho organizado, e sempre estar aprendendo coisas novas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-11T16:33:00.000Z'::timestamptz),
  ('Rafael Bortolotto Ilha','rafaelilha.11@gmail.com',NULL,'55999030299','1982-03-09',43,'União estável','2','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1hT1rzx6mSvB1QnfT9z4OiR_9mPQxv_mh','Engenheiro Agroindustrial','Pós-graduação Incompleta','FURG','2021-11-01','Sou formado','Balconista l Casa de carnes Moacir Porto Alegre 2001 – 2002 
 
Limpeza e organização dos ambientes internos e externos 
Auxílio na reposição de mercadorias nas prateleiras 
Atendimento ao público 
 
Recepcionista l Verde Plaza Hotel Santana do Livramento 2004 – 2008 
 
Recepção e atendimento de hóspedes com cordialidade e eficiência 
Check-in e check-out utilizando sistema informatizado 
Atendimento telefônico e esclarecimento de dúvidas sobre hospedagem 
Controle de reservas e conferência de documentação 
Organização da recepção e apoio em demandas administrativas 
Comunicação com equipe de limpeza e manutenção 
Auxílio na reposição de materiais de higiene nas áreas comuns 
Resolução de pequenos problemas e acolhimento de reclamações com empatia 
 
Balconista e entregas l Distribuidora de Alimentos Sul Frangos/Ltda 
Limpeza e organização dos ambientes internos e externos 
Auxílio na reposição de mercadorias nas prateleiras 
Atendimento ao público, vendas e entregas 

Vendedor Autônomo e outras atividades informais 
Vendas de produtos alimentícios e RT”s 

Analista em Laboratório | Universidade Federal do Rio Grande - 
FURG, RS, Brasil 
2013 - 2021 
Inspetor de Agroindústria | Secretaria de Agricultura e Meio 
Ambiente - Serviço de Inspeção Municipal, SAP, RS 
2021/final de processo seletivo','Atualmente estou na pós graduação em Administração - Unipampa. Pretendo dar uma pausa, faltando apenas 6 créditos e a segunda etapa da dissertação.  Motivo: necessito trabalhar.',NULL,'Administrativa, Comercial, Licenciamentos, Novos Negócios',NULL,NULL,'Facebook','Não','3.000 ou salário compatível com o cargo','Sim','Carla Maciel, ex gerente da Tumeleiro, atualmente na gerência (setor de produção) do Atacadão - Santana do Livramento','Quero inscrever-me no banco de talentos da Young!','Abaixo, ressalto algumas de minhas competências, entretanto, na vida pessoal, sou amante de esportes, passeios e música.
Boa comunicação;  
Senso de responsabilidade e organização; 
Pró-ativo;  
Valorizo trabalho em grupos e equipes;  
Facilidade de relacionamento com o cliente/público; 
Espírito crítico;  
Resiliência;  
Vontade de aprender;  
Espanhol avançado (importante para prospectar clientes na cidade vizinha, Rivera) e inglês intermediário;
CNH B;  
Disponibilidade de horário;  
Agilidade e eficiência nas atividades propostas; 
Disponível para início imediato e disponibilidade para trabalhar fins de semana 
ou turnos alternados; 
Interesse em aprender e crescer na área comercial.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-11T19:12:00.000Z'::timestamptz),
  ('Taiane acuna rosas','rosastaiane648@gmail.com',NULL,'53991614730','1996-08-05',29,'Solteiro(a)','2','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1BENOKQ9Mir9nWkI0CB7usS7oD8YzEWl0','Administração de empresas','Ensino Médio Completo','Uninter','2026-08-11','Sou formado','Probaje sementes: cargo: auxiliar  de escritório  em geral.
Prefeitura municipal de bagé: cargo : supervisor  administrativo.','Aux administrativo. Informática avançada.',NULL,'Administrativa, Comercial, Financeiro, Novos Negócios',NULL,NULL,'Facebook','Nao','A disposição da empresa.','Sim','Referência: Dirnei :probaje  sementes 
 53 9994-2008','Quero inscrever-me no banco de talentos da Young!','Me chamo taiane , tenho 28 anos , natural  da cidade de Bage  RS.
Tenho conhecimento  avançado  em planilhas,  Excel,  Word. Boa comunicação. Tenho facilidade a novas tecnologias e estou preparada  a enfrentar novas oportunidades  dentro do mercado de trabalho. Tenho disponibilidade horários. CNH B.
Estou a disposição da empresa,  gostaria  de participar  da seleção. Obrigado  boa tarde.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-11T19:18:00.000Z'::timestamptz),
  ('Karoline Silva dos Santos','karolinesilva313@gmail.com',NULL,'996672041','2001-05-31',24,'Casado(a)','2','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1rqINz-K4F-wrlBGIn2P88hrroVV72Nt9','Administração','Ensino Superior Incompleto','Uniasselvi','2025-10-25','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Fábrica de calçados : início
Transportadora Via Mar: início
Estágio na Nc Contábil:
Iconte Assessoria: início 20/12/2023 a 20/12/2024',NULL,NULL,'Administrativa, Financeiro',NULL,NULL,'Instagram','Não','Prefiro conhecer os detalhes da antes de definir um valor!','Não',NULL,'Auxiliar de Rh','Bom sempre trabalhei, gosto muito de estar reunida com a minha família para tomar um bom chimarrão, na férias de inverno fiquei com meus filhos, desde que tive o José Otávio quis me didicar a maternidade logo depois tive o Henry e fiz o mesmo, hoje os dois estão em turno integral na creche e já me sinto pronta para voltar a trabalhar fora!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-12T01:52:00.000Z'::timestamptz),
  ('Vitória Hernandes Saraiva','vitoriahernandes75@gmail.com',NULL,'53999536350','1998-01-08',28,'Casado(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1xU9E9R3or0ix9kfgKhSwfqaabH61U-cR',NULL,'Ensino Superior Incompleto','Uniasselvi','2030-03-14','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Marfrig Bagé, administração 2) Curtume, controle de produtos qualidade 3) Prefeitura, estágio','Curso de informática',NULL,'Administrativa, Comercial, Financeiro, Novos Negócios',NULL,NULL,'Instagram','Não','2000','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-12T03:23:00.000Z'::timestamptz),
  ('Letícia t da Silva','ls2744913@gmail.com',NULL,'51982263232','1995-11-03',30,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1udnz0V7fb4ZUQEDUFlMsKgmTqIr1KtwC','Assistente de rh','Ensino Médio Completo','Instituto estadual de educação santo Antônio','2014-01-10','Não, no momento pausei/parei por um período.','Crediarista lojas colombo',NULL,NULL,'Administrativa, Comercial',NULL,NULL,'Instagram','Nao','1.800','Sim',NULL,'Assistente de rh',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-12T10:52:00.000Z'::timestamptz),
  ('Camila Freitas Alves Leite','ak.camilaleite@gmail.com',NULL,'53991362143','1989-07-18',36,'Casado(a)','1','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=11cw9FbJ5dt38h92cYO0Efc2nJab8rNIk',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Radial pneus Ltda.  de 2010 a 2012  -
cargo: Secretária
- Rizzato  e Lopes Ltda. ( LOJA SÍNTESE ) de 2015 a 2018  
Cargo: Vendedora
- Nicola veículos Ltda.  início 2019 a Setembro/2022 - 
cargo: recepcionista 
- Prosouth Provedor de serviços de internet 
(parceiro Claro) Início Setembro/2022 até o momento.
Cargo: Supervisora de vendas.
  -JRZ apoio administrativo Ltda ( Almeida Krüger) 
Executiva de contas PJ. Início 14/04/2025 até 11/08/2025',NULL,NULL,'Comercial, Novos Negócios',NULL,'https://drive.google.com/open?id=1KeeQQmH4i1vU-2xx_LAoUV828Ax-_BTs','Facebook','Não','3500','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-12T19:05:00.000Z'::timestamptz),
  ('Karine Gustafson Lopes','karinegustafson@hotmail.com',NULL,'51993497530','1978-05-15',47,'Solteiro(a)','2','Sim','Tramandaí/RS','https://drive.google.com/uc?export=view&id=1IW_fU9fbt0aN6q6k8VzZ5zfL9KPZzVac','Administração de empresas','Pós-graduação Completa','Faculdade São Francisco de Assis','2013-12-06','Sou formado','SoftExpert Software - Gerente de Projetos - de out/23 a abril/25. Planejamento e gestão de projetos de implantação de sistemas.
IPM Sistemas - Coordenadora de Migração - de nov/21 a dez/22. Gestão da equipe de migração de dados legados.
MV Sistemas - Consultora de Implantação - de out/16 a abril/21. Implantação de sistema de gestão na área da saúde. Configuração das bases e treinamento dos usuários.','MBA Gestão de Projetos, curso de Power BI, Excel Avançado.',NULL,'Administrativa, Engenharia',NULL,'https://drive.google.com/open?id=16gtJBvTaQNjkFgiJ1VAOWmpxmzW1DW_E','Instagram','Não.','R$3.500,00','Sim',NULL,'Coordenadora Administrativa','Sou uma profissional com sólida experiência com implantação de sistemas de gestão. Primeiro como Consultora e Analista de implantação, depois como Coordenadora de Migração de dados legados e por último como Gerente de Projetos. Busco me recolocar no mercado de trabalho em um cargo de liderança, devido as experiencias anteriores.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-12T19:12:00.000Z'::timestamptz),
  ('Paula De Oliveira Rodrigues','paula_zinha29@hotmail.com',NULL,'51992782314','1990-06-29',35,'União estável','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1IfWiYMsLc1cfrj0SlbUbaaDjCJKv0hT7','Publicidade e propaganda','Ensino Superior Completo','Uniritter','2018-08-31','Sou formado','Laboratório Aspheric Financeiro - Mai.2025 a Jul.2025 - Cargo de Auxiliar Administrativo III - atividades: realização de emissão e controle de boletos, faturas e notas fiscais de serviços;
acompanhamento de vencimentos e cobrança de clientes inadimplentes; registro de recebimentos e conciliações bancárias no sistema; negociação de prazos e condições de pagamento com clientes; elaboração de relatórios de inadimplência e apoio à área financeira para projeções de fluxo de caixa; preenchimento de planilhas de bonificação.

Vasco Construtora RH - Jan.2023 a Dez.2023 -
Cargo de Auxiliar de Departamento Pessoal - atividades: recrutamento e seleção, planejamento e preenchimento de planilhas de cargos e salários, benefícios, treinamentos e desenvolvimento,
liderando e facilitando o desenvolvimento do trabalho das equipes. Assessoria a diretoria e setores da empresa em atividades como
planejamento de algumas ações pontuais de endomarketing. Responsável por analisar a documentação de terceiros (documentos
de pré e pós contratação, e analise mensal dessa documentação).
Marketing - Dez.2023 a Jan.2025 - Cargo de Assistente de Marketing - atividades: lançamentos de notas no sistema assim como a sua programação de pagamento, implantação de PDV’s referente aos empreendimentos que estão em
vendas, organização dos serviços off-line, preenchimento de planilhas, organização de ações de endomarketing internos e externos, contato com alguns mídias externas para atualização de
contratos ou cancelarmos. Gerenciamento de redes sociais da empresa: Instagram, Facebook (meta), YouTube, botmaker, Google analitcs.

Condomínio Cantegril Fase 4 - Viamão Administrativo - Jan. 2019 a Dez. 2023 - Cargo: Assistente Administrativo: Responsabilidades: Contratação e demissão de funcionários; fechamento de ponto mensal; separação de
documentação a pagar e encaminhamento a nossa Imobiliária; separação de Docs. de todos os condomínio ; atendimento diário aos condôminos; resolução de alguns problemas; reuniões com a Sindica; preenchimento de planilhas diversas (água, moradores, funcionários, financeira); auxilio a Sindica em tudo o que deve ser tratado dentro do condomínio; fechamento do caixa mensal, dos gastos diários caso tenha; registro e Controle de funcionários; Gestão de contratos e serviços; controle de documentação de Obras de Construção e reformas.

Óticas Diniz Administrativo - Mar. 2013 - Set. 2018 -
Cargo: Assistente Administrativo (de 06/2016 a 09/2018) Responsabilidade: Baixa nos pagamentos diários, execução de planejamento e fechamento de planilhas de bonificação para consultores, responsável por algumas negociações com fornecedores, pagamento de VT e VR dos funcionários da empresa, pagamento de
salários, responsável pelo fechamento do DRE da empresa e apresentação para o meu Gerente Administrativo, responsável pelo preenchimento de planilhas financeiro (fluxo de caixa previsto,
desempenho econômico das unidades, comparativo mensal de metas); acesso à plataforma on-line dos bancos.
Cargo: Auxiliar Administrativo (de 06/2013 a 06/2016) Responsabilidades: contas a pagar e contas a receber da empresa, fluxo de todos os caixas, conferência diária dos caixas, conferência de notas fiscais da empresa, lançamentos de notas no sistema, controle de contas bancárias, despesas fixas da empresa, agrupamento de boletos.
Cargo: Caixa da loja (de 03/2013 a 04/2013)
Responsabilidades: abrir e fechar caixa diariamente, cadastro de produtos no sistema, conferência de dinheiro no final do expediente, conferência de armações.',NULL,NULL,'Administrativa, Financeiro, Marketing',NULL,NULL,'Instagram','Nao','3500','Sim',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-12T19:57:00.000Z'::timestamptz),
  ('Isabela Braatz','isa.braatz.15@gmail.com',NULL,'54992448756','2000-01-29',26,'Solteiro(a)','2','Sim','Ibirubá','https://drive.google.com/uc?export=view&id=1Uk64lzxP9042SEmwqJqgNlpbBiF92xYJ','Ciências Contábeis','Pós-graduação Incompleta','Unopar','2021-12-15','Sou formado','Cotribá; Assistente Administrativo Sênior; 26/10/2020 - atualmente; Atuo no setor contábil a quase 5 anos, realizando rotinas contábeis de conciliação e conferência bancárias, criação de balanços contábeis, análise de dados, conferência de documentos, lançamento de notas.','Contabilidade de custos, rotinas fiscais, gestão contábil.',NULL,'Administrativa, Financeiro',NULL,NULL,'Instagram','Não','3.700,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-13T01:37:00.000Z'::timestamptz),
  ('Iago Barbosa','iagobarbosar@gmail.com',NULL,'51998552218','1998-05-18',27,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1hYA1qgQkFMy2LDhL8-XTwXdsT1tL4WPi',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','1) Iesa Jeep 
2) mecânico/Adm
3)06/2022 - 01/2025
4) Manutenções, administração de oficina, controle de qualidade, resolução de conflito, comunicação pessoal.

1) Cherutti imóveis 
2) Corretor imobiliário 
3) 06/2025 - 08/2025
4) Administração de cartela de cliente, vendas, negociação.',NULL,NULL,'Administrativa, Novos Negócios',NULL,NULL,'Facebook','Não','2.000,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Olá, sou Iago Barbosa, estou de volta à cidade de Bagé, após 5 anos fora, em busca de novas experiências e novas oportunidades. Vários empregos onde jamais pensei em trabalhar, e agora, retornando para cidade natal em busca de oportunidades que não encontrei a 5 anos atrás!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-13T12:05:00.000Z'::timestamptz),
  ('Rafaela Galarza','rafaelamgalarza1@gmail.com',NULL,'55996267673','2000-12-18',25,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1aR6mH0wCfsVURJx252UlLweQz-8E3IuS','Administração','Ensino Superior Incompleto','UNIPAMPA','2026-08-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Nome da empresa: Osirnet
Cargo: Líder de Equipe
Data início: 2021
Data fim: 2025
Atividades: Iniciei na empresa como vendedora, onde tive uma experiência na função por 1 ano e 10 meses, me destaquei durante todo o período atingindo as metas comerciais. Após, fui promovida a Analista Comercial, e depois a Líder de Equipe. Durante esses anos, trabalhei com atendimento ao público, resolução de problemas, vendas ativas e passivas, monitoramento de atendimentos, monitoramento de indicadores, gestão de equipes, gestão de lojas, gestão de estoque, treinamento e desenvolvimento de pessoas, elaboração de indicadores, gerenciamento de metas, entre tantas outras funções e atividades exercidas. 

Nome da empresa: Secretaria da Fazenda
Cargo: Supervisor Administrativo
Data início: 2020
Data fim: 2021
Atividades: Atendimento ao público, cadastro e atualização de contribuintes, emissão de notas fiscais, entre outras demandas do setor.','Atualmente estou no 8 semestre da graduação em Administração. Durante a trajetória acadêmica e até mesmo profissional realizei alguns cursos que obtive certificados e principalmente muito conhecimento, dentre eles, participei do programa de desenvolvimento de lideranças ofertado pela Conectare, em Pelotas/RS. Ao longo do ano de 2024 me desloquei mensalmente para realizar o curso presencialmente. Este curso foi de suma importância para me capacitar na profissão de gestão de pessoas e liderança. Nos anos anteriores realizei outros cursos, como assistente administrativo, atendimento encantador, curso de excel e participei de algumas palestras com foco em vendas e liderança, como por exemplo, estive presente no “Conexões de sucesso”, ministrado por Thiago Concer.',NULL,'Administrativa, Comercial, Financeiro, Engenharia',NULL,NULL,'Instagram','Nao','Acima de R$3.000','Não',NULL,'Gerente/Gestor Administrativo','Sou uma pessoa que busca desenvolvimento constante e gosto de fazer parte de lugares que promovam isso, que incentive o crescimento das pessoas que possuem potencial, e por conta disso, estou me candidatando para esta empresa, pois pelo menos é a impressão que ela me passa. Gostaria muito de fazer parte do time, se não for no cargo que mencionei no interesse, que seja em outra dentro das áreas que mencionei. Tenho certeza que posso agregar muito junto a vocês, e tenho esperanças positivas quanto ao retorno desta candidatura!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-13T14:15:00.000Z'::timestamptz),
  ('Paulo Ricardo Justen Micheli','pricardojusten@gmail.com',NULL,'55996283657','1988-11-07',37,'União estável','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1KuNkuHKMIcLKhs6gkOhHgyWFF9-HqOS0','Técnico em Edificações e Design de Interiores','Ensino Superior Incompleto','CPET e SENAC',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Restaurações Guajuvira, Aux. De Marceneiro, 09/2009 à 12/2014;
Mercearia De Mattos, Caixa, 03/2015 à 12/2021;
Profissional Liberal, projeto e execução de obras civil e Interiores, 12/2021 até o momento.','Curso em Regularização de Imóveis',NULL,'Arquitetura, Engenharia',NULL,NULL,'Facebook','Não','R$3.500,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho experiência com os softwares autocad, sketchup, revit, enscape.
Conhecimento básico em TQS','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-13T16:08:00.000Z'::timestamptz),
  ('Carla Tressoldi Santos','carlatressoldi@hotmail.com',NULL,'51980518665','1999-05-31',26,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1inWvC5FVvGswSK8lLm4t28bQenp1YaVQ','Ciências Contábeis','Ensino Superior Completo','Uniasselvi','2023-08-13','Sou formado','Mr Distribuidora 1 ano, auxiliar administrativo, fazia o financeiro, contas á pagar e á receber, conciliação bancária. 
Mac seleção, 3 anos, analista de rh, cuidava de 300 funcionários como posto avançado dentro dos clientes, benefícios, remuneração, treinamento, integração, tudo que envolve o dp, folha de pagamento, conferência de ponto, férias, rotinas da folha, e-social, planilhas, head count, controle de faltas, etc..','Sou formada em Contábeis e estou finalizando a graduação de administração.',NULL,'Administrativa',NULL,NULL,'Agência de Empregos','Nao','R$2.200,00','Sim',NULL,'Vaga para analista de rh','Sou comunicativa, já ministrei várias integrações, sou organizada, já trabalhei com vários arquivos, tanto físico quanto em nuvem, sou disposta e confiável, já participei de vários projetos onde era exigido sigilo, sou profissional, lê o meu trabalho muito a sério e sou comprometida, acredito no trabalho em equipe.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-13T18:28:00.000Z'::timestamptz),
  ('Alberto Machado de Medeiros','albertomdemedeiros@gmail.com',NULL,'51996748339','1987-02-05',39,'União estável','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1EhYFhJAoFRc0XPGFG3fngyeyYic_Wb2X','Administração de empresas','Pós-graduação Completa','Faccat','2016-11-01','Sou formado','08/2021 – Até o momento – SAP Assessoria Contábil
Cargo: Gerente Administrativo e Financeiro
Responsabilidade:
● Desenvolver e implementar estratégias para otimizar as operações do
escritório;
● Participar na definição de metas e objetivos da empresa;
● Supervisionar, treinar, desenvolver e avaliar as equipes;
● Promover um ambiente de trabalho positivo e produtivo;
● Gerir a alocação de tarefas e responsabilidades;
● Desenvolver, implementar e monitorar políticas e procedimentos
administrativos;
● Melhorar a eficiência operacional através da automação e otimização de
processos;
● Gerir os recursos, materiais e equipamentos necessários ao funcionamento do
escritório;
● Assegurar a manutenção adequada das instalações e dos equipamentos;
● Promover a comunicação entre diferentes departamentos e equipes;
● Garantir que todos os colaboradores estejam informados sobre políticas,
mudanças e procedimentos relevantes;
● Planejar, organizar e controlar as atividades financeiras da empresa;
● Supervisionar o fluxo da caixa e a administração de recursos financeiros;
● Gerir o contas a pagar e a receber;
● Supervisionar a elaboração de relatórios financeiros, balanços e
demonstrativos de resultados.
● Garantir a precisão e a conformidade das projeções financeiras com as normas
contábeis e regulamentares.
● Coordenar e monitorar o orçamento da Cia;
● Analisar dados e indicadores financeiros para identificar tendências, riscos e
oportunidades;
● Fornecer suporte à tomada de decisões estratégicas baseadas em análises
financeiras.
● Preparar e coordenar auditorias internas e externas.
● Assegurar que a empresa cumpra todas as obrigações fiscais, tributárias e
regulatórias.
● Implementar e monitorar controles internos para mitigar riscos financeiros.
● Gerir relacionamentos com bancos, investidores e outras instituições
financeiras.
● Desenvolver e implementar processos para a integração de novos clientes,
garantindo uma transição suave e eficiente;
● Garantir que os novos clientes compreendam os serviços oferecidos, os
honorários e as políticas da empresa;
● Garantir um atendimento de qualidade, respondendo prontamente às dúvidas
e ofertas dos clientes;
● Gerenciar as ações de relacionamento e proximidade com os clientes,
identificando suas necessidades e oferecendo soluções personalizadas;
● Desenvolver estratégias para a fidelização e retenção de clientes, oferecendo
um serviço excepcional e agregando valor contínuo;
● Gerencias as pesquisas de satisfação e implementar melhorias com base no
feedback dos clientes.

10/2020 - 06/2021 - Vero Internet
Cargo: Gerente de Crédito e Cobrança
Responsabilidade:
● Liderou a criação e o desenvolvimento da área de Crédito e Cobrança
integrando a operação nacional da organização;
● Desenvolveu a Política de Crédito, régua de cobrança e rotinas de tratamento
de inadimplentes;
● Ampliou as formas de recebimento e canais de atendimento de clientes;
● Mapeou indicadores de acompanhamento de atividade, desempenho e
capacidade. Alguns como: Curva de Recebimento, Inadimplência Corrente e
Estratificada, Risco de Crédito, FPD/SPD/TPD, Capacidade Operacional;
● Implantou Política de Metas, Comissionamento e Premiação para a área;
● Participou de Squads de abrangência nacional de programas de Integração de
Novas Aquisições, Treinamentos, Clima Organizacional e Implantação de
CRMs.

07/2018 - 10/2020 - INB Telecom
Cargo: Coordenador Administrativo Financeiro
Responsabilidade:
● Qualificou os processos, controles e indicadores de faturamento, contas a
pagar, contas a receber e tesouraria;
● Participou do Squad de implementação do Ciclo PDCA;
● Mapeou o Custo Gerencial do Serviço Prestado;
● Formatou o Plano de Contas e a constituição do DRE Gerencial;
● Apoiou no desenvolvimento do Business Intelligence da organização;
● Ampliou as formas e canais de recebimento financeiro de clientes;
● Liderou a criação e o desenvolvimento da área de Cobrança;
● Apoiou os processos de fusões e aquisições da organização;
● Contribuiu com o mapeamento e apoio a migrações de CRMs;
● Otimizou as negociações com instituições financeiras para manutenção e
captação;
● Mapeou os processos formais para a área Financeira, Departamento Pessoal,
Recursos Humanos e Segurança do Trabalho;
● Apoiou processo de implantação do Plano de Cargos e Salários e Plano de
Comissionamento;
● Implantou o mapeamento de indicadores de inadimplência;
● Desenvolveu base de conhecimento formal;
● Implantou rotinas de mapeamento e aplicação de treinamento técnicos e
comportamentais da área.

02/2018 – Até o Momento - Centro Universitário Leonardo da Vinci
Cargo: Professor Universitário
Responsabilidade:
● Docente nos cursos de Graduação em Administração, Ciências Contábeis,
Economia, Tecnólogos de nível superior em Processos Gerenciais, Gestão de
Recursos Humanos, Logística e Gestão Financeira;
● Docentes nos Cursos de Pós-Graduação na área da Gestão Organizacional;
● Professor Conteudista de Cursos de Graduação e Pós-Graduação. Obras em
destaque:
○ Gestão de Crédito e Mensuração de Riscos – ISBN:978-65-
6083-803-1;
○ Tendências Digitais em Finanças e Produtos Bancários –
ISBN: 978-65-5466-068-6;
○ Criptoativos – ISBN: 978-65-6083-820-8.

11/2014 - 01/2018 - Centro Universitário Cenecista de Osório
Cargo: Professor Universitário
Responsabilidade:
● Docente nos cursos de Graduação em Administração, Ciências Contábeis,
Tecnólogos de nível superior em Processos Gerenciais, Gestão de Recursos
Humanos, Logística e Gestão Financeira.

03/2010 - 04/2017 - Centro Universitário Cenecista de Osório
Cargo: Comprador
Responsabilidade:
● Responsável pela negociação e aquisição de produtos, insumos e serviços;
● Gestão de contratos com fornecedores;
● Lançamento de contas a pagar;
● Gestão orçamentária de bens, produtos, insumos e serviços.','Sou graduado em Administração, especialista em Contabilidade, Controladoria e Finanças, pós-graduado em Planejamento Estratégico e Gestão e em Educação. Sou mestre em Desenvolvimento Regional.',NULL,'Administrativa, Financeiro',NULL,'https://drive.google.com/open?id=1C4sMPON0wkUTvxz08JxKs0uAcqmWI0AK','Indicação','Não','CLT a partir de R$ 10.000,00. PJ a partir de R$ 13.000,00','Sim','Ivan Buhler: e-mail: ivbl0481@gmail.com  - INB Telecon
Rita de Cassia - e-mail: rita.tq@hotmail.com - Centro Universitário Cenecista de Osório 
Iuri Buhler: e-mail: ibuhler@verointernet.com.br - Vero Internet','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-13T18:51:00.000Z'::timestamptz),
  ('Maria Riambau Garcia','maria.-.riambau@hotmail.com',NULL,'53999036679','1995-03-01',30,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1DNHJ85EbAfR-X8g24bEYwFaUwYfuTdNs',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','• Macedo Imóveis (16/12/2024 – 03/06/2025)  - Estágio  
Cargo: Auxiliar Administrativo e Financeiro.  
Bagé – RS.  
• Fabio da Silva Pedra ME (24/06/2024 – 13/12/2024)  
Sem vínculo empregatício.  
Cargo: Auxiliar Administrativo.  
Bagé – RS.  
• KNN Idiomas (18/03/2022 – 10/05/2023)  
Cargo: Professora de Inglês. (18/03/2022 - 10/05/2023)  
Cargo: Administrativo Financeiro. (13/03/2023 - 10/05/2023)  
Jaguaruna – SC  
• Instituto Mix de Profissões (15/03/2021 – 25/02/2022)  
Cargo: Operadora de Cobranças.  
Tubarão – SC  
• Instituto Mix de Profissões (02/07/2020 – 10/03/2021)  
Cargo: Orientadora Comercial (02/07/2020 – 10/08/2020)  
Cargo: Operadora de Cobranças (11/08/2020 – 10/03/2021)  
Jaguaruna – SC  
• O Boticário (28/01/2019 - 20/04/2019)  
Cargo: Operadora de caixa.  
Bagé - RS  
• Cobrazil Engenharia (30/10/2017 - 03/08/2018)  
Cargo: Auxiliar Técnico.  
UTE Pampa Sul - Candiota - RS','Técnicas Administrativas; Técnico em Transações Imobiliárias; Língua Inglesa.',NULL,'Administrativa, Comercial, Financeiro, Novos Negócios',NULL,NULL,'Instagram','Não','R$1.500,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma profissional organizada e detalhista, com experiência em apoio administrativo e habilidades em gerenciamento de tempo e priorização de tarefas. Estou procurando uma oportunidade para aplicar minhas habilidades e conhecimentos em um ambiente dinâmico e colaborativo. 
Possuo habilidades em:
- Atendimento ao cliente
- Gerenciamento de arquivos e documentos 
- Suporte administrativo 
- Organização de agendas e compromissos 
- Controle de correspondências 

Estou ansiosa para contribuir para o sucesso da equipe e aprender com a experiência. Busco uma oportunidade para crescer profissionalmente e agregar valor à empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-13T19:01:00.000Z'::timestamptz),
  ('Vanessa Monteiro Luciano','vaahml@gmail.com',NULL,'51998380830','1994-03-28',31,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1JvtvVx8slD81SNmIeSmqJU2Dn8yQsvVb','Recursos Humanos','Ensino Superior Completo','Facos','2017-08-30','Sou formado','General Motors - 2021 - 2025
Parceiro de Gestão de Dados – People Service – RH (2025)
Responsável pelas atividades estratégicas de back office em Recursos Humanos, com foco em resolução de problemas, organização e suporte à equipe. 
Planejar o volume e a demanda para garantir a alocação ideal de recursos;
Liderar e orientar projetos internos com foco na melhoria de processos;
Elaborar e implementar o planejamento do grupo alinhado às metas operacionais e prazos curtos;
Preparar a documentação dos funcionários com precisão e conformidade;
Prestar suporte aos parceiros de equipe, promovendo a integração e a fluidez dos fluxos de trabalho.

Coordenadora de Operações – People Service – RH (2024/2025)
Coordenação das atividades dos agentes, previsões, escalas de trabalho e pausas;
Análise de desempenho, interpretação de dados de dashboards e suporte à supervisão na
elaboração, execução e acompanhamento de planos de ação para garantir o desempenho da equipe;
Gestão de casos escalonados e validação com supervisores e gerência;
Apoio às lideranças com análises de dados para reuniões mensais e trimestrais com
Stakeholders e Liderança global;
Análise para melhoria contínua dos processos da área.

Especialista de Processos (WhatsApp) – People Service – RH (2024)
Acompanhamento de casos escalonados com stakeholders;
Gestão de SLAs de curto prazo com a equipe;
Suporte aos membros do time;
Atualização da base de conhecimento;
Realização de auditorias para avaliar qualidade e bom relacionamento com os clientes;
Avaliação, criação e aplicação de materiais de treinamento para atualização do conteúdo com
a equipe;
Análise de reabertura de chamados;
Identificação de oportunidades de melhoria de processo;
Proposição e implementação de automações e melhorias.

Analista Assistente – People Service – RH (2021–2024)
Atendimento ao colaborador por WhatsApp, telefone e e-mail, com demanda de mais de 10 atendimentos ao mesmo tempo, e prazos de até 5 dias para o retorno.
Atividades transacionais do departamento de Recursos Humanos.

Gráfica Expressão Brindes - 2019 - 2020
Designer Gráfico
Atendimento ao cliente;
Criação de artes gráficas;
Realização de orçamentos e vendas.

Horizonte Acabamentos - 2018 - 2019
Analista Administrativo
Atendimento ao cliente;
Atividades de recursos humanos e departamento pessoal;
Orçamentos e vendas.

Prefeitura Municipal de Santo Antônio da Patrulha - 2017
Estágio em Recursos Humanos
Atendimento ao cliente e servidores públicos;
Suporte com dúvidas sobre benefícios em geral e pagamentos;
Atuação nas atividades diárias de recursos humanos.','Graduação em Recursos Humanos, Curso profissionalizante de secretariado, Cursando inglês.',NULL,'Administrativa',NULL,NULL,'Agência de Empregos','Não','4000','Sim','Eliana Araujo, foi minha gerente na empresa General Motors, contato (19) 998361537
Virgilio Luciano, foi meu chefe na empresa Horizonte, contato (51) 998658178
Filipe Luciano, foi meu chefe na empresa Horizonte, contato (51) 999807700','Coordenadora de RH','Cerca de 10 anos de experiência em atendimento ao cliente e bom relacionamento com clientes.
Cargos exercidos de Analista de atendimento no WhatsApp, telefone e e-mail, Especialista de Atendimento no WhatsApp, Coordenadora de atendimento de WhatsApp e E-mail e Parceira de Recursos Humanos, Analista Administrativo e Designer Gráfico.
Perfil analítico, com atuação em processos de back office, processos repetitivos, alta volumetria, melhoria continua e planejamento de capacidade da equipe.
Elaboração e condução de reuniões de equipe e apresentações para parceiros de equipe.
Planejamento e condução de treinamentos com foco em desenvolvimento e resultados;
Condução e suporte na pós-integração do empregado na empresa.
Excelente relacionamento interpessoal. 
Experiência com Slack, Teams,  Outlook, Excel, Power Point, One Notes e Canva.
Atualmente faço curso do idioma Inglês.
Já trabalhei como autônoma como criadora de conteúdo para empresas.
Participei de alguns alguns trabalhos voluntários, como eventos de natal em escolas, arrecadação de doações em São Paulo para as enchentes do litoral norte de São Paulo e também para as enchentes do Rio Grande do Sul e ação caminho limpo em Gravataí.
Fora do lado profissional eu gosto de experimentar bons vinhos, cozinhar, praticar alguma atividade física, assistir filmes e séries, jogar Playstation, estar com meu marido e a família, passear com o meu cachorro.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-13T20:35:00.000Z'::timestamptz),
  ('Tamyres Souza Indarte','tamyressouzatafer@gmail.com',NULL,'55996503670','1999-07-27',26,'Casado(a)','1','Não','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1lUEqABK3E6eveAy_1tL2TWfGS-S4UyCe','Administração de empresas','Ensino Superior Incompleto','URCAMP','2027-12-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Trabalhei no escritório Normey e Amado advogados como assistente administrativa, tenho experiência na área de vendas e marketing digital','Estou cursando 4 semestre de Administração na URCAMP 
Estou cursando 2 período de TTI - Técnico em Transações Imobiliárias na UNICORP
Tenho curso técnico de manutenção e suporte em informática na Escola General Neto',NULL,'Administrativa, Comercial, Financeiro, Marketing',NULL,NULL,'Instagram','Nao','R$1.518,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-13T20:49:00.000Z'::timestamptz),
  ('Rodrigo bertotto rosa','rodrigobertotto@hotmail.com',NULL,'51993234450','1988-12-17',37,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1VGdY1GPiq7MefnW9TT1PT9xT0vicBlOl','Gestao financeira','Ensino Superior Completo','Fadergs','2023-08-03','Sou formado','Super lubrificantes/ assistente de faturamento e supervisor administrativo/ emissão de notas fiscais, cotação de transportadoras, cadastro de empresas, análise de credito.
Edificare engenharia/ assistente financeiro/ contas a pagar.
Flexbimec brasil/ estagio/auxiliar administrativo financeiro/ assistente administrativo financeiro/ contas a pagar e receber/ emissão de notas fiscais/ cadastro de empresas/ fluxo de caixa/ conciliação bancaria/ controle de inadimplentes/ compras.',NULL,NULL,'Administrativa, Financeiro',NULL,NULL,'Instagram','Nao','3500','Sim',NULL,'Financeira',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-13T21:30:00.000Z'::timestamptz),
  ('Lithyeli Santos Messaggi','lithyelimessaggi@gmail.com',NULL,'997400522','2006-11-24',19,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1naUEGOnc6zG4_rTsrnzocdq7GZrPvx85','Cursando Pedagogia','Ensino Superior Incompleto','Universidade Uniasselvi',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Instituto Nacional do Seguro Social- INSS
Estágio- Recepcionista 
01/2023- 12/2024 
EMEI Pequeno Aprendiz 
Estágio- Monitora 
02/2025- Atualmente.','Tenho curso de Inglês Nível Básico e Treinee Coaching 1 (Administração Informatizada). Experiência profissional com atendimento ao público de 2 anos.',NULL,'Administrativa',NULL,NULL,'Google','Sim, já conhecia a empresa por uma conhecida que trabalhou por um tempo.','Procuro trabalho de carteira assinada!','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho uma boa comunicação com as pessoas, é uma área que gosto de trabalhar e me saio muito bem!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-14T02:32:00.000Z'::timestamptz),
  ('María Elisa Alvarez Melo','mariaelisa82@hotmail.com',NULL,'+59892306903','2002-10-22',23,'Solteiro(a)','0','Não','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1p-j4Fdm5ndQNHLFq635fomlhtH_gLvIp','Testing de Software QA','Ensino Superior Completo','Dr Gómez Gotusso Liceo 1 Artigas Uruguai','2020-12-11','Não, no momento pausei/parei por um período.','Escritorio Uruguay (Artiga) 06/2022 - 01/2023

-Gestoría ante BPS, BSE, DGI (Trámites presenciales, web, entre otros).
-Atención al cliente (Personal y al teléfono)
-Exoneraciones (Sector Inmobiliario).
-Manejo de (Excel, Word, entre otros).
-Inventarios
-Depósitos, pagos por la web y presencial.
Administrativa y Secretaría de la Dra. :
- Asistí a distintos Juzgados ya sea por números de expedientes, consultas etc.
-Tramites de Jubilación, entre otros
-Manejo personal de su correo de notificaciones
(abogados), gmail.
- Atención al cliente (Personal y al teléfono)
- Orden de documentaciones en su escritorio personal.
• Aquí en el Escritorio Uruguay he trabajado tanto en el sector inmobiliario y además en conjunto con la patrona en la cual es abogada y allí tiene a parte su
escritorio personal.

Estudio Jurídico (Abogados) :
02/2023 - 03/2023
-Atención al cliente Presencial en el recibidor.
-Mandados a distintos lugares según lo qué se me pide, principalmente a los distintos juzgados de la ciudad.','Bachillerato en EXCEL (Udemy)
03/2021 - 06/2021

Bachillerato en Fundamentos de Programación (Instituto Bios)
04/2022 - 06/2022

Bachillerato en Tester de Software INEFOP
03/2023 - 06/2023

Alianza Servicios Educativos Testing Funcional 03/2024',NULL,'Administrativa, Novos Negócios, Engenharia',NULL,'https://drive.google.com/open?id=1uQDXzBLbTSfCaGzgF6YyaQCwzBNlHAVs, https://drive.google.com/open?id=1Drt2yv-Qe3gGmWcBZpuHD1eqw8C8pGIL, https://drive.google.com/open?id=1kcfHiQDWllqKuQe-NuHYI2w02KnS3CgA','Instagram','Nao','Segúm o rol na empresa','Sim','+598 99 392 180 Julio Aramburu','Na área de informática em geral ou administrativa','Oi meu nome é Elisa como falei no principio, estou tentando me formar em alguma área de informática mas no mesmo jeito faz anos que faço cursos de informática em todas as Áreas imaginável, sou uma pessoa muito justa o que é branco e branco e o que é preto e preto  além disso Boa disposição para alinhar-me com a missão e visão das empresas, seguindo seus princípios;
• Pontualidade
• Conhecimento em Office (Excel, Word)
• Capacidade de adaptação
• Comunicação fluida
estou as ordens!! :)','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-14T04:13:00.000Z'::timestamptz),
  ('Thiago Feldmann Gonçalves','tfelddy11@gmail.com',NULL,'51999113519','1989-09-07',36,'Solteiro(a)','1','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1Ysfz67zjDG9Lhiqyrr7F9S741jPLJ6oX','Administração de empresas','Pós-graduação Incompleta','Estácio de Sá','2023-08-14','Sou formado','Atuei diretamente com rotinas administrativas na AEL Sistemas, onde fazia gestão de compras de materiais, organização de cronogramas, controle de reuniões e contratação de treinamentos. Também participei da implantação de melhorias e na construção de relatórios com base em dados analisados. No IBGE, tive contato com controle de cadastros, suporte a documentos e tarefas de apoio administrativo. Tenho facilidade com Excel e organização de processos.',NULL,NULL,'Administrativa, Comercial, Financeiro, Marketing',NULL,'https://drive.google.com/open?id=13poyU8sXBLRijtjMzHVdlmUiusHmbn1-','Instagram','Não','2500','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-14T13:49:00.000Z'::timestamptz),
  ('Julia Mendes de Souza da rocha','juliamendes02899@gmail.com',NULL,'51997569608','2008-07-01',17,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1XPm5iDCGE0K0JK60c3C9DNH8p6ksFiwf','Administração de empresas','Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Eu trabalho na Guimarães no setor RH',NULL,NULL,'Administrativa, Estágio, Marketing',NULL,NULL,'Indicação','Não','1500','Não',NULL,'RH','Faço estágio pelo CIEE e curso administração por lá.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-14T16:39:00.000Z'::timestamptz),
  ('Tatiane Dieter','tati.dieter@hotmail.com',NULL,'51991195106','2024-12-20',1,'União estável','1','Sim','Novo Hamburgo/rs','https://drive.google.com/uc?export=view&id=11xSyIityKtQZCavqnL1Qd-9le2IaMYIO','Gestão Financeira e Imobiliária','Pós-graduação Completa','Uninter','2024-11-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Olá! Anexarei meu currículo com todas as informações solicitadas',NULL,NULL,'Administrativa, Comercial, Financeiro',NULL,NULL,'Agência de Empregos','Não','3500','Sim',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-14T17:38:00.000Z'::timestamptz),
  ('Paulo Ricardo Schmitt','paulo.schmitt@hotmail.com',NULL,'55996934091','1961-04-17',64,'Divorciado(a)','3','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1Auybz0EJoE1asYdo9ixTINjBp1nz1zgu','Logística','Ensino Superior Incompleto','Ulbra',NULL,'Não, no momento pausei/parei por um período.','Postos de combustível Rosul Ltda 
07/05/2025 a 05/08/2025
Assistente administrativo 
Contas a pagar, conciliação bancária, lançamento de notas fiscais entrada e saída.',NULL,NULL,'Administrativa, Comercial',NULL,NULL,'Facebook','Nao','R$2.500,00','Não',NULL,'Comercial','Experiência de mais de 30 anos nas áreas comercial, administrativa e afins como vendedor, supervisor e gerenciamento.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-14T18:04:00.000Z'::timestamptz),
  ('Nathalia Teixeira Nunes','nathaliateixeira9@gmail.com',NULL,'5551989128597','1997-01-03',29,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1EVX5j33suv1_J1pfk6H5_Dm5-dzW7bcl','Tecnologia em processos gerenciais','Ensino Superior Incompleto','Uniasselvi','2027-08-27','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Deuseg limpeza e serviço | recepcionista 
11/2016 a 05/2018
Recepção e atendimento ao cliente; organização de documentos','Assistente administrativo 
Pacote Office intermediário 
Comunicação escrita e oral',NULL,'Administrativa, Comercial, Estágio',NULL,'https://drive.google.com/open?id=1y4JG4JCWZMP8RLxoF2sMjr9M1TeqZEuU','Facebook','Não','Mínimo 1.900,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-14T21:37:00.000Z'::timestamptz),
  ('Rosemari santos amaral','rosemariamarall@gmail.com',NULL,'55992088288','1987-06-07',38,'Solteiro(a)','1','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=121UbcSB3kcePDNUNuDrfQQpHLsmfKpQH','Matemática','Ensino Superior Completo','Instituto federal farroupilha','2022-12-09','Sou formado','Empresa prefeitura municipal de São borja,cargo monitora, funções de monitoria e atendimento ao público.','Formada no curso de matemática pelo instituto federal farroupilha campus São Borja .',NULL,'Administrativa',NULL,NULL,'Facebook','Não.','Compatível com a função.','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-14T22:29:00.000Z'::timestamptz),
  ('Larissa Pereira da Silva','lariaquistapace@gmail.com',NULL,'51985715314','2001-05-04',24,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1cUj5J0hsPbtqJFKObb4NCkASPh-iAU_z',NULL,'Ensino Médio Completo','Cruzeiro do sul','2028-12-12','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Rodoviasul 
6 meses , cadastro de notas 2023 a 2024
Recepcionista aprendiz 
Auto viacao Navegantes 2018 a 2019',NULL,NULL,'Administrativa, Estágio',NULL,NULL,'Facebook','N','1880','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-14T22:50:00.000Z'::timestamptz),
  ('Karoline Mohamad arduvino','karolinemohamad5@gmail.com',NULL,'55996262200','1996-12-17',29,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1JlzyuLvVV2TXNCXjQvIEoxPz-rXt7eHD',NULL,'Ensino Superior Incompleto','Urcamp',NULL,'Não, no momento pausei/parei por um período.','Albornoz cred empréstimo, ocupava o cargo de auxiliar administrativa, iniciei em 19/10/2023 e sai em 23/03/2025.
Era responsável pelo atendimento dos clientes,  realiza os empréstimos como consignado do INSS e do estado, antecipação do FGTS, empréstimo pessoal débito na conta de luz e por boleto.','Faço faculdade de veterinária, que no momento pausei o curso, tenho curso FBB 100 correspondente completo + LGPD um curso de aprimoração do mercado financeiro entre outros cursos citados no currículo.',NULL,'Administrativa, Comercial, Financeiro, Novos Negócios',NULL,NULL,'Instagram','Não, vi uma publicação no Instagram','R$1.900','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou bastante comunicativa, pontual, tenho fácil aprendizado e desenvoltura em novas funções e trabalho bem em equipe.
Tenho amplo conhecimento em informática, conhecimento básico em espanhol.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-14T23:30:00.000Z'::timestamptz),
  ('Camila Bock','camila_bock@hotmail.com',NULL,'51994017750','1989-10-31',36,'Solteiro(a)','1','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1gDwZd8m5IAxFLBR_sXNDsmJbbrLR37oZ',NULL,'Ensino Superior Incompleto','Uniasselvi',NULL,'Não, no momento pausei/parei por um período.','Assistente Administrativo de RH Triplano Games, 2022 - 2025 Apoio às rotinas de recrutamento e seleção fornecendo atendimento a colaboradores e candidatos com postura acolhedora, organização de documentos, planilhas e suporte aos setores.

Atendimento ao Cliente | Vendas Boaformula Manipulação e Produtos Naturais, 2014 - 2020 | Dez 2021 - Mai 2022  Vendas, atendimento personalizado e orientação ao público, fortalecendo a relação entre empresa e cliente. Suporte na organização do ambiente, orçamentos, vendas e controle de pedidos.

Atendimento ao Cliente | Vendas Beladonna Pharmacia de Manipulação, Nov 2020 – Jun 2021 | Set 2021 – Dez 2021 Acolhimento e atendimento humanizado. Venda de homeopatias personalizadas conforme prescrição orçada.  Suporte na organização do ambiente. Promover a saúde, o vínculo e o bem-estar dos cliente com a farmácia.',NULL,NULL,'Administrativa',NULL,'https://drive.google.com/open?id=1h2Mecpr1Cb5hWok2peMkHcUrRWlQTIGO','Instagram','Não fui indicado.','R$2.500,00','Não',NULL,'Assistente administrativo','Sou uma profissional de Recursos Humanos que acredita que cada processo seletivo vai muito além de uma vaga preenchida — é sobre ouvir histórias, entender pessoas e criar conexões reais. Tenho experiência em gestão de equipes, organização de projetos e otimização de tempo, sempre buscando soluções criativas e humanizadas. Gosto de conduzir conversas de forma leve e acolhedora, para que as pessoas se sintam à vontade para mostrar quem realmente são. Estou sempre aberta a aprender e explorar novas ferramentas, inclusive gamificação, para tornar o RH mais próximo e inovador.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-15T03:15:00.000Z'::timestamptz),
  ('Larissa Lemos Bálsamo','llemosbalsamo@gmail.com',NULL,'55992145107','1997-09-28',28,'Solteiro(a)','0','Não','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1_wkiGby1o3aSYh1p0Z59SmSnigzpJ9Pz',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','1) Brunet Imóveis 2) secretária 3) 22/07/2024 - 20/01/2025 4) Atendimento aos clientes, presencial e por telefone, agendamentos de atendimentos e audiências,
ida aos bancos eventualmente, envio e recebimento de e-mails,
atualização de pagamentos via sistema.',NULL,NULL,'Administrativa, Comercial',NULL,NULL,'Instagram','Não','1.700,00','Sim',NULL,'Comercial','Possuo comunicação fluente em espanhol, curso de inglês britânico básico, facilidade com sistemas de software, experiência em atendimento e prospecção de clientes, adptabilidade e flexibilidade de horários. 
Residi por um ano em Blumenau, Santa Catarina, no qual obtive mais conhecimento e experiência após trabalhar na recepção de um escritório de advocacia, voltado para acessória jurídica de instituições financeiras. Minha última experiência profissional foi no setor imobiliário, em Santana do Livramento.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-15T12:59:00.000Z'::timestamptz),
  ('Susan Camargo','susancamargobarbero@gmail.com',NULL,'52994440968','1982-07-26',43,'Divorciado(a)','1','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1vAKGJwmtBUczItJQndQY_W_A2yxQ6627','Gestão em RH/dp','Ensino Superior Completo','Uniasselvi','2018-08-15','Sou formado','Bom dia! Meu nome e Susan Camargo tenho mais de 10 anos de experiência.na área RH/dp e administrativa trabalhei na Leandro do Amaral Rezende onde comecei como Aux departamento pessoal e depois fui coordenadora. Responsável pela folha de pagamento ,admissão e demissão e EPIs.integracao de novos funcionários,exames admissional e demissionais.ferias e benefícios .','Técnica contábil.gestao em RH/dp',NULL,'Administrativa, Financeiro',NULL,NULL,'Facebook','Não','3.500,00','Sim',NULL,'Vaga de analista RH e dp','Sou uma pessoa que gosta de desafios tem garra de conhecer novas coisas e facilidade de adaptar a novos ambiente e está sempre disposta em aprender.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-16T00:48:00.000Z'::timestamptz),
  ('Luana Cristina Da Costa Martínez','luanaccm84@gmail.com',NULL,'55984330232','1984-08-27',41,'Solteiro(a)','0','Não','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1x2KfLVg4wrCsJBqN8NNe2T7W-0tbAOtp','Tecnologia da informação','Ensino Superior Completo','Unip','2021-07-17','Sou formado','Righi supermercados, cargo empacotadora, a partir de 24 de março de 2022 (atual), empacotar mercadorias, ajudar na reposição de mercadorias, substituta na recepção',NULL,NULL,'Administrativa, Arquitetura, Marketing, Engenharia',NULL,NULL,'Facebook','Nao','R$1.800','Não',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-16T01:47:00.000Z'::timestamptz),
  ('Leticia Mattos Dambrósio','Leticiamdambrosio03@outlook.com',NULL,'55991804668','2003-01-18',23,'Solteiro(a)','0','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1D9So7EhBe2Q8g3sJQl6bdxLrUpBm2YsF','Administração de empresas','Ensino Superior Completo','Centro Universitário Leonardo da Vinci','2026-01-15','Sou formado','Empresa: Fernandez Comércio De Medicamentos SA – MB Farmácias
Cargo: Atendente/Estoquista
Período: Março de 2024 – Março 2025

Atendimento ao público

Operação de caixa

Conciliações bancárias

Controle de estoque

Cobranças

Renegociações

Cadastro de clientes

Conferência de cofre malotes

Emissão de NFs

Empresa: Instituto Mix de Profissões LTDA
Cargo: Assistente financeiro/Recepcionista
Período: Outubro de 2023 – Março de 2024

Atendimento ao público

Cobranças

Acompanhamento do fluxo de caixa

Contas a pagar e receber

Emissão e conferência de NFS-e

Organização de documentos físicos e digitais','Curso administração, tenho cursos de gestão financeira, gestão de pessoas, Recrutamento e Seleção  e Excel avançado',NULL,'Administrativa, Financeiro',NULL,NULL,'Facebook','Não','2100','Não','Adriele 55 9178-1778','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-16T03:41:00.000Z'::timestamptz),
  ('Laura Scheeren Theisen','laurascheerent@outlook.com',NULL,'51998106351','2005-03-30',20,'Solteiro(a)','0','Não','Glorinha/rs','https://drive.google.com/uc?export=view&id=174TP2hCurbRDlvVmpmaqpuQI1BXz3RDv','Administração','Ensino Superior Incompleto','UNIVERSIDADE FEDERAL DO RIO GRANDE-FURG','2027-12-21','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Primeiramente,iniciei minha jornada profissional em um pequeno comércio na minha atual cidade ,em Glorinha, em um mini mercado, onde trabalhava com atendimento ao público/caixa, além de manter o lugar ordenado, sendo um trabalho informal. Atualmente estou estagiando na Prefeitura Municipal de Glorinha, desde novembro de 2023, com data prevista de fim para novembro de 2025, trabalho especificamente na Farmácia Municipal, onde atendo o público e ajudo nas tarefas administrativas.','Atualmente estou no 4° período do curso de Administração, pela Furg de Santo Antônio da Patrulha, além disso já fiz um curso de curta duração de Recursos Humanos pelo IFSul, e Inglês Básico pela New Point,em Gravataí.',NULL,'Administrativa, Estágio',NULL,NULL,'Indicação','Não','Por volta de 1.800','Não','(51) 34871104- Farmácia Municipal de Glorinha-Falar com Mariana Portal','Quero inscrever-me no banco de talentos da Young!','Tenho um conhecimento básico/intermediário em inglês, presto trabalho voluntário na igreja, sempre que possível e estou disposta a auxiliar as pessoas quando necessário','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-16T12:36:00.000Z'::timestamptz),
  ('Jean Diniz','jeandinizjdx@gmail.com',NULL,'55974003823','1989-07-07',36,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=16ZWbYB6QhPAESgceperx5gh_zc9kK1EX','História','Ensino Superior Completo','Universidade de Caxias do Sul - UCS','2025-07-01','Não, no momento pausei/parei por um período.','Vivert Calçados - Representante de Vendas
Jan /2020 á Dez 2024
Autônomo 
Salário: comissão de 1,5%','Técnicas de Vendas - Abeline',NULL,'Comercial',NULL,NULL,'Facebook','Não','5.000,00','Sim',NULL,'Comercial','Possuo mais de 10 anos de experiência na área comercial, já vendi serviços, produtos e alimentos, no momento procuro mais e novos desafios na carreira, aliando experiências e vontade de aprender coisas novas, sempre em movimento e constante mudança, procurando alcançar meus objetivos pessoais e profissionais.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-16T15:38:00.000Z'::timestamptz),
  ('Manuela da Cunha Rodrigues','manurgues06@gmail.com',NULL,'51997806899','2006-04-06',19,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1M1Yx2W8UCMh8wZmepAWbn52WwQ9otWxI','Arquitetura','Ensino Superior Incompleto','Ulbra- Canoas',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Classe esquadrias 
Projetista de móveis (mai- 2025 / ago- 2025) 

Magazine Luiza
Vendedora (abr- 2025 / mai- 2025) 

Sorrifacil 
Recepcionista (out- 2024 / fev- 2025)','Tenho curso de Informática Básica (60h), com conhecimentos em IPD, Windows, Microsoft Word, PowerPoint, Digitação e Internet. Possuo experiência em ferramentas de gerenciamento de projetos, Autocad, SketchUp e Revit, além de gestão de mídias sociais e domínio do Pacote Office.',NULL,'Administrativa, Arquitetura, Engenharia',NULL,NULL,'Agência de Empregos','não, não fui indicada por nenhum colaborador!','Minha expectativa é compatível com o mercado e com minhas qualificações, mas meu principal objetivo é ter uma oportunidade de crescimento junto à empresa podendo assim aprender e ao mesmo tempo pagar minha faculdade de arquitetura!','Sim','Edite rocha Imobiliária (trabalhei sem carteira assinada como secretária) Edite-  51 99804-5220','Estou me candidatando a vaga de assistente de RH, encontrei a vaga no Sine e peguei a cartinha de indicação, ainda não trabalhei em Rh mas tudo que me disponho a fazer aprendo rápido e estou disponível quando vocês precisarem!','Gosto de conhecer lugares novos, de estar com minha família e meus animais, de cozinhar e desenhar. Momentos leves, como ver o nascer do sol na praia, ou tomar um chimarrão no sol. Tenho uma base em inglês, já fiz algumas aulas on-line, e adoro viajar para visitar minhas irmãs que é sempre quando me sinto mais feliz.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-16T17:34:00.000Z'::timestamptz),
  ('Anderson Rostirola','andersonrostirola@hotmail.com',NULL,'54996514350','1982-06-18',43,'União estável','0','Sim','Getúlio Vargas/rs','https://drive.google.com/uc?export=view&id=1Ex9BsKzDuM2pU7YHpYv79cbfGeW_C4ED','Ciências Contábeis','Ensino Superior Completo','Unideau','2013-03-22','Sou formado','Fui gerente financeiro na Sulcam Pré moldados e gerente administrativo na Sulmet Estruturas Pré Fabricadas.','Possuo especialização em Gestão de custos, possuo treinamento em departamento fiscal e bloco k. Há poucos meses finalizei tecnólogo em produção cervejeira.',NULL,'Administrativa, Comercial, Financeiro',NULL,NULL,'Instagram','Não','6.000,00','Não','Carlos Alberto Bonfiglio (diretor da Sulcam) - +55 54 9981-7532
Ronaldo Antônio Bonfiglio (diretor da Sulmet) - +55 54 9609-6851
Nilson Roque Frizzo (empresário) - +55 54 9998-7453','Administrativo','Produzo cerveja nas horas vagas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-17T02:15:00.000Z'::timestamptz),
  ('Deivid Rafael Fernandes Coitino','deividfernandes1996@hotmail.com',NULL,'55991739805','1996-09-30',29,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1UrfIz2tOZ_mxuuHQakFypS0vxU4S0ELO',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Gerente Comercial durante 7 anos no Grupo Grazziotin',NULL,NULL,'Administrativa, Comercial, Financeiro',NULL,NULL,'Instagram','Nao','..','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-18T02:08:00.000Z'::timestamptz),
  ('Roselaine P Maltha','roselainemaltha9@gmail.com',NULL,'51999878103','1972-09-28',53,'Casado(a)','2','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=11xG2pi-R95U0tgYBfCXd2h13zoGJnjRq','Pedagogia Empresarial','Pós-graduação Completa','Ulbra','2014-01-11','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Hcpa- área administrativa pelo período de 2 anos (05/2022 a 07/2024)','Bacharela em Pedagogia Empresarial (Educação nas Organizações) e MBA Planejamento e Gestão Estratégicas 
Atual estou fazendo tecnólogo em Gestão de RH pela fadergs 2 módulo, sou formada em Técnica em Gerência de Saúde e terminando graduação em Gestão Hospitalar',NULL,'Administrativa, Comercial, Estágio, Novos Negócios',NULL,'https://drive.google.com/open?id=1rbHUxLMAKV-DtgPStck1_mfmr7uSOTMX','Facebook','Não','2000','Sim','TELMO supervisor Hcpa','Rh','Sou voluntária projeto Pescar','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-18T05:01:00.000Z'::timestamptz),
  ('Vitor Rodrigues da Costa','costavitinho1234@gmail.com',NULL,'51996091445','2004-10-01',21,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=11gsl6CcpSq3CnYsyaLsdOBrltwGE7oox',NULL,'Ensino Médio Completo','EEEM Padre Réus','2022-12-12','Não, no momento pausei/parei por um período.','1) Tribunal Regional Eleitoral (TRE)

Cargo: Auxiliar Administrativo (temporário)
Período: 10/2022 até 10/2024
Principais atividades:
	•	Atendimento presencial ao público, auxiliando em dúvidas e orientações sobre processos eleitorais.
	•	Organização de documentos físicos e digitais, com foco em precisão e agilidade.
	•	Apoio em rotinas administrativas, triagem de informações e suporte interno aos setores.
	•	Cumprimento de prazos e procedimentos internos com responsabilidade e sigilo.



2) Freelancer – Produção Audiovisual (Empreendimento próprio)

Cargo: Produtor de Conteúdo / Atendimento ao Cliente
Período: 2024  – atual
Principais atividades:
	•	Atendimento e negociação direta com clientes, presencial e online.
	•	Organização de agenda, prazos e acompanhamento pós-venda.
	•	Produção, captação e edição de vídeos para redes sociais.
	•	Gestão de demandas administrativas do negócio, emissão de orçamentos e controle financeiro básico.



3) Atuação em Vendas Diretas (Empresa/Setor – ex: comércio local, vendas independentes)

Cargo: Vendedor / Atendente Comercial
Período: 10/2020 06/2022
Principais atividades:
	•	Abordagem e atendimento ao cliente, presencial e digital.
	•	Identificação de necessidades, apresentação de produtos e fechamento de vendas.
	•	Organização de pedidos, estoque e suporte no pós-venda.
	•	Desenvolvimento de habilidades de comunicação clara e persuasiva.

⸻

4) Outras Experiências em Atendimento e Administração

Cargo: Atendente / Apoio Administrativo
Principais atividades:
	•	Suporte em rotinas administrativas básicas (planilhas, controle de documentos e arquivos).
	•	Atendimento a clientes em diferentes contextos, sempre com foco em qualidade e resolução rápida.
	•	Organização de demandas diárias e apoio ao time em atividades internas.','Tenho experiência na área administrativa e de atendimento, atuando com organização de documentos, apoio em rotinas de escritório, controle de planilhas e suporte a clientes e equipes internas.

Venho me aperfeiçoando por meio de cursos de curta e média duração nas áreas de atendimento ao cliente, gestão e rotinas administrativas, que têm contribuído para aprimorar minhas habilidades práticas no setor. Embora ainda não possua formação superior, estou em constante busca por capacitação e pronto para aplicar meus conhecimentos no dia a dia da empresa.

Sou comprometido, proativo e acredito que posso contribuir para o crescimento e desenvolvimento da equipe, oferecendo dedicação e responsabilidade em cada tarefa.

Coloco-me à disposição para uma entrevista e agradeço desde já a oportunidade.',NULL,'Administrativa, Comercial, Marketing, Engenharia',NULL,NULL,'Instagram','Não','2,3','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho conhecimentos em Inglês básico, o que me permite compreender e me comunicar em situações simples do dia a dia. Também possuo digitação rápida, o que facilita a realização de tarefas administrativas, como elaboração de documentos, organização de informações e uso de sistemas internos.

Nas horas vagas, atuo como filmmaker, produzindo e editando conteúdos audiovisuais para redes sociais e projetos independentes. Essa experiência me ajuda a exercitar minha criatividade, organização de prazos e relacionamento com clientes.

Além disso, sou voluntário na Igreja Reviver, onde sirvo tanto no ministério de louvor quanto em outras áreas de apoio. Essa atuação me ensinou valores importantes como trabalho em equipe, comprometimento, responsabilidade e dedicação ao servir outras pessoas.

Sou uma pessoa comunicativa, organizada e proativa, com facilidade de aprender e me adaptar a novos contextos. Gosto de estar em ambientes dinâmicos, tenho espírito colaborativo e sempre procuro agregar valor onde estou inserido.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-18T05:14:00.000Z'::timestamptz),
  ('Gabriel Portel Fiorenza','gabriel.fiorenza@hotmail.com',NULL,'55997222795','1995-01-12',31,'Solteiro(a)','0','Sim','Santa Maria/rs','https://drive.google.com/uc?export=view&id=17vWjMtJddq9KfVq8HQP9hUJq3vp29WUr','Administração de empresas','Ensino Superior Completo','Faculdade Sobresp/ RS','2025-08-26','Sou formado',NULL,'Formado em Administração e cursos complementares como auxiliar administrativo, recursos humanos e vendas. Tenho técnico em administração e técnico em transações imobiliárias, além de tecnólogo em gestão comercial.',NULL,'Administrativa, Comercial',NULL,NULL,'Instagram','Não','R$3.500,00','Sim','Everton Drews (55)99158-6116
Gestor farmacêutico - Farmácia São João','Quero inscrever-me no banco de talentos da Young!','Eu gosto de aproveitar o tempo livre para correr ou fazer atividades físicas, estou sempre em constante movimento. Gosto de cozinhar e ter esse tempo de qualidade, mas amo a correria de trabalho e sentir essa sensação. Me identifico com gestão, devido a isso que optei pelo meu curso em Administração. Acredito que seja um bom profissional e esteja aprendendo e evoluindo para melhorar a cada dia.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-18T08:57:00.000Z'::timestamptz),
  ('Laura Fabiane Souza Garcia Campos','laura.sgarcia@gmail.com',NULL,'51984725966','1989-05-10',36,'Casado(a)','1','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=15sDXxv9CuQ-xh-mk67lsF4Cb0268gE70','Administração de empresas','Pós-graduação Completa','FAPA Faculdade Porto-alegrense','2017-09-30','Sou formado','Cargo: Assistente Administrativa
Empresa: Prestadora de Serviços para Oi (por meio das empresas: STD Sistemas, Top Service, Elma)
Período: 2011 – 03/01/2025
Apuração e gestão de ocorrências como furtos, roubos, vandalismos, fraudes e acidentes.
Gestão de atividades administrativas: DP, frota, financeiro e controle operacional.
Elaboração de relatórios gerenciais e apresentações de resultados.
Organização de viagens, equipamentos, arquivos e atendimento interno.
Suporte à liderança, participação em audiências, apoio a investigações e interface com órgãos públicos.

Cargo: Proprietária
Empresa: Agropet Zulucão
Período: 2012 – 2015
Gestão de estoque, financeiro, pessoal e vendas de produtos e serviços.
Atendimento ao cliente e marketing ativo.
Negociação com fornecedores e controle de compras.
Resolução de problemas, tomada de decisão e liderança.
Organização e operação de rotina administrativa do negócio.

Cargo: Fiscal de Inteligência
Empresa: STD Sistemas de Segurança
Período: 2010 – 2011
Investigação de furtos de cabos e baterias no RS, com apoio à delegacia especializada.
Coordenação de equipes de pronta resposta e projetos pilotos.
Elaboração de relatórios estratégicos da área de inteligência.
Controle de planilhas administrativas e operacionais.
Gestão de rotinas de DP, frota e viagens.

Cargo: Auxiliar Administrativa
Empresa: Protege - Grupo Proforte
Período: 2009 – 2010
Suporte administrativo à Segurança Empresarial, com foco em agendas e reuniões.
Controle de acessos, chaves e crachás.
Apoio em operações de CFTV.
Preenchimento de atas e documentos internos.
Interface com gestores e organização de rotina administrativa.','MBA em Gestão de Pessoas concluído na Uniritter em 2021. Curso Departamento Pessoal com E-Social, Cálculos Trabalhistas e Rescisão de Contrato concluído em 2025.',NULL,'Administrativa, Financeiro, Novos Negócios',NULL,NULL,'Instagram','Não','3.000,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma profissional com mais de 16 anos de experiência na área administrativa, com atuação destacada em Segurança Empresarial no setor de telecomunicações. Minha trajetória foi construída com foco na apuração e tratativa de ocorrências, organização de processos internos e apoio direto à gestão, sempre prezando pela objetividade, sigilo e clareza nas ações e comunicações.

Tive a oportunidade de colaborar com equipes multidisciplinares, participando de reuniões estratégicas, elaboração de relatórios gerenciais e condução de atividades operacionais ligadas à manutenção predial, frota, viagens e rotinas de departamento pessoal e financeiro. Também atuei como elo entre a empresa e órgãos públicos, com suporte a investigações. Participei em audiências trabalhistas em conjunto com o setor jurídico. 

Ao longo dos anos, desenvolvi uma atuação versátil, assumindo responsabilidades que exigiram organização, agilidade e atenção aos detalhes. Meu foco é contribuir para ambientes bem estruturados, alinhados às metas corporativas e com processos eficientes, mantendo sempre uma postura colaborativa, ética e comprometida.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-18T09:46:00.000Z'::timestamptz),
  ('Gabrielli Camargo Gusmao','gaby.camargogusmao@icloud.com',NULL,'51992162211','1983-07-25',42,'Solteiro(a)','1','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1H4kwYDfyFOiyCPy_99EbghkeaPSEM0g3','Administração de empresas','Ensino Superior Completo','Unicruz','2005-12-20','Sou formado','Oxy Companhia Hipotecária
Analista financeira
12/20 a 04/25
Trabalhei no contas a pagar, tanto da empresa quanto de clientes, conciliação bancária, conferência e pagamento de dívidas de clientes, lançamento no sistema da empresa, pagamento final para o cliente, contato com clientes entre outras atividades.',NULL,NULL,'Administrativa, Financeiro',NULL,NULL,'Agência de Empregos','Não','3000','Não','Luana - Minha antiga gerente - 51992774442','Quero inscrever-me no banco de talentos da Young!','Tenho 42 estou em busca de um trabalho para ampliar meu conhecimento, tenho bastante vontade e interesse em atividades novas, meu Excel é intermediário/avançado, sou muito esforçado. Trabalho muito bem em equipe e desenvolvo bem as atividades que são passadas. Tenho uma filha de 15 anos e formamos uma equipe ótima, ela é minha amiga e companheira. Nas horas vagas gosto fazer exercícios e meu modo de relaxar é a corrida.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-18T11:29:00.000Z'::timestamptz),
  ('EM BUSCA DE CONHECIMENTO','susancamargobarbero@gmail.com',NULL,'51994440968','1982-07-26',43,'Divorciado(a)','1','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=193E_aPsjXRfNCZqGle0CEyu2gdYckZBC','GESTÃO EM RH /DEPARTAMENTO PESSOAL','Ensino Superior Completo','UNIASSELVI','2019-03-29','Sou formado','Em 01/04/2016 a 24/05/2022:  LEANDRO DO AMARAL REZENDE. 
Auxiliar de Rh- Coordenadora do Rh e Gerente Administrativa/DP 
Experiência em Rh e  Departamento Pessoal Elaboração da folha de pagamento e administrar  processos 
de admissão e demissões e cálculos de  horas extras ,insalubridade e periculosidade de férias e rescisões 
e  13 salário controle de cartão ponto e exames periódicos e controle de benefícios  ,RAIS,SEFIP,DIRF, 
ESOCIAL  E DCTF WEB, emitir guias de impostos, benefício social, homologação internas e externas 
conhecimento em convenções e acordos atendimento ao público emissão de crachás  , recrutamento e 
seleção, divulgação de vagas e entrevistas   ,cadastro de funcionários no sistema controle de arquivos e 
planilhas , auxiliar no  setor financeiro, contas a pagar, preposta em audiências. 
Conhecimento no sistema Domínio e sistema SCI.','CURSO DE CONTABILIDADE,CURSO DCTF WEB',NULL,'Administrativa, Financeiro',NULL,NULL,'Instagram','NÃO','R$ 3.000,00 +BENEFICIOS','Sim',NULL,'ASSISTENTE RH','Sou Susan Camargo tenho mais de 10 anos experiência na  área departamento pessoal e administrativa .gosto de desafios e de experiências novas e conhecer pessoas .sou uma pessoa comunicativa e proativa comprometida com a empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-18T12:06:00.000Z'::timestamptz),
  ('Patricia Sbruzzi Ferreira','patricia.sbruzzi@hotmail.com',NULL,'51986396549','1993-08-30',32,'União estável','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1Yu-nuXxv8x9Cy62vn1vjEqyBFK5iEx4O','Arquitetura','Ensino Superior Completo','Uniritter','2024-12-15','Sou formado','Sperinde Gestão Imobiliária - Auxiliar financeiro (set/2018 a mar/2022): Controle de contas a pagar (de clientes e da empresa), conciliações bancárias, pagamento de contas via remessas bancarias, lançamento de contas no sistema (Imobiliar), organização e arquivamento de documentos, apoio ao setor Contábil.

Hare Bueno Arquitetura - estágio (2022 e jan/2024 a fev/2025): Auxilio na criação de projetos de arquitetura e interiores, renderização de imagens realistas, desenvolvimento de projetos executivos

Daniele Santos Arqutitetura - estágio (set/2022 a fev/2023): Auxilio na criação de projetos de arquitetura e interiores, renderização de imagens realistas, desenvolvimento de projetos executivos','Ao longo do período de gradução, além de experiências como estágiaria em escritórios especializados na área de interiores, também atuei como freelancer na área de renderizações arquitetônicas, desenvolvendo imagens para diversos profissionais e escritórios. Após a formatura, tive algumas experiências com fotografia de arquitetura, área que complementa minha formação e amplia meu olhar técnico e estético. Atualmente estou focando no aprendizado de ferramentas BIM, principalmente Archicad (durante a graduação ja tive experiências com Revit também)',NULL,'Administrativa, Arquitetura, Engenharia',NULL,'https://drive.google.com/open?id=1muOfDlchsgxNZXqL7z5xgLAKOoxoIG6z','Instagram','não','R$2.500,00 - R$3.000,00','Não',NULL,'Administrativo ou projetos/arquitetura','Apesar da minha formação em Arquitetura, gosto muito de trabalhar em áreas administrativas também (tenho quase 10 anos de experiência em setores administrativos), então estou aberta a atuar em diferentes frentes dentro da empresa, seja em funções administrativas/financeiras ou ligadas à arquitetura e projetos, aproveitando minha experiência multidisciplinar para agregar valor em ambos os setores.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-18T13:04:00.000Z'::timestamptz),
  ('Stephany Bandeira Falcão','stephanyfalcao21@gmail.com',NULL,'51996639951','2001-05-21',24,'Solteiro(a)','0','Não','Canoas/RS','https://drive.google.com/uc?export=view&id=11-R4Lw0S7ssXuqC5L7e2op6IahCh4hRA','Técnico em administração','Ensino Médio Completo','QI faculdade & ensino técnico','2026-04-12','Não, no momento pausei/parei por um período.','Recepcionista em geral, Empresa Togni Comércio de produtos odontológicos LTDA, início 01/11/2023 á 18/06/2025, funções: Emissão de Notas Fiscais, boletos, recebimento de pagamento, atendimento telefônico, controle da agenda',NULL,NULL,'Administrativa',NULL,NULL,'Instagram','Não','R$2.000,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Me chamo Stephany Bandeira Falcão, tenho 24 anos e resido em Canoas/RS. Estou em busca de uma oportunidade na área administrativa. 
Comecei trabalhando como estagiária em uma ótica, depois fui para área da logística em 2019 e fiquei nesta área até 2023, meu último trabalho foi como recepcionista em geral em uma clinica odontológica onde fiquei um ano e meio, minhas funções eram: Emissão de Notas Fiscais, boletos, recebimento de pagamento, atendimento telefônico, controle da agenda.
Atualmente curso técnico em administração na escola QI (conclusão prevista para maio/2026).
Sou uma profissional organizada, proativa, com boa comunicação interpessoal e capacidade de trabalhar em equipe. 
Com disponibilidade de horário, pronta para contribuir de forma comprometida com os objetivos da empresa!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-18T13:24:00.000Z'::timestamptz),
  ('Brenda Alves Barbosa','alvesbrendab@gmail.com',NULL,'55996285892','2002-07-28',23,'União estável','1','Não','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1g8tu3DF0Ke575N6PWU6WGul4_V4eIzNi',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Movilcor Famille Med - Recepcionista/Secretária - 30/04/2025 até 30/07/2025 Atividades: Recepcionar pacientes, direcionar consultas médicas, atender chamados, função de caixa e rotinas administrativas da empresa.
Tribunal de Justiça do Rio Grande do Sul - Atendente - 01/12/2022 até 30/03/2023 Atividades: Atendimento telefônico, sanar dúvidas de partes e advogados, transferir ligações às varas responsáveis pelo processo, consulta processual, informações no geral. 
Rede Brasil Gestão de ativos - Operador de cobrança - 01/04/2021 até 30/09/2021 Atividades: Realizar a cobrança de clientes inadimplentes da seguradora Porto Seguro.',NULL,NULL,'Administrativa, Comercial',NULL,'https://drive.google.com/open?id=1UZHLyei9jmR72TppjYlXougiTHPxDrfa','Instagram','Não','1800','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou Brenda Alves, tenho 22 anos e sou natural e residente em Santana do Livramento/RS. Iniciei minha trajetória profissional em Porto Alegre, onde estagiei por 6 meses em uma academia, atuando na recepção de alunos e na venda de planos. A partir dessa experiência, descobri meu gosto pelo atendimento ao público, área na qual segui atuando.

Trabalhei em uma empresa de cobrança, realizando contato com clientes inadimplentes de uma seguradora, e também como recepcionista em uma escola de cursos. Atualmente, trabalho no setor da saúde como recepcionista e secretária, função que exerço com muito apreço. No entanto, sou folguista e estou em busca de uma oportunidade fixa que me permita crescer profissionalmente.

Sou comunicativa, proativa, pontual e dedicada, com facilidade para lidar com pessoas e resolver demandas com empatia, agilidade e responsabilidade. Busco uma vaga na área de atendimento, recepção ou administrativa, onde eu possa aplicar minhas habilidades e contribuir com um ambiente organizado e acolhedor.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-18T13:53:00.000Z'::timestamptz),
  ('Gisele de Lara Carneiro','giseledelaraarquitetura@outlook.com',NULL,'55996887866','1994-07-30',31,'Divorciado(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1XVlCOv7p-b0HsW9QM2BQkBtiY0trp40n','Arquitetura','Pós-graduação Completa','Universidade Integrada do Alto Uruguao e das Missões -Campus Santiago','2020-01-25','Sou formado','EXPERIÊNCIA PROFISSIONAL
 ARCAN ARQUITETURA E CONSTRUÇÃO LTDA.
 Cargo: arquiteta e proprietária
 Período 05/2024 – Até o momento
 Principal atividades: Projeto arquitetônicos completos, Projetos para financiamentos, Projetos de
 interiores, Projeto estrutural, Projetos elétricos, Projetos hidrossanitários, regularização
 imobiliária, reformas e ampliações, perícias, laudos técnicos, projetos de marcenaria,
 paisagismo, projetos luminotécnicos, projetos de acessibilidade, loteamentos, Projetos
 urbanísticos, GERENCIAMENTO DE OBRAS e ADMINISTRAÇÃO, execuções de obras, PPCI,
 consultorias e assessorias e outras pertinentes da área, atendimento ao cliente, vendedora.
 PUC ANGEL- 
Cargo: Membro Executivo - Comitê de Liderança Feminina, startups e inteligencia artificial
 Período 05/2025 – Até o momento
 Principal atividades: é uma associação sem fins lucrativos, ligada a Universidade Pontificia
 Católica, que tem como missão promover a educação, o empreendedorismo de impacto, o
 combate à fome e o fortalecimento de uma rede nacional de líderes, executivos, estudantes e
 organizações comprometidas com a construção de um futuro mais justo, inovador e humano..
 GISELE DE LARA ARQUITETURA E CONSTRUÇÃO.
 Cargo: Arquiteta e proprietária.
 Período 03/2022 – 04/2024
 Principal atividades: Projeto arquitetônicos completos, Projetos para financiamentos, Projetos de
 interiores, Projeto estrutural, Projetos elétricos, Projetos hidrossanitários, regularização
 imobiliária, reformas e ampliações, perícias, laudos técnicos, projetos de marcenaria,
 paisagismo, projetos luminotécnicos, projetos de acessibilidade, loteamentos, Projetos
 urbanísticos, GERENCIAMENTO DE OBRAS e ADMINISTRAÇÃO, execuções de obras, PPCI,
 consultorias e assessorias e outras pertinentes da área, atendimento ao cliente, vendedora.
 Obras públicas e privadas.
 PROFISSIONAL LIBERAL
 Cargo: Arquiteta Urbanista
 Período 02/2020 – 03/2022
 Principal atividades: Projeto arquitetônicos completos, Projetos para financiamentos, Projetos de
 interiores, Projeto estrutural, Projetos elétricos, Projetos hidrossanitários, regularização
 imobiliária, reformas e ampliações, perícias, laudos técnicos, projetos de marcenaria,
 paisagismo, projetos luminotécnicos, projetos de acessibilidade, loteamentos, Projetos
 urbanísticos, GERENCIAMENTO DE OBRAS e ADMINISTRAÇÃO, execuções de obras, PPCI,
 consultorias e assessorias e outras pertinentes da área, atendimento ao cliente, vendedora.
PREFEITURA MUNICIPAL DE JAGUARI-RS
 Cargo: estagiária nível superior- arquitetura e urbanismo
 Período: 2016-2018
 Principal atividades:Auxiliar na identificação dos procedimentos realizados na unidade
 concedente de estagio, acompanhar analise de projetos, elaboração de desenhos
 arquitetônicos, acompanhar elaboração de projetos, relatórios sobre obras, acompanhar
 execução de obras, dentre elas destaca-se as principais, ponte de rodagem da cidade de Jaguari,
 construção da nova sede da Escola Municipal São José, construção e conclusão da E.M.E.I Doce
 Encanto, reforma e ampliação da creche Tia Mana, pavimentação poliédrica, pavimentação
 asfaltica, quadras poliesportivas e dentre outras obras, pertinentes e valorizadas na cidade,
 acompanhar atendimento ao público, controle de planilhas ( orçamentos, cronogramas,
 organização e listagens de obras em andamento, etc.), reproduzir projetos de arquitetura e
 engenharia
PREFEITURA NOVA ESPERANÇA DO SUL-RS
 Cargo: estagiária nível técnico- Técnico em segurança do trabalho
 Período: 2014-2015
 Principal atividades: Identificação dos procedimentos realizados na unidade concedente de
 estágio, acompanhar a documentação de segurança do trabalho, acompanhar fiscalização de
 obras de segurança, acompanhar o técnico de segurança do trabalho, agendamentos de
 consultas e dentre outros.','Sou Arquiteta e Urbanista, formada pela Universidade Integrada do Alto Uruguai e das Missões (URI) em 2020, com ampla experiência em projetos residenciais, comerciais, institucionais e de infraestrutura.
Possuo pós-graduação em Educação, além de ser mestranda em Engenharia. Também acumulo cursos de extensão em áreas técnicas da construção civil em regularização de imóveis, PPCI, perícia judicial e avaliação de imóveis.
Minha trajetória inclui atuação em grandes obras públicas e privadas, como escolas, UBS, quadras esportivas, pavimentações e projetos de alto padrão.
Complemento minha formação com certificações em direito da mulher, gestão de obras, interiores, inovação e tecnologias aplicadas à arquitetura e engenharia.',NULL,'Arquitetura, Novos Negócios, Engenharia',NULL,'https://drive.google.com/open?id=1LmD5_HsJRlaefr4N4r9G4-P75nNo7A9f','Instagram','não','4500','Sim',NULL,'arquiteta e banco de talentos',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-18T13:57:00.000Z'::timestamptz),
  ('Taciane da Silva','tacisilva2001@gmail.com',NULL,'55991205838','2001-05-31',24,'Solteiro(a)','0','Sim','Santo Ângelo/rs','https://drive.google.com/uc?export=view&id=1cNcUptcVtk8e_F4Xaf9MOGjlAFLJvsjT','Administração de empresas','Ensino Superior Completo','Uri Santo Ângelo','2025-02-28','Sou formado','06/2018 – 06/2020 | Jovem Aprendiz – Frigorífico Callegaro – Santo Ângelo/RS
Remanejamento e organização de mercadorias no estoque, adequando ordem e
posicionamento conforme demanda para otimizar espaço e acomodar novos suprimentos.
06/2020 – 06/2021 | Auxiliar de Produção – Frigorífico Callegaro – Santo Ângelo/RS
Registro das atividades da linha de produção, garantindo o cumprimento das metas
estabelecidas.
06/2021 – 03/2023 | Estagiária – Banrisul – Santo Ângelo/RS
Atendimento a clientes na Plataforma Jurídica; atualização de cadastros; lançamentos de
faturamentos, balanços e balancetes; entrega de cartões; suporte em office banking;
atendimento telefônico e via e-mail; organização e arquivamento de documentos; abertura e
encerramento de contas.
03/2023 – 10/2023 | Auxiliar de Escritório – Mac Assessoria Contábil – Santo
Ângelo/RS
Atendimento e recepção de clientes; atendimento telefônico; conferência de movimentações
contábeis, fiscais e de departamento pessoal, prestando suporte à equipe.
10/2023 – Atual | Analista de Treinamento – Solution Gestão e Sistemas – Santo
Ângelo/RS
Desenvolvimento de materiais, cursos e artigos para capacitação autônoma de clientes.
Testes manuais do sistema, mais voltados a squad Negócios.','Administração',NULL,'Administrativa, Marketing, Novos Negócios, Engenharia',NULL,NULL,'Instagram','Não.','2800','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Com meu trabalho atual aprendi muita coisa sobre ERP, Adobe premiere. Já fiz parte de uma empresa júnior na época da faculdade. Participei do SW de Santo Ângelo em 2023.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-18T16:34:00.000Z'::timestamptz),
  ('Jenyffer dos Santos Oliveira','jenyffer.telegestao@gmail.com',NULL,'51983556666','1996-07-30',29,'Solteiro(a)','2','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1E3XMVt_NoUBqCz9f0x_WQip6GF3m1ho4','Gestão de Recursos Humanos','Ensino Superior Incompleto','Centro universitário Unifatecie','2025-08-18','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Grupo Fleury; Auxiliar de atendimento I; 08/2024 - 05/2025; Atendimento ao cliente para entrega de resultados dos exames',NULL,NULL,'Administrativa',NULL,NULL,'Instagram','Não','2000,09','Não',NULL,'Assistente de RH',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-18T19:49:00.000Z'::timestamptz),
  ('Katielle de Souza Silva','katyelletransportes@gmail.com',NULL,'71983808421','1997-11-10',28,'Casado(a)','2','Não','Cachoeirinha/rs','https://drive.google.com/uc?export=view&id=1BfSz7mRKFfrAf1EogjJCrq7XV_wNqbug',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Contax atendente de telemarketing',NULL,NULL,'Administrativa, Marketing',NULL,NULL,'Instagram','Não','1500','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-18T21:23:00.000Z'::timestamptz),
  ('Jessica Oliveira','jeehh2015@gmail.com',NULL,'51999708729','1994-09-23',31,'Casado(a)','2','Não','Canoas/RS','https://drive.google.com/uc?export=view&id=1fI0QqCjg8TqugAXfkpxfHgYIhC7jKX0p','Ciências Contábeis','Ensino Superior Incompleto','Uniasselvi','2028-04-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Farmácia São João; operadora de caixa: atendimento ao público, organizar setor, fechamento e abertura de caixa. 
Tumelero; caixa crediarista: abertura e fechamento de caixa, crediário de cartão da empresa,organizar setor e venda de cartão.
Roni chaves ; caixa: atendimento ao público.
Rede Moura; estágio financeiro: contas a pagar e receber, envio de notas, fluxo de caixa. 
05/16 a 04/2017
05/18 a 03/2021
12/22 a 04/2024
12/24 atualmente
Respectivamente.',NULL,NULL,'Administrativa, Financeiro',NULL,NULL,'Instagram','Nao','2000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-18T22:32:00.000Z'::timestamptz),
  ('Dienifer Madruga dos Santos','dienifermadrugadossantos@hotmail.com',NULL,'53999211727','2001-03-24',24,'Solteiro(a)','0','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1HT4BsxCKYUe6MoKDn2o5uzRfAqRozg7f','Administração de empresas','Ensino Superior Incompleto','Senac','2028-07-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Petit Bonbon
        •        Cargo: Estagiária
        •        Período: Agosto/2018 – Fevereiro/2019
        •        Principais atividades: Atuei no atendimento e recepção de clientes, tanto de forma cordial quanto organizada, auxiliando na experiência dos consumidores. Também fui responsável por anotar pedidos, servir mesas, organizar o ambiente de trabalho e manter a agenda em ordem. Essa experiência inicial foi fundamental para desenvolver minhas habilidades de comunicação, organização, trabalho em equipe e foco no cliente.

2) Petit Bonbon
        •        Cargo: Auxiliar de Serviços de Alimentação
        •        Período: Fevereiro/2019 – Agosto/2020
        •        Principais atividades: Atuei na produção de doces e tortas, no controle de estoque e na organização do ambiente de trabalho. Além disso, tive responsabilidades ligadas à agenda de pedidos e à coordenação das rotinas diárias da produção. Essa experiência contribuiu para que eu aprimorasse minha atenção aos detalhes, disciplina, responsabilidade e capacidade de lidar com prazos e demandas variadas.

3) Clínica Duarterapia
        •        Cargo: Recepcionista
        •        Período: Outubro/2022 – Julho/2025
        •        Principais atividades: Fui responsável pelo atendimento e recepção de clientes de forma presencial e online, realizando também o controle de caixa e a emissão de notas fiscais. Atuei no suporte administrativo, no controle de pagamentos a fornecedores, na contratação de prestadores de serviços e fornecedores, além do registro e atualização de informações em sistema CRM. Também realizei controle de planilhas e organização de agendas, garantindo maior eficiência no uso do tempo. Essa função me proporcionou uma visão ampla e prática da área administrativa, fortalecendo minhas competências em organização, gestão de processos, relacionamento interpessoal e uso de ferramentas digitais.','Atualmente curso Bacharelado em Administração no Senac RS, iniciado em 2024. Complemento minha formação com cursos de curta duração, como Informática Básica, Auxiliar Administrativo, além de capacitações mais recentes em Finanças e Administração no Século 21, pela Fundação Bradesco. Essas formações me deram uma base sólida em gestão, rotinas administrativas, controle financeiro e uso de ferramentas digitais.',NULL,'Administrativa, Estágio',NULL,'https://drive.google.com/open?id=1NMSVFvsNyE2ysZCVPdj0U7UCeU3ocR42','Instagram','Não','Com base em pesquisas de mercado atualizadas para o ano de 2025, a faixa salarial para as funções de recepcionista administrativo ou auxiliar administrativo em regime CLT varia entre R$ 1.800 e R$ 2.200 por mês, considerando localização no Sul, nível de experiência e atribuições compatíveis com o perfil solicitado. Estou aberta a negociar, considerando também a composição de benefícios oferecidos pela empresa.','Sim','+55 53 99173-1242 Clínica Duarterapia','Quero inscrever-me no banco de talentos da Young!','Se eu pudesse me definir fora do ambiente profissional, diria que sou alguém que encontra alegria nas coisas simples. Amo confeitaria e cozinhar — estar na cozinha é quase terapêutico para mim, especialmente quando posso preparar algo doce para quem gosto. Caminhadas ao ar livre também fazem parte da minha rotina, porque me conectam com a natureza e me trazem equilíbrio. Gosto de aprender, experimentar coisas novas e acredito que cada experiência, por menor que seja, contribui para o meu crescimento','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-18T22:34:00.000Z'::timestamptz),
  ('Giovana Oliveira da Silva','giovana9756@gmail.com',NULL,'51995579163','2003-03-04',22,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1EEJ5Iew9ueITMOc-cvntnx-aXNnOruY7','Administração de empresas','Ensino Superior Incompleto',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Verano Empreendimentos Imobiliários SPE
Auxiliar Administrativo | 2023 – Atual
Contas a pagar e receber, conciliações bancárias, relatórios financeiros, lançamento de contratos, comunicação com fornecedores e clientes

Vero Internet
Atendente de Serviço Técnico | 2023
Suporte e assistência técnica a clientes, orientação sobre produtos e serviços

HIAB Brasil Guindastes e Serviços Ltda.
Estagiária – Setor Financeiro | 2023
Contas a pagar e receber

Pátio Urbano
Recepcionista | 2021 – 2022
Recepção e atendimento a clientes

DeMello Alimentos Ltda. / DeMello Incorporações Ltda.
Jovem Aprendiz | 2018 – 2020
Auxiliar Administrativo | 2020 – 2021
Apoio administrativo em recepção, incorporação e cobrança, lançamento de contratos','Especialização em Incorporação na Construção Civil – EBPÓS – Escola Brasileira de Pós Graduação – Cursando
Técnico em Transações Imobiliárias – Escola Téc. Inteligência Educacional – Concluído',NULL,'Administrativa, Comercial, Financeiro, Novos Negócios',NULL,NULL,'Instagram','Não','3.500,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-19T01:36:00.000Z'::timestamptz),
  ('Vitória se Melo Ulian','vitoriademeloulian@gmail.com',NULL,'51985107925','2005-04-09',20,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1gCncgS_cBf2MGr8pyONvosqgu4iNbfi5','Administração','Ensino Superior Incompleto','Faculdade Dom Bosco','2029-08-19','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','• Secretária – iLitoral Negócios Imobiliários (02/2025 – 07/2025)
Rotinas administrativas completas da empresa.
• Secretária – Premier Imóveis (04/2024 – 02/2025)
Rotinas administrativas, incluindo organização de documentos e contratos, controle de agenda, digitação e elaboração de documentos, uso do Pacote Office (planilhas financeiras e gráficos).
• Estagiária – Delegacia de Polícia Civil (03/2022 – 11/2023)
Atendimento ao público presencial e telefônico, organização de documentos e arquivamento. Utilização de sistemas informatizados e Pacote Office completo para elaboração de relatórios, digitação de ofícios e controle de dados financeiros. Apoio em rotinas de secretaria, serviços burocráticos, recebimento e envio de materiais, organização do almoxarifado e suporte geral às demandas administrativas.','Sou estudante de administração, e tenho cursos nas áreas de: Excel na Prática, Word na Prática, Administrando Banco de Dados e Comunicação Escrita.',NULL,'Administrativa, Estágio, Financeiro',NULL,NULL,'Instagram','Não fui.','1.000+','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou muito organizada com rotinas administrativas, tenho habilidade com o Pacote Office, sou proativa, responsável e dedicada. Tenho alguns cursos já citados anteriormente que acredito que me trouxeram conhecimentos importantes. Gosto de inglês e pretendo fazer um curso, gosto de libras e já estou inscrita em um curso, aprendi algumas coisas já.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-19T12:34:00.000Z'::timestamptz),
  ('Bruna Alves Perucio','brunapa7@gmail.com',NULL,'55991600089','2000-08-22',25,'Solteiro(a)','0','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1_zOd6BHP0cYKATVhvEefDvbUlAmfyz9e',NULL,'Ensino Médio Completo',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Cooperativa Central Gaúcha - CCGL foi minha última empresa que trabalhei, trabalhei lá por 1 ano e 2 meses como auxiliar de laboratório','Informática Completa/Técnico em segurança do trabalho/ Cursando Análise e desenvolvimento de sistemas',NULL,'Comercial',NULL,NULL,'Instagram','não','2.500','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-19T13:42:00.000Z'::timestamptz),
  ('Caroline da Silva Roseno','carolroseno21@gmail.com',NULL,'51994813335','1999-05-21',26,'Solteiro(a)','0','Não','Lajeado/rs','https://drive.google.com/uc?export=view&id=1pP9tEr0-9veJAGFJhZZigac3_vHP0Sfn','Administração de empresas','Ensino Superior Incompleto','Estácio de Sá','2027-05-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Brf de Lajeado, estagiária no setor de aprendizagem e Comunicação',NULL,NULL,'Administrativa, Estágio',NULL,NULL,'Instagram','Não','2500','Sim',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-19T14:36:00.000Z'::timestamptz),
  ('Nícolas Sauer','sauer.biomed@gmail.com',NULL,'51994316888','2003-09-17',22,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1RzW8Zb79aw8DCRXS_-FIyW5wpz6e_uyK','Biomedicina e Técnico em Transações Imobiliárias','Ensino Superior Incompleto','UNICNEC','2028-12-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Lojas Becker
Cargo: Jovem Aprendiz – Estoquista
📆 Jan/2021 – Set/2021
        •        Controle e organização de estoque, garantindo precisão nos registros;
        •        Recebimento, conferência e armazenamento de mercadorias;
        •        Separação de pedidos e reposição de produtos no ponto de venda;
        •        Desenvolvimento de disciplina, organização e trabalho em equipe.

Mercado Livre
Cargo: Entregador de Mercadorias
📆 Jan/2022 – Jun/2023
        •        Separação e conferência de pedidos antes da entrega;
        •        Entregas pontuais e seguras;
        •        Atendimento cordial e profissional aos clientes;
        •        Resolução rápida de imprevistos para garantir a satisfação do cliente;
        •        Habilidade em logística e contato direto com o público.


Cargo: Corretor de Imóveis
📆 Nov/2023 – Atual
        •        Atendimento personalizado, identificando necessidades dos clientes e oferecendo soluções imobiliárias;
        •        Captação e negociação de imóveis, incluindo visitas e fechamento de contratos;
        •        Organização e gestão de documentos para compra e venda;
        •        Acompanhamento de clientes em todas as etapas do processo;
        •        Desenvolvimento de habilidades em negociação, comunicação e foco em resultados.','Sou formado em Técnico em Transações Imobiliárias (2023–2024, Escola República), que me habilita como Corretor de Imóveis, com sólida base em legislação, negociação e processos de compra e venda. Atualmente, também curso Biomedicina (UNICNEC – conclusão prevista 2025), o que reforça minha disciplina, organização e comprometimento com estudos de longo prazo.',NULL,'Administrativa, Comercial, Estágio, Financeiro',NULL,NULL,'Instagram','Não.','Estou buscando uma oportunidade com remuneração compatível com o mercado da área imobiliária, com expectativa a partir de R$ 2.500, considerando também possibilidades de crescimento via comissões conforme desempenho e metas.','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa versátil, que gosta de aprender e viver experiências diferentes. Já passei por áreas bem variadas, do estoque às entregas e hoje no mercado imobiliário, e isso me fez gostar de lidar com pessoas, organizar processos e sempre buscar soluções práticas.

Fora do trabalho, adoro cozinhar pra mim é um jeito de relaxar, ser criativo e até cuidar das pessoas. Também gosto de participar de ideias de marketing, gravar vídeos e pensar em formas novas de comunicação. No fim das contas, sou curioso, comunicativo e acredito que cada experiência, dentro ou fora do trabalho, me ajuda a crescer e a contribuir onde eu estiver.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-19T17:45:00.000Z'::timestamptz),
  ('Amanda dos Santos Pedotte','amandapedotte18@gmail.com',NULL,'51992959119','2004-11-19',21,'Solteiro(a)','0','Não','Canoas/RS','https://drive.google.com/uc?export=view&id=1xLkosgtN6FkwPy_ySlWZilzoP1hKV3Oj','Psicologia','Ensino Superior Incompleto','Unilasalle','2030-03-11','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Clínica de Saúde e Beleza Shanti
Cargo: Atendente
Período: 2017 – 2019
Atividades: Atendimento direto ao cliente, fechamento de caixa, organização e limpeza do local, além da preparação de cafés e chás. Essa experiência me proporcionou contato inicial com rotinas administrativas e atendimento humanizado ao público.

Rede Brasil
Cargo: Atendente de Cobrança
Período: 2023 – 2024
Atividades: Realização de atendimento ao cliente, cobrança de dívidas e negociação de pagamentos. Desenvolvi habilidades de comunicação, persuasão e resolução de conflitos, sempre mantendo o foco em resultados e na satisfação do cliente.

Colégio La Salle Canoas
Cargo: Monitora de Inclusão
Período: 2024
Atividades: Apoio educacional e acompanhamento de alunos com necessidades especiais, auxiliando no processo de aprendizagem e inclusão escolar. Essa experiência ampliou minha visão sobre educação inclusiva e reforçou meu interesse na área da psicologia.

Clínica Essencial de Psicologia
Cargo: Auxiliar/Atendente
Período: 2025
Atividades: Atendimento ao cliente, fechamento de caixa, limpeza e organização do ambiente, além da preparação de cafés e chás. Essa vivência me aproximou ainda mais do ambiente clínico, contribuindo para meu crescimento profissional na área da psicologia.

Creche Recanto do Moranguinho
Cargo: Monitora de Inclusão
Período: 2025
Atividades: Acompanhamento de crianças em atividades escolares, apoio ao desenvolvimento pedagógico e comportamental, e promoção de um ambiente inclusivo. Essa experiência reforça meu interesse em atuar com crianças e no campo da psicologia educacional.','Atualmente curso Psicologia na Universidade La Salle, onde estou no quarto semestre, e também realizo um curso profissionalizante em Publicidade e Propaganda pela Uninter. l
Possuo algumas formações complementares que ampliam minha área de conhecimento, como o curso de teatro realizado na Pocket Cultural e o curso on-line ABA e o Tratamento de Crianças com Autismo.
Entre as certificações que gostaria de destacar, estão o inglês fluente e o espanhol em nível básico, que contribuem para a comunicação em diferentes contextos.
Essas formações e cursos demonstram meu interesse em desenvolver habilidades tanto na área da psicologia quanto em áreas criativas e de comunicação, reforçando minha versatilidade e dedicação em expandir meu aprendizado contínuo.',NULL,'Administrativa, Comercial, Estágio, Marketing',NULL,'https://drive.google.com/open?id=1HtJz8GKaxl10TuqdCz8je27nwcGKHKms','Instagram','Não','1800','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa dedicada, proativa e com facilidade de aprendizado. Tenho fluência em inglês e conhecimento básico em espanhol, o que me permite lidar bem com diferentes contextos de comunicação. Além da formação acadêmica, busco constantemente ampliar meus conhecimentos por meio de cursos complementares.

Já realizei um curso de teatro na Pocket Cultural, que me ajudou a desenvolver habilidades de expressão, comunicação e trabalho em equipe. Também concluí o curso on-line de ABA e o Tratamento de Crianças com Autismo, que trouxe um aprendizado valioso para minha atuação na área da psicologia e inclusão escolar.

Sou organizada, pontual e gosto de trabalhar tanto de forma independente quanto em grupo. Tenho experiência com atendimento ao público e rotinas administrativas, o que me proporcionou responsabilidade e desenvoltura em diferentes ambientes de trabalho.

No meu tempo livre, gosto de aprender coisas novas, estudar e praticar atividades físicas, que me ajudam a manter disciplina e equilíbrio no dia a dia.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-19T17:51:00.000Z'::timestamptz),
  ('Johylckson Juan Nunes Lozano','johylckson.jhonson@gmail.com',NULL,'51998671639','1997-09-13',28,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1ztVML2GXvIezC6DR4bX1Fvcu-ollvsow','Gestão comercial','Ensino Superior Completo','Estácio','2023-09-30','Sou formado','2016, Exército brasileiro, departamento administrativo de armamento bélico.',NULL,NULL,'Administrativa, Estágio',NULL,NULL,'Instagram','Não','2.000','Não',NULL,'Administrativo','Faixa vermelha ponta preta de Tae Kwon do.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-19T23:41:00.000Z'::timestamptz),
  ('Patrícia Fernanda Correa da Silva','patricias.isa@hotmail.com',NULL,'51994523528','1992-03-04',33,'União estável','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=19ol19nTNDoLSsy1JXTSOsrKDYF4dNRuB',NULL,'Ensino Superior Incompleto',NULL,'2025-12-19','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Associação cristã de moços 
Fundacred 
OAB Prev RS',NULL,NULL,'Administrativa',NULL,NULL,'Agência de Empregos','Não','2500','Não',NULL,'Assistente administrativo',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-20T00:40:00.000Z'::timestamptz),
  ('Francielli Rodrigues Lazzarin','franlazzarin1997@gmail.com',NULL,'51998062638','1997-11-19',28,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1Fr2X91L_SmGOXw1wA5acy4rJGvaRbcvR','Administração de empresas','Ensino Superior Incompleto','Universidade Federal do Rio Grande do Sul','2027-07-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Banrisul - Estagiária - 03/2021 - 04/2021 
Atendimento ao público em geral, realizando abertura de contas,
operações de empréstimo, solicitação e entrega de cartões, auxílio em
caixas eletrônicos e procedimentos de prova de vida.

Ministério Público do RS - Estagiária
09/2021 - 11/2021
Atuação na Unidade de Estágios/RH, auxiliando no gerenciamento de
estagiários e bolsistas do MP. Prestar auxílio na execução e controle dos
processos de contratação, renovação, alteração e rescisão de estagiários,
além da organização de expedientes administrativos e atividades de
apoio.

Banco Regional de Desenvolvimento do Extremo Sul - Estagiária
11/2021 - 09/2023
Auxílio na identificação de procedimentos na unidade concedente de
 estágio, apoio em treinamento e desenvolvimento, recrutamento,
seleção e onboarding. Atuação em rotinas administrativas, gestão de
 benefícios, elaboração de planilhas e suporte à assessoria de gestão de
 pessoas.

Banrisul - Estagiária
09/2023 - 07/2025
Recebimento e conferência de guias judiciais; elaboração e manutenção
de planilhas e relatórios; criação de manuais de procedimentos;
 pagamento de guias judiciais / Emissão de comprovantes de
 pagamento; conferência e controle de documentos judiciais e resposta
 de e-mails e demais rotinas administrativas.',NULL,NULL,'Administrativa, Estágio, Financeiro',NULL,NULL,'Instagram','Não','R$1.800','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','HABILIDADES E COMPETÊNCIAS

- Conhecimento no Pacote Office
- Conhecimento em rotinas
 jurídicas, administrativas e de
 RH
- Conhecimento em processos de
 Recrutamento e Seleção
- Apoio em Treinamento e
 Desenvolvimento (T&D)
- Apoio no onboarding (integração
 de novos colaboradores)
- Rotinas bancárias operacionais
- Gestão de documentos e arquivo
- Facilidade em atendimento ao
 público
- Responsabilidade e ética
- Comunicação clara e objetiva
- Relacionamento Interpessoal
- Proatividade e iniciativa
- Agilidade e organização','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-20T13:39:00.000Z'::timestamptz),
  ('Marcelo Boeira Goulart','marcello.goulart2003@gmail.com',NULL,'51997857833','2003-09-27',22,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1CEx1sZBnnMpW1ya6fGAFktM5VEXzfbGz','Operador de Micro (Informática)','Ensino Médio Completo','Unialcance - Escola de Educação Profissional','2016-11-09','Não, no momento pausei/parei por um período.','1) Star Tech (Assistência Técnica)
2) Caixa / Vendedor 
3) De 01/2021 até 02/2023
4) Meu primeiro emprego onde obtive experiência na área de atendimento ao cliente e vendas. 
Era responsável pela abertura e fechamento da loja, estando nos cargos de Caixa e Vendedor com metas mensais, obtive conhecimento em eletrônicos, manutenção de aparelhos (Celulares e Tablet''s), Pacote Office (Word, Excel, PowerPoint) e sistemas operacionais.
Realizava pedidos de mercadorias para reposição de estoque (Capinhas, películas, eletrônicos e peças de manutenção), controle de quebra financeira da loja através de planilhas na plataforma Excel.
Utilizava meios virtuais para assim trazer novos clientes para a loja oferencendo produtos e serviços. 

1) Nacional (WMS Supermercados do Brasil LTDA)
2) Fiscal / Encarregado (Frente de Caixa)
3) De 04/2024 até 05/2025
4) Responsável pelo setor da Frente de Caixa no turno do fechamento da loja e eventualmente na abertura e intermediário. Prestava suporte aos operadores, realizava reembolsos e descontos para os clientes, elaboração de escalas, recebimento e coleta de valores da Prosegur, direcionamento dos colaboradores do setor, aplicação de medidas disciplinares (Advertência), treinamentos para novos operadores e fiscais, impressão e montagem de relatórios diários, identificação de quebras de valores na loja e realização do pedido de troco semanal da loja através da plataforma Athena.
Outras funções administrativas que realizei e fizeram parte do meu treinamento: 
• Abertura, controle e acompanhamento de chamados.
• Recrutamento de novos colaboradores através da plataforma Pandapé. 
• Treinamento sobre ética e inclusão alinhados com os valores da empresa.

Infelizmente tivemos o encerramento das atividades da empresa em todas as cidades do estado onde fui desligado, sigo buscando uma nova oportunidade.','Atualmente cursando Técnico em Transações Imobiliárias no Senac.',NULL,'Administrativa, Comercial, Financeiro, Marketing',NULL,NULL,'Agência de Empregos','Não','R$1.800,00','Não','1) Jeferson Oliveira (Star Tech) 
Gerente Técnico de TI
(51) 9 9688-6089

2) Ellen Leite (Nacional)
Gerente
(51) 9 9862-0676','Quero inscrever-me no banco de talentos da Young!','Tenho interesse em colaborar em um ambiente de trabalho onde eu possa colocar em prática meus conhecimentos em favor da instituição na qual viso integrar, focando sempre o benefício e o crescimento da organização e o meu desenvolvimento profissional. 
Tenho 21 anos e tenho conhecimento básico em informática, porém minha experiência maior foi em vendas e administrativa no meu ultimo emprego.
Possuo disponibilidade de horário e atualmente estou cursando Transações Imobiliárias no Senac, estou começando nessa área e estarei disposto a entregar o meu melhor! 

Por favor, se eu não atender por chamada, entre em contato comigo pelo WhatsApp ou Gmail.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-20T15:15:00.000Z'::timestamptz),
  ('Iuri Barreto da Silva','iuribarreto93@gmail.com',NULL,'51991506728','1993-03-31',32,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1YowrQBHPnY_AWmQA-gae83D2bQPfkHhd','Direito','Pós-graduação Completa','IPA','2020-03-06','Sou formado','1) Novembro/2023 – Atualmente – Plus Service (Terceirizada) – Justiça Federal
Cargo: Líder de Auxiliar de Arquivo
Principais Atividades: Responsável pela equipe jurídica e administrativa, organização e separação dos documentos, supervisionar a equipe para digitalização dos processos, realizar controle dos prazos processuais no sistema E-PROC. Organização, registro em planilhas e relatórios dos procedimentos internos. 
Fiscalização, supervisão e controle dos serviços executados pela equipe. 
Elaboração de controle de produtividade diária, semanal e mensal. Relatórios diários dos procedimentos internos, exemplo.: reuniões, cobranças, orientações e seus desempenhos.
Treinamento para melhor desenvolvimento. Realização de suporte, quanto aos processos. 
Processo de assinatura dos contratos, quando a recrutamento de seleção de profissionais. 

2) Abril/2023 – Outubro/2023 – Michelena & Dornelles Advocacia e Consultoria 
Cargo: Estagiário 
Principais Atividades: Atendimento ao cliente, separação de documentos, peticionamento de iniciais, acompanhamento do processo, pesquisa de jurisprudência, elaboração de minutas, relatórios do andamento de processos e alimentação do sistema de gestão de processos.

4) As outras áreas no qual possuo experiência são de atendimento ao cliente e garçom.','Sou Bacharel em Direito.
Possuo curso de Dicção e oratória.
Tenho duas pós e Direito previdenciário e processos Civil.',NULL,'Administrativa, Comercial, Licenciamentos',NULL,NULL,'Facebook','Não.','R$5.000,00','Sim','Tassiara Kich - 51-981193266 - Diretora Justiça Federal','Coordenador Administrativo','Olá
Possuo curso técnico em informática, curso de dicção e oratória e também curso de pós graduação em Previdenciário e processo Civil.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-20T15:49:00.000Z'::timestamptz),
  ('Denzel Porto Barcelos','workemaildenzel@gmail.com',NULL,'51984784714','2001-09-05',24,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=11Z4Y2Y-EcPmzXnVy-MMvr0u2ehCtEnd0','Design de Moda','Ensino Superior Incompleto','Universidade do Rio dos Sinos','2027-12-04','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Auxiliar Administrativo – Escritório Andrade & Eeden (2021 – 2022)
	•	Controle financeiro, prospecção de clientes e atendimento telefônico
	•	Digitalização de processos e elaboração de e-mails

Auxiliar Administrativo – Casanova Corretora de Seguros (2018 – 2019)
	•	Recepção de clientes e venda de seguros
	•	Elaboração de propostas e agendamento de vistorias
	•	Atualização de planilhas e digitalização de documentos

Auxiliar Administrativo – Ministério Público do RS (2019 – 2021)
	•	Apoio ao setor de RH e atendimento no guichê
	•	Revisão de documentos e planilhas
	•	Uso dos sistemas ARH e SPU
	•	Organização de correspondências e arquivos','Técnico em Administração e informática, inglês avançado, gestão pessoal',NULL,'Administrativa, Estágio, Marketing',NULL,'https://drive.google.com/open?id=1NPJy0tyWsxvD2qPWKwUtZn1Ne7edq00v','Instagram','Não','1800','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-20T16:00:00.000Z'::timestamptz),
  ('Fabio Mendes Rodrigues','fabioepessoal@gmail.com',NULL,'55984721351','1994-01-30',32,'Solteiro(a)','0','Não','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1nuGbNNWtN7DJ8XbwuJg6t6a9XDcV8-nA','Administração de empresas','Ensino Superior Completo','Unipampa','2020-02-15','Sou formado','EXPERIÊNCIAS PROFISSIONAIS

 RÁDIO CULTURA / Operador de Áudio
Período de 04/01/2025 à 30/06/2025 > Mesa de áudio, controle de programação e contribuições internas
em sistemas e técnica.
 RM HORTIFRUTI GRANJEIROS / Auxiliar Administrativo
Período de 07/12/2024 à 03/01/2025 > Lançamento de pedidos de compras com fornecedores e vendas
para clientes atacadistas; Atualização e confecção de precificação e design de loja; suporte à gerência.
 DROGARIA CIDADE / Promotor Externo
Período de 01/07/2024 à 11/09/2024 > Abordagem com clientes, oferecendo um cadastro com cashback e

bônus de compra. Atendimento feito na loja e também na rua.
 TWISTAR S.A / Analista Financeiro E Call Center
Período de 02/05/2023 – 24/07/2023 > Serviços de mercado financeiro e Call Center
 VIPSUL TELECOM CLARO BRASIL / Vendedor Porta A Porta
Período de 24/04/2022 22/03/2023 - Prospeção de clientes de forma presencial e modalidade porta a
porta, atuando em diversos bairros da cidade oferecendo variados produtos da CLARO, além de serviço
pós venda e mídias sociais.
 CONTABILIDADE ELGUY/ Auxiliar De Escritório (Folguista)
Período de 15/02/2022 25/02/2022 > Responsável direto pela Certificação Digital, tendo nesse processo
as seguintes atividades: Recebimento da demanda de certificado (feito com contabilidades parceiras);
agendamento com o cliente para os procedimentos; procedimentos (coleta de documentos, cadastro
biométrico ou renovação, envio do certificado para aprovação, mediante correções com a equipe de
suporte, aprovação, emissão e envio do certificado).
 PREÇO MAIS POPULAR FARMÁCIAS/ Promotor De Vendas
Período de 24/01/2019 à 29/04/2019 e 17/09/2021 15/12/2021 > cooptação de clientes através de locução
em porta de loja ou distribuição de material gráfico, auxílio em atendimento e serviços gerais.
 IBROWSE/ CARTÓRIO ELEITORAL/ Técnico De Urna
Período de 19/10/2020 20/11/2020 > Um dos 5 responsáveis por receber, programar, montar e entregar as
urnas da Eleição 2020 na cidade de Sant''Ana do Livramento, bem como após as apurações checar se não
havia nenhuma irregularidade, embalar em caixa para envio de responsabilidade do Cartório.
 ESTILHAÇO COMUNICAÇÃO (Negócio Próprio)
Período de 22/10/2016 à 31/12/2018 e de 01/05/2020 14/09/2021 > Formulação e digitação de Propostas
publicitárias; Contatar clientes em potencial, outrora cooptados, buscar equilíbrio financeiro e
administrativo para ações de melhoria x recursos próprios. Organização de notas e recibos; Gestão
empresarial, estratégica e de Marketing; Organizar o fluxo de caixa.
 APX CONSULTORIA - GRUPO IVX Auxiliar Administrativo e Marketing
Período de 23/07/2014 01/03/2015> Agendamento de consultorias Telefonar para potenciais clientes,
oferecendo o serviço de consultoria; Gestão de conteúdo para Rede Social; Organização de notas e
recibos; Gestão empresarial, estratégica e de Marketing, etc
 SANTA CASA DE MISERICÓRDIA Auxiliar Administrativo e Faturamento
Período de 26/11/2013 12/03/2014 > Recolhimento de prontuários de alta de determinados setores
conforme solicitado pelo setor de faturamento e, inclusão dos requisitos exigidos pelos convênios
credenciados na entidade; Posteriormente listava esses prontuários em um caderno e passava para o
faturamento, sob a condição de recebimento seguidos por assinatura do responsável do setor.
Recolhimento, análise e repasse de laudos de convênios, cauterização (autorização) de internação de
alguns convênios.
 UNIMED REGIÃO DA FRONTEIRA/ Auxiliar De Faturamento

Período de 18/05/2012 31/05/2013> Organização e correção de contas médicas, cadastro de fichas de
atendimento, glosas financeiras, cooperação de trabalho para acreditação da unidade na ANS; Separação
de fichas de clientes por cobertura (FuSEx, ATAPEL, IPE, etc).
 CARTÓRIO DE REGISTRO DE IMÓVEIS/ Auxiliar De Foro Extra-Judicial
Período de 27/02/2011 14/05/2012 > Cadastro de Matrículas no sistema IMÓVEIS (by Sky
Informática); Digitação de diversas atividades executadas no cartório (compra e venda, inventário, gleba
legal, doação, usufruto vitalício, etc.). Serviços bancários externos; Serviços de rua diversos.
 RIGHI COMÉRCIO DE GÊNEROS ALIMENTÍCIOS LTDA / Empacotador
Período de 17/03/2010 23/02/2011> Serviço de pacote à mão, carregamento de mercadorias e auxílio
a clientes.','UNIVERSIDADE FEDERAL DO PAMPA / Bacharelado em Administração
 SENAC / Curso de Aprendizagem e Comércio 400 hrs
 SESI/ Curso De Empreendimento 20 hrs
 UNOVA CURSOS / Curso de Imposto de Renda 30 hrs
 EXATTUS / Curso De Informática Completo 300 hrs
 SENAC / Curso de Locutor, apresentador e animador 303 hrs
 SEBRAE / Curso de Finanças “Sei controlar o meu dinheiro” 06hrs
 CEFIS / Curso de DCTFWEB Na Prática 16hrs.
 GINEAD / Curso Direito E Legislação Trabalhista 80hrs
 EDUNE CURSOS / Curso De Folha De Pagamento 30hrs
 SEST SENAT / Curso De Fundamentos De Administração De Pessoal 50hrs
 EDUNE CURSOS/ Curso De E-Social Para Empresas 40hrs',NULL,'Administrativa, Comercial, Marketing',NULL,NULL,'Instagram','Não','R$2.000','Sim','REFERÊNCIAS PROFISSIONAIS:

 ADAIR “TOCO” GOMES PEREIRA – GERENTE RÁDIO CULTURA / (55) 981410025
 APX CONSULTORIA / ADM. NEPOMUCENO NETO -CRA: RS 050444 / (55) 98467-2937.
 EDUARDO PLATEN SLUSSAREK – TWISTAR S/A / +52 1 55 7199 4388 (WhatsApp)
 RAFAEL DE CASTRO / VEREADOR EM DE SANTANA DO LIVRAMENTO/ (55) 984542892.
 CÉLIA LUISA ARTECHE – CARTÓRIO ELEITORAL /(55) 98406-9510.','Quero inscrever-me no banco de talentos da Young!','1. LOCUÇÃO EM PORTA DE LOJA
Entre os anos de 2015-2024 desempenhou o trabalho de locução em porta de loja, atuando fortemente no varejo de Sant''Ana do Livramento, tendo atuado nas mais distintas empresas, podendo citar:

VITRINE MODAS (extinta)
CASA GURI
REAL UTILIDADES
ATACADÃO
SUPER 10
PREÇO MAIS POPULAR FARMÁCIAS (empregado)
DROGARIA CIDADE (empregado)
CASA VERDE (extinta)
MARTIN SHOP
TODA BELLA COSMÉTICOS

O trabalho como locutor em variados empreendimentos possibilitou:
RECONHECIMENTO E CREDIBILIDADE PROFISSIONAL NO COMÉRCIO SANTANENSE;
EXPERIÊNCIA PARA CONSEGUIR O TRABALHO COMO LOCUTOR EMPREGADO DA PREÇO MAIS POPULAR FARMÁCIAS (PMP);
LEITURA RÁPIDA DOS ANSEIOS DE COMPRA;
INDUÇÃO INSTANTÂNEA DE COMPRAS EM TRANSEUNTES;
TROCAS PROFISSIONAIS COM GERENTES/PROPRIETÁRIOS, O QUE POSSIBILITOU DIVERSOS APRENDIZADOS QUE FORAM AGREGADOS AO LONGO DO PROCESSO PROFISSIONAL;
GESTÃO DE IMAGEM PROFISSIONAL, COMPROMETIMENTO GERENCIAL, RESPALDO PROFISSIONAL GERENCIAL;
2. RAFAEL DE CASTRO: AMIZADE, CONSELHOS E CONSTRUÇÃO DE CAMPANHA POLÍTICA
A amizade com o atual vereador Rafael de Castro data de 15 anos. Rafael é oriundo de Jacundá, estado do Pará, e se tornou uma figura extremamente popular na cidade através de sua inovadora venda ambulante de lanches, cativando variadas pessoas que o conheceram. No ano de 2018, Rafael consultou-me para possibilidade de ser candidato à deputado federal representando a cidade de Sant''Ana do Livramento. Porém, mesmo com todo reconhecimento, o alertei de que era necessário construir uma base mais sólida, não pautada somente na simpatia da comunidade e na sua história de superação (o qual contou em 2017 no seu livro "Financiando Sonhos".), mas que precisava entregar algo concreto e útil para a comunidade. Assim, ele começou a idealizar tendo a mim como ajudante e membro fundador, o movimento SAL E LUZ - VOLUNTÁRIOS DO BEM. Foram desempenhadas atividades comunitárias, desde sessões de cinema comunitárias, até oficinas de xadrez, início de horta comunitária, limpeza coletiva do terminal de ônibus da cidade. Tudo sempre foi feito com boas intenções, o projeto não foi criado para cunho eleitoreiro, mas consequentemente Rafael de Castro deixou de ser apenas o vendedor de pastéis que era querido pela comunidade, mas um fazedor de atividades concretas que beneficiaram a cidade. Em 2020, Rafael se candidatou ao posto de verador, e estive junto na coordenação de sua campanha, sendo instrumento de propagação de seus projetos, estando na rua conversando com as pessoas onde falamos sobre a história de Rafael e o que ele gostaria de fazer por Sant''Ana do Livramento. Assim, Rafael de Castro Santos foi eleito, tendo sido em 2020 o vereador mais votado. Desde a construção com base até a concretização do projeto, sendo que em 2024 Rafael foi reeleito, estive junto na base de construção desse processo. 
3- CO-GESTOR DE REINÍCIO DE PROJETO MUSICAL
Tendo atuação em outros segmentos, incluindo o de música, pude no ano de 2014 contribuir para o reinício de carreira da artista fronteiriça Carolina Cáceres. Carolina cantava e era guitarrista em uma banda de rock chamada EL DOS BANDA. Ocorreu a situação de Carolina entrar em litígio afetivo, cujo seu cônjuge naquele momento era guitarrista e líder da banda, assim cortando relações e levando a sua saída da banda. Carolina sempre foi extremamente talentosa, mas naquele momento estava sem banda e um possível norte do que fazer com sua carreira musical. Atuando no cenário musical e já estudante de administração, enxerguei o grande potencial que deveria ter continuidade de Carolina. No ano de 2013 houve um festival de bandas na cidade de Sant''Ana do Livramento, o qual a banda que atuava ganhou. A banda ruiu pouco tempo depois, e haveria uma segunda edição do festival. Sem banda também e vendo ali uma possibilidade de impulsionar uma história, contatei Carolina e assim preparamos uma apresentação acústica para concorrer. Não é surpresa dizer que ganhamos o festival. Carolina podia ter confiança em desenvolver seu trabalho solo. Nos primeiros tempos a acompanhei, logo na sequência por outros projetos não tocamos mais juntos. Carolina seguiu seu trabalho, o profissionalizou assim lançando vários EP''s, fazendo muitos shows por várias cidades no Uruguay, várias cidades no Rio Grande do Sul, tendo aprovado e performado o projeto "SANTERA - TUA E MINHA", Projeto realizado com Recursos da Lei Federal 14.017/2020 - Aldir Blanc através da Secretaria Especial da Cultura de Sant''Ana do Livramento; No ano de 2024, foi selecionada e competiu no reallity show "La Voz-Uruguay". 

4- TRABALHO EM ALIANÇA NUMA WEBRÁDIO ROCK ENTRE 2020/2021 
No dia 15 de Fevereiro de 2020, me tornei bacharel em Administração. Um mês após, uma pandemia de COVID-19 nos tornava obrigados a permanecer dentro de casa para nossa própria sobrevivência. Naquela altura não estava trabalhando e minha rádio estava desativada. Recebi o convite do radialista Victor Luan Martini, proprietário da WebRádio Mooca. Ali vislumbrei a possibilidade de pelo menos, manter a minha saúde mental em um período extremamente difícil que todos vivemos. 
Sem horários durante o dia na programação mas tendo eu nenhum compromisso, aceitei fazer um programa durante a madrugada. Assim desempenhei um programa chamado "MADRUGADÃO DA MOOCA" que fez um grande sucesso, especialmente devido ao momento de lockdown, ajudou a conectar ouvintes e artistas de vários lugares do Brasil e da América do Sul, agregou um crescimento de audiência e marca para MoocaWeb Rádio e se faz presente neste currículo adicional pelos seguintes atributos:
CRIA UMA OPORTUNIDADE DE TRABALHO QUANDO UMA REALIDADE ATÍPICA DE PANDEMIA TORNA PRATICAMENTE INVIÁVEL;
AGREGA UM VALOR À MARCA PELO COMPROMETIMENTO, TRABALHO SÉRIO E USO ASSERTIVO DOS CANAIS DE COMUNICAÇÃO, COMO REDES SOCIAIS;
REFORÇA A APTIDÃO EM TAREFAS QUE NÃO POSSUÍA CURSO OU ESPECIALIZAÇÃO, MAS QUE A VONTADE DE FAZER DAR CERTO POSSIBILITARAM CONCRETIZAR (EDIÇÃO DE ÁUDIO, ASSIMILAÇÃO DO CONHECIMENTO EM SOFTWARES DE STREAMING, EDIÇÃO E MANIPULAÇÃO DE IMAGENS); 
NA SEQUÊNCIA, O DEPOIMENTO DE VICTOR LUAN MARTINI, PROPRIETÁRIO DA MOOCA WEBRÁDIO,  SOBRE FABIO: 
"Eu e Fábio trabalhamos juntos durante quase dois anos, fizemos um belo trabalho durante a pandemia no sistema de web rádio, ele é uma pessoa responsável, comprometida, profissional e estando sempre disponível  para o crescimento da empresa". 
O trabalho em parceria só foi interrompido em 2021 pois decidi colocar novamente no ar a WebRádio que idealizei anos antes, a Rádio Estilhaço.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-20T17:26:00.000Z'::timestamptz),
  ('Kerolen Dos Santos Barreto','kerolenbarreto13@gmail.com',NULL,'53991793135','2005-08-13',20,'Solteiro(a)','0','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=14Miw2ywGf9Awe_GBpRdY20cKOdZT9E1-',NULL,'Ensino Médio Completo','Urcamp','2029-07-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','PGL Distribuidora de alimentos, cargo de jovem aprendiz , atividade de atendimento ao público periodo 10/2022 ate 10/2024
Conecta empreedimentos cargo de auxiliar administrativo aprendiz , atividades com planilhas e controle de almoxarifado , perido 11/2024 atualmente','Cursos de Excel, Word',NULL,'Administrativa, Comercial, Estágio',NULL,NULL,'Instagram','Nao','2000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-20T18:27:00.000Z'::timestamptz),
  ('Danielle Dutra Loureiro','dani.dloureiro.79@gmail.com',NULL,'53999771297','2005-03-18',20,'Casado(a)','0','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1HIp70uGhcEyRCEUPaEcdFcsu6_FtqukJ','Cursando Psicologia','Ensino Superior Incompleto','URCAMP','2028-06-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Academia 26fit 
2) Consultor de Vendas 
3) Junho de 2024 até o momento (1 ano e 2 meses)
4) Realizar o atendimento inicial ao cliente, apresentando planos e finalizando inscrições; responsável por otimizar processos complexos da empresa; informar e conferir dados mensais de resultados de forma planificada. Através do meu comprometimento com a empresa, pude gerenciar conflitos recorrentes, encontrando soluções permanentes, apresentei e auxiliei os colaboradores no manejo da plataforma de CRM da empresa, como também criei planilhas de controle que auxiliam no rendimento e projeção para números futuros.

1) HCC Engenharia - Franquia Bagé 
2) Assistente de Negócios 
3) Setembro de 2021 até janeiro de 2024 (2 anos e 4 meses)
4) Realizar o atendimento e prospecção de clientes; manejar plataformas de CRM, atualizando cronogramas e informações
sobre os clientes; calcular e organizar orçamentos, documentações e contratos; fazer a revisão de documentações;
utilizar o Pacote Office para organizar a planificação de desempenho da empresa. Durante o período que estive na empresa, pude auxiliar na transformação e crescimento da mesma, reduzindo tempo de espera para entrega de orçamentos, mais assertividade em documentações de contrato e relatórios
mais precisos sobre o andamento da empresa, clientes prospectados e contratos finalizados.','Não possuo nenhum curso com certificado relevante, entretanto participei de diversos treinamentos voltados para a área comercial e administrativa.',NULL,'Administrativa, Comercial, Marketing',NULL,NULL,'Instagram','Não','Em torno de R$2.500,00','Não',NULL,'Vaga de Assistente de RH, porém estou aberta a possibilidades','Tenho interesse em trabalhar com a empresa pois acredito que posso contribuir com o crescimento da empresa, me considero uma pessoa pró-ativa que busca trazer inovações, me adapto facilmente a mudanças e possuo competências avançadas para resolução de problemas. Essas qualidades adquiri conforme minhas experiências nas empresas as quais trabalhei e acredito que na Young posso, além de auxiliar no desenvolvimento empresarial, agregar no meu crescimento profissional.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-20T19:06:00.000Z'::timestamptz),
  ('Guilherme Guasselli de Oliveira','guiguasselli@outlook.pt',NULL,'51999616727','1985-01-19',41,'Casado(a)','1','Sim','Caraá/rs','https://drive.google.com/uc?export=view&id=1yV-qHlJsFt664HJAP7j6K6egv8Tu8zuj',NULL,'Ensino Superior Incompleto','UNIFATECIE','2027-07-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','ESCRITÓRIO FAHRION (Santo Antônio da Patrulha/RS)
1)Escritório Fahrion   2) Assistente de RH 3) 01/2018 - 12/2018 4) Análise minuciosa de documentos; atendimento ao cliente; emissão de Guias, tais como FGTS, INSS, IRRF, entre 
outras; admissão e Demissão de funcionários de empresas contratantes 
utilizando o sistema DOMÍNIO; elaboração de planilhas e relatórios.

COMERCIAL MUNDIAL DE GÁS E ÁGUAS LTDA (Porto Alegre/RS)
1) Com. Mundial de Gás e Água LTDA. 2) Gerente Administrativo e Financeiro 3) 01/2008 - 04/2014 4)Atendimento ao público (presencial e telefônico); supervisão; fechamento de clientes mensalistas; fechamento de comissão semanal; folha de pagamento; admissão e demissão de funcionários; controle de caixa; controle de estoque e conferência do mesmo; contas a pagar e receber; elaboração de planilhas em geral; conciliação bancária; emissão de NF-e; emissão de boletos; serviços de banco; conferência dos produtos a 
serem entregue; rotas de entrega; vendas e pós vendas; suporte operacional 
em geral.',NULL,NULL,'Administrativa, Financeiro',NULL,NULL,'Agência de Empregos','Não','2000','Sim','Marcelo Fahron - (51)999754455','Assistente de RH','Comecie minha jornada como estagiário de Delegacia de Polícia da cidade de Camaquã/RS, após esse período fui morar em Novo Hamburgo onde trabalhei em uma industria gráfica como impressor flexográfico, me mudei para Porto Alegre onde surgiu a oportunidade de trabalhar como Gerente Administrativo e Financeiro, onde eu liderava 14 funcionários, após fui morar em Santo Antônio da Patrulha e montei minha loja que não due certo na época, trabalhei no Escrotório de Conatabilidade onde consegui devolver mais habilidades, no ano de 2019 na cidade de Caraá, montei novemente uma loja de personazados e gráfica expressa, fechei na pandemia e reabri, até que em junho/2023 veio a enchentee e levou me negócio de minha casa embora. Desde então estava em Gravataí e agora estou retornando para a cidade de gostaria muito de fazer árte da sua equipe. Acho que me encaixo nos requisitos preteridos para a função. Me enquadro na categoria de PCD, defiência física, não visivel (se me ver na rua não aparece).','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-20T20:29:00.000Z'::timestamptz),
  ('Gabriel Gonçalves Nobre','ggoncalvesnobre@gmail.con',NULL,'53991313077','2005-08-18',20,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1zgmR8qwkRD89WxkcvOn_lF_vMo8Vm_11','Não possuo no momento, mas em breve irei fazer um curso!','Ensino Médio Completo','Justino Costa quinta Rd TC','2024-05-11','Não, no momento pausei/parei por um período.','Tive contato com o mundo do trabalho um pouco cedo, lá pelos 13 anos de idade em uma empresa familiar, Tornearia mecânica(Tornearia Guimarães) na rua Tiradentes 789 Bagé Rs. Lá fiquei até uns 15/16 anos de idade como auxiliar,Ofice boy aprendi bastante coisa criei uma boa noção sobre a área em questão de soldas oxigênio,elétrica( aprendi a manejar e começar a soldar coisas pequenas) aprendi a lidar também com torno mecânico em peças pequenas com matérias de alumínio,bronze,tecnil,ferro,ferro fundido etc…área em que em um futuro próximo pretendo estudar e talvez seguir na área ou meio próximo! (a empresa deixou de ser familiar pois trocaram os donos e a razão social)
Logo após pelos 17 anos de idade virei estagiário pela prodesp da ACIBA em uma loja de instrumentos musicais( Lírio Music) localizado na Av Sete de Setembro 1179, no mês de setembro de 2022 fui contratado como estagiário na empresa,em dezembro de 2023 fui efetivado no cargo de balconista/vendedor onde melhorei bastante a lidar com público ser mais proativo melhor comunicação, sempre sendo bem educado com o público e sabendo a hora de descontrair e ser sério(com atendimento personalizado cada pessoa uma abordagem diferente, sempre sendo versátil).
Mas sempre procuro melhorar e evoluir e acredito que em cada lugar temos algo novo para aprender tanto pessoal quanto profissional,em busca também de oportunidades no mercado de trabalho e com bastante disposição para aprender ! .',NULL,NULL,'Administrativa, Comercial, Financeiro, Engenharia',NULL,NULL,'Instagram','Não','Não poderia colocar um valor exato pois é a critério da empresa mas simbolicamente minha expectativa seria acima do valor que recebo atualmente, imagino em algo de R$1.990,00 R$2.100,00 R$1.950,00 mas se for o caso de receber o mesmo salário não teria problema algum desde que seja uma empresa que com o tempo possa ter a possibilidade de subir de cargo. No caso com mais oportunidades de crescimento do funcionário dentro da empresa, algo que acho bem legal!!','Não','Lírio Music 53 3242-5478','Comercial','Tenho 20 anos de idade, de família trabalhadora muitos hoje já tem algo que quero para meu futuro, que é uma BOA estabilidade financeira, hoje em dia trabalho gosto de estar em movimento e ter meu próprio dinheiro, não depender ou ter que pedir! 
Nas horas vagas gosto bastante de assistir filmes em específico no gênero de terror,horror,suspense 
Após o expediente de serviço vou à academia em média de 02 máximo 03 dias na semana final de semana curto o dia com a família a noite fim de tarde jogo futsal/salão com amigos parcerias, ou para comer algo ou em algum encontro, vou visitar meus avós tanto vó quanto vô, sempre que tenho tempo brinco com meu irmão de 03 anos uma figura, sempre tendo me manter ativo e presente com a família e amigos e disposição pra novas amizades com pessoas gente boa!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-21T01:28:00.000Z'::timestamptz),
  ('Eduarda moraes campos','eduarda.moraescampos132@gmail.com',NULL,'51986810379','2004-01-13',22,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1JXPkJkPUqvKwIZrLR1lERvy6OTrElZn-',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Panificadora ki pão - atendente/auxiliar administrativo- 25/04/2022 - até 06/03/2024',NULL,NULL,'Administrativa',NULL,'https://drive.google.com/open?id=1jHUFjX5AXhBOBzdJEyyyPbY0uvxZpYsr','Instagram','Não','2.000','Não','Panificadora ki pão/ Juliana- 51994424717','Quero inscrever-me no banco de talentos da Young!','Recepcionista com experiência em atendimento a clientes.
Boa capacidade de comunicação com clientes e
fornecedores, gestão de tempo e auxílio administrativo','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-21T13:59:00.000Z'::timestamptz),
  ('Luis Mello','luishenriquemorais.sp1@gmail.com',NULL,'11998895177','2003-07-18',22,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1PgQRRf6Ci2Sa7NZNdANQX9ej9dVVk1Rd',NULL,'Ensino Superior Incompleto','FURG','2027-01-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Tenho 5 anos de experiência na área de vendas e na área administrativa','Estou cursando ADM',NULL,'Administrativa, Comercial, Financeiro, Marketing',NULL,NULL,'Instagram','Nunca fui','3000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-21T16:34:00.000Z'::timestamptz)
;

INSERT INTO young_talents.candidates (full_name, email, email_secondary, phone, birth_date, age, marital_status, children_count, has_license, city, photo_url, education, schooling_level, institution, graduation_date, is_studying, experience, courses, certifications, interest_areas, cv_url, portfolio_url, source, referral, salary_expectation, can_relocate, professional_references, type_of_app, free_field, status, tags, origin, created_by, original_timestamp)
VALUES
  ('Caroline de Souza Brezolin','dani.carol.victor@gmail.com',NULL,'55991326350','1990-01-10',36,'União estável','2','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1BHb3ZuaS04VBQvUfan1F430cKLRBgaUx','Pedagogia','Ensino Superior Completo','Universidade Federal de Santa Maria','2016-02-19','Sou formado','Trabalhei na Empresa Pepe Calçados como Caixa 4 anos e posteriormente como gestora mais 4 anos. Entre os anos de 2008 a 2016.
Atualmente sou vendedora nas Lojas Pompéia desde o ano de 2018.',NULL,NULL,'Administrativa, Comercial, Financeiro, Marketing',NULL,NULL,'Facebook','Nao','3.000,00','Não','Ana Luiza Vendrusculo  55 99655-1094','Quero inscrever-me no banco de talentos da Young!','Ola me chamo Caroline, tenho 35 anos sou uma pessoa focada em resultados, minha experiência e totalmente voltada a atendimento ao público, sou uma pessoa comprometida, responsável e acima de tudo gosto de desafios. Minha maior motivação são meus filhos, no entanto, estou sempre buscando uma melhor qualidade de vida para nós.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-21T20:25:00.000Z'::timestamptz),
  ('Aline Munhoz Rodrigues','alinemunhoz081@gmail.com',NULL,'53999977582','2002-09-01',23,'Solteiro(a)','0','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1qQG0_YiAcomJlD07EzCbr4QI3k2JL043','Tecnologia em Gestão de recursos humanos','Ensino Superior Completo','Centro universitário unifael','2025-02-14','Sou formado','J.M.ALVES & M.F.V.MOREIRA LTDA
-Auxiliar de recursos humanos 
-Atuação completa em Recrutamento e Seleção, com divulgação da vaga, entrevistas e encerramento do processo; Consultoria personalizada para elaboração e revisão de currículos, com foco na apresentação estratégica do perfil profissional; Confecção de documentações para admissão de estagiários; Prospecção ativa de empresas e clientes, com visitas comerciais para identificar demandas e oferecer soluções em recrutamento; Gestão do processo de vendas online e presencial de serviços, desde a negociação até o fechamento de contrato; Apresentações de Lives sobre o mercado de trabalho; Condução de Workshops sobre tendências profissionais.
-Out/2023 - Ago/2025(1 ano, 10 meses)

F.F.STAEVIE COMBUSTIVEIS LTDA
-Atendente
-Trabalhei como atendente em um posto de combustível, realizando atendimento ao cliente, operação de caixa, organização do ambiente de trabalho e elaboração de bebidas e lanches. Durante minha experiência, pude aprender muito por meio dos treinamentos oferecidos pela empresa, aprimorando habilidades em atendimento, organização e execução de tarefas diárias. Essa vivência me permitiu desenvolver disciplina, atenção aos detalhes e foco em oferecer um excelente serviço ao cliente.
-Nov/2020 - Ago/2023(2 anos, 9 meses)

NADERA COMERCIO DE CONFECÇÕES LTDA
-Estoquista/Jovem Aprendiz
-Atendimento ao público, prestando suporte aos clientes no provador e acionando vendedoras pelo sistema de comunicação; Apoio nas vendas, auxiliando a equipe comercial no processo de atendimento; Organização e controle do estoque, incluindo recebimento, conferência e etiquetagem de mercadorias; Manutenção da ordem e padronização das roupas no salão de vendas e no estoque.
-Abr/2019 - Mai/2020(1 ano, 1 mes)','Cursando MBA em gestão comercial e marketing',NULL,'Administrativa, Comercial, Marketing',NULL,NULL,'Instagram','Não','1.760,00 a 2.000,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Profissional com experiência diversificada em atendimento ao cliente, vendas, recursos humanos e consultoria, desenvolvendo habilidades tanto no ambiente operacional quanto estratégico. Atuei em funções que exigiram organização, proatividade e foco em resultados, conciliando atividades administrativas, comerciais e de gestão de pessoas.No início da trajetória, adquiri experiência no varejo e atendimento ao público, atuando em estoque, provador, apoio em vendas e organização de mercadorias, o que fortaleceu minha disciplina, atenção aos detalhes e agilidade no suporte ao cliente. Posteriormente, tive vivência em postos de atendimento e conveniência, assumindo responsabilidades com caixa, atendimento direto, preparo de produtos e manutenção da ordem no ambiente de trabalho.Na área de Recursos Humanos, atuei de forma completa em Recrutamento e Seleção, desde a divulgação até o encerramento do processo, além de realizar consultorias personalizadas em currículos, admissão de estagiários e prospecção de clientes. Desenvolvi ainda habilidades comerciais, com gestão de vendas de serviços presenciais e online, incluindo negociação e fechamento de contratos.Também participei de iniciativas de capacitação e desenvolvimento profissional, conduzindo lives e workshops sobre mercado de trabalho e tendências profissionais, reforçando minha capacidade de comunicação, liderança e orientação de equipes e candidatos.Minha trajetória demonstra versatilidade, capacidade de adaptação a diferentes áreas e foco em entregar valor, seja por meio de um atendimento de excelência ao cliente, da gestão de processos de recrutamento ou da criação de soluções estratégicas para o desenvolvimento profissional.

Além disso, sou criadora de conteúdo digital no Instagram, onde compartilho estratégias e orientações para profissionais que buscam se posicionar e crescer no mercado de trabalho.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-21T20:44:00.000Z'::timestamptz),
  ('Emely Bianca Gomes Alves','alves.ebga@gmail.com',NULL,'96981415800','2002-06-15',23,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1VmTWKRk7TaQjdnEWouVUvo5lCcxWmmbv','Enfermagem','Ensino Superior Completo','Universidade paulista (UNIP)','2025-03-16','Sou formado','(1) Tenho uma experiência em vendas na loja meridiana de Macapá - Ap (foi apenas um contrato), fazia reposição de mercadorias e atendimento, (2) já tive uma experiência de pouco tempo em na ótica topázio, agora mesmo estou em busca de crescimento no mercado de trabalho e acredito que essa empresa pode me ajudar.','Tenho informática básica, atendimento ao cliente e microempreendedor individual, sou formada recentemente em enfermagem.',NULL,'Administrativa, Comercial, Financeiro',NULL,NULL,'Instagram','Não','1.800','Não',NULL,'Comercial','Sou natural de Macapá- ap, estou recente aqui em porto Alegre, já trabalhei voluntário na minha igreja como recepcionista, jaz fiz um meni cursos de libras, tenho informática básica.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-21T21:26:00.000Z'::timestamptz),
  ('Gustavo dos Santos Machado','1gustavomachado2@gmail.com',NULL,'51996335099','2000-02-26',25,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1SypJy2aH2vyPLg-I47rl5dxNsF95IqAw','Técnico Integrado em mecatrônica','Ensino Superior Incompleto','Instituto Federal de Educação Ciência e Tecnologia Sul-rio-grandense campus Charqueadas','2019-03-10','Não, no momento pausei/parei por um período.','Prefeitura municipal de Arroio dos Ratos
Auxiliar administrativo (CC4)
Março/2021 - Janeiro/2024
Trabalhei com atendimento ao público no setor de protocolo, auxiliando a entrega de documentos e solicitaçoes e encaminhando para os setores responsáveis

RVSul Montagens 
Auxiliar administrativo 
Janeiro/2024 - Atual 
Trabalho auxiliando nas respostas de e-mails, recebimento de notas fiscais, auxílio na confecção de orçamentos, relatórios, documentos de funcionários e contato com fornecedores e clientes.',NULL,NULL,'Administrativa, Financeiro, Engenharia',NULL,NULL,'Facebook','Não','R$ 2.000,00 + benefícios','Não','Rômulo - 51 999642112 - RVSul Montagens
Caroline (Dep. Pessoal) - 51 36562553 - Prefeitura de Arroio dos Ratos','Assistente Administrativo e outros cargos que possam se encaixar no meu perfil','Durante o Ensino médio e início da faculdade fiz parte de projetos de iniciação científica, onde tive a oportunidade de participar de diversos eventos de cunho nacional e internacional (incluindo uma viagem à Guadalajara/ME). Tenho conhecimento no pacote office, CorelDraw, Software de CAD, programação C e inglês e espanhol básico.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-22T02:25:00.000Z'::timestamptz),
  ('Silvia Letícia da Silva Pires','letypy.rs@gmail.com',NULL,'51993436975','1983-01-28',43,'União estável','1','Não','Viamão/rs','https://drive.google.com/uc?export=view&id=1eFIOL4QolKx7cCB6u8BqEMKxfjUbHFOp','Gestão comercial','Ensino Superior Incompleto','CENSUPEG','2027-05-20','Não, no momento pausei/parei por um período.','Consultora de Vendas e Gerente Comercial (Home Office – PJ) em Yasmin Cardoso Laser | jun/2024 – ago/2024

Planejamento e execução de estratégias de vendas e metas.
Criação de vídeos explicativos e envio de propostas personalizadas.
Atendimento consultivo remoto e gestão da jornada do cliente.
Apoio administrativo na organização de relatórios e processos.','Tenho cursos referentes a informática, vendas, organização, CIPA, gestão de conflitos etc',NULL,'Administrativa, Comercial',NULL,NULL,'Instagram','Não','2.000 a 3.500 ou mais','Sim','Mariana Candiota responsável pela empresa Yasmin Cardoso laser 51 99437-5602','Assistente administrativo','Sou uma profissional com mais de 8 anos de experiência em atendimento ao cliente, vendas consultivas e rotinas administrativas, atuando em modelos presencial, híbrido e home office.

Expertise em prospecção de clientes (SDR), pós-venda, suporte administrativo, controle de relatórios e CRM, além de forte habilidade em negociação, fidelização e organização de processos internos.

Perfil comunicativo, resiliente e orientado a resultados, com histórico de apoio estratégico a equipes comerciais e administrativas, sempre buscando eficiência e crescimento da empresa.

Áreas de interesse: Assistência Administrativa, Suporte Comercial, Inside Sales, Atendimento ao Cliente, SDR, Vendas Híbridas e Home Office.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-22T03:53:00.000Z'::timestamptz),
  ('julia vasconcellos gomes har','juliavasconcellosg@gmail.com',NULL,'5555999445240','2005-02-20',21,'Solteiro(a)','0','Não','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1GethwPuXHOyg4LHTPqP5MoQAGeDY2ohW',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','sem experiências',NULL,NULL,'Administrativa, Marketing, Engenharia',NULL,NULL,'Instagram','não','salário mínimo','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-22T05:23:00.000Z'::timestamptz),
  ('Maria Eumice da Silva Gonçalves','luebimba@gmail.com',NULL,'51992131017','1984-04-21',41,'Casado(a)','3','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1JkAVGMc-vBTeW8iDnT3P6aquZiX5EYDz',NULL,'Ensino Médio Completo','Escola Coroneu Emílio Massot',NULL,'Não, no momento pausei/parei por um período.','Empresa Varal Cama Mesa e Banho- auxiliar. Adm. Trabalhei por 4 anos desenvolvendo atividades adm de contas a receber, conferência de caixas, recebimentos de notas fiscal, conferência de mercadorias entrada e saída no sistema da loja, entre outras rotinas.


Empresa Escola de Educação Infantil Príncipe da Paz - gerente escolar- trabalhei por 3 anos desenvolvendo atividades adm de recebimento mensalidades, compras de matérias, admissão e demissão,  recepção e atendimento a pais e crianças, entre outras funções adm. 

Empresa  Escola de Educação Infantil Jerusalém- assistente administrativo- trabalho à  2 anos e 5 meses( atual) exercendo atividades adm como folha de pagamento, admissão e demissão,  compras de material,  orçamentos de serviço,  recepção e atendimento a pais e crianças, entre outras funções.',NULL,NULL,'Administrativa',NULL,NULL,'Instagram','Não','R$2.500,00','Não',NULL,'Vaga anunciada de Auxiliar Administrativo','Sou uma pessoa pró ativa em busca de novos conhecimentos, desafios e oportunidades. Comprometida com minhas tarefas para executá-las de maneira excelente,  de fácil trato para trabalho em equipe . Acessível para mudanças e aprendizagem. Busco oportunidade em empresa que esteja em expansão e assim possibilite formas de crescimento e desenvolvimento através das atividades propostas a serem realizadas. 
Conhecimentos em pacote Office. 
Já trabalhei voluntariamente em abrigos do nosso estado, auxiliando na lojista.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-22T10:36:00.000Z'::timestamptz),
  ('Patrícia Fernanda da Rosa Ramos','rosaramospatricia@gmail.com',NULL,'51998599615','1982-01-18',44,'Casado(a)','2','Sim','Caraá/rs','https://drive.google.com/uc?export=view&id=1EzQg3ErSTJyR01lW16t8OOcgCDkzIp-h',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','1: Farmácias São João, Gestora, 
02/07/2014 a 14/12/2019.(5 anos 5 meses)
 Funções administrativas, controle de caixa, entrada e saída de mercadoria e escalas.

2: CredyPayton Fomento Mercantil, 
01/08/2008 a 14/06/2012.(3 anos 10 meses)
Secretaria/recepcionista 
Serviços bancários, atendimento, registros financeiros, controle de caixa.',NULL,NULL,'Administrativa',NULL,NULL,'Agência de Empregos','Não','Média de um salário e Meio, até adquirir experiência, mostrar domínio em minhas funções, creio que com o tempo e meu desempenho esse valor irá crescer conforme meu desempenho e desenvolvimento na empresa. Desde já agradeço','Sim',NULL,'Analista de Recursos Humanos','Possuo senso organizacional, muita responsabilidade e vontade de aprender e crescer em conhecimento, 
Tenho dois filhos, uma menina de 23 anos, e um menino de 14 anos, ambos já responsáveis o que me torna mais disponível a horários. 
Possuo cursos de gerencia interna, aplicações de injetáveis, muitos destes oferecidos pela minha empresa anterior Farmácia São João, para desenvolver habilidades e me capacitar para o cargo. 
Estou sempre disposta a aprender, levo muito a sério meu trabalho. 
Agradeço a oportunidade desde já. 
Att 
Patrícia','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-22T12:13:00.000Z'::timestamptz),
  ('Marcos mothci Pereira','marcos.mothci@gmail.com',NULL,'51985517922','1987-01-15',39,'União estável','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1Xu5qlMjincJhmyaJeCejbMuQx3HJHqd8','Bacharel Turismo','Pós-graduação Completa','Pucrs','2012-07-07','Sou formado','Grupo Sushito - Coordenador Administrativo (Emprego Atual, ingresso em 07/2024)
Extrair informações do sistema, preparar os dados, elaborar relatórios e
dashoboards utilizando ferramentas de BI (google lookerstudio), gerando insights e
propiciando uma tomada de decisões assertiva e bem informada. Liderança de
equipe e demais rotinas administrativas.
Hotel Park Plaza Moinhos 1903 - Barman / Chefe de Fila (03/2023 a 05/2024)
Base Biergarten Bar e Restaurante- Sócio/Proprietário (07/2019-10/2022)
Responsável por criar e executar o cardápio de alimentos e bebidas, liderar a equipe
de garçons e da cozinha e coordenar a interação entre elas. Fechamento diário,
semanal e mensal, cuidar receitas, despesas, custos e faturamento. Cálculo de
CMV, precificação, elaboração de fichas técnicas e engenharia de cardápio.
Compras e negociação com fornecedores. Fechamento de contratos para eventos
culturais e sociais no espaço do bar.
Banco do Estado do Rio Grande do Sul - Banrisul (2012-2019)
2012-2015 Atendimento pessoa física e jurídica.
2015-2019 Gestão de Sistemas de Negócios na Unidade de Atendimento e
Serviços: gestão de projetos, elaboração de escopo e requisitos, testes de versão,
distribuição e treinamento para rede de agências.
Loja Thithãs (09/2008 - 05/2009) Vendedor
Chilli Beans (11/2007 - 05/2008) Vendedor','Pós em business inteligente estratégia e vendas, durante o tempo que trabalhei no banco fiz diversos cursos de atendimento e técnicas de vendas',NULL,'Administrativa, Comercial, Novos Negócios, Engenharia',NULL,NULL,'Facebook','Nao','6000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','inglês fluente (C2 Proficient)
Espanhol avançado
Programa de Formação de Novos Gestores Banrisul
Google LookerStudio
Técnicas de Venda e Negociação
Pacote Office - Excel Avançado
Programação Python - Básico
Programação JavaScript - Intermediário
SQL - Básico','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-22T13:16:00.000Z'::timestamptz),
  ('Isis Aires Simas','isissimas.gs@gmail.com',NULL,'55984270973','2005-10-12',20,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1omldPSkWQOhFKg80eHD0XQlou1LlwRtg','Administração','Ensino Superior Incompleto','Unipampa','2029-12-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Pernambucanas - Jovem aprendiz (09/2024-06/2025)
Atendimento e suporte ao cliente, precificação e etiquetagem de mercadorias, organização de estoque e setor, oferta de produtos financeiros (cartões, seguros).

Wizard by Pearson - Secretária (05/2025-07/2025)
Atendimento presencial e on-line de alunos, pais e responsáveis; Organização de salas de aula, materiais didáticos e estrutura da escola; Conferência e controle de contratos, boletos e documentos contábeis; Apoio na atendimento à demandas administrativas internas: Recebimento, conferência e organização de pagamentos e documentos financeiros.','Fiz o ensino médio com curso técnico em informática para Internet no IFSul Campus Santana do Livramento, e estou matriculada no curso de bacharel em Administração na Unipampa no Campus de mesma cidade. Também fiz um curso EAD de Assistente Administrativo, no IFRS.',NULL,'Administrativa',NULL,NULL,'Instagram','Não','A partir de R$1.700,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho conhecimento intermediário em inglês. Como fiz o ensino médio integrado ao técnico, tenho conhecimentos nas áreas de informática e programação. Tenho conhecimentos contábeis/financeiros e administrativos, visto que ajudo meu pai a administrar seu MEI.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-22T14:01:00.000Z'::timestamptz),
  ('Dienifer Farias Santos','dieniferfariass@gmail.com',NULL,'51980251623','1994-12-26',31,'União estável','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1JaU1G8tWgPe96t0AuZMygjdDUaNNH9PN','Administração de empresas','Pós-graduação Completa','Faccat','2018-12-02','Sou formado','Americanas, gerente geral de loja, 02/12/2019 até momento . Gerenciar o desempenho da loja e garantir os
melhores resultados de vendas. Acompanhar o desenvolvimento do time de
associados. Apoiar a venda de serviços como: seguros e garantia estendida.
Analisar e tratar os produtos no salão de vendas e estoque. Participar de
processos seletivos de novos associados. Alem disso era responsável por toda rotina administrativa da loja .','Pós graduação em Marketing Digital',NULL,'Administrativa, Comercial, Financeiro, Marketing',NULL,NULL,'Agência de Empregos','Não','4.500,00','Sim','RR Shoes , Loteria Braun e Americanas .','Coordenador administrativo','Sou formada em Administração e possuo pós-graduação em Marketing Digital. Nos últimos anos, atuei como gerente de loja, coordenando equipes e processos administrativos, o que me trouxe experiência em gestão de pessoas, organização de rotinas e acompanhamento de indicadores de desempenho.

Tenho facilidade em criar processos claros, otimizar recursos e buscar soluções práticas para o dia a dia. Gosto de trabalhar com planejamento e organização, pois acredito que uma boa estrutura administrativa é a base para que toda a equipe alcance resultados.

No meu tempo livre, gosto de estudar temas como inteligência emocional e autoconhecimento, que me ajudam a evoluir na forma de liderar e me relacionar. Também pratico musculação e corrida, atividades que fortalecem minha disciplina e foco.

Estou motivada a contribuir com dedicação, visão estratégica e comprometimento, buscando sempre eficiência e crescimento conjunto.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-22T17:18:00.000Z'::timestamptz),
  ('Isabelle de Almeida Rodrigues','isabelledealmeidarodrigues482@gmail.com',NULL,'55984489920','2002-09-07',23,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1U_aBaGzdqxz-xraagmwoT6ixZFocfM50','Administração de empresas','Ensino Superior Completo','Universidade Federal do Pampa','2025-08-29','Sou formado','Histórico: 

Estágio na prefeitura, na área da educação, de 2023 a 2024. 
Carteira assinada na Maccari Sementes, exercencendo funções de marketing, comercial/vendas e administrativo (ingresso de notas) - de 2024 a 2025.
Carteira assinada na Recofran, exercendo funções e adquirindo experiências nos setores: 
- Ingresso de notas: ingresso de todas as notas faturadas da empresa, atuando ainda no cadastro de produtos, organização e controle de estoques, atualização de livros contábeis. 
- Faturamento: atuando no faturamento das notas e pedidos diários. 
- Comercial/vendas: atuando na compra de produtos, buscando preços e informações com fornecedores, bem como controlando o recebimento de mercadorias e organizando as distribuições para os demais mercados filiados. 
- Financeiro: controle das contas a pagar, tendo contato diário com bancos e fornecedores; noções de controle das contas a receber; e atuação na tesouraria da empresa. 13/02 até o momento.','Curso em informática. 
Graduação em Gestão em Agronegócio, pela Universidade Cesumar. 
Graduação em Administração, pela Universidade Federal do Pampa. 
Experiência em setores administrativos como ingresso de notas, área comercial, área de faturamento e área financeira. 
Execução de projetos para eventos sociais.',NULL,'Administrativa, Financeiro, Marketing, Engenharia',NULL,NULL,'Instagram','Não','3.500','Não',NULL,'Estágio Financeiro','Sou Isabelle, tenho 22 anos. Sou formada em Gestão em Agronegócio e agora também em Administração. Tenho muita sede em aprender e contribuir de forma positiva onde estiver, sempre buscando fazer o melhor possível para o crescimento mútuo (próprio e da empresa). Nos momentos livres participo de trabalhos voluntários em CTGs,  de praticar esportes e de buscar novos cursos para me aperfeiçoar nas áreas que gosto.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-22T22:20:00.000Z'::timestamptz),
  ('Winicius Agodoaldo de Aquino Jara','winiciusjara13@gmail.com',NULL,'55996151240','1997-12-15',28,'Solteiro(a)','0','Não','Itaqui/RS','https://drive.google.com/uc?export=view&id=1RF1lRaa3izvvoh2r_lIcmaJGVoyT42IA','Letras - Português/Inglês','Ensino Superior Incompleto','Universidade Cruzeiro do Sul',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Senac Itaqui/São Borja: de fevereiro de 2022 até agosto de 2024; e de abril de 2025 até atualmente.
Docente de Educação profissional: atuei como professor de inglês e tendo papel fundamental na gestão da área de idiomas da escola, acompanhando a formação e gestão de turmas e alunos, acompanhando desde a abordagem inicial dos mesmo através dos testes de nivelamento até o acompanhamento pedagógico e de experiência do cliente dentro da instituição. Além disso, fui responsável por planejar, organizar e executar eventos institucionais para o público externo, bem como conduzir alunos em competições educacionais de nível estadual. 

Câmara de Vereadores de Itaqui: de Maio de 2019 até Maio de 2021.
Estagiário. Atuei no setor de Gravações e Anais, registrando e organizando as atas das sessões plenárias e das comissões da Câmara, além de dar apoio na organização de eventos, testando equipamentos e fornecendo suporte durante os eventos sempre que necessário.','Intercâmbio Work and Travel realizado com visto americano de trabalho J1 entre Dezembro de 2024 e Março de 2025.
Curso de Planejamento Estratégico pelo ENAP com carga horária de 40 horas.
Diversos prêmios e reconhecimentos pela Senac devido a atuação como docente de idiomas (Inglês) e na educação profissional como um todo, incluindo o programa de aprendizagem comercial “Jovem Aprendiz”.',NULL,'Administrativa, Comercial, Estágio, Marketing',NULL,NULL,'Instagram','Não','Um salário compatível com a função e competitivo com relação ao mercado.','Sim','Qualquer parlamentar que tenha atuado na Câmara de Vereadores de 2019 e a Direção do Senac São Borja.','Quero inscrever-me no banco de talentos da Young!','Vi um anúncio no Instagram e pesquisando mais sobre a empresa, me interessei. Acredito que as informações que dei nos campos anteriores já falam muito sobre o meu perfil. Se estiverem em Itaqui no futuro, ou até acharem que eu caibo em outra unidade em alguma cidade da região, contem comigo e não hesitem em entrar em contato!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-23T03:02:00.000Z'::timestamptz),
  ('Marlos Pisoni Voigt','marlospisoni@hotmail.com',NULL,'54981218535','1975-07-07',50,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1HhJZydrZRnPL0QaEh28WNyzpmmGhapNk','Administração de empresas','Pós-graduação Completa','UNSa - ARGENTINA','2005-12-20','Sou formado','Michelin Account Mananger',NULL,NULL,'Administrativa, Comercial, Novos Negócios',NULL,NULL,'Instagram','Não','5.000','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-23T18:03:00.000Z'::timestamptz),
  ('Bruna Duarte Nogueira','brunadnog@gmail.com',NULL,'51984167816','1987-05-03',38,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1sWirKpb-AcjgnbE5cMud-blZU3iRtE2a','Administração de empresas','Ensino Superior Completo','PUCRS','2008-12-10','Sou formado','1) Hospital de clínicas 
2) Assistente administrativo 
3) 25/11/2013  até  31/03/2016
4) Elaboração de planilhas eletrônicas para acompanhamento da execução do projeto no Centro Coordenador e nos demais Centros de pesquisa contratados, elaboração de relatórios financeiros, auxílio a coordenação do projeto na execução orçamentária e logística, controle e lançamentos das visitas assinadas dos Centros de pesquisa, emissão de notas fiscais, lançamentos dos extratos e contas hospitalares, controle e lançamentos das consultas extras dos pacientes e controle e lançamentos de eventos adversos de pacientes dos Centros de Pesquisa. Tenho carta de referência da coordenadora da pesquisa. 

1) Galvão Advogados Associados
2) Analista administrativo 
3) 03/05/2016  até  28/10/2016 
4)  Realização de prestação de contas para a Vivo, cliente majoritário do escritório: análise de documentação jurídica; interpretação e cálculos de alvarás com metas e prazos préestabelecidos; contatos on-line e pessoalmente com a Vivo visando melhorias no trabalho; apontamento de erros e busca por soluções; envio de relatórios periódicos sobre as atividades com os resultados que eram solicitados; retorno sobre o andamento das metas; análises dos débitos Vivo/Cliente. 

1) Explorer Call Center – Neo Tempus Trabalho Temporário Ltda
2) Assistente administrativo 
3) 05/09/2022  até  31/01/2023 
4) Prestação de serviço de digitalização dos livros do cartório, tratamento das imagens digitalizadas visando sua melhor visualização e nitidez, controle de planilhas de excel e organização do arquivo. 

1) Hospital Santa Casa de Porto Alegre 
2) Assistente administrativo 
3) 13/11/2023  até  10/02/2024 
4) Recepção de pacientes do banco de sangue na unidade do Hospital Santa Clara, recepção, confirmação de chegada no sistema, agendamento de consultas de pacientes da hemodiálise. Ligações para outras unidades do hospital com o objetivo de chamar pacientes internados para a hemodiálise. Agendamento de consultas com a nutricionista. Controle e organização do material de escritório, apoio a equipe de enfermagem e médicos.','Tenho 38 anos, tenho experiências na área administrativa, tenho curso completo de informática.',NULL,'Administrativa',NULL,NULL,'Instagram','Não','2.500,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-23T18:03:00.000Z'::timestamptz),
  ('Erika Machado de Quadros','erikaquadros2003@gmail.com',NULL,'51980613518','2003-03-12',22,'Solteiro(a)','1','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1ecGHRz_-1-ONnyY7RAKbAe0R_qFWGlO5','Biomedicina','Ensino Superior Incompleto','Uniritter',NULL,'Não, no momento pausei/parei por um período.','Companhia Zaffari
Cargo: Operadora de caixa
Período: 05/2021 – 09/2021
Cristali Joias
Cargo: Auxiliar de escritório em geral
Período: 10/2021 – 04/2023
Multiservice
Cargo: porteiro (ferista)
Período: 1 mês
Sirene bar
Cargo: Atendente bar
Período: 04/2025 – 05/2025
Janela bar
Cargo: Bartender
Período: free
Insano bar
Cargo: Bartender
Período: free
Lavanderia Donna
Cargo: Recepcionista
Período: free','tenho experiência diversificada em áreas como atendimento ao cliente, caixa, auxiliar e recepção, acumulada ao longo da minha trajetória profissional. Essa vivência me permitiu desenvolver habilidades essenciais, como comunicação eficaz, organização, agilidade e resolução de problemas.Também tenho formação em curso profissionalizante de informática e algumas experiências adquiridas atuando como freelancer em alguns estabelecimentos.',NULL,'Administrativa, Comercial, Financeiro, Engenharia',NULL,NULL,'Instagram','Não','1850,00+','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-23T23:00:00.000Z'::timestamptz),
  ('Camila Dos Santos Mathias','camilamathias440@gmail.com',NULL,'51984730398','2005-02-06',21,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1DGf-Xsm54rEbJIavRrBhmV3AgjF_wVe1',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','DROGARIA PREÇO JUSTO 
Cargo Caixa e balconista 
Início 2023\\2025',NULL,NULL,'Administrativa, Comercial, Estágio, Financeiro',NULL,NULL,'Instagram','Não','2000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-24T04:56:00.000Z'::timestamptz),
  ('Taís Ferraz Alves','taisferrazalves01@gmail.com',NULL,'51998963621','2001-03-16',24,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1CCCgtnV_nB2Ea20uIyBN7nrvjt23y1wh','Administração de empresas','Ensino Superior Incompleto','Anhanguera','2029-07-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Meu primeiro emprego',NULL,NULL,'Administrativa, Estágio, Financeiro',NULL,NULL,'Instagram','Não é o caso','2500','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-24T20:07:00.000Z'::timestamptz),
  ('Thamires da Silva Toledo Ribeiro','thamires.t@outlook.com',NULL,'51995839809','1994-09-01',31,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1JGqAIcxiG7yyR5nzjUF40RbQPoYQDpAr','Marketing','Ensino Superior Completo','Uniftec','2021-03-23','Sou formado','24/03/2020 - 26/06/2025: Associação Hospitalar Vila Nova.
Plantão de Emergência em Saúde Mental IAPI.

Cargo: Auxiliar Administrativo/Recepção.

Principais atividades: Atendimento ao público e telefônico; Abertura de boletins de atendimento; Acolhimento de pacientes; Conhecimento dos sistemas Gerint e SIHO; Solicitações e abertura de chamados (PROCEMPA); Agendamento de transporte de baixa complexidade (SAPH); Recebimento e conferência da dieta dos pacientes; Elaboração de planilhas e digitação de documentos; Elaboração e criação de cartilhas, cartazes e anúncios informativos para o serviço (Canva); Elaboração de Relatório de Indicadores e de Produtividade do serviço; Lançamento de dados e informações no sistema E-sus Notifica; Recebimento de pedidos e conferência de notas fiscais; Preenchimento de Notificações de Violência no Sistema Sentinela; Arquivamento e organização de documentos; Apoio às equipes de enfermagem e médica e, aos setores do Serviço Social e Farmácia; demais rotinas administrativas.',NULL,NULL,'Administrativa',NULL,NULL,'Instagram','Não fui indicada','2.500,00','Não','Anelise - Coordenadora da Saúde Mental do Sistema de Saúde Vila Nova.
Contato: 51 995944270','Assistente administrativo',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-24T22:34:00.000Z'::timestamptz),
  ('Cristina Rosa Feijó da Silva','cristinarosafs@gmail.com',NULL,'51993732790','1981-06-06',44,'Casado(a)','2','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1wHkiBESxJo7qB5BMQh2kKNrHyjyb2saq','Administração de empresas','Ensino Médio Completo','Senac rs','2019-11-29','Sou formado','Daiby Piccadilly  serviços gerais, chefe de setor almoxarifado de 18/05/1999 a 20/04/2020
Oceânico gestão, auxiliar administrativa de 05/01/2021 a 18/11/2022
Yby gestão auxiliar administrativa de 19/11/2022
a 20/012/2023
Fsousa advogados secretaria de 10/03/2025 a 13/08/2025','Tenho curso técnico em administração, tenho experiência na área .
Sou uma pessoa sempre procurando conhecimentos novos .',NULL,'Administrativa',NULL,NULL,'Instagram','Não','A combinar','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa sempre em busca de novos conhecimentos profissionais, sou uma organizada pontual e responsável nas minhas tarefas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-25T01:03:00.000Z'::timestamptz),
  ('Gabriela oyarzabal','gabrielaoyarzabal05@gmail.com',NULL,'53997057259','1988-01-26',38,'Casado(a)','2','Não','Bagé/RS','https://drive.google.com/uc?export=view&id=1VRQQoq8XLxUvcVjGKBPUBjMHW9CyNOE6',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Loja America vendedora 2024 
Lojas Marisa assessor de cliente 2025 
Alc turismo serviço gerais 2008',NULL,NULL,'Comercial, Marketing',NULL,NULL,'Instagram','Nao','1.967','Sim',NULL,'Vendas','Bom sou uma pessoa alegre gosto do publico. Falar cozinhar e novos desafios !!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-25T02:35:00.000Z'::timestamptz),
  ('Pamela de Mattos Barbosa','pameladem.b@gmail.com',NULL,'55991135630','2000-10-16',25,'Solteiro(a)','0','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1g4fYrqlqI4oI75BxhHvJTGJK-PoPK8fg','Administração de empresas','Ensino Superior Incompleto','Uniasselvi',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','HOSPITAL SANTA LUCIA LTDA (06/2023 - 04/2025)
Cargo: Analista de Departamento Pessoal( 08/2024 - 04/2025)
Atribuições: Responsável por realizar a gestão da folha de pagamento e benefícios;
Realizar o cálculo de rescisões e o acerto das verbas rescisórias; Realizar a apuração dos
impostos, o recolhimento e o envio das informações trabalhistas e previdenciárias ao eSocial;
Confeccionar guias dos impostos, garantindo o envio das declarações e o pagamento nos
prazos legais; Acompanhar e fornecer informações necessária em negociações; Lançar
pagamentos no sistema de integração junto a auditoria, fiscal e contábil; Supervisionar
executar as rotinas de Departamento Pessoal, Recursos Humanos e SST, garantindo a
conformidade na execução nos processos de admissões, ponto eletrônico, afastamentos,
férias, ASOS.
Cargo: Assistente de Recursos Humanos (06/2023 - 07/2024)
Atribuições: Responsável por realizar a triagem de currículos e entrevistas conforme vagas
solicitadas pelos Coordenadores; Conduzir a integração de novos colaboradores,
apresentando as políticas internas da empresa e os benefícios; Realizar o contato com o gestor
e colaborador para realizar a avaliação do período de experiência; Efetuar a gestão mensal dos
pontos eletrônicos e lançamento de escalas de trabalho; Gerenciar o período aquisitivo das
férias, garatindo a conformidade nos prazos de gozo; Conduzir os processos de contratações;
Assistir a gestão nas demandas e atividades de rotinas do setor.
FUNDAÇÃO UNIVERSIDADE DE CRUZ ALTA ( 06/2022 - 08/2023)
Cargo: Assistente de Departamento Pessoal
Atribuições: Responsável por realizar o cadastro de admissões; Gestão mensal dos espelhos
pontos; Atendimento e resolução das solicitações no portal institucional da empresa; Gerenciar
os contratos de trabalho e suas modalidades; Atender e prestar suporte a gestores e
colaboradores; Fornecer documentações para os setores Jurídico, Acadêmico e Financeiro;
Assistir a gestão e apoiar nas rotinas do Departamento Pessoal, Recursos Humanos e SST,
desenvolvendo e aprimorando os processos de trabalho.
HOSPITAL SANTA LUCIA LTDA (01/2022 - 06/2022)
Cargo: Auxiliar de Recursos Humanos
Atribuições: Responsável por realizar o cadastro de admissões; Tratamento dos espelhos
pontos e lançamento das escalas de trabalho; Atendimento e suporte aos gestores e
colaboradores; Efetuar os lançamentos de atestados, horas extras, adicional noturno,
insalubridade, e integrar e conferir as informações no sistema de folha de pagamento; Efetuar o
fechamento e rateio mensal do transporte; Auxiliar nas rotinas administrativas e operacionais do
setor.
COMPANHIA IND E DE DESENV URBANO DE CRUZ ALTA - CIDUSA ( 12/2017 - 01/2022)
Cargo: Estagiária (12/2019 - 01/2022)
Atribuições: Responsável pelo lançamento e controle de atestados médicos no sistema;
Conferência dos espelhos pontos; Realização da entrega e controle de EPI’S junto ao SST;
Realizar serviços externo, como pagamentos, envios pelos correios e orçamentos; Manter o
controle do estoque de materiais e produtos; Auxiliar nas rotinas administrativas e operacionais do
escritório.
Cargo: Jovem Aprendiz (12/2017 - 12/2019)
Atribuições: Responsável por realizar o atendimentos aos clientes e colaboradores; Organizar os
arquivos e manter as fichas funcionais atualizadas; Apoiar na organização de eventos e
campanhas da empresa; Auxiliar em atividades do financeiro, jurídico e diretoria; Executar as
rotinas operacionais e administrativas do setor de Recursos Humanos.','Sou formada em Técnico em Secretariado e atualmente curso Administração.  Os meus estudos são voltados para a área administrativa e operacional de uma empresa. Possuo estudos e certificações na área  de Recursos Humanos,  Departamento Pessoal, Fiscal e Financeiro. Além de workshops e seminários voltados para atualizações e conhecimentos das áreas.',NULL,'Administrativa, Financeiro',NULL,NULL,'Instagram','Não.','3.000,00','Sim','Leize Cristina:  55 8107-5824 (autônoma)','Quero inscrever-me no banco de talentos da Young!','Habilidades Técnicas:
Sistemas de ERP’S: TOTVS RM (Integrado ponto e folha), DOMÍNIO (FOLHA), SOUL MV, W.PE VRS
(PONTO), PROSSIS (FOLHA), MEMO (FOLHA).
Sites Governamentais: eSocial, ECAC, SEFIP, FGTS DIGITAL, CONECTIVIDADE ICP.
Ferramentas digitais de trabalho: Pacote Office, Excel, Canva, Trello, Google Drive','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-25T05:07:00.000Z'::timestamptz),
  ('Tamara de Souza Michelotto','tamaramichelotto@gmail.com',NULL,'51983161561','1990-05-31',35,'Casado(a)','2','Sim','Torres/RS','https://drive.google.com/uc?export=view&id=13YPr_rfqtF1is9LAN7tkrk1eUHoZgubH','Administração de empresas','Ensino Superior Completo','Ulbra Guaíba','2017-03-09','Sou formado','Unimed Porto Alegre | Novembro 2009 – Janeiro 2025 | Porto Alegre, RS
o Trajetória profissional de Auxiliar Administrativo à Analista de
Faturamento Pleno
o Atividades desenvolvidas: ao longo destes 15 anos, desenvolvi as
atividades de faturamento de prestadores, contas médicas, faturamento
hospitalar e faturamento de operadora de planos de saúde, realização de
parâmetros de cobranças nos sistemas, análises de valores e desvios, emissões
de faturas e notas fiscais, análises de provisões, demais atividades inerentes à
área de faturamento.
o Resultados: Identificação de oportunidades de cobrança nas análises
realizadas, verificando e ajustando os erros que impactavam a geração de
resultados; descrição de processo de automatização das cobranças, visando
diminuir erros e aumentar a segurança no processo de faturamento; trabalho
conjunto com as áreas assistenciais para diminuir erros de lançamentos no
sistema, visando a cobrança correta.
o Unimed Centro Sul | Novembro 2008 – Novembro 2009 | Guaíba, RS
o Estagiária de Faturamento
o Atividades desenvolvidas: Arquivo de documentos, conferência de
produção de prestadores, digitação de produção médica e prestadores,
digitalização e cópia de documentos.',NULL,NULL,'Administrativa, Financeiro',NULL,NULL,'Instagram','Não','3000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-25T14:14:00.000Z'::timestamptz),
  ('Pamela de Souza Rodrigues','pameladesouza391@gmail.com',NULL,'55001773877','2005-06-11',20,'Solteiro(a)','0','Não','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1FMymOm6u_eWnTT8WRoQEyGXHaJJSP-Yi','Administração de empresas','Ensino Médio Completo','Uniasselvi','2028-08-25','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','.',NULL,NULL,'Administrativa, Comercial, Financeiro',NULL,NULL,'Instagram','Não','1500','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-25T14:31:00.000Z'::timestamptz),
  ('Bruna Matte','matte.bruna02@gmail.com',NULL,'51996011074','2002-02-24',23,'Solteiro(a)','0','Sim','Santa Cruz Do Sul/rs','https://drive.google.com/uc?export=view&id=1EKTsprbKdrC6kIDjoXxzsxxv4qNGWAoI','Arquitetura','Ensino Superior Completo','Universidade Federal de Santa Maria','2025-01-24','Sou formado','1) ANGELA PISANI ARQUITETURA
2) Estagiária 
3) 03/2023 a 09/2023
4) Atuação no desenvolvimento de projetos legais, modelagem 3D e
detalhamentos técnicos e humanizados em AutoCAD, Revit e SketchUp.

1) VANESSA BAIERLE INTERIORES
2) Estagiária 
3)04/2022 a 12/2024
4) Desenvolvimento de projetos de interiores com modelagem 3D no SketchUp e detalhamentos técnicos e humanizados no Layout.

1) VANESSA BAIERLE ARQUITETURA E INTERIORES
2) Arquiteta
3) 01/2025 a 07/2025
4) Atuação em orçamentos, gestão de conteúdo digital, desenvolvimento e acompanhamento de projetos — do briefing à
execução — incluindo modelagem 3D, renderização, cadernos técnicos
e coordenação de equipes de obra.

1) STUDIO LA FELICITÁ ITALÍNEA
2) Arquiteta projetista
3) 08/2025 - atual
4)Foco em atendimento ao cliente, desenvolvimento de projetos e vendas
de mobiliário sob medida, com utilização do Promob para modelagem
3D, detalhamento técnico e orçamentos.','Possui cursos de softwares de arquiteta, como sketchup, autocad e revit, e de inglês',NULL,'Arquitetura, Engenharia',NULL,'https://drive.google.com/open?id=1DRZqyVYv-fwyNfviOtVUEVlLQlBeKleH','Instagram','Não','R$3.500','Sim','Vanessa Baierle - 51 999957494 - Vanessa Baierle inferiores','Quero inscrever-me no banco de talentos da Young!','Possuo habilidades em diversos softwares de arquitetura e engenharia, como Revit, SketchUp, AutoCAD e ArchiCAD, além de programas de renderização como V-Ray, Enscape e Lumion. Também utilizo ferramentas de design, como Photoshop e Illustrator, e tenho conhecimentos em pacote Office. Gosto muito de aprender novas línguas: sou fluente em inglês e atualmente estou iniciando os estudos em francês e espanhol. Já participei de trabalho voluntário através do Interact durante o ensino médio e, nessa fase, também explorei diferentes atividades, como teatro, patinação, balé, danças gaúchas, aulas de violão e judô. Nos meus momentos de lazer, gosto de ler livros e cozinhar','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-25T15:33:00.000Z'::timestamptz),
  ('Helenara Nelsons de Azevedo','helenaraazevedo22@gmail.com',NULL,'55996605750','2002-12-02',23,'Solteiro(a)','0','Não','Itaqui/RS','https://drive.google.com/uc?export=view&id=1GKGYNHtHeZUJNJhgk92osbzblHeBDhux','Administração de empresas','Ensino Superior Incompleto','Uninter','2028-08-25','Não, no momento pausei/parei por um período.','Operadora de caixa- Supermercado Baklizi 2022 a 2024

Estágio auxiliar administrativo - Patrícia Wurfel Advocacia Previdenciária.

06/2024 a 04/2025.','Cursos adicionais

Técnico contábil - Senac 2024
 Auxiliar administrativo - Fael 2019
 Informática - Data Master 2017',NULL,'Administrativa, Financeiro',NULL,NULL,'Instagram','Não','1800','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-25T18:10:00.000Z'::timestamptz),
  ('Camila Sandri Frizzo','camila2312@gmail.com',NULL,'51982581670','1977-12-23',48,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1wAGUzB_iplZLZMayXhGo4dGOjFECklQc','Administração de empresas','Ensino Superior Completo','PUC-RS','2008-12-30','Sou formado','CEI RS - 08/2023 até 06/2025
(representante no RS de produtos médicos e hospitalares) 
Cargo: Gerente Administrativa e Financeira

•	Gestão do fluxo de caixa,
•	Tesouraria 
•	Conciliação bancária, 
•	Envio de arquivos CNAB 240 remessas /retornos, 
•	Contas a pagar e a receber, 
•	Emissão e entrada de notas fiscais, 
•	Relatórios gerenciais - movimentos diários e mensais, 
•	Fechamentos mensais das comissões e dos investimentos (imóveis), 
•	Prorrogações e emissão de boletos de cobranças, cobranças de inadimplentes, 
•	E-mails de cobrança dos aluguéis, 
•	Lançamento das notas fiscais de entrada, 
•	Pagamento da folha e benefícios, 
•	Admissão, demissão e férias junto a Contabilidade, 
•	Controle cartão ponto, 
•	EPIs entre outras atividades. 

Rede de Salão de Beleza - 11/2022 até 06/2023
(Alison Salles)
Cargo: Serviços Administrativos e Financeiros (MEI)

•	Responsável pelo fluxo de caixa
•	Lançamentos e conferências em planilhas excel, 
•	Conta a pagar e a receber, 
•	Conciliação bancária,
•	Negociação de pagamentos, 
•	Envio e retorno de e-mails entre outras atividades do setor.


N49 Tecnologia Para E-Commerce Ltda - 06/2022 até 08/2022
(plataforma de e-commerce)
Cargo: Serviços Administrativos e Financeiros (MEI)

Principais Atividades: 

•	Responsável pelas conciliações bancárias, 
•	Responsável pelo fluxo de caixa
•	Alimentação e criação de planilhas em excel, 
•	Emissão de notas fiscais e boletos de cobranças, 
•	Pagamentos de contas através da internet banking, 
•	Envio de e-mails de cobranças e cobrança de clientes inadimplentes através do telefone (Vono), zap work e-mails. 
•	Pesquisa e cópia de dados do sistema Granatum para o sistema da empresa entre outras atividades.


MÉTODO QB Serviços de Bem Estar (Quantum Bio) – 01/2014 até 10/2019
(saúde complementar e cuidados paliativos, a partir de tecnologias biofísicas)
Cargo: Gerente Administrativa Financeira

Principais Atividades: 
•	Fluxo de caixa previsto e realizado, 
•	Gestão da conciliação bancária, 
•	Responsável pelas contas a pagar,
•	Pagamento da folha, 
•	Pagamento de benefícios, 
•	Cálculos e pagamentos das comissões, 
•	Tesouraria, 
•	Análise de relatórios, 
•	Admissão e demissão de funcionários (junto com a Contabilidade),
•	Compra de materiais, 
•	Sistema ERP Compy, 
•	Cobrança, 
•	Gestão do Relógio ponto,
•	Condução de cotações e negociações com operadoras de planos de saúde, resultando na contratação da opção mais vantajosa para a empresa, garantindo excelente custo-benefício para colaboradores e organização.

Sant’Anna Inamoto Design Ltda e D3 Indústria e Comercio Ltda - 07/2008 até 12/2013
(marketing em PDV e fabricação de material promocional)
Cargo: Administrativa Financeira/Assessoria

Principais Atividades: 

•	Fluxo de caixa previsto e realizado, 
•	Responsável pelas contas a pagar, 
•	Conciliação bancária, 
•	Tesouraria, 
•	Emissão de nota fiscal e boleto de cobrança, 
•	Atendimento aos clientes por telefone, 
•	Conferência e ajuste de contratos de prestação de serviços, aditivos de contratos, contratos de locações da empresa (salas/galpão) 
•	Compra de material de escritório e higiene, 
•	Organização e arquivamento de documentos, 
•	Compra de passagens aéreas, 
•	Controle das despesas de viagens, 
•	Controle das terceirizações, 
•	Recrutamento, seleção, entrevista de pessoal – atividades desenvolvidas ao lado da diretoria das empresas.',NULL,NULL,'Administrativa, Financeiro',NULL,NULL,'Instagram','não','4000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','https://www.linkedin.com/in/camilasamdri318/','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-25T18:46:00.000Z'::timestamptz),
  ('Natasha soares','natasha.sacco.soares@gmail.com',NULL,'53991225814','2001-05-24',24,'Solteiro(a)','0','Não','Pelotas/rs','https://drive.google.com/uc?export=view&id=1q--t7kMPKGFl6mdBEdqU824q4BSniK4d','Tecnica em Design de Interiores','Ensino Médio Completo','Senac','2023-02-02','Não, no momento pausei/parei por um período.','Trabalhei na Baronesa Italinea de móveis planejados durante um ano, neste tive experiência de projetista, realizando atendimentos e levantamento de medidas para dar início ao projeto e acompanhando até o momento de obra. Logo após fui promovida e atuei no pós-venda da mesma.',NULL,NULL,'Administrativa, Arquitetura, Engenharia',NULL,'https://drive.google.com/open?id=1NG4vaCy57wKkudS3vYoGDve_YguE8Fn7','Instagram','Não','2000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Possuo experiências com promob, sketchup, v-ray. Meus hobbie atual é academia, gosto de manter a vida bem ativa, sou comunicativa e prezo muito por relações tanto pessoais quanto profissionais.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-25T20:37:00.000Z'::timestamptz),
  ('Nicolly Ramaiana Bierhals','nicollyramaiana@hotmail.com',NULL,'51983056942','2002-12-27',23,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1vcbjV0f4T_p85oVFU0sxfKkaqKjNqdT7','Publicidade e propaganda','Ensino Superior Incompleto','Uniasselvi','2026-12-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','ESTAGIÁRIA DE PUBLICIDADE - CIRCO FASHION CLUB
06/2024 - 08/2025

• Fotografia publicitária
• Gravar e editar vídeos
• Design gráfico
• Catalogar produtos
• Atendimento online
• Planejamento de conteúdo

VISUAL MERCHANDISING - C&A
06/2022 - 12/2022

• Visual merchandising
• Organização da loja
• Controle e organização de estoque
• Atendimento ao público','Sou graduanda de publicidade e propaganda. Mas estou sempre em busca de cursos para me aperfeiçoar em diferentes áreas como design, copy, branding, posicionamento de marca, criação de conteúdo.',NULL,'Marketing',NULL,'https://drive.google.com/open?id=1rmhimMIyafdfr7efBUjHY_dl3w6h5PNt','Instagram','Não','R$2.000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-25T23:05:00.000Z'::timestamptz),
  ('Eloise de Giacometti Schüür','eloisedegiacometti@gmail.com',NULL,'54991416702','1998-10-29',27,'Casado(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1yHVXZtq4b9HVZBvvynFu-JaK8vfIpqNT','Psicologia','Pós-graduação Completa','UNIDEAU- Getúlio Vargas','2021-02-17','Sou formado','1) Sindicato Empresarial do Comércio Varejista Fronteira Noroeste do RS - Sindilojas (Santa Rosa/RS)
2) Psicóloga 
3) 02/2024 - 12/2024
4) Responsável pelo programa SindiVagas, onde realizava recrutamento, seleção, análise de perfis profissionais, aplicação e correção de testes psicológicos. No programa SindiEstágio, atuava como agente integrador, cuidando de toda documentação necessária de acordo com a Lei do Estágio n° 11.788 de 25 de setembro de 2008.

1) Instituto Brasileiro de Geografia e Estatística- IBGE (Santa Rosa/RS)
2) Agente Censitário Supervisor
3) 06/2022 - 01/2023 - Contrato Temporário 
4) Supervisora do Censo Demográfico 2022 responsável por dois municípios da região noroeste do RS. Treinamento de Recenseadores, supervisão presencial e pelo sistema.

1) Clínica de Fisioterapia- Fisiovita (Santa Rosa/RS)
2) Administrativo
3) 01/2022 - 06/2024
4) Responsável pelos convênios de saúde. Autorização e faturamento de guias, realização de espelhos de pagamentos e relatórios e emissão de notas fiscais.

1) Instituto de Desenvolvimento Educacional do Alto Uruguai - UNIDEAU (Getúlio Vargas/RS)
2) Jovem Aprendiz
3) 12/2018 - 01/2020
4) Secretária da Clínica Escola de Psicologia e Auxiliar no setor de Recursos Humanos (Recrutamento e Seleção, aplicação e correção de testes, avaliação psicológica e entrevistas).','Possuo Pós-graduação em Gestão de Pessoas e Psicologia Organizacional pela UNOPAR',NULL,'Administrativa',NULL,NULL,'Instagram','Não','+ 3.000,00','Sim','Sindilojas - (55) 3512-6380','Quero inscrever-me no banco de talentos da Young!','Em Santa Rosa/RS realizava trabalho voluntário na Igreja Batista como líder dos ministérios de Adolescente e Jovens e também realizava palestras para mulheres com diversos temas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-25T23:37:00.000Z'::timestamptz),
  ('Stefanny Martins Gonçalves','stefannygoncalves0509@gmail.com',NULL,'51997907622','1999-09-05',26,'Solteiro(a)','2','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1K2baj-tIvsnIBccR4GDDiehCZRduHa7v','Ciências Contábeis','Ensino Superior Incompleto','Uniasselvi','2028-07-07','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Prefeitura de Viamão 
Agente comunitário de Endemias| 2021 a 2023
Realizava fiscalização no município de focos de dengue, trabalhando com orientação e 
conscientização dos munícipes. Recebia, respondia denúncias e verificava veracidade das mesmas, 
mantinha sistema do governo município atualizado conforme evolução do trabalho, organização de 
materiais para trabalho diário das equipes e das pulverizações, realizava palestras em escolas e 
eventos.
Loja Impacto
Auxiliar de loja | 2016 a 2018
Realizava atendimento ao cliente em loja e caixa, responsável pela organização da loja e do estoque, 
mantinha a limpeza do local, auxiliava na compra de novos produtos para comercialização e também 
na escolha de novos funcionários.','Tenho curso de informática básica e rotinas administrativas.',NULL,'Administrativa, Comercial, Estágio, Financeiro',NULL,NULL,'Instagram','Não','2000','Sim',NULL,'Estágio Financeiro','Olá me chamo Stefanny, estou prestes a fazer 26 anos. Estou focada no momento em achar algo que me direcione ao meu futuro pois vivi muito tempo pensando no agora, sou pró-ativa, responsável, alegre com a vida, para mim não tem dia ruim estou sempre disposta. Aprendo rápido e com muita facilidade, gosto de ser útil e sei super me adaptar. Fiz parte do movimento escoteiro durante 12 anos da minha vida, já trabalhei em setores onde lidei com clientes internacionais e sempre soube me virar, já trabalhei e em equipe e sozinha e sei lidar com diversos ambientes. Tenho muito oferecer, acredito muito em meu potencial.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-26T01:32:00.000Z'::timestamptz),
  ('Andreza Lima Oliveira de Souza','andrezalima98@gmail.com',NULL,'51986332028','1998-01-23',28,'Solteiro(a)','0','Sim','Viamão/rs','https://drive.google.com/uc?export=view&id=1Q15FW9S--AiDjujxJCf1qraIgKVtbKgT','Administração de empresas','Ensino Superior Incompleto','Católica paulista','2028-07-12','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','experiência na área administrativa, com atuação em órgãos públicos e hospitalar. Trabalhei como Assessor Técnico na Secretaria da Educação, coordenando planejamento da rede escolar, matrículas e coleta de informações educacionais. Atuei no Hospital de Clínicas de Porto Alegre, no setor de Gestão de Pessoas, realizando rotinas de RH, inserção de dados em sistemas corporativos (STARH, SIAPE), organização de dossiês e marcação de perícias. Também tenho experiência na Central de Matrículas da Secretaria da Educação, com atendimento ao público, análise documental e cadastramento em sistemas informatizados.','Assistente de Logística
Gestão e Fiscalização de Contratos Administrativos',NULL,'Administrativa, Financeiro, Licenciamentos',NULL,NULL,'Instagram','Não','2.800','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa organizada, comprometida e com facilidade de adaptação a diferentes rotinas de trabalho.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-26T01:50:00.000Z'::timestamptz),
  ('Lisiara Costa Cardoso','lisiaracardoso@yahoo.com.br',NULL,'51996471928','1977-11-26',48,'Solteiro(a)','0','Sim','Santa Cruz Do Sul/rs','https://drive.google.com/uc?export=view&id=1srezZ8Yq7Vc1_OH4nKoYIci2q0SsJTlJ','Arquitetura','Pós-graduação Incompleta','UNISC','2011-01-22','Sou formado','Casa Design Bartzen - Projetista de Móveis - Início em Agosto de 2019, término em Janeiro de 2024.
Elaboração de projetos de móveis planejados e venda de móveis.

Deltasul Utilidades - Analista de Engenharia - Início em Setembro de 2017, término em Julho de 2018.
Elaboração de projetos de reforma e layout de lojas novas em toda a rede de lojas no RS.','Graduada em Arquitetura e Urbanismo pela UNISC e cursando Pós-graduação no IPOG',NULL,'Arquitetura, Engenharia',NULL,'https://drive.google.com/open?id=109ivjcv2Q7ZZpr_0gFOT-nwhb0hXf4Pn','Instagram','Não','R$4.000,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Arquiteta em busca de uma oportunidade de crescimento e aprimoramento profissional. Domínio em AutoCAD, Sketchup e Office.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-26T02:42:00.000Z'::timestamptz),
  ('Bruna Loheder Torquato','brubstorquato@gmail.com',NULL,'51983578775','1994-08-15',31,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1OHSKcGwHdZ9w-ukGMcbmhjhxuUxbhzRD','Administração de empresas','Ensino Médio Completo','UniRitter','2028-03-10','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Auxiliar Administrativo Financeiro 
Centro Clínico Petrópolis | Junho/2024 – Atual 
Responsável pela gestão de contas a pagar e a receber, garantindo a organização e o controle do fluxo de caixa.
Elaboração e acompanhamento de relatórios de pagamentos e recebimentos, auxiliando na tomada de decisões financeiras.
Atendimento telefônico e presencial a clientes e fornecedores, mantendo um relacionamento profissional e eficiente.
Coordenação da logística de entregas e conferência de notas fiscais, assegurando a precisão dos registros.
Domínio do sistema Gdoor para gestão de dados financeiros e operacionais.

Recepcionista / Auxiliar Financeiro 
Classe A | Abril/2022 – Novembro/2022 
Gerenciamento de agenda, controle de acesso e fluxo de clientes e visitantes.
Responsável pelo arquivamento e organização de documentos físicos e digitais, garantindo a integridade e confidencialidade das informações.
Auxílio nas rotinas financeiras, como controle de pagamentos e emissão de recibos, utilizando o sistema de gestão do escritório.
Elaboração de contratos e envio de correspondências.','Atualmente cursando administração, curso de enfermagem incompleto e formação em educadora de inclusão',NULL,'Administrativa, Financeiro',NULL,NULL,'Agência de Empregos','Não','1.800,00 a 2.000,00','Não',NULL,'Area administrativa','Estudante de Administração com experiência em atividades de rotina administrativa e financeira. Possuo habilidades interpessoais e facilidade no trato com o público, aliadas a um perfil organizado e proativo para otimizar processos e garantir a eficiência operacional.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-26T04:06:00.000Z'::timestamptz),
  ('Daniel Korpalski Pinto','danielkorpalski@gmail.com',NULL,'51993143850','1983-07-14',42,'Casado(a)','2','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1WANS6VS7u8A-jPC4I8F5qg7LVTm2fLir','Administração de empresas','Ensino Superior Completo','Anhanguera Porto Alegre','2019-08-16','Sou formado','Tornado Imp e Exp Ltda, Admistrador Financeito, 2007 a 2025. Hotel Hilton Porto Alegre, Gerente Assistente Diretor Financeiro, jun 25 a jul 25.','Design Gráfico',NULL,'Administrativa, Financeiro, Marketing',NULL,NULL,'Instagram','Não','6000','Não','Monica Marquez, monica.sanchezmarquez@hilton.com.br, Hotel Hilton.','Quero inscrever-me no banco de talentos da Young!','18 anos área admistrativa, sendo que a maior parte admistrando e gerenciando o setor e pessoal. Trabalhando com bancos para melhor investimentos e liquidez de titulos. Trabalhando em cima de capital de giro e créditos bancários. Análise de gráficos e instruções de indicadores para diretoria, soluções de conflitos juntamente com sistemas de controle erp, sas, oracle, micros, dashboards.
Sou uma pessoa comunicativa, cativante, com aprendizado fácil a novos sistemas, pois entendo de TI. Tenho 2 filhos lindos e agradeço e visualizaram meu currículo e tentar essa oportunidade.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-26T11:44:00.000Z'::timestamptz),
  ('Bruno da Silva Martins','brunodsm81@gmail.com',NULL,'51991645478','1997-07-18',28,'União estável','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1z_0xKi5Opkc-1TryU23rlTpO4EY7zpxC','Administração de empresas','Ensino Superior Incompleto','UERGS - Universidade Estadual do Rio Grande do Sul','2027-12-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','2day Gestão de Lançamentos; Estagiário de Marketing - (Outubro/2024 - Atualmente)
○ Apoio na elaboração e execução de estratégias de marketing para novos empreendimentos.
○ Participação em reuniões de briefing com equipe comercial, agências e incorporadoras. Auxílio na criação e revisão de peças publicitárias para redes sociais, mídia impressa e pontos de venda.
○ Suporte na gestão de campanhas digitais (Facebook Ads, Google Ads) e no monitoramento da geração de leads.
○ Organização de materiais promocionais, brindes e ambientação de stands de vendas.
○ Colaboração na realização de eventos de lançamento, cafés com corretores e ações promocionais.
○ Comunicação direta com corretores parceiros para alinhamento das ações de marketing.
○ Atualização de relatórios de desempenho, cronogramas de campanha e controle de orçamento.','Curso de Analise em marketing, informática básica e avançada',NULL,'Administrativa, Estágio, Marketing',NULL,NULL,'Instagram','N/A','2.000','Sim','Milena, coordenadora de lançamentos - 51991471050','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-26T12:40:00.000Z'::timestamptz),
  ('Leonardo Medeiros de Almeida','leomedeiros.almeida@hotmail.com',NULL,'51989078228','1979-10-05',46,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=174SIm6zoKhEpBrYiOiYTPeNOypWU2EVV','Administração de empresas','Ensino Superior Completo','Uniasselvi','2025-07-15','Sou formado','HISTÓRICO PROFISSIONAL
04/2025 – 05/2025 Assistente Administrativo de Operações
CUSHMAN & WAKEFIELD – PORTO ALEGRE, RS
Gestão e direcionamento de chamados (Manutenção);
Orçamentos /Gestão de Compras e Serviços de Manutenção;
Apoio nas demandas Operacionais – Gestão de Terceiros;
08/2022 –04/2024 Analista Administrativo - Infraestrutura
AUXILIADORA PREDIAL –PORTO ALEGRE, RS
Gestão e direcionamento de chamados (Manutenção/Compras) das Agências;
Orçamentos /Gestão de Compras e Serviços de Manutenção;
Controle e identificação Patrimonial;
Apoio nas obrigações Legais ( Documentos Essencias/ART/Laudos);
05/2021 –01/2022 Assistente Administrativo
HANNOVER VINHOS –PORTO ALEGRE, RS
Cobrança, Contas a Receber, Faturamento, Fluxo Financeiro, Conciliação Bancária.
07/2019 –02/2020 Assistente de Crédito e cadastro (PF/PJ)
AFEC CONSULTORIA EMPRESARIAL LTDA – GP PNEUS–Porto Alegre, RS
Análise documental PF/PJ, Validação de documentos junto à receita, Parecer negocial, 
Confirmação de cadastro.
08/2018 –06/2019 Assistente Administrativo
PAC CONTACT CENTER –Porto Alegre, RS
Gerenciamento de Negociações – Empréstimo Consignado, Controle Cadastro de Clientes, 
Validação de negociações junto aos negociadores, Preenchimento e liberação dos contratos.
11/2013 –11/2017 Assistente Administrativo
DAL BOSCO ADVOGADOS. –Porto Alegre, RS
Gerenciamento de Negociações, Controle Cadastro de Clientes, Validação de negociações 
junto aos negociadores, Análise de documentos - Atender usuários, fornecendo e recebendo 
informações; tratar de documentos variados, coletar dados; preparar relatórios e planilhas, 
elaborar planilhas de cálculos; confeccionar organogramas, fluxogramas e cronogramas; 
elaborar correspondência; dar apoio operacional para equipe de cobrança, cumprindo todo 
o procedimento necessário referente aos mesmos; cobrança; negociação e tratativas 
jurídicas. Cliente: Banco Santander. Sistemas: Neo
08/2010 – 06/2012 Assistente Administrativo.
Facta Empréstimos Consignados. – Porto Alegre, RS
Análise de crédito, digitação, Pesquisas Bancárias, Protocolos Bancários. Fase: Compra de 
dívida, INSS. Clientes: BV, BMG. Sistemas: Gestor, Voip e Consig.','Aprendizagem Comercial - Senac',NULL,'Administrativa, Financeiro',NULL,'https://drive.google.com/open?id=1g0rKC8jucrOwpscgYq7qTh5f5T4HHvrI','Instagram','Não.','2500','Não',NULL,'Administrativo',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-26T12:50:00.000Z'::timestamptz),
  ('Elaine Priscila Leopoldo Silva','prinivi242017@gmail.com',NULL,'51998960455','1990-06-24',35,'Solteiro(a)','2','Não','Viamão/rs','https://drive.google.com/uc?export=view&id=1n0j3bT4kCKjQ6Ivh1fwa5xAIy3gDyldN','Recursos Humanos','Ensino Superior Incompleto','Unicesumar','2025-10-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','FNX SOLUÇÕES DE SEGURANÇA- estágio que não foi concluído por problema na contratação período de fevereiro de 2025 até maio 2025.','Sou estudante de Recursos Humanos . Apesar de ainda não ter atuado diretamente na área, venho estudando temas como recrutamento, legislação trabalhista e gestão de pessoas, e tenho grande interesse em aplicar esses conhecimentos na prática.
Sou uma pessoa comunicativa, organizada e com facilidade de lidar com pessoas,habilidades que acredito serem fundamentais para atuar bem em RH. Busco minha primeira oportunidade para aprender e contribuir com dedicação e responsabilidade."',NULL,'Administrativa, Financeiro',NULL,NULL,'Instagram','Não','1.800,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-26T13:45:00.000Z'::timestamptz),
  ('cecília da cunha monteiro','cecicunham@gmail.com',NULL,'51998452178','2007-05-29',18,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=195k85-HFv02IHYeX4sxnEBM2i8IFBVPd',NULL,'Ensino Médio Incompleto','estou cursando o 3° ano do ensino médio a noite na E.E.E.M Patrulhense',NULL,'Não, no momento pausei/parei por um período.','Líder Móveis
Vendedora
01/01/2024 / 22/08/2025 
Atendimento ao cliente e suporte no processo de vendas, organização e controle do estoque, auxílio no fechamento de vendas e emissão de notas',NULL,NULL,'Administrativa, Comercial, Marketing',NULL,NULL,'Instagram','não','1.518,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-26T15:41:00.000Z'::timestamptz),
  ('Samanta Quintanilha Adam','quintanilhasamanta8@gmail.com',NULL,'51996449017','1993-03-09',32,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Sg0UKq8AMjmBPYRaTg361dLQoxGeDg3A',NULL,'Ensino Superior Incompleto','Estácio',NULL,'Não, no momento pausei/parei por um período.','Corsan saneamento único de água 
Operadora de ETA
2023/2025','Auxiliar administrativo',NULL,'Administrativa',NULL,NULL,'Agência de Empregos','Não','2.500','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa proativa, com facilidade em trabalhar em equipe e em aprender novas funções, gosto de trabalhar e sempre dar o meu melhor em tudo, sou esperta e ágil. Gosto de fazer e ver acontecer, ter resultados bons e seguir melhorando cada dia mais','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-26T20:49:00.000Z'::timestamptz),
  ('David Moisés godois','gimenesdavid047@gmail.com',NULL,'55984249536','2002-12-30',23,'Solteiro(a)','0','Não','Itaqui/RS','https://drive.google.com/uc?export=view&id=1013s_8lMFXLuFK-vcluKH6tZCFqiDjA5',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','frigorífico expedição,  usica de placas solares 
ajudante de obras','GPS, pulverização agrícola,  informática',NULL,'Engenharia',NULL,NULL,'Instagram','não','1800','Sim',NULL,'ajudante de obras','sou uma pessoa que aprende muito rápido,  qualquer atividade e estou precisando de um emprego também','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-26T21:49:00.000Z'::timestamptz),
  ('Isabela Spieker Silva','belspieker@gmail.com',NULL,'53991531769','2002-06-27',23,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1_axl-Lt-Nne9IbZb_S6eRCQ4d3WdZqpj','Jornalismo','Ensino Superior Completo','Universidade Federal de Pelotas (UFPel)','2025-05-15','Sou formado','1) Unimed Pelotas
2) Estagiária de Jornalismo
3) Abril 2023 - Agosto 2023
4) Criação de informativos para comunicação interna, texto para redes sociais e campanhas
 publicitárias, elaboração de notícias para site, pesquisa de pautas, clipping e suporte a
 eventos.

1) Câmara Municipal de Pelotas
2) Estagiária de Assessoria de Imprensa
3) Abril 2024 - Novembro 2024
4) Captação e edição de vídeos, criação de posts (design) e legendas para redes sociais,
 gestão de tráfego pago (Meta Business Suite), clipping, cobertura de eventos e
 comunicação para campanha eleitoral de vereador.

1) Centro de Pesquisas Epidemiológicas da UFPel
2) Bolsista (até Maio 2025) e Freelancer de Comunicação
3) Dezembro 2024 - atual
4) Escrita de releases e reportagens para imprensa, planejamento de calendário editorial, criação de posts (design) e legendas para redes sociais, captação e edição de vídeos.','Desde o início da minha trajetória no Jornalismo, busquei ampliar meus conhecimentos por meio de programas de estágio. A primeira experiência foi na Unimed Pelotas, onde integrei a equipe de Comunicação e Sustentabilidade. Nesse período, fui responsável pela elaboração de comunicados internos e conteúdos para redes sociais. Também participei da organização de campanhas institucionais e publicitárias, além de realizar coberturas fotográficas e textuais de eventos da empresa.

Em seguida, assumi a função de estagiária de assessoria de imprensa na Câmara Municipal de Pelotas, atuando na comunicação de um vereador. Nessa posição, tive papel essencial em sua campanha eleitoral, cuidando da gestão das redes sociais, planejamento de calendários editoriais e produção de conteúdos — desde a redação até o design e a edição de vídeos.

Mais recentemente, atuei como bolsista e freelancer no setor de comunicação do Centro de Pesquisas Epidemiológicas da UFPel. Por lidar diretamente com a divulgação científica, concentrei-me na redação de releases para a imprensa, criação de materiais digitais de divulgação de estudos e produção audiovisual.

Além das experiências de trabalho, sempre fui ativa em projetos de extensão da universidade, atuando como redatora na agência e no portal de notícias do curso, além de realizar a apresentação de programas para a TV UFPel. Ainda durante a graduação, tive a oportunidade de cursar um semestre de Comunicação e Jornalismo em Portugal, no Instituto Politécnico de Bragança (IPB). Essa experiência, proporcionada pelo programa de mobilidade acadêmica da UFPel, ampliou meus horizontes e perspectivas sobre o cenário comunicacional fora do país.

Atualmente, com o título de bacharel em Jornalismo, continuo em busca de mais conhecimento através de cursos e formações complementares. Dessa forma, estou me dedicando aos bootcamps de Copywriting, Redação Criativa e SEO da Aldeia.cc, bem como iniciando um curso de extensão da USP, focado na área de divulgação científica para comunicadores.',NULL,'Marketing',NULL,NULL,'Instagram','Não fui indicada','2500-3000','Sim','Silvia Pinto - Jornalista no Centro de Pesquisas Epidemiológicas da UFPel
Contato: (53) 98123-7933

Cíntia Borges - Designer no Centro de Pesquisas Epidemiológicas da UFPel
Contato: (53) 98438-6454','Assistente de Marketing','Minha paixão pela comunicação começou ainda na infância, quando eu passava horas criando designs no Paint e brincando de trabalhar no Word. Com o tempo, essas diversões se transformaram em uma vocação e me levaram à formação em Jornalismo. Hoje, além de amar a produção de conteúdo para meios tradicionais, sou entusiasta das áreas de marketing e redes sociais — o que me aproxima ainda mais da vaga ofertada pela empresa. Tenho domínio avançado em Canva e habilidades em edição de vídeo com ferramentas como CapCut, Premiere e DaVinci Resolve.

Sou 100% apaixonada por viagens e já tive a oportunidade de morar em dois países além do Brasil: Estados Unidos e Portugal. Durante o intercâmbio de High School na Califórnia, conquistei o inglês avançado, e mais tarde, já como universitária, vivi um semestre de mobilidade acadêmica no norte de Portugal, experiência que ampliou minha visão de mundo e rendeu mais cinco países carimbados no passaporte. Fora do trabalho, gosto de explorar conteúdos culturais, artísticos e gastronômicos — nunca perdendo a chance de conhecer uma nova cafeteria.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-26T21:54:00.000Z'::timestamptz),
  ('Luiz Gabriel Santana Pereira','luizsantana@hotmail.com',NULL,'51995664401','1997-06-24',28,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1qUh5IODLMk7fLpBK2rVlJwZa50_4PRyl','Administração de empresas','Ensino Superior Completo','uniritter','2020-12-31','Sou formado','está no currículo','Certificados em SEO, conversion, content marketing, ia para marketing, gestao de projetos',NULL,'Marketing',NULL,NULL,'Indicação','nao','4500','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-27T01:29:00.000Z'::timestamptz),
  ('Maria Gabriela dos Santos Cabrera','mariacabreragabriela@gmail.com',NULL,'55996846139','2000-04-29',25,'Solteiro(a)','0','Não','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1p5U4RNHDUvCHJbKsYVGuURemjD--HW0g','Gestão Comercial','Ensino Superior Incompleto','Uniasselvi','2027-12-20','Não, no momento pausei/parei por um período.','Save Inteligência Tributária- Assistente Admintrativo e Sucesso do Cliente 
07 de Abril- 13 de Agosto
Prestava suporte à equipe, esclarecendo dúvidas técnicas para facilitar a execução das vendas. Também auxiliava os alunos com questões relacionadas à plataforma e outros assuntos pertinentes. Atuava no pós-venda, realizando a coleta de depoimentos e cuidando da organização do onboarding.',NULL,NULL,'Administrativa, Comercial',NULL,NULL,'Instagram','Não','1800','Sim','Janaina- 4299773348 (Sucesso do Cliente)
Rubiane - 4799783558 ( Suporte Técnico)','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-27T01:58:00.000Z'::timestamptz),
  ('Mirella Pires dos Anjos Machado','mirellaanjos5678@gmail.com',NULL,'51982691775','2004-04-06',21,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1hAWJD3vae945Vi0YNzQhxTZJLpV9lOMf','Investigação forense e perícia criminal','Ensino Médio Completo','Uniasselvi iERGS','2025-12-19','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Trabalha no Atacadão Miranda móveis como vendedora de televendas e salão. Logo após fui para lojas Colombo como vendedora de salão','Ensino médio completo 
Informática básica 
Formação de gerentes de comércio 
Educação fiscal e cidadania UFRGS',NULL,'Administrativa, Estágio',NULL,NULL,'Instagram','Nao','2.000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-27T03:07:00.000Z'::timestamptz),
  ('Fabio da rosa boldt','boldtfabiojunior02@gmail.com',NULL,'54992174716','1995-04-21',30,'Casado(a)','0','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1rScRafjNDH42nb3xmMfSlYnWLwfD-J4q','Administração de empresas','Ensino Superior Completo','Unopar','2022-12-31','Sou formado','Trabalhei na empresa Conecta empreendimentos por 7 anos e atuei na área administrativa, fazia a programação das obras e controle de notas, planilha mento de arquivos.','Bacharelado em Administração',NULL,'Administrativa',NULL,'https://drive.google.com/open?id=19moQQPGPb9wwsJux0jy2v_dGw5XVRScD','Instagram','Não','R$2.500,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Exel, Power BI, SAP, word...','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-27T13:44:00.000Z'::timestamptz),
  ('Camila Benites','benitesmila58@gmail.com',NULL,'51980645532','2005-11-10',20,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1Y4GrSTa9hxBajQgq3qSqqOukDuxMEGnu',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Yázigi- Consultora de Vendas 
Hospital Vila Nova- Auxiliar Administrativo 
Metropax- Vendedora Porta a Porta','Tenho alguns cursos profissionalizantes.',NULL,'Administrativa, Comercial, Financeiro, Marketing',NULL,NULL,'Instagram','Não fui','R$1.800','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma menina pró-ativa, gosto de aprender campos novos, adoro trabalhar em equipe e desenvolver novas habilidades, adoraria compartilhar tudo que me foi passado nessas experiências, assim como gostaria de adquirir novas experiências.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-27T14:47:00.000Z'::timestamptz),
  ('Laís Santos de Souza','laiss1704@gmail.com',NULL,'51991791551','1996-04-14',29,'Solteiro(a)','1','Não','Alvorada/rs','https://drive.google.com/uc?export=view&id=1ed-G-H9JyQxXBVBW0IOXmvvyiXM8PEG9','Gestão Financeira','Ensino Superior Completo','FADERGS','2019-12-20','Sou formado','Griffecapelli - serviços de embelezamento 
Atuo na área da recepção, dando auxílio administrativo, atendendo a telefone, whatsapp e presencialmente, trabalho com agendamento de clientes em sistema próprio para salões de beleza. Tenho duas passagens na mesma empresa, pois tive que sair por problemas familiares e acabei voltando pela flexibilidade de horários para estudar, estou atualmente ainda nela, mas gostaria de expandir meus conhecimentos e migrar para área mais administrativa','Tenho curso técnico em administração e superior em gestão financeira. Tenho dois cursos de menor aprendiz em auxiliar administrativo e',NULL,'Administrativa, Financeiro',NULL,NULL,'Facebook','Não','acima de R$ 2000,00','Não',NULL,'auxiliar administrativo ou financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-27T14:48:00.000Z'::timestamptz),
  ('Érico da Silva vargas','ericosilvavargas@gmail.com',NULL,'53999303082','1985-06-22',40,'Solteiro(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1thBXvGJRnoaob6n9sQnfz1QTJEkyoKjj','Administração de empresas','Pós-graduação Incompleta','urcamp','2008-08-09','Sou formado','11/2024 - 11/2025 GERENTE COMERCIAL Loja Tumelero  - Materiais de Construção Gerenciamento de loja, liderança de equipe de vendas com foco em metas, garantir o cumprimento das normas e procedimento operacionais, aperfeiçoamento no atendimento a clientes, treinamento e seleção de equipe.  08/2022 - 08/2024 GERENTE COMERCIAL Loja Monjuá - Confecção Varejista Gerenciamento de loja, liderança de equipe de vendas com foco em metas, aperfeiçoamento no atendimento a clientes, treinamento e seleção de equipe. 07/2021 - 07/2022 CONSULTOR DE VENDAS - ADMINISTRATIVO Izolan Calçados - Artigos em Geral Vendas de produtos em geral, Atendimento ao público em geral, controle de estoque, controle de pedidos e balanços administrativos. 07/2020 - 07/2021 OPERADOR DE CAIXA - ADMINISTRATIVO Mania Sport - Artigos Esportivos Operador de Caixa, atendimento ao público em geral, controle de estoque, controle de pedidos e balanços administrativos. 10/2018 - 11/2019 COORDENADOR UNIDADE ALEGRETE Instituto Mix de Profissões - Alegrete Coordenava as rotinas administrativas, o planejamento estratégico e a gestão dos recursos organizacionais. Gestões pedagógicas, controlando materiais, patrimoniais, financeiros, tecnológicos e humanos, coordenar à equipe e as atividades.','formação em administração de empresas. formação em matemática em andamento',NULL,'Administrativa',NULL,'https://drive.google.com/open?id=1isSNenG5ogOWCC6iHPVPkoiAl0g0---w','Facebook','nao','3500','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-27T16:07:00.000Z'::timestamptz),
  ('Zénon da Silva Xavier Júnior','zenonxavierjr@icloud.com',NULL,'51998757840','2003-06-01',22,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1nHs0AnXv2c_u0dQpqI4MYcAlGWYTuZeY','Administração de empresas','Ensino Superior Incompleto','Universidade federal do rio grande (FURG)','2029-04-04','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Frigorífico Boa Esperança LDTA, trabalhei como jovem aprendiz entre fevereiro de 2018 até abriu de 2019, trabalhei na recepção atendendo clientes, fornecedores e também carga e descarga, trabalhei também no setor de qualidade distribuindo epis e mantendo o controle do estoque dos próprios, e por último auxiliando no rh da empresa, passando com os contra cheques, cartão ponto, arquivos…
Atualmente estou trabalhando na empresa Esquadrilhas Lauck, comecei em 2020 no cargo de auxiliar de produção, atualmente estou trabalhando no estoque da empresa, recebendo produtos, notas, contagem, conferência, compras, comunicação com fornecedores…',NULL,NULL,'Administrativa, Financeiro, Marketing',NULL,NULL,'Instagram','Não','um valor proporcional a 1800','Não','Ismael Rangel, Esquadrilhas lauck 51996395226','Auxiliar de RH, mas também quero deixar meu currículo no banco de talentos','Meu nome é Zenon, sou uma pessoa dedicada, organizada e com facilidade em aprender novas funções. Tenho boa comunicação, responsabilidade e gosto de colaborar em equipe. Busco uma oportunidade na área administrativa para contribuir com o crescimento da empresa e desenvolver minhas habilidades profissionais.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-27T17:00:00.000Z'::timestamptz),
  ('Yndera da Silva Gomes','ynderagomes@gmail.com',NULL,'55984176091','1997-04-11',28,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1wKukdQT3wPWDg-6CsiSrBny990cBkk00',NULL,'Ensino Médio Completo','Unicesumar','2029-12-12','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Atualmente trabalho como fiscal de caixa na empresa Nicoline, trabalhei como caixa, atendente de farmácia, repositora de hortifruti.','Eu estou cursando Enfermagem eu amo trabalhar cuidar de pessoas',NULL,'Administrativa',NULL,'https://drive.google.com/open?id=1R-0MwmaBzLt6dmpqTS47TscsqpJUOgKU','Facebook','Não','De 1500 há 2000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Eu gosto de cuida das pessoas gosto muito de olha séries de médico, gosto de estar com minha família atualmente é só eu e meu companheiro gosto de relaxar aos finais de semana quando tenho tempo. Atualmente trabalho num mercado só folgo uma vez na semana mal vejo minha família oi meu companheiro','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-27T17:56:00.000Z'::timestamptz),
  ('Emerson Bueno','nogueirabuenoemersonroberto@gmail.com',NULL,'55984365795','1973-05-08',52,'Casado(a)','3','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1RY8Z0Gq4CMI5KPVn9TF8LAYAbAIeLyGM','Economia','Ensino Superior Incompleto','UNIPAMPA','2026-12-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Último trabalho foi de gerente de produção com máquinas industriais com uma equipe de 6 pessoas, CQC concretos(Início:19/02/2024- 31/07/2025,sem justa causa e Operador no Niederauer como operador de empilhadeira, sai com uma proposta na CQC - início:01/01/2019 a 17/02/2024, proposta melhor de salários, de tempo e de crescimento.','Tenho curso de operador de empilhadeira, tenho certificados de cursos horas de economia, curso de informática, curso de trabalho em equipe e outros.',NULL,'Financeiro',NULL,NULL,'Na Cqc Concretos, Vendemos Tubos Para Vocês','Não','R$3.500,00','Sim','Regis - Empresário casa das Alianças (55)984644148
Nefi Pirez - Empresario (55)991599965','Comercial','Trabalho muito com projetos sociais, tenho o curso de Espanhol.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-27T20:58:00.000Z'::timestamptz),
  ('Tarissa Frantz Campos','tarissafrantz@gmail.com',NULL,'47996896172','1994-01-30',32,'Solteiro(a)','0','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=1keHtFiLRAUf4ui6oR_L0pDXr1A70vgeD','Comunicação Social','Ensino Superior Completo','Univali','2017-12-31','Sou formado','Trabalhei na AMC Textil como auxiliar administrativo de fev/2018 a maio/2018; assistente de marketing PJ em 2019; Unimed Grande Florianópolis com o cargo de assistente administrativo, de novembro de 2021 a fevereiro de 2022; trabalhei como assistente de secretaria de novembro de 2022 a fev 2023; estagio em academia durante 2023 inteiro; em 2024 fui agente de educação especial e inclusiva ACT em Navegantes/SC. De 2016 a 2020 trabalhei de forma autônoma como assistente de redes sociais e atendimento virtual. Desde 2021 também sou professora de dança autônoma.','Estudei Comunicação Social e me formei, atualmente estudo Educação Física, porque descobri também minha paixão em ajudar a melhorar o bem estar de outras pessoas.',NULL,'Administrativa, Comercial',NULL,NULL,'Instagram','Não','2000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Conhecimento básico em Excel, gosto de editar imagens e criar posts no Canva (aprendi no Photoshop, mas resolvi me atualizar), sou professora de dança, aprendi inglês sozinha (assistindo séries, filmes e consumindo música na língua), sou tranquila e gosto de atender.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-27T21:35:00.000Z'::timestamptz),
  ('Luis Ramon Zalazar','cyberzedd@gmail.com',NULL,'51991070235','1979-08-12',46,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1zrLRAX65eUKEkYWFmNu1oxNlWlvIlTLw','Administração de empresas','Ensino Superior Completo','Uniasselvi','2023-05-11','Sou formado','Grupo Carrefour Brasil
Cargo: Assistente Administrativo
Período: 2024/2025
Porto Alegre – RS
Atividades: Conciliação bancária, emissão de relatórios e lançamento em sistema SAP, contato com fornecedores, compensação de valores pagos e em aberto.


Meridien Clube
Cargo: Auxiliar Administrativo Financeiro Período: 2021/2024
Porto Alegre – RS
Atividades: Contas a receber, conferência de documentação, programação de pagamentos e lançamento em sistema, contato com fornecedores, cadastro de novos fornecedores, controle de valores pagos e em aberto.



Associação Sul Riograndense dos Viajantes Comerciais Cargo: Auxiliar Administrativo (Atendente de Secretaria) Período: 2019/2021
Porto Alegre – RS
Atividades: Atendimento, atualização, elaboração e conferência de planilhas com informações passadas pelos professores, atendimento e contatos telefônicos, organizar turmas e organização do espaço, controle e estoque de material, financeiro, abertura e fechamento de caixa, demais rotinas administrativas.

Promoaction TradeMarketing
Cargo: Auxiliar Administrativo (Auditoria de vendas e Controle de Qualidade) Período: 2014/2018
Porto Alegre – RS
Atividades: Controle de qualidade e auditoria de vendas realizadas pela equipe comercial, alimentação dedados no sistema e ativação de serviços auditados no cadastro dos clientes.

TAP Maintenance & Enginering Brazil
Cargo: APPC (Auxiliar de Produção, Planejamento e Compras) Período: 2010/2014
Porto Alegre – RS
Atividades: Sala de controle (rotina administrativa.): controle da documentação (Ordens de Serviço) de clientes Nacionais e Internacionais(Linhas Aéreas Air Canada, Azul, Webjet, Gol, Trip, entre outras), auditoria da documentação dos mesmo para que seja preenchido da forma correta a pedido do cliente como formato de data e respostas nas ordens de serviço dos mecânicos auxiliando os funcionário para que a documentação esteja completa sem rasuras, encaminhar através de protocolo a documentação para que seja escaneado e enviado ao cliente dentro do prazo determinado.','Técnico e profissionalizante de administração',NULL,'Administrativa, Financeiro',NULL,'https://drive.google.com/open?id=14LFpQP0aoyEGM7YRCj9xfz-40tRm6jbp','Instagram','Não','Entre R$1800,00 e R$2100,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-27T23:32:00.000Z'::timestamptz),
  ('Andressa Maria Teixeira da Silva','teixeiraandressa827@gmail.com',NULL,'55991560578','1997-04-07',28,'Solteiro(a)','0','Sim','Cruz Alta/RS','https://drive.google.com/uc?export=view&id=15hJUqlKIabmzfGp1QblXyqxtLiL1Y8Km','Segurança do trabalho','Ensino Médio Completo','Annes dias','2027-12-17','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Linke supermercado e simbiose agro','Informática básica',NULL,'Comercial, Estágio, Financeiro, Marketing',NULL,NULL,'Instagram','Vi a vaga no Instagram','2.500','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-28T03:10:00.000Z'::timestamptz),
  ('Bruna Teixeira Gonçalves','brunatg24@gmail.com',NULL,'51995849149','1984-05-24',41,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1IHv8faPddEj__Ul8zaG3rzpvT3tQdWq8','Marketing','Ensino Superior Completo','Uniasselvi','2025-02-17','Sou formado','Fiz transição de carreira e estou em busca do meu primeiro emprego na área. Fiz um voluntário  em um Instituto como social media, ajudando a montar o calendário de postagens bem como as artes realizadas no canva.','Formada em Marketing
Curso de Edição de vídeo 2025 Senac',NULL,'Marketing',NULL,NULL,'Instagram','Não','2200','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-28T12:01:00.000Z'::timestamptz),
  ('Camilla Rodrigues','cahmillag@gmail.com',NULL,'51981388871','1990-03-15',35,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1ld26-b8-tYeka7C01fx5XT1KtgtviepL','Análise e desenvolvimento de sistemas','Ensino Médio Completo','Escola Unieinstein','2023-12-01','Sou formado','Trabalhei só como freelancer','Web design, design gráfico e marketing',NULL,'Estágio, Marketing',NULL,'https://drive.google.com/open?id=1Kq0g9mrBiud9HP8OP-KPtioWwpDHPHyq','Instagram','Não','1200','Não',NULL,'Marketing',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-28T18:46:00.000Z'::timestamptz),
  ('Sarah Gonçalves Medina','sarah.sgm@outlook.com',NULL,'51996502223','2000-12-13',25,'Solteiro(a)','0','Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1eLx8sRq9h5Qijn-HsiCn9oqy0HPbZ3RH','Desing de animação','Ensino Superior Completo','Uninter','2022-04-28','Sou formado','ST serviços empresariais em Rio Grande do Sul, Porto Alegre - RS
De 04/2019 até 04/2021
Telemarketing - Telemarketing / Call Center Receptivo (Operacional)
Atendimento com agentes de órgãos públicos para remoção de veículos, análise de solicitação e emergência em caso de infração, crime, furto e roubo, pane e crime.
Atendimento receptivo/secretariado, ligando diretamente para os crd de cada cidade conforme lista, efetuar regularização no sistema, entrega de relatório, análise de documentos a atualização de planilha no Excel.
Designer autônomo, de 2017 até presente data.
Ilustração manual e digital, logotipo, arte finalização, fechamento de arquivo, tratamento de imagem, layout de projeto, pesquisa de mercado, estampas, anúncios para mídia digital e física, desing sustentável, ui/ux, gerenciamento de plataformas de mídia, marketing, planejamento de estratégia multimídia.','Fiz uma boa quantidade de cursos relacionados a artes plásticas, como escultura, pintura e desenho do básico ao avançado, de curto tempo e longo, entre 1 mês a 3 anos.
Depois disso fiz um curso técnico de design gráfico no Senac de 1 ano.
Mais tarde faculdade na Uninter, cursando desing de animação, ao qual também teve matérias como marketing e emprededorismo.',NULL,'Marketing',NULL,'https://drive.google.com/open?id=17_fXct6OekltClbpaXX-wInkmr2XLYiX','Instagram','Não','1.900/2.000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Com programas seriam, Photoshop, illustrator, InDesign, krita, figma, 3d max, aprendendo o blender.
Sei Kung Fu já que meu pai é professor, adoro ir em eventos de anime (também fazendo cosplay), geek, medieval, acampar. 
Sempre em constante movimento, fazemos um dia toda semana de jogos de tabuleiro, sempre na casa de um amigo como uma roleta até chegar em mim.
Temos um grupo de voluntariado chamado liga heróica, onde leva personagens a comunidades carentes, e em hospitais levando um pouquinho de alegria no dia.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-28T19:16:00.000Z'::timestamptz),
  ('Bruna Noami Pes','brunanpes@gmail.com',NULL,'55997091757','2000-03-03',25,'Solteiro(a)','0','Sim','Itaqui/RS','https://drive.google.com/uc?export=view&id=1a3jmnA_XVjXSL9VfF-u5bSHS9XxAg8qR','Estética e cosmética','Ensino Superior Completo','Instituto federal Farroupilha','2024-10-17','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Atualmente trabalho como gerente administrativa em uma empresa de engenharia e serviços com foco na parte financeira, mas iniciei como auxiliar administrativo, também já atuei como vendedora e fiz estágio na parte de RH de uma prefeitura','Sou formada em estética, mas tenho técnico em administração e atualmente estou fazendo a graduação de administração',NULL,'Administrativa, Comercial, Financeiro',NULL,NULL,'Agência de Empregos','Não','2.000,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho conhecimento em sistema ERP, emissão de notas e boletos, cobranças, contratação e demissão de funcionários, planilhas e relatórios, rotinas administrativas','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-28T19:25:00.000Z'::timestamptz),
  ('Nicolas Silva da Rosa','nicolas2013silva@gmail.com',NULL,'53997131606','1999-02-04',27,'Casado(a)','0','Sim','Bagé/RS','https://drive.google.com/uc?export=view&id=1lAbDmKBVplyGWrT71-fa6TrU3CWiyGKa',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','*New Life: vendedor externo: 5 meses
* Instituto mix: vendedor interno: 3 meses
* Trabalho fazendo e vendendo trufas há 2 anos',NULL,NULL,'Comercial',NULL,NULL,'Indicação','Sim, Diego.','2500','Sim',NULL,'Comercial','*Tenho conhecimentos intermediários em informática

* Participo de um projeto que alimenta crianças em um orfanato em Moçambique.

* Durante minha trajetória no instituto mix, fiz vários cursos de vendas oferecidos pela própria empresa para aprimoramento de vendas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2025-08-28T21:26:00.000Z'::timestamptz)
;
