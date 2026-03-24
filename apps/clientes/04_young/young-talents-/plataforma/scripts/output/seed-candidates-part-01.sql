-- Parte 1 de 9 (até 300 linhas por arquivo para caber no SQL Editor)
-- Cole no SQL Editor do Supabase → Run. Depois execute a próxima parte.
-- Tabela permite múltiplos envios por email (cada linha = um envio com timestamp).

INSERT INTO young_talents.candidates (full_name, email, email_secondary, phone, birth_date, age, marital_status, children_count, has_license, city, photo_url, education, schooling_level, institution, graduation_date, is_studying, experience, courses, certifications, interest_areas, cv_url, portfolio_url, source, referral, salary_expectation, can_relocate, professional_references, type_of_app, free_field, status, tags, origin, created_by, original_timestamp)
VALUES
  ('ANDRESSA DA SILVA ROCHA','andressarocha.arq@gmail.com',NULL,'51996283162','1993-05-26',32,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1WjFy33pXapcVdSKoaCpfHRPeomIqdDts','Arquitetura','Ensino Superior Completo','UNISINOS',NULL,NULL,'Agosto de 2019 / atualmente: Arquiteta e Urbanista autônoma 
Localizado em Santo Antônio da Patrulha.

2018 / até Agosto de 2019: Trabalhando com o Engenheiro Cristian Oliveira.
Localizado em Santo Antônio da Patrulha.
Ajudante da área Arquitetura e Urbanismo.

2014: Estágio na Secretária de Obras Públicas Saneamento e Habitação.
Localizado em Santo Antônio da Patrulha.
Estagiária do Curso de Arquitetura e Urbanismo.

2013: Estágio no Escritório L R Arquitetura.
Estagiária do Curso de Técnico em Edificações (500 horas) 
Medições, AutoCAD, Sketchup.

2010 a 2011: Agropecuária Várzea Ltda,
Menor Aprendiz,
Serviço de Banco e Escritório,

2008 a 2009: Com coco Produtos Alimentícios Ltda,
Secretária, Responsável pelas notas fiscais.','TÉCNICA EM EDIFICAÇÕES','2013 a 2019: Universidade do Vale dos Sinos, Arquitetura e Urbanismo, concluído em Julho de 2019.  2011 a 2013: Centro Tecnológico Estadual Parobé, Técnico em Edificações, Concluído em 2013.  2010 a 2011:Curso de Aprendizagem em Administração do Senac, Menor Aprendiz, quatro meses de teorias (400 horas),  quatro meses de prática (400  horas),Conclusão em 2011.','Arquitetura','https://drive.google.com/open?id=1TYZ1NNr-C6IiIeCWK5Omm0gZqaq2I7mf',NULL,'Indicação',NULL,NULL,NULL,NULL,'Quero inscrever-me no banco de talentos da Young!','habilidade em autocad e sketchup.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-09-23T20:51:00.000Z'::timestamptz),
  ('Thayná Cristyna de Oliveira Cunha','thaynacristiina3@gmail.com',NULL,'51995022406','1998-08-27',27,'Solteiro(a)',NULL,'Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1D41OZ2E3Rjc5sbncS0cUq0c9YD3Vcmdy','Administração de empresas','Ensino Superior Incompleto','Ensino médio completo',NULL,NULL,'Monitora/ líder de equipe e auxiliar administrativo
Iniciei como operadora de caixa, atendente, barista, garçonete e depois
fiquei responsável pela abertura e fechamento das duas lojas Boulevard
Freeway, passei por diversos setores:
Lider de equipe: atendentes; operadoras de caixa; balcão; cozinheiras;
auxiliares de limpeza.
Responsável por montar a escala semanal de mais de 25 funcionários.
Recepcionista.
No cargo de auxiliar administrativo realizei as seguintes funções:
recrutamento, pagamento de funcionários; compras de insumos e
produtos para loja; controle de estoque; controle de contas a pagar,
lançamento de notas fiscais; inventário; fechamento de caixas;
cronograma diário por setor; atendimento de fornecedores; entre outros.

Trabalhei também como promotora de vendas, venda de cursos por telefone.',NULL,'Certificado do congresso de gestão e liderança que participei em 2018','Administrativa, Financeiro, Engenharia','https://drive.google.com/open?id=1edZlZTncV6_MQDSZfG9kwnxht8EwExdf',NULL,'Agência de Empregos',NULL,NULL,NULL,'Gerente Janete Gil 051 980259171
Supervisora administrativa Daiane Constante 051 995912146','Me disponho a preencher qualquer vaga disponível na empresa.','Trabalho bem em equipe e individual, tenho conhecimento em word e Excel. Gosto muito de cozinhar. Trabalhei como barista, atendente, garçonete e também liderei uma equipe de mais de 25 funcionários.
Pretendo voltar a faculdade de administração e futuramente fazer gastronomia, tenho o sonho de abrir meu próprio negócio (restaurante, cafeteira)','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-09-23T22:00:00.000Z'::timestamptz),
  ('Enrique Leal da Silva','enrique.leal.94@hotmail.com',NULL,'','1994-08-03',31,'Solteiro(a)',NULL,'Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1BlNt9jYLIFX4sxlzaa3oU8JyHglf5W8G','Engenharia Mecânica','Ensino Superior Completo','Unipampa',NULL,NULL,'1) Cooperativa Agroindustrial de Alegrete Ltda. (CAAL)
2) Estagiário de Engenharia 
3) Início: 23/08/2018 Fim: 07/11/2018
4)  Atuação na elaboração de projetos mecânicos, acompanhamento do setor de Manutenção Industrial,
adequação da indústria a NR 12 e auxílio na elaboração de laudos técnicos. Leitura e interpretação de desenhos técnicos, esboços, ilustrações técnicas, modelos e especificações.
Organização, controle e arquivamento de documentos técnicos e/ou mecânicos em geral.



1) Bola cheia Society 
2) Atendente Comercial
3) Início: Nov/2018 Fim: Agosto/2020
4) Responsável por atender clientes com horário reservado da quadra esportiva e venda de bebidas. Garantir o suporte necessário aos clientes, esclarecendo dúvidas e registrando reclamações. Captação e retenção de clientes, identificação de melhorias e controle de fluxo de caixa.','Estudo atualmente mestrado em engenharia, na área de tecnologia de materiais na Unipampa. Possuo curso completo de Inglês pela escola SENAC-RS, curso de pacote office e curso de montagem e manutenção de computadores.','Diploma de Graduação de Engenharia Mecânica','Administrativa, Comercial, Financeiro, Novos Negócios, Engenharia','https://drive.google.com/open?id=1ozAydprbAEIOYyLDUEAO45jIGJuDPQA6',NULL,'Instagram',NULL,NULL,NULL,'Gabriel Gerhke, supervisor de manutenção da CAAL.
Telefone: +55 (55) 99681-2103','Quero me inscrever na oportunidade divulgada para Estágio, e se possível, também no banco de dados da empresa.','Sou um jovem recém formado em engenharia que busca iniciar os desafios do mercado de trabalho e adquirir experiências para contribuir com os valores da Young empreendimentos.
Capacidade de produzir e relatar dados da Gestão com precisão e comunicar-se de forma eficaz com os stakeholders e superiores, a fim de facilitar uma tomada de decisão ideal.
Habilidades de comunicação interpessoal, gestão de pessoas, administração de conflitos, percepção crítica e analítica para análise de melhoria em quaisquer tipos de processos.
Vencedor em 2 anos do Desafio Modelo de Negócio, proporcionado pelo Pampatec.
Realização de intercâmbio cultural e estudo para a Argentina (2014).','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-09-25T01:59:00.000Z'::timestamptz),
  ('Taina Souza dos Santos Coelho','taina.22@outlook.com',NULL,'55999230020','1994-11-15',31,'Casado(a)',NULL,'Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1DQUoJtE9RNol2Fb5is4voYoq-cvN_jlc','Engenharia Agrícola','Ensino Superior Incompleto','Universidade Federal do Pampa',NULL,NULL,'Atividades Realizadas 
• Auto Posto Lukatan. 08/04/2012 até 08/04/2014 como operadora de caixa. Contato: (65) 99987-
6424. Arenápolis – MT. 

• PR Gráfica e Imp. Digitais LTDA ME. 01/06/2014 até 06/03/2015 como secretária. Contato: (65) 
99909 – 8666. Arenápolis – MT. 

• A Vetericampo Produtos Veterinários LTDA. 29/04/2015 até 15/12/2016 como operadora de
caixa. Contato: (65) 99943 – 6720.

• Clínica Veterinária Acco. 23/05/2017 até 28/08/2017 como auxiliar administrativa.

• Autônoma 01/02/2018 até 10/06/2020.( Vendas)',NULL,NULL,'Administrativa, Comercial, Financeiro','https://drive.google.com/open?id=1sz0A-3IB5w31Osagynmj1ytHtQ6Z56sf',NULL,'Instagram',NULL,NULL,NULL,'Ana Maria (55) 99622-9088','Quero inscrever-me no banco de talentos da Young!','Olá, vou falar um pouco sobre mim. Vim de Mato Grosso para estudar, trabalho desde os meus 13 anos, a 3 meses cheguei aqui em Alegrete e estou sem trabalho. Não me vejo sendo dependente de ninguém, amo ter contato com as pessoas fazer amizades. Isso faz parte de mim, gosto muito de interagir e principalmente fazer negócios! Nas horas vagas curto muito momento em família.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-09-25T06:19:00.000Z'::timestamptz),
  ('Joyce Tomaz de Assis','joyce.tomaz.assis@gmail.com',NULL,'55999668085','1992-07-16',33,'Casado(a)',NULL,'Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=12umwvKgXREpcwSQp-A_V1yRtR2QeS2vG','Engenharia Civil','Ensino Superior Incompleto','Universidade Federal do Pampa',NULL,NULL,'1) Empresa : Esco-GD;
2) Estagiária no setor de Engenharia;
3) Início em 06/06/2017, ainda em andamento;
4) Desenvolvimento de projetos civis, elétricos e de geração fotovoltaica;
     Responsável pelo treinamento de novos integrantes da equipe;
     Execução de levantamentos de campo;
     Modelagem 3D;
     Domínio nas ferramentas Revit, Autocad, Sketchup, TQS;',NULL,NULL,'Administrativa, Arquitetura, Comercial, Estágio, Licenciamentos, Novos Negócios, Engenharia','https://drive.google.com/open?id=1ySGQ8PZI8NZYPQ-Ky4tIZJOYBtryzMYW','https://drive.google.com/open?id=1B2Yn-aIpi9XVzxuAy_Hxh_d3sui8iPkx','Facebook',NULL,NULL,NULL,NULL,'Gostaria de aplicar para a vaga de estagiário que foi postada recentemente no perfil da empresa no facebook',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-09-25T12:01:00.000Z'::timestamptz),
  ('Andrieli Soares da Silva','andrieli1997@hotmail.com',NULL,'55997071484','1997-01-04',29,'Solteiro(a)',NULL,'Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1E_G4hGemo7v7E5L129wuwZscdPFan3xY','Bacharelado em zootecnia','Ensino Superior Completo','Instituto federal farroupilha',NULL,NULL,'1) Magazine Luiza
2) Vendedora
3)12/03/19 emprego atual
4) Atendimento ao público, vendas, telemarketing, organização de setores e criação de conteúdos digitais.','Possuo curso de informática, atendimento ao público, e diversos cursos na área zootécnica. Diversos trabalhos publicados em eventos e estágios.','Possuo certificado de conclusão do curso bacharelado em Zootecnia, dentre alguns cursos realizados durante a faculdade e experiências relatadas em mais detalhes no meu currículo em anexo.','Administrativa, Comercial, Estágio, Marketing, Engenharia','https://drive.google.com/open?id=1UFxQ9qp19G8RX3IXWSjCwcoYYdf3JJFG',NULL,'Instagram',NULL,NULL,NULL,'Danielle Fontoura
(55) 999041581 
Vendedora especial Magazine Luiza','Vaga de estágio','Adorei essa parte haha
Adoro trabalhar com público, amo muito animais também, trabalhei como voluntária ajudando animais abandonados durante minha faculdade, agora estou um pouco distante dos projetos. Adoro ajudar, gosto de cozinhar  de dançar e cantar (muito mal por sinal), sou divertida, gosto de estudar, e sou boa com números. Geralmente nas férias gosto de ver meu amigos. Realizo muitos cursos, sou bem curiosa também, agora só falta vocês me conhecerem!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-09-26T01:05:00.000Z'::timestamptz),
  ('Paulo César Santos da Silva','pcss199808@gmail.com',NULL,'55992123266','1998-05-13',27,'Namorando',NULL,'Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1gvRDJ3rsmpsTNlwYpEM0aCKcqfcEfrAj','Tecnólogo em Agroindústria','Ensino Superior Incompleto','Iffar - CA',NULL,NULL,'Lojas Americanas - Auxiliar de loja - DI 03/09/20 - Vendas, Atendimento, abastecimento, estoques.
Exército Brasileiro - Aluno do NPOR - 15/02/17 a 2/12/17 - várias funções.
Vendas de doces e salgados - autônomo - toda faculdade - todas funções.','Nr12 
Segurança do trabalho','NR12 / Segurança do Trabalho / entre outros','Comercial, Marketing, Esportiva','https://drive.google.com/open?id=1q02Gg9C-dHXdUuuBlBqbhU3UD60Jk21Z',NULL,'Indicação',NULL,NULL,NULL,'Andrieli Soares da Silva - 99930-3934','Quero inscrever-me no banco de talentos da Young!','Meu nome é Paulo, sou do Alegrete, tenho 22 anos, sou um cara extrovertido, alegre, dedicado, leal e companheiro. Possuo alguns cursos, estou terminando minha faculdade de tecnologia em Agroindústria, falta a defesa do relatório final. Gosto de praticar atividades físicas, principalmente futebol e corridas, gosto de estar com minha família e estar em casa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-09-26T01:09:00.000Z'::timestamptz),
  ('Emili Valença','emilivgm@hotmail.com',NULL,'55996813878','2000-12-14',25,'Solteiro(a)',NULL,'Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1LqqHeaJ655neold8VOy-njRq9CmkEe0o','Engenharia Civil','Ensino Superior Incompleto','Unipampa',NULL,NULL,'Não tenho nenhuma experiência profissional infelizmente, então estou completamente disposta a aprender desde o princípio.','•	Curso de Inglês – CNA (5 anos);
•	Curso de Informática - (Windows, Word, Excel, Power point)- QI Escolas
•	Curso de Marketing e Propaganda - QI
•	Operações de comércio exterior – Rede Fecomércio RS;
•	Gestão de armazenagem com foco nos processos logísticos– Rede Fecomércio RS;
•	Custos e cálculos logísticos – Rede Fecomércio RS;
•	Gestão de finanças empresariais – Rede Fecomércio RS;
•	Gestão de qualidade;
•	Noções de folha de pagamento;
•	Cálculo financeiro básico para administração financeira – FGV online;
•	Negociações preliminares- FGV online.',NULL,'Administrativa, Arquitetura, Estágio, Financeiro, Licenciamentos, Marketing, Engenharia','https://drive.google.com/open?id=1efbuA5-jj6XCk12GK5CxP-9SnDWd7h35',NULL,'Instagram',NULL,NULL,NULL,NULL,'Quero inscrever-me no banco de talentos da Young!','O ramo de trabalho da empresa é voltado especificamente para uma área da qual eu estudo, mexendo com projetos e obras. Vi que buscam alguém que tenha interesse e disponibilidade em viajar e até mesmo futuramente se transferir, sou natural de Alegrete, porém, com 2 anos sai para ir para Marabá-PA. Fiquei 10 anos fora de Alegrete, nesse tempo morei em Marabá, Rio Branco-AC, Cruz Alta-RS e Natal-RN, até finalmente voltar para Alegrete. Tive a oportunidade de conhecer um pouco de cada cultura do Brasil, estou super aberta e acostumada para eventuais viagens e uma possível transferência estaria facilmente nos planos. Não tenho experiência profissional pois infelizmente nunca consegui essa oportunidade, então me dediquei a cursos e de passatempo algumas artes marciais (judô e jiu-jítsus). Acredito que tenha conseguido colocar em palavras um pouco de mim. Desde já, obrigada.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-09-26T05:25:00.000Z'::timestamptz),
  ('Catherine Rodrigues Alves','catherinealvesa@gmail.com',NULL,'55999286784','1997-07-02',28,'Divorciada',NULL,'Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1On-eVENFXrHa0mdqxpLGwJ_FRzqGjm69','Gestão Financeira em andamento','Ensino Superior Incompleto','Uninter',NULL,NULL,'-10ª Coordenadoria Regional de Saúde
Cargo: Estagiária – 2014
-Padaria Dom Fernando
Cargo: Balconista – 2015
-Prefeitura Municipal de Alegrete
Cargo: Servidora Pública nomeada para secretaria de 
educação/Atendente – 2017 a 2019
-Lojas Americanas 
Cargo: Auxiliar de Loja/ Contrato Temporário – Dezembro de 2019 
-Cafeteria Irmandade Santa Casa de Alegrete
Cargo: Estagiária - Atual','Gestão Financeira (em andamento), Curso de Assistente Administrativo (concluído), Curso de Informática Intermediária(concluído), Curso de Contabilidade e Finanças pela Universidade de Illinois (em andamento), curso de Assistente de Departamento Pessoal (em andamento), Curso de Contabilidade pelo Bradesco Escola Virtual(em andamento)',NULL,'Administrativa, Comercial, Estágio, Financeiro','https://drive.google.com/open?id=1WLvYxgN-L6JVuRfOASobpdDB3V_J6iXq',NULL,'Facebook',NULL,NULL,NULL,NULL,'Estágio','Habilidade de trabalhar em computadores com conhecimento nos pacotes offices. Dinâmica, pró ativa e comprometida. Estou terminando a CNH categoria "B".','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-09-26T21:57:00.000Z'::timestamptz),
  ('RAISSA FRANCIELI HAMMES','raissa.hammes@gmail.com',NULL,'55999503058','1995-06-19',30,'namorando',NULL,'Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1LkvJ5a3T2Lef-4SKS2vyt0a7Xr0GukVQ','Engenharia Civil','Pós-graduação Incompleta','Unijui',NULL,NULL,'Trabalho com projetos residenciais','Mestrado em Tecnologia dos Materiais',NULL,'Licenciamentos, Engenharia',NULL,NULL,'Facebook',NULL,NULL,NULL,NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-09-28T14:15:00.000Z'::timestamptz),
  ('Arthur Sessin da Rosa Amaral','arthursessin@hotmail.com',NULL,'51997837473','1998-05-27',27,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1KgDQQWYPUmCfqfJjt8oazHfw1xSsCbfO','Engenharia Civil','Ensino Superior Incompleto','Universidade Luterana do Brasil - ULBRA',NULL,NULL,'- Prefeitura Municipal de Santo Antônio da Patrulha (Secretaria Municipal do Trabalho e do Desenvolvimento Social)
Cargo: Coordenador do Setor de Apoio à Gestão
Período: 15/01/2015 - Atualmente
Atividade/informações: Comecei como estagiário, onde ao final do contrato fui efetivado como Assessor Especial(Cargo em comissão) e posteriormente segui como concursado.  Minhas principais atribuições atualmente são gerenciamento de recursos e a coordenação do Cadastro Único/Programa Bolsa Família.',NULL,NULL,'Licenciamentos, Novos Negócios, Engenharia','https://drive.google.com/open?id=1LK7QzpvPsbb13ik63my5_6ZpWb6XBj8n',NULL,'Indicação',NULL,NULL,NULL,'Ana Cristina Ramos Cardoso (Secretária Municipal do Trabalho e do Desenvolvimento Social - 2017 a 2020) - 51 997254243','Coordenador de Novos Negócios - Trainee','Possuo habilidade com gerenciamento de recursos e grande facilidade para aprendizado, fazendo com que possa ser útil em qualquer setor da empresa. Além disso, sou organizado com minhas atribuições, sempre buscando o melhor resultado.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-09-28T15:26:00.000Z'::timestamptz),
  ('Jordana Machado da Cunha','jordaanamachado@gmail.com',NULL,'51997622585','2001-02-05',25,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1jzy7EKTuKo0gMzKUmNUOLdzFjZZx4QPN','Gestão de Recursos Humanos','Ensino Superior Incompleto','Universidade do Vale do Rio dos Sinos',NULL,NULL,'Loja Hypnose 
Vendedora.
Inicio:05/2017 Final 08/2018
Atendimento ao público, caixa, estoque, reposição, organização das mercadorias e notas fiscais.

Enova Odontologia
Recepcionista geral.
Inicio:09/2019 Final:01/2020
Atendimento ao público, caixa, notas fiscais e agenda.

Secretaria Municipal de Santo Antônio da Patrulha 
Coordenadora de atendimento ao público.
2020/atualmente.
Principais atividades: Organização e verificação de escalas, folhas ponto, agendas emgeral, avaliações e entrevistas. Treinamento de iniciantes sobre sistemas,
atendimento ao público e desenvolvimento de trabalho em grupo.','Curso de Auxiliar Administrativo',NULL,'Administrativa, Comercial',NULL,NULL,'Instagram',NULL,NULL,NULL,'Enova Odontoloiga - Thiago 021 985580319
Loja Hypnose - Rose 051 999316938','Quero inscrever-me no banco de talentos da Young!','Bom desenvolvimento na área administrativa, com sistemas de informática, facilidade e habilidades no atendimento e comunicação com o público. Bom desempenho em organizar, treinar e incentivar a equipe. Cursando inglês a 7 meses.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-09-28T17:42:00.000Z'::timestamptz),
  ('Luiza Silveira da Rocha','luizasrocha@hotmail.com',NULL,'51999687349','1995-07-11',30,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=19e_-hNpO0E6c9icX3gl4PqysgfZ9oNoT','Engenharia Civil','Ensino Superior Incompleto','Unisinos',NULL,NULL,'1. Prefeitura Municipal de Santo Antônio da Patrulha, estagiária, inicio em março de 2014 e saída em agosto de 2015. Principais atividades: acompanhamento em aprovação de projetos, projetos em AutoCad e atendimento a clientes.
2. Espacio - Núcleo Criativo, escritório de Arquitetura e Engenharia em Santo Antônio da Patrulha, estagiária, inicio em agosto de 2016 e saída em julho de 2020. Principais atividades: graficação de projetos em AutoCad, acompanhamento em aprovação de projetos na prefeitura municipal, atendimento a clientes e serviços bancários.',NULL,NULL,'Novos Negócios','https://drive.google.com/open?id=18x16XAZvyLgrRApS6NFUIZX1SjThyCCF',NULL,'Instagram',NULL,NULL,NULL,NULL,'Coordenador de novos negócios',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-09-28T18:34:00.000Z'::timestamptz),
  ('Raiana Correia Colombo','raianacolombo@gmail.com',NULL,'51997404530','2002-04-20',23,'Solteiro(a)',NULL,'Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1dO7WsR-OfZr8UPmctl2Ty3gikrDHRIQC',NULL,'Ensino Médio Completo',NULL,NULL,NULL,'Procuradoria Geral do Município, Prefeitura Municipal de
Santo Antônio da Patrulha
— Estagiária
MAIO 2019 - DEZEMBRO 2019
Realização de atendimento aos cidadãos prestando as orientações
necessárias, protocolo de documentos, efetuamento de documentos
internos, ofícios; auxílio nas tarefas administrativas; arquivamento de
documentos, entrega e recebimento de documentos intersecretarias,
atendimento de telefone;

Loja Inverse, Santo Antônio da Patrulha
— Auxiliar
JANEIRO DE 2020 - FEVEREIRO DE 2020
Atendimento ao público, auxílio administrativo, venda de produtos,
publicidade nas mídias sociais;',NULL,NULL,'Administrativa, Comercial, Estágio, Marketing','https://drive.google.com/open?id=1uAUBGyKcuYFKXn85YLJe3cbxCsJxWIhB',NULL,'Indicação',NULL,NULL,NULL,NULL,'Estágio','Sou autodidata e estou estudando programação, francês, italiano e alemão. Participei de um projeto no começo do ano onde aprendi diagramação literária, além de ter tido o cargo de revisora e tradutora. Tenho muita facilidade em comunicação e organização, além de ser uma aprendiz rápida e dedicada. Já fiz trabalhos de marketing para projetos de lojas, marcas e da biblioteca Francisco J Lopes, que recebeu reconhecimento da assembleia legislativa. Fui palestrante e já tive participação em dois livros publicados.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-09-28T19:50:00.000Z'::timestamptz),
  ('Máximo Kauan da Silva Tronchoni','maximokauan@hotmail.com',NULL,'51999307016','1993-11-10',32,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1QAgSkgjPSJt-2ape7Z3Fi1r9-DBTKnyV','Engenharia Civil','Ensino Superior Completo','Universidade do Vale do Rio dos Sinos - Unisinos',NULL,NULL,'Empresa: Topcom - Topografia e Computação/Santo Antônio da Patrulha - RS
Período: Junho de 2013 à junho de 2014. 1 ano e 1 mês.
Estagiário
- Demarcação de lotes e loteamentos;
- Auxilio em levantamentos topográficos;
- Elaboração e atualização de mapas, plantas e desenhos técnicos.


Empresa: Bagergs – Banrisul Armazéns Gerais S.A./ Canoas - RS
Período: Abril de 2015 à outubro de 2016. 1 ano e 7 meses.
Estagiário
- Acompanhamento e elaboração de planilhas de orçamentos;
- Controle e acompanhamento de execução de obras;
- Conferência e controle de materiais;
- Realização de medições e mapeamento das atividades executadas em campo;
- Elaboração de relatórios de análise de custos;
- Auxilio no planejamento de projetos;
- Auxilio na prospecção de novas soluções técnicas para projetos.


Empresa: MRV Engenharia e Participações S.A./ Porto Alegre - RS
Período: Novembro de 2016 à abril de 2018. 1 ano e 6 meses.
Estagiário
- Acompanhamento do cronograma da obra;
- Controle de execução da obra;
- Medições e mapeamento das atividades executadas no canteiro;
- Detecção de patologia e falhas executivas.


No período de 2019 a 2020, trabalhei como autônomo, realizando alguns projetos, e acompanhando a execução de serviços.','Engenheiro Civil formado pela Universidade do Vale do Rio dos Sinos - UNISINOS, com experiência de 5 anos no ramo da Engenharia Civil, com atuação nas áreas construção civil, acompanhamento de obras, desenhos técnicos e projetos.',NULL,'Engenharia','https://drive.google.com/open?id=1kdQ-W4unojemr5ThC7Ea9JDGT4TSH13b',NULL,'Instagram',NULL,NULL,NULL,'Nome: Paulo Haucke
Contato: (51) 98477-1968
Engenheiro civil na Banrisul

Linkedin: https://www.linkedin.com/in/paulo-haucke-74b3aa73/','Vaga Coordenador de novos negócios','Possuo conhecimento em softwares voltados para engenharia e arquitetura, tais eles como: AutoCad, Sketchup.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-09-28T21:43:00.000Z'::timestamptz),
  ('João Pedro Viel Sebben','engsebben@gmail.com',NULL,'51997912414','1993-08-31',32,'Solteiro(a)',NULL,'Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1-FPD3PmRoZ_AYCZnxSYiAYpVK44roVwj','Engenharia Civil','Pós-graduação Completa','Uniritter',NULL,NULL,'• Tutor presencial – Graduação em Engenharia Civil – Anhanguera Porto Alegre/RS.
Tutoria presencial da graduação em Engenharia Civil - Bacharelado
semipresencial da Anhanguera - Polo Cavalhada, em Porto Alegre/RS.
Período de atuação: Desde 04/02/2019.

• Engenheiro Civil – JVS Engenharia
Realização de projetos complementares (fundações, estruturais, hidrossanitários,
elétricos em baixa tensão e de PPCI), bem como o gerenciamento de obras e a
elaboração de laudos técnicos. Além disso, temos forte atuação na gestão da
manutenção de condomínios em Porto Alegre/RS – como suporte técnico ao síndico.
Período de atuação: Desde 01/02/2017.

• Engenheiro Civil - Fiscal de Obras - Secretaria de Obras e Habitação do Rio Grande do Sul.
Fiscalização de obras públicas estaduais em Porto Alegre/RS (após processo licitatório), sendo estas edificações novas ou reformas, bem como a elaboração de elementos técnicos de caráter junto à 1ª CROP, os quais incluem projetos, orçamentos e memoriais descritivos de diversificados escopos.
Período de atuação: 21/02/2018 até 26/06/2020.

• Estagiário na Nex Group – Capa Engenharia.
Estagiário no empreendimento Life Park, cujas edificações são localizadas em
Canoas/RS. Nestas, foram realizadas atividades de supervisão de processos em canteiro de obras, além do controle de qualidade de procedimentos técnicos através da conferência de quatro torres desde as fases iniciais de fundações, assim auxiliando ao engenheiro residente nestes processos executivos e gerenciais de obra.
Período de atuação: 11/04/16 até 01/02/2017.

• Estagiário na GPinheiro Empreendimentos.
Atividades de supervisão e conferências em canteiro de obras para a execução de duas obras (Nilo Home Square e Sunset Hall). Recepção e auxilio na parte comercial para corretores de imóveis e visitas de clientes e moradores às unidades habitacionais autônomas.
Período de atuação: De 01/03/2015 até 01/12/2015.

• Estagiário na Execute Engenharia Incorporadora.
Setor de gerenciamento de projetos de condomínios Aspen Mountain – Gramado/RS e Ocean Side – Torres/RS. Elaboração de Manuais de Entrega e Manutenção de empreendimentos, acompanhamento de execução de obras, medições e auxílios na parte de orçamentos, abrangendo quantitativos e contato direto com fornecedores.
Período de atuação: 31/07/2013 até 19/12/2014.

• Estagiário na MRV Engenharia e Participações.
Execução da obra Porto Planalto, esta localizada em Porto Alegre/RS no bairro Itu-Sabará. Atividades diversas de canteiro de obras, gestão de qualidade para manutenção do IS0 9001 na obra em questão, equipe de check-list para entrega de apartamentos, acompanhamento técnico de concretagens e elaboração de medições dos empreiteiros.
Período de atuação: 01/08/2012 até 01/07/2013.

• Estagiário na SMAM – Porto Alegre.
Mapeamento de ruído da cidade de Porto Alegre/RS, detectando possíveis
insalubridades e solicitando, por meio da chefia, tratamentos acústicos quando estes forem aplicáveis.
Período de atuação: 01/06/2011 até 01/10/2011.','Especialização em Gestão de Projetos e Obras',NULL,'Arquitetura, Novos Negócios, Engenharia','https://drive.google.com/open?id=1T0NkGFbzJpvFfbc_rHkFG8vW2YamXkox',NULL,'Agência de Empregos',NULL,NULL,NULL,NULL,'Vaga Coordenador de novos negócios',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-09-28T22:30:00.000Z'::timestamptz),
  ('ABEVENUTO MAIA DO NASCIMENTO','abeveuto@hotmail.com',NULL,'84998069294','1988-03-11',37,'Solteiro(a)',NULL,'Sim','Parnamirim/rn','https://drive.google.com/uc?export=view&id=1yonNIX15QJB-umyFSCgB0F6h72rdxlQo','Engenharia Civil','Pós-graduação Completa','UNP',NULL,NULL,'	Janeiro/2020 – Maio/2020 – JP Oliveira Gomes Projetos e Arquitetura LTDA - EPP
Cargo: Gestor de Obras - Pessoa Jurídica 
Principais Atividades: Gestão da obra via varejo da rede de academias do Grupo Smart Fit; Gestão de cronograma; Suporte à área de projetos; Elaboração e acompanhamento da curva S do projeto; Elaboração de relatório semanal de obra; Condução das reuniões de alinhamento com o cliente e homologados; Garantir a padronização e qualidade da obra de acordo com padrões fornecidos; Segurança do trabalho; Análise e aprovação das medições e adicionais; Sinalização de incompatibilidades entre projetos e obras; Elaboração do Data Book etc.

	Abril/2018 – Dezembro/2019 – PROGEN – Projetos, Gerenciamento e Engenharia S.A. 
Cargo: Engenheiro Civil
Principais Atividades: Gerenciar e fiscalizar obras do Hospital Promater (Natal/RN) do grupo UHG/Amil; Elaboração, gerenciamento e acompanhamento do cronograma físico-financeiro das obras; Gerenciamento das OPEX’s e CAPEX’s da unidade; Suporte e apoio à área de arquitetura e engenharia; Elaborar relatórios gerenciais semanal/mensal de obra; Segurança do trabalho; Elaboração e conferência de medição; Vistoria e elaboração de relatório final de obra; Conferência do As Built entregue pela contratada etc.

	Setembro/2017 – Março/2018 – Empreend Construções e Engenharia  
Cargo: Engenheiro Civil
Principais Atividades:  Planejamento e gerenciamento de obras de academias de alto padrão do Grupo SelFit, sendo a construção/entrega em Recife/PE e outra em Maceió/AL; Acompanhamento e fiscalização de serviço (Locação, fundação, estrutura, alvenarias, instalações, impermeabilização, drenagem, paisagismo, ambientação, acabamentos internos e externos); Interpretação de projeto; Elaboração de orçamento; Contratações e medições de empresas terceirizadas; Gestão de resíduos; Treinamento e qualificação da equipe etc.

	Julho/2017 – Setembro/2017 – Metroll Gerenciamento de Projetos e Obras 
Cargo: Gestor de obras – Pessoa Jurídica
Principais Atividades: Gestão da obra via varejo da rede de academias do Grupo SelFit; Elaboração, gerenciamento e acompanhamento do cronograma da obra; Elaboração de relatório fotográfico para acompanhamento da evolução da obra; Recebimento e conferência dos materiais do cliente.

	Julho/2015 – Maio/2017 – FOL Engenharia
Cargo: Engenheiro Civil
Principais Atividades: Acompanhamento e fiscalização de serviço (Locação, fundação, estrutura, alvenarias, instalações, impermeabilização, paisagismo, acabamentos internos e externos) em obras de alto padrão; Interpretação de projeto; Implantação do sistema de gestão da qualidade; Controle de produtividade; Solicitação, programação e controle de consumo de materiais; Segurança do trabalho; Entrega da obra final ao cliente etc.
	Maio/2013 – Junho/2015 -  Cyrela Plano&Plano – Filial Natal-RN
Cargo: Engenheiro Civil
Principais Atividades: Gerenciamento e Planejamento da Assistência Técnica; Implantação de procedimentos e política da Assistência Técnica, elaboração de orçamentos; contratações e medições de empresas terceirizadas; processamento dos pagamentos com uso do software; Requisição e controle dos materiais/equipamentos.

	Março/2012 – Maio/2013 - Cyrela Plano&Plano – Filial Natal-RN
Cargo: Assistente de Engenharia 
Principais Atividades: Acompanhamento e fiscalização locação, fundação, estrutura, alvenarias, instalações, impermeabilização, paisagismo, ambientação, acabamentos internos e externos; Acompanhamento do cronograma da obra, qualidade e auditorias, elaboração de documentos e relatórios técnicos. 

	Março/2010 – Março/2012 - Cyrela Plano&Plano – Filial Natal-RN
Cargo: Estagiário de Engenharia Civil
Principais Atividades: Acompanhamento e fiscalização de serviço e cronograma da obra; detalhamento de projetos à quantificação; desenvolver, elaborar e revisar documentos da Qualidade; controle de concretagem (Concreto e Grouth); controle tecnológico; medições de produtividade e avanço dos projetos e auditoria interna.','	MBA Gestão de Projetos e Processos. IPOG. Conclusão em 2021.
	Bacharelado em Arquitetura e Urbanismo. Universidade Potiguar – UnP. Conclusão em 2021.
	Especialista em MBA Gerenciamento de Obras, Qualidade e Desempenho da Construção. IPOG. 2018.
	Pós-Graduado em Engenharia de Instalações Prediais. Universidade Potiguar – UnP. 2016.',NULL,'Arquitetura, Engenharia, Obras','https://drive.google.com/open?id=1-_RDJVz4Y1r3quWyxcuFtOvG2hO-pgkB',NULL,'Agência de Empregos',NULL,NULL,NULL,NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-09-28T22:33:00.000Z'::timestamptz),
  ('Isabelle Alves','ialves943@gmail.com',NULL,'71991488706','1995-10-05',30,'Solteiro(a)',NULL,'Sim','São Paulo','https://drive.google.com/uc?export=view&id=1z4WBPpLi8EG9thO-MPb4emyLGF-n2_md','Engenharia Civil','Ensino Superior Completo','Ucsal',NULL,NULL,'1) Constri: Trabalhei como Engenheira Civil, era responsável pelo acompanhamento, planejamento e execução das obras, trabalhei por 2 anos, nesse período executamos mais de 5000 m².
2) A5 Projetos: era estagiária na elaboração de projetos em concreto armado e metálica. Trabalhei por 9 meses.
3) SEC: era estagiária de obras, responsável por fazer levantamento de quantitativo, orçamento e acompanhamento de obras.','AutoCad, Excel, Revit, MS Project, Licitações e Contratos','CREA','Administrativa, Comercial, Engenharia','https://drive.google.com/open?id=1CDhmgs8FV1EndLvOFA-FJOzNN8ffs7sS',NULL,'Agência de Empregos',NULL,NULL,NULL,NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-09-28T23:07:00.000Z'::timestamptz),
  ('Bruno Miguel Dubovicki','blbengenhariaa@gmail.com',NULL,'11983208311','1995-05-25',30,'Casado(a)',NULL,'Sim','São Paulo','https://drive.google.com/uc?export=view&id=1M2jrP7VcRg5IsQPmCnpex-TayN1g0fR4','Engenharia Civil','Pós-graduação Incompleta','Universidade nove de julho',NULL,NULL,'Trabalhei em uma empresa de construção chamada Trisul.
Iniciei como estagiário, depois passei para analista de engenharia, era responsável pela produção do canteiro de obras como engenheiro de produção responsável','Pós Graduação em MBA de Gestão de pessoas, Liderança, Coaching',NULL,'Administrativa, Arquitetura, Comercial, Novos Negócios, Engenharia','https://drive.google.com/open?id=1sz5nOlNSqwfpqEHVEjbDkIxFLfnQzPDj',NULL,'Agência de Empregos',NULL,NULL,NULL,'Tenho um contato da construtora: Ivanilda miranda  tel: 996064307','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-09-28T23:20:00.000Z'::timestamptz),
  ('Sílvia Letícia Mesquita Bueno','buenosb@hotmail.com',NULL,'51997615444','1990-08-07',35,'Solteiro(a)',NULL,'Sim','Osório/RS','https://drive.google.com/uc?export=view&id=1VVr4nrkhjlu6nHwLkF_VwiJcgo6S_Z_0','Licenciatura em Letras Português e Inglês','Ensino Superior Incompleto','IFRS - Campus Osório',NULL,NULL,'Atuei na empresa Calçados Beira Rio em Osório, no período de março de 2014 até agosto de 2015. Nesta empresa, desenvolvi atividades como Auxiliar de RH, sendo responsável pela seleção e recrutamento de novos colaboradores, bem como o processo de treinamento e integração dos mesmos. Além de atuar nas demais rotinas administrativas como o cadastro dos novos colaboradores. 

Posterior a essa experiência, no ano de 2016, dei inicio a uma nova jornada na área administrativa, atuando com Telecom na empresa Viu Internet, também na cidade de Osório. Nesta empresa, atuei por quase três anos, desenvolvendo as atividades de rotinas administrativas no setor de compras e estoque. Além de ser responsável pela agenda de serviços de toda a equipe técnica. Minhas funções neste setor eram controlar a entrada e saída de equipamentos, solicitar novos materiais à equipe responsável, controlar a planilha de serviços e produtividade da equipe técnica, bem como contatar com clientes para comunicar o agendamento do serviço solicitado. Encerrei meu ciclo na empresa em janeiro de 2019 para atuar na minha área de formação. 

Desde então, obtive algumas passagens por escolas de ensino regular e privado, atuando como professora de Português e Inglês - níveis fundamental e médio -. No momento não possuo vínculo com nenhuma escola, e busco ingressar novamente no mercado de trabalho para desenvolver novas habilidades.','Sou graduanda no curso de Letras Português e Inglês - 6° semestre - no IFRS, tendo cursado um semestre de Psicologia na Facos. Sou apaixonada por pessoas e gosto de estudar as relações humanas, por isso optei por uma formação na área de ciências humanas. O estudo da linguagem e comunicação, ainda que atuantes fora do campo educacional, são de suma importância para o desenvolvimento humano.',NULL,'Administrativa, Estágio, Marketing, Engenharia','https://drive.google.com/open?id=1W9d1AigJenzZsCYPbM30jh7nD7fwohCn',NULL,'Instagram',NULL,NULL,NULL,NULL,'Quero inscrever-me no banco de talentos da Young!','Como mencionei anteriormente, optei por um curso na área de humanas porque sou apaixonada por pessoas e pelo comportamento humano e estudar linguagem me ajuda a entender melhor o nosso papel neste espaço chamado Terra. Gosto muito de praticar a leitura nas horas vagas e sempre que possível também me arrisco a escrever alguns textos reflexivos. Estes foram alguns motivos para eu ingressar na Licenciatura. Sou bastante interativa e adoro aprender. Acredito que saber ouvir é uma habilidade muito importante, ainda mais nos tempos atuais, mas ter espaço para manifestar ideias também é indispensável para a formação e construção do conhecimento. Apesar de ser mais introspectiva, possuo facilidade de relacionamento e boa comunicação. Além da minha formação acadêmica, fiz um curso básico de Inglês na Wizard há alguns anos e sempre que possível volto a estudar o idioma. Acho importante destacar aqui que tenho paixão por casas e espaços decorativos. Quando o li o anúncio da Young Empreendimentos no Instagram, logo pensei que me identificaria com o local.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-09-29T00:30:00.000Z'::timestamptz),
  ('Mario Sousa Coelho Junior','mariojuniorcoelho@gmail.com',NULL,'55996788021','1991-08-28',34,'Casado(a)',NULL,'Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1EVTjDHIzr59Uk_-WgQGPWi9cXG7kNWWb','Engenharia Civil','Pós-graduação Incompleta','Universidade Federal do Pampa',NULL,NULL,'Fev/2018 – Atualmente - MJC ENGENHARIA – Elaboração de Projetos,
Orçamentos e Acompanhamento / Fiscalização de Obras.
Jan/2017 – Jan/2018 - PREFEITURA MUNICIPAL DE CAMPO NOVO DO
PARECIS / MT – Coordenador de Projetos – Elaboração de Projetos, Orçamentos e Acompanhamento / Fiscalização de Obras.
Jun/2015 – Dez/2016 - PREFEITURA MUNICIPAL DE TANGARÁ DA SERRA / MT –
Assessor de Projetos e Convênios - Elaboração de Projetos, Orçamentos e Acompanhamento / Fiscalização de obras.','Sou Graduado em Engenharia Civil pela Universidade Federal do Pampa. Estou Cursando MBA em Projeto, Execução e Desempenho de Estruturas e Fundações pelo IPOG/MT. Cursando também Pós Graduação em Engenharia de Segurança do Trabalho pelo IMP/MT. Tenho diversos cursos, sendo eles: Avaliação de Imóveis com Inferência Estatística, E.I.V - Estudo de Impacto de Vizinhança, Planejamento e Controle de Obras com MS Project, Excel Básico e Avançado, Elaboração e Execução de Plano de Prevenção e Proteção contra Incêndio - PPCI - EAD.',NULL,'Administrativa, Comercial, Financeiro, Licenciamentos, Novos Negócios, Engenharia','https://drive.google.com/open?id=1HEiWYkevxs8EcsML2AGEyAX9EKYrqBNY',NULL,'Agência de Empregos',NULL,NULL,NULL,NULL,'Coordenador de Novos Negócios',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-09-30T16:22:00.000Z'::timestamptz),
  ('Marcelli Alves Gomes','marcellialves144@gmail.com',NULL,'980312623','2001-08-04',24,'Solteiro(a)',NULL,'Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1dUY0v6f-2qwxsPdM6JEIbTRbJgEqTD4z','Cursando Técnico em Enfermagem','Ensino Médio Completo','Unipacs',NULL,NULL,'EMPRESA: RR SHOES
CARGO: Logística – Auxiliar de estoque
FUNÇÕES EXERCIDAS: Executar a entrada e conferências de mercadorias da nota
fiscal sub processo de recebimento e conferência de materiais. Separar, organizar,
conferir e entregar pedido ao cliente.',NULL,NULL,'Administrativa, Estágio, Marketing','https://drive.google.com/open?id=19CfY5cZwXKA9o0qwcRm57CUVP-qroW4T',NULL,'Facebook',NULL,NULL,NULL,NULL,'Vaga para estágiario','Não tenho muitas experiências mas estou a procura de um cargo onde eu possa adquirir novos conhecimentos em áreas diferentes e ajudar com o crescimento da empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-09-30T18:16:00.000Z'::timestamptz),
  ('Lízabeth Lira','lizabethleslie.lira@gmail.com',NULL,'92995278519','1982-12-24',43,'Solteiro(a)',NULL,'Não','Manaus/am','https://drive.google.com/uc?export=view&id=1JFJUpewSKc1Ms5mkmD72ELUSSE-GzhEW','Arquitetura','Ensino Superior Completo','Fametro',NULL,NULL,'Passei por quase todos os estagios dentro da area de arquitetura. desde estagio à execução de obra. minha jornada começou em 2004 até os dias de hoje. sempre buscando novas oportunidades e aprendendo com elas. visto a camisa da empresa. tenho atenção no que executo e exigo o mesmo.','pós graduação em estruturas em andamento',NULL,'Arquitetura, Estágio','https://drive.google.com/open?id=1xMqe-oZJG4HIWbySYEkCPKNJnqSxWyif','https://drive.google.com/open?id=1DDFEHORWmtwNawi0dj2I0nrmAtpG1fva','WhatsApp',NULL,NULL,NULL,NULL,'Quero inscrever-me no banco de talentos da Young!','sou habilidosa com o AutoCad e Sketchup. tenho fluencia em inglês. leio, escrevo e falo bem. fiz alguns trabalhos vonluntarios do qual consta em CV. fui judoca na infancia mas parei por outros interesses. gosto de cozinhar, sou curiosa. me dedico no que gosto.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-09-30T22:38:00.000Z'::timestamptz),
  ('Luísa de Souza Oliveira','luisaoliveira122@gmail.com',NULL,'55999818741','2001-04-20',24,'Solteiro(a)',NULL,'Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1XKKe7eLtprlsPxibXD2EziT7Uu7UZMik',NULL,'Ensino Médio Completo','Demétrio Ribeiro',NULL,NULL,'Estou em busca da primeira oportunidade de emprego','Atendimento Comercial e Vendas, Emdime Centro de Formação
Operador de Caixa e Auxiliar Administrativo, Emdime Centro de Formação
Informática Básica Word, Emdime Centro de Formação
Inglês básico, Senac',NULL,'Administrativa, Comercial, Estágio, Licenciamentos, Novos Negócios, Engenharia','https://drive.google.com/open?id=15YUZ_2gKCgNB6obkHimE4Zt4_4Sdlqpm',NULL,'Facebook',NULL,NULL,NULL,NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-09-30T23:29:00.000Z'::timestamptz),
  ('Andréa Xavier Carvalho','andrea.xavierarq@gmail.com',NULL,'51999641988','1990-12-14',35,'Solteiro(a)',NULL,'Sim','Tramandaí/RS','https://drive.google.com/uc?export=view&id=1IHC4JMtZkrgNP3m_4CoBHR1CAiCifL4q','Arquitetura','Ensino Superior Completo','PUCRS',NULL,NULL,'Estagiário
Tribunal de Justiça do RS
Período Mai. de 2018 – set. de 2019
Duração1 ano 5 meses
Localidade :Porto Alegre
Setor de planejamento DINFRA. Contato com desembargadores, juízes e escrivãos das comarcas. Verificação e validação dos novos projetos que seriam realizados pelo setor de arquitetura. Orçamentação e contato com fornecedores.  
Estagiário de Arquitetura
Jalfim Eventos
Período nov. de 2016 – dez. de 2017
Duração1 ano 2 meses
Localidade :Porto Alegre
Auxiliar nas medições e projetos dos eventos tanto em 2d quanto em 3d.
Atendimento ao público, telefone e orçamento.
Estagiário
A e v Arquitetura
Período do empregoago. de 2012 – dez. de 2013
Duração1 ano 5 meses
LocalidadePorto Alegre
Auxiliar nos laudos periciais, orçamento, projetos e atendimento ao público.
Realizei vistorias nas casa onde iria passar a Av Tronco que ligaria para os jogos da copa. Realizei esse trabalho indo em diversas casas e realizando os cálculos de quanto valiam as casas. 
Aproveitei toda a minha faculdade para fazer estágios ainda não trabalhei nível CLT, com todos esses estágios adquiri muita autonomia no trabalho que me era designado.','Curso de Inglês  - Intermediário Acele','Possuo certificação no curso de Autocad/ Vray/ Inglês','Arquitetura','https://drive.google.com/open?id=1au0sPEabKBPKhqoR4xEGAuPftrNT6kP3','https://drive.google.com/open?id=1zKNVHzfa-G8Qn7XQ8PdtYrhj_z7gKCQG, https://drive.google.com/open?id=1YqvMyvgVdQdxDwMku8I3RzExN4C-j4rm','Agência de Empregos',NULL,NULL,NULL,NULL,'Vaga Coordenador de novos negócios.','Me chamo Andréa sou formada em arquitetura pela PUCRS, tenho 29 anos, com experiência em  projetos, interiores, levantamentos e orçamentos. Minha última experiência foi no setor de planejamento do Tribunal de Justiça do Rio Grande do Sul como estagiária e ganhei total autonomia para verificar se os projetos e reformas eram viáveis nas comarcas de todo o Rio Grande do Sul, além de manter uma comunicação direta com juízes e assessores.
Por fim meu último projeto pelo TJRS foi o estudo da fachada, piso e todas as patologias encontradas no Palácio da Justiça. Trabalhei com laudos, perícias e avaliação de imóveis o qual me fez aprender muito e pude trabalhar  nas avaliações dos imóveis na época da Copa do mundo em parceria com a prefeitura de Porto Alegre, para as mudanças de vias que estavam sendo realizadas. 
Possuo CNH B, disponibilidade total para  viagens e CAU ativo.
Seria legal se pudéssemos conversar, estou disponível para início imediato, possuo  todos requisitos para a vaga. Tenho conhecimento técnico em Autocad, Sketchup, Vray, Photoshop, Illustrator e Lumion, além da experiência com fornecedores e orçamento.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-01T00:49:00.000Z'::timestamptz),
  ('Renata Ferreira da Silva','re.preta2507@gmail.com',NULL,'51995090524','1991-07-25',34,'União Estável',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Pu1_kXGHN0zeRIaZx3GHUbSOB_jqwa5p','Nenhuma','Ensino Médio Completo','Gragoria de Mendonça',NULL,NULL,'Assistente de Vendas; auxiliar administrativo; operadora de caixa; manicure.',NULL,NULL,'Administrativa, Comercial, Marketing',NULL,NULL,'Facebook',NULL,NULL,NULL,NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-01T02:54:00.000Z'::timestamptz),
  ('Everson Batista da Silva','eversonbats@hotmail.com',NULL,'48996080270','1981-03-04',44,'Casado(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1l0XuwZS6KCbXYp-TpMIA57AXWjK_NXv8','Arquitetura','Ensino Superior Completo','ULBRA',NULL,NULL,'Hotel Ceci - Capão da Canoa/RS                                                 Função: Sócio Gerente
Período: 10/2011 à 31/07/2018
Atividades: Gerente geral, atendimento a clientes, check-in e check-out, controle de reservas inclusive no site Booking.com Extranet, orçamentos, compras, pagamentos, atendimento a fornecedores, controle de estoque, controle de funcionários e controle financeiro geral.
 
BR Consultoria e Serviços Ltda. - São José/SC           Função: Encarregado Nível III - Fiscal e RH
Período: 06/08/2013 à 30/06/2014                         
Atividades: Organização da rotina do Departamento Pessoal e informações para a folha de pagamento, emissão on line de Notas Fiscais, fiscalização nos postos de trabalho para acompanhar presença e devidos serviços de portaria, limpeza e zeladoria em condomínios da Grande Florianópolis. 
 
DiGesso & Decorações – Capão da Canoa/RS       Função: Projetista Vendedor
Período: 03/11/2008 à 14/07/2011                 
Atividades: Desenvolvimento de projetos de gesso decorado para diversos ambientes residenciais e comerciais; demonstração de forro e paredes de gesso convencional e acartonado (Dry wall); orçamentos; cálculo de material; cálculo de mão-de-obra e acompanhamento da execução da obra de gesso. 

Outras experiências: Departamento pessoal por 5 anos - ESTECOPAL e Kayser Contabilidade dentro da Young, ambas em Santo Antônio da Patrulha entre os anos de 1999 e 2004.',NULL,'Diploma de formação superior Arquiteto e Urbanista','Administrativa, Arquitetura, Novos Negócios, Engenharia','https://drive.google.com/open?id=1vakTWeYAG3bBsgvtbWU5X77ZH_bYfJev',NULL,'Agência de Empregos',NULL,NULL,NULL,'Young - Carlos Tebaldi / Valter e/ou Marilaine da Kayser Contabilidade','Quero inscrever-me no banco de talentos da Young!','Trabalho com softwares Auto Cad, Skechup, Promob,  pacote Office, programa de Folha de Pagamento.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-01T16:00:00.000Z'::timestamptz),
  ('Valesca Quintana','qvalesca@gmail.com',NULL,'55999859998','1994-02-06',32,'Solteiro(a)',NULL,'Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=15k479_TonSJjXsUjSOiBZuc-ng_vA2ud',NULL,'Ensino Superior Incompleto','Unipampa Campus Alegrete',NULL,NULL,'Esta seria minha primeira experiência profissional.','Cursei Engenharia Civil de 2016 a 2018, trancando a matricula no mesmo ano.',NULL,'Comercial','https://drive.google.com/open?id=1QOLkelaWtCksB4EYSZmdD6zPZDnLKgg0',NULL,'Instagram',NULL,NULL,NULL,NULL,'Quero inscrever-me no banco de talentos da Young!','Estou a procura da minha primeira experiência profissional, com muito entusiasmado e força de vontade para por em prática tanto o que sei, quanto para aprender sempre o que me for disposto. Gostaria muito de uma oportunidade. 
Att, Valesca Quintana.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-01T19:33:00.000Z'::timestamptz),
  ('Joyce Tomaz de Assis','joyce.tomaz.assis@gmail.com',NULL,'55999668085','1992-07-16',33,'Casado(a)',NULL,'Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=19GGDTDlOwexHi28Eg6HOSzgWcb7iKLNA','Engenharia Civil','Ensino Superior Incompleto','Universidade Federal do Pampa',NULL,NULL,'1) Esco GD
2) Estagiária de Engenharia
3) 06/06/2017, em andamento
4) Desenvolvimento de projetos civis, elétricos e de geração fotovoltaica; Treinamento de novo integrantes da equipe; levantamentos de campo.',NULL,NULL,'Arquitetura, Comercial, Estágio, Licenciamentos, Novos Negócios, Engenharia','https://drive.google.com/open?id=1ETWI3R-Rq01IuJiEsSNeMjd5e8wkz-M-',NULL,'Facebook',NULL,NULL,NULL,NULL,'Coordenador de novos negócios','Idiomas: Inglês e espanhol básico
Softwares: Revit, Sketchup, Twinmotion, Autocad, TQS, Eberick','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-02T13:43:00.000Z'::timestamptz),
  ('Amanda Padilha dos Santos','amandapadsantos@gmail.com',NULL,'997337545','1995-06-28',30,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1N80KRCYj4Bu1t0bh2BsMEgNd3uT2jDaY',NULL,'Ensino Médio Completo',NULL,NULL,NULL,'2011/2012 - Posto de Saúde Central 
CARGO: Auxiliar de Farmácia 
PRINCIPAIS ATIVIDADES: Atendimento ao público, auxiliar no setor de compras, conferência de mercadorias, etc...

Fevereiro/2014-Agosto/2014 - Farmácia Farmais 
CARGO: Operadora de caixa
PRINCIPAIS ATIVIDADES: Operação ao caixa e atendimento ao público

Fevereiro/2016-Outubro/2016  - Posto de Saúde Central 
CARGO: Recepcionista 
PRINCIPAIS ATIVIDADES: Marcações e atendimento ao público

Janeiro/2017- ATUAL - Prefeitura Municipal de Santo Antônio da Patrulha
CARGO: Coordenadora no setor de Fiscalização de Posturas na Secretária Geral de Governo, Planejamento e Gestão.
PRINCIPAIS ATIVIDADES: Auxilio no setor responsável, auxiliar no setor de engenharia, como também na área da recepção, atendimento ao público.',NULL,NULL,'Administrativa, Financeiro, Novos Negócios',NULL,NULL,'Indicação',NULL,NULL,NULL,'Ferúlio Tedesco 999615737 Ex Secretário de Planejamento
Natália Costa 997684835 Atual Secretária de Planejamento','Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa comunicativa, que ama trabalho voluntário, atualmente ajudo em apenas em uma causa da pequena Ísis que tem a doença AME. Tenho ajuda dos meus colegas de serviço que vieram junto comigo nessa causa. Amo festa, e por isso eu sou a organizadora de qualquer evento/aniversário que temos. Além de gostar muito disso, acho que toda empresa tem que haver essa interação com os colegas/chefes, isso torna a convivência muito melhor. Também tenho cede em aprender coisas novas. Me dedico a cada vez mais. Tenho muita vontade de fazer curso superior e também aulas de inglês, e essa é minha nova meta. Quero ter cada vez mais conhecimentos e experiências novas. Nunca é de mais!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-02T14:21:00.000Z'::timestamptz),
  ('Marcelo Rossi Andrade','marcelorossiandrade@gmail.com',NULL,'54999131799','1991-06-18',34,'Solteiro(a)',NULL,'Sim','Canela/rs','https://drive.google.com/uc?export=view&id=1ABEbgSRZb8GLXwQuWhQyHIUxYGGocDJe','Arquitetura','Ensino Superior Completo','Unisinos',NULL,NULL,'Arquiteto
Autônomo e particular - Canela, RS
Junho 2018 até a data atual
Produção de projetos arquitetônicos residenciais e comerciais
Parceria com outros escritórios para desenvolvimento da parte 3D dos mesmos

Estagiário
Upper Design - Porto Alegre, RS
Setembro 2016 a Maio 2017
Auxilio no desenvolvimento de layout''s arquitetônicos focados na área comercial (2D e 3D) e desenvolvimento de projetos executivos

Estagiário

Adriana Guimaraes Design Studio - Canela-Rs
Nov. de 2014 – dez. de 2015
Auxiliar na produção de imagens foto realistas (renders) para projetos arquitetônicos

Estagiário
TRF4 - Porto Alegre, RS
Novembro 2011 a Agosto 2013
Auxiliar na graficação (2D e 3D) no setor de arquitetura do TRF','Cursos capacitativos para operar os programas computacionais: Autocad, Sketchup, Revit, Photoshop. Intercambio Universidade Iberoamericana 2016',NULL,'Arquitetura','https://drive.google.com/open?id=1-DfzCK8osU-Nck0ZFzdVCS69RDKrPUpf','https://drive.google.com/open?id=1G52XqFk1bN3P4Bo90lHOLXmNPSyPDTgE','Agência de Empregos',NULL,NULL,NULL,'Elisa Bicca ( divisão de arquiteturaTRF 4) (51) 3213.3000 ou Adriana Guimarães (Adriana Guimarães Design Studio) (54) 99961 8228','Coordenador de novos negócios','Inglês e Espanhol Avançado, tenho facilidade para aprender novos programas computacionais e metodologias organizacionais.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-02T17:51:00.000Z'::timestamptz),
  ('Carlos Eduardo Alvarez','edualvarez277@gmail.com',NULL,'985512195','1978-04-07',47,'Casado(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Cev2npAp_8fJbYBgmqOqw-_0BpZPVSet','Tecnologia em Recursos Humanos','Ensino Superior Completo','Facos (OSÓRIO)',NULL,NULL,'Be - Happy - Entretenimento - Porto Alegre

•	Designava tarefas aos meus subordinados, instruindo-os;
•	Providenciava treinamentos para a minha equipe quando necessário.
•	Contato direto com os gerentes informando-os sobre os resultados;
•	Administrava problemas operacionais e definia soluções para os mesmos;
•	Visitava os postos de trabalho.
•	Relatórios operacionais constantes de minha responsabilidade.
•	Proporcionava a integração dos profissionais recém-contratados.
•	Acompanhava o processo de adaptação dos recém-contratados.
•	Administrava problemas operacionais no posto e tomava as providencias necessária.
•	Reunião periódica com pessoal de minha responsabilidade
•	Avaliações de desempenho comunicando os pontos positivos a serem mantidos e os negativos a serem melhorados.
•	Vendas de serviços da empresa.
Como geral nas empresas nas quais trabalhei conquistei experiência na área de atendimento ao público, cadastro de novos colaboradores, recrutamento, integração, e treinamento de equipe. Atuando também, nas vendas de serviços e coordenação chefia e gestão de equipes.','Informática básica 
Técnico em meio Ambiente (em andamento)',NULL,'Administrativa',NULL,NULL,'Agência de Empregos',NULL,NULL,NULL,NULL,'Quero inscrever-me no banco de talentos da Young!','Trabalhei algum tempo na área de empresas de segurança, entretanto estou a procura de novos desafios experiencias novas estou sempre estudando em busca de mais conhecimento e crescimento pessoal e profissional sou uma pessoa organizada e muito realista com minhas metas, pois faço questão de cumpri-las e se possível superá-las.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-02T21:07:00.000Z'::timestamptz),
  ('Magyelle Costa Gonzaga','magyellecosta@hotmail.com',NULL,'9895144440','1994-01-31',32,'Solteiro(a)',NULL,'Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1TOofPkX-8fBmtFMzgWwhZNEroczfv3rR','Arquitetura','Ensino Superior Completo','Undb',NULL,NULL,'01) GDR Construções 
02) Coordenadora de projetos
03) 06/04/2016 e 06/02/2020
04) Trabalhei na legalização de empreendimentos e financiamentos Junto a CEF, organização de processos junto a prefeitura e demais órgãos
Na elaboração de memoriais de incorporação, minutas, preenchimento da NBR 12.721,etc
Acompanhamento técnico durante a construção de uma UBS, no programa minha casa minha vida. Atendimento ao cliente, rotina administrativa, controle de planilhas, etc.','Sou formada em Designer de Interiores e Eletrotécnica, sendo tecnologos',NULL,'Administrativa, Arquitetura, Comercial, Licenciamentos, Novos Negócios, Engenharia','https://drive.google.com/open?id=1-c9iXYQZ16DWLdw7rIlXPUhj6v4_8ihi',NULL,'Google',NULL,NULL,NULL,NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-03T11:39:00.000Z'::timestamptz),
  ('David Castilho Romera','davidromera@bol.com.br',NULL,'14998076444','1985-04-13',40,'Casado(a)',NULL,'Sim','Bauru/sp','https://drive.google.com/uc?export=view&id=1V4Ole8Q0Va2ibkI6bkcBDy-pHeys07GZ','Engenharia Civil','Ensino Superior Completo','Unip Universidade Paulista',NULL,NULL,'Experiência
ENGENHEIRO CIVIL | AIELLO URBANISMO LTDA | DE 05/2003 ATÉ 07/2016
Infraestrutura de loteamentos (terraplenagem, drenagem, água, esgoto, guias, sarjetas, pavimentação asfáltica, rede elétrica) | Construções condominiais (portaria, academia, gourmeteria, salão de festas, quadras esportivas, piscina, sauna e muro de blocos | Obras especiais (emissários, E.E.E., adutoras, poços, reservatórios, pequenas barragens, lagos, travessias com aduelas, travessias método não destrutivo, drenos área alagada e paisagismo) | Construções comerciais (lojas, clinicas, galpões e galerias) | Projetos (urbanísticos, incorporação, estudos de viabilidade e GRAPROHAB) | Coordenação (medições de empreiteiros, fiscalização de órgãos públicos, equipe de projetos, aprovações e cronogramas) | Implantação de Sistema ERP (orçamento de obras, compras e financeiro) | Manejo de Softwares AutoCAD, Project, Eberik, Quality System, Núcleos, Fluxos, Solum, Volare e GeoOffice.
ENGENHEIRO CIVIL | CAETANO – CMR4 ENGENHARIA E COMÉRCIO LTDA | DE 04/2017 ATÉ 06/2019
· Plano de viabilidade financeira | Realização e participação de reuniões técnicas | Conferência de medições físicas e financeiras (previsto x realizado) | Acompanhamento de obra | Monitoramento e aplicação das normas de Segurança no Trabalho, Meio Ambiente e Sistema de Gestão da Qualidade, ISO 9001:2015, PBQP-H, Metas Gerenciais | Comunicação com órgãos públicos, parcerias, clientes e fornecedores | Gerenciamento de projetos executivos contratados e consultoria técnica | Acompanhamento de Vendas e MKT | Infraestrutura de loteamentos | Construções condominiais | Manejo de Softwares AutoCAD, Sienge e Stratec.
ENGENHEIRO CIVIL | FCON – CINTRA NEVES ENGENHARIA E CONSTRUÇÕES LTDA | DE 07/2019 ATÉ -
· Engenheiro Residente em edificações de loteamentos (Portaria, Adm, Convívio, Clube)| Orçamento e visitas técnicas de fechamento de contratos | Realização e participação de reuniões técnicas | Realização de medições físicas e financeiras (previsto x realizado) | Acompanhamento de obra | Monitoramento e aplicação das normas de Segurança no Trabalho, Meio Ambiente | Gestor de infraestrutura, terraplanagem, pavimentação asfáltica e edificações | Liderar equipe, cuidar de frota, carros e maquinas pesadas | Gerenciar a área administrativa de obras, recebimento de mercadorias, suprimentos e documentos diversos |.','Administração de Empresas','CREA','Licenciamentos, Novos Negócios, Engenharia','https://drive.google.com/open?id=1KYrAh8Q2sqc85iWwPKPlr2kKFPVju_wu','https://drive.google.com/open?id=18VbGKu9UFLEna_N4CFUeKM_0qxkdLw5M','Agência de Empregos',NULL,NULL,NULL,NULL,'Novos Negocios/Engenharia',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-03T15:01:00.000Z'::timestamptz),
  ('Thalysson Pacheco','thalysson.arq@gmail.com',NULL,'69992277648','1997-04-23',28,'Solteiro(a)',NULL,'Sim','Cacoal/ro','https://drive.google.com/uc?export=view&id=1XCjO-KBQX6c2p8L5M0tslIfirxhOfv_b','Arquitetura','Pós-graduação Incompleta','UNEMAT - Universidade do Estado de Mato Grosso',NULL,NULL,'1 - Filos E. Junior de Arquitetura e Urbanismo
Projetista - de Outubro/2017 a Dezembro/2019
Tive a oportunidade de participar a fundação da Empresa Júnior de Arquitetura da UNEMAT, lá passei por diversos cargos de gestão além de atuar diretamente com o desenvolvimento de projetos. A empresa tinha como foco atender a população carente através da Assistência Técnica.

2 - Maquete Engenharia
Estagio - de Julho/2019 a Outubro/2019
Estagio desenvolvido para cumprir com a carga horaria do curso de graduação. La tive a oportunidade de participar da concepção e desenvolvimento de projetos além de acompanhar obras sob a tutela do escritório.

3 - Ramalho Engenharia
Projetista Civil - de Fevereiro/2014 a Fevereiro/2015
Fiz parte da equipe de projetos do escritório onde trabalhava diretamente com o desenvolvimento de projetos de todos os tipos, atuava também no desenvolvimentos de orçamentos e vistoria de obras.','Arquiteto e Urbanista graduado pela Universidade do Estado de Mato Grosso (UNEMAT), Designer em Bioconstrução pela UNIPERMACULTURA, Tec. em Edificações pelo SENAI e atualmente pós-graduando em Inteligência e Digitalização na Construção Civil pela IPOG. Sou um entusiasta das soluções arquitetônicas eficientes e sustentáveis.',NULL,'Administrativa, Arquitetura, Estágio, Novos Negócios, Engenharia','https://drive.google.com/open?id=1kImjLVvyOsCX-Hr0FOzhFK1LhZVw7nNX','https://drive.google.com/open?id=1jlwCjcfOlFATOjV5C2sd7wQiBGBcDhAN','Agência de Empregos',NULL,NULL,NULL,NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-03T20:25:00.000Z'::timestamptz),
  ('Juliane Lorscheiter','juliane.lorscheiter@gmail.com',NULL,'51982939163','1997-02-04',29,'Solteiro(a)',NULL,'Não','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=13e6_I5XMhEEBXFOSS10qFsPbP6oP_wTL','Arquitetura','Pós-graduação Incompleta','Unasp, São Paulo',NULL,NULL,'1º -
1) Associação Central Sul-Riograndense 
2) Atuo na área de Marketing e Mídias Sociais 
3) 12/08/2019 - atual 
4) Gerenciamento e controle das redes sociais, produção de conteúdo e engajamento; análise das preferências e comportamentos do consumidor, combinada com as tendências do mercado e dados históricos, a fim de ajustar e melhorar campanhas; instrução da equipe sobre estratégias de tratamento de clientes difíceis e situações desafiadoras.
2º -
1) Subprefeitura de São Paulo 
2) Estágio em Arquitetura e Urbanismo 
3) 01/2018 - 07/2018 
4) Desenvolvimentos de projetos de "minha casa, minha vida"; interação contínua com arquiteto servidor público, a fim de planejar e concluir projetos especiais de baixo custo; projetos de mobiliários urbanos.
3º -
1) Flex Relacionamentos 
2) Auditor de Qualidade 
3) 03/2017 - 11/2017 
4) Desenvolvimento, implementação e aprimoramento das metas de funcionários e políticas operacionais, a fim de promover a produtividade e fortalecer o desempenho da equipe; suporte à liderança sênior, preparando relatórios mensais a fim de aumentar a precisão do banco de dados; realização de auditorias nas áreas operacionais e financeiras a fim de verificar a conformidade.','Atualmente faço Pós Graduação em Design de Interiores pela universidade Uniritter. Sou graduada em Arquitetura e Urbanismo. Já fiz vários cursos de softwares que usamos na área, como: Sketchup, AutoCad, Revit, Lumion, V-ray, Promob, Photshop, Illustrator, Indesign, entre outros.','Participei de um intercâmbio para Inglaterra, onde participei de um curso de inglês. Fiz cursos dos softwares: Sketchup, AutoCAD, Revit, Lumion, V-ray, Promob, Photoshop, Illustrator, entre outros. Também participei de um curso técnico sobre Design de Interiores.','Administrativa, Arquitetura, Financeiro, Licenciamentos, Marketing, Novos Negócios, Engenharia, Design De Interiores','https://drive.google.com/open?id=1NIGftiL9ENSscuBk6xYu3xRGzFor-4Wd',NULL,'Instagram',NULL,NULL,NULL,NULL,'Coordenador de Novos Negócios','Arquiteta graduada, Pós Graduanda em Design de Interiores, e uma eterna aprendiz. 

Sou uma profissional comprometida, com personalidade energética e criativa. Busquei conciliar meu estilo de vida com o meu trabalho. Com originalidade e dedicação, busco projetar espaços e criar ambientes com identidade, conforto e funcionalidade de acordo com as necessidades de cada indivíduo. Focada em entregar um bom resultado e proporcionar uma experiência positiva.

Possuo experiência com atendimento ao cliente, criação de conteúdo e intensa vivência com modelagens 3D e renderizações. Possuo amplo conhecimento em arquitetura de interiores, desenvolvimento de projetos residenciais e corporativos, desde a etapa criativa até a entrega final da obra. Experiência em implantação, desenho, leitura e análise de projetos em obras de arquitetura, interesse genuíno em comunicação digital. 

Amo viajar e conhecer novos lugares, por isso tenho disponibilidade total para mudança e viagens!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-04T13:19:00.000Z'::timestamptz),
  ('Ingrid Angelo Vidigal','ingridvidiga@gmail.com',NULL,'55991033641','1987-06-30',38,'Solteiro(a)',NULL,'Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1yqnnyKAVXmYlsQ3qMupSU-MYYx1ziIwR','Engenharia Civil','Ensino Superior Incompleto','Universidade Federal do Pampa',NULL,NULL,'Prefeitura Municipal de Alegrete | Secretaria de Planejamento | Setor de Arquitetura e Engenharia 
Estagiária de Engenharia Civil | de fev. 2019 a ago. 2020
- Auxílio em desenhos gerais em AutoCAD e orçamentos padrão CEF;
- Orçamentos gerais no Excel;
- Fiscalização e acompanhamento de obras;
- Confecção de documentos, memoriais e relatórios;
- Elaboração de projetos de pavimentação urbana compostos por: plantas de micro e macrodrenagem urbana, situação, localização, mapa DMT, projeto planimétrico e altimétrico, projetos de pavimentação, de calçadas e acessibilidade, sinalização horizontal e vertical, memorial descritivo e planilha orçamentária padrão CEF, e;
- Auxílio em qualquer outra atividade burocrática pertinente ao setor.','|Cursando|
- Inglês pelo CNA GO (iniciante, básico e pré-intermediário)
- Treinamento de Yellow Belt em Lean Seis Sigma pela | Voitto - Escola de Gestão

|Concluído|
- Curso de Fiscalização de Projetos e Obras de Engenharia | EV:Virtual de Governo | 40h
- Treinamento Admissional | Integração de Segurança NR18 | Proteger: Clínica de Medicina e Segurança do Trabalho | 6h
- Oficina: Utilização do Software Revit em Projetos de Engenharia | Universidade Federal do Pampa| Alegrete/RS | 34h
- Minicurso de Lançamento de Estruturas Através do Software Eberick | Universidade Federal do Pampa, campus Alegrete | 12h',NULL,'Arquitetura, Estágio, Licenciamentos, Novos Negócios, Engenharia','https://drive.google.com/open?id=1p9oNFFb-YNtNzHxoKSvjhFTUUF8cG7PA',NULL,'Agência de Empregos',NULL,NULL,NULL,NULL,'Quero inscrever-me no banco de talentos da Young!','Sou ex-integrante do Programa de Educação Tutorial PET CTC Engenharias, onde iniciei como voluntária e um tempo depois me tornei bolsista. No grupo, organizei e participei de diversas atividades culturais, de ensino e de extensão. Em paralelo, contribuí em pesquisa relacionada ao efeito da anisotropia do concreto, tema 
que posteriormente se tornou objeto de meu TCC. Ainda, participei de projeto de produção de material audiovisual de ensaios vistos na disciplina de Materiais de Construção Civil. Foram produzidos vídeos e passo a passos simplificados de ensaios normatizados pela ABNT.  Atualmente sou aluna do curso Técnico em Edificações na Escola Politécnica Brasileira. Apresento ainda, experiência profissional por meio de estágio na área de engenharia civil, atuando no auxílio à produção de projetos e no acompanhamento e fiscalização de obras.  Focada no crescimento profissional e pessoal, atualmente, estou em busca de uma oportunidade de trabalho. Sou comprometida, organizada, possuo espírito colaborativo e muita vontade de aprender e agregar valor a empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-04T19:09:00.000Z'::timestamptz),
  ('Letícia Capoani','leticiacapoani@gmail.com',NULL,'49999540677','1997-11-23',28,'Solteiro(a)',NULL,'Sim','Chapecó / Sc','https://drive.google.com/uc?export=view&id=1hq9GGdEYoVQDUVMzXWG4F3cakhmFegJn','Arquitetura','Ensino Superior Completo','Universidade Comunitária da Região de Chapecó - Unochapeco',NULL,NULL,'Empresa: Caic Construtora LTDA 
Cargo: Projetista
Período: Jan 2019 - Mai 2020
Atividades desenvolvidas: Desenvolvimento de projetos arquitetônicos e complementares de obras residenciais e industriais. Elaboração de maquete eletrônica. Cotações e compra de materiais para obras. Auxílio em atividades administrativas.

Empresa: Prefeitura Municipal de Chapecó 
Cargo: Estagiária 
Período: Jan 2018 - Jan 2019 
Atividades desenvolvidas: Levantamento fotográfico, elaboração de laudo de
acessibilidade. Levantamento arquitetônico com medição in loco, realizando
atividades de identificação de barreiras físicas, comunicacionais e atitudinais que inviabilizam acessibilidade para todos os usuários da instituição de ensino. Realização de projeto de adaptação com elaboração de: planta de reforma, planta executiva e detalhamentos.

Empresa: Tecnoplan Engenharia LTDA 
Cargo: Estágio Supervisionado 
Período: Ago 2019 - Dez 2019 (Carga Horária 200 horas)
Atividades desenvolvidas: Acompanhamento da execução de uma residência
multifamiliar.

Empresa: Universidade Comunitária da Região de Chapecó - Unochapeco 
Cargo: Estagiária Voluntária 
Período: Jun 2017 - Dez 2017 
Atividades desenvolvidas: Projeto de pesquisa em análise bioclimática das residências de baixa renda no Loteamento Expoente em Chapecó – SC.',NULL,NULL,'Arquitetura, Engenharia','https://drive.google.com/open?id=16fAfMXcN5jWDXNILAgHICAQYcPX_kOUF','https://drive.google.com/open?id=13K1DD02Z8IwOM23_XGRG_6nS-T48VlzG','Facebook',NULL,NULL,NULL,NULL,'Quero inscrever-me no banco de talentos da Young!','Olá! Me chamo Letícia Capoani, tenho 22 anos e sou Arquiteta e Urbanista formada pela Universidade Comunitária da Região de Chapecó - Unochapecó.
Possuo conhecimento na elaboração de projetos arquitetônicos e interiores, projetos de acessibilidade, projetos complementares, detalhamentos e memoriais descritivos, em obras residenciais e comerciais. Além disso, possuo experiência na execução de obras residenciais.
Tenho disponibilidade para viagens. 
Possuo conhecimento com os seguintes softwares: AutoCad; Revit; Lumion; Pacote Office.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-05T12:31:00.000Z'::timestamptz),
  ('David Castilho Romera','davidromera@bol.com.br',NULL,'14998076444','1985-04-13',40,'Casado(a)',NULL,'Sim','Bauru/sp','https://drive.google.com/uc?export=view&id=1D6b26LrBGRPCVGiiEpAVF6Ny8_GM67jy','Engenharia Civil','Pós-graduação Incompleta','UNIP Universidade Paulista',NULL,NULL,'1) FCon Engenharia 2) Engenheiro Civil 3) Inicio 01/07/2019 Fim - 4) Obras Residenciais, Industriais e Infra de Loteamentos','Administração de Empresas','CREA | ISO 9001:2015 | ERP TOTVS','Licenciamentos, Novos Negócios, Engenharia','https://drive.google.com/open?id=1_A65NYoNTvYjTcDbzoVVdLfc7xzLaYpd',NULL,'Agência de Empregos',NULL,NULL,NULL,'Marcelo Granato (14) 98125-7567','Quero inscrever-me no banco de talentos da Young!','https://br.linkedin.com/in/davidcastilhoromera','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-05T22:24:00.000Z'::timestamptz),
  ('Artur Silva de Moraes','yuznoriaki@gmail.com',NULL,'51998567561','1999-07-28',26,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=13fLIO3aTnSYvlHQNE7XHSHV5eLwLFSjS',NULL,'Ensino Médio Completo','Colégio Santa Teresinha',NULL,NULL,'1) Pedreira Taimbé; 2) Apontador; 3) mar/2017 - set/2018; 4) Organizar e emitir notas fiscais e auxiliar em medidas administrativas.

1) Supermercado Gomes; 2) Jovem Aprendiz; 3) mar/2018 - set/2018; 4) Auxiliar os funcionários de todos os setores.','Formado em informática, design gráfico e hardware pela Unialcance e curso de Comércio e Varejo pelo CIEE.',NULL,'Administrativa, Arquitetura, Comercial, Novos Negócios',NULL,NULL,'Instagram',NULL,NULL,NULL,NULL,'Quero inscrever-me no banco de talentos da Young!','21 anos, tenho muito interesse e bastante facilidade com tecnologias. Inglês avançado e espanhol intermediário. Amante do ciclismo nas horas vagas!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-07T11:58:00.000Z'::timestamptz),
  ('Ingrid Vitória da Silva Marques','ingridvitoria_vi@hotmail.com',NULL,'51999003914','2000-07-16',25,'Solteiro(a)',NULL,'Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1qzp8_JcbXAtEvIW6n5_ZcXojk5LkiYf0','Administração de empresas','Ensino Superior Incompleto','Uniasselvi',NULL,NULL,'Estagiária, auxiliar de escritório (atendimento a clientes, planilhas no Excel, atendimento de telefone) na empresa ACISAP- Associação Comercial industrial serviços Santo Antônio da Patrulha. No período de maio 2020 a outubro/Atual  

•Secretária (Telefonista, controle de combustível, planilhas, documentação funcionários, fechamento de contas, emissão de ordem de almoço) na empresa Greenroute locadora de veículos e construções LTDA, junho a agosto de 2019

• Aprendiz CIEE (Telefonista, arquivamento de documentos e notas) na empresa Hoffmann Agrocomercial, no período junho de 2018 a junho de 2019.',NULL,NULL,'Administrativa, Estágio','https://drive.google.com/open?id=1v3xa_Ye042EFtR2KsBsks8TRTSs6cKbA',NULL,'Instagram',NULL,NULL,NULL,NULL,'Estágio administração','Me chamo Ingrid Vitória, mas gosto que me chamem só de Vitória, sou um pouco tímida mas estou aberta sempre para novas amizades, oportunidades e conhecimento.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-07T16:19:00.000Z'::timestamptz),
  ('Marcelli Alves Gomes','marcellialves144@gmail.com',NULL,'980312623','2001-08-04',24,'Solteiro(a)',NULL,'Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1HlaeWm5Ccp4XX_I7NT5LMm-YC0MVte7P','Cursando Téc. Enfermagem','Ensino Médio Completo',NULL,NULL,NULL,'EMPRESA: RR SHOES
CARGO: Logística – Auxiliar de estoque 
FUNÇÕES EXERCIDAS: Executar a entrada e conferências de mercadorias da nota fiscal sub processo de recebimento e conferência de materiais. Separar, organizar, conferir e entregar pedido ao cliente.
Data de Inicio: 21/10/2020
Data de saída:06/05/2020',NULL,NULL,'Administrativa','https://drive.google.com/open?id=1LQH47bo8HbbTgvAIUuPdgfevkf18iosA',NULL,'Instagram',NULL,NULL,NULL,NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-07T16:19:00.000Z'::timestamptz),
  ('Gabriele Moro de Fraga','gmorodefraga@gmail.com',NULL,'51994376279','1998-12-28',27,'Solteiro(a)',NULL,'Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=12L447dHTWpWXt0B5wouZ6qlqMHBVBFYJ','Gestão de Recursos Humanos','Ensino Superior Incompleto','Uniasselvi',NULL,NULL,'CIEE/ monitora de escola- ensino médio de 2015 à 2016.
RR shoes/Via Uno- de 2017 à 2020','Rotinas administrativas, 
Início de inglês
Operador windows básico',NULL,'Estágio','https://drive.google.com/open?id=1Y4MYIIhziVsU8CjuUeeg74vp0EAQGB1_',NULL,'Agência de Empregos',NULL,NULL,NULL,NULL,'Quero inscrever-me no banco de talentos da Young!','Eu atualmente vivo de vendas, para manter a casa e pagar a faculdade, vendo lingeries, semijoias e cosméticos, vendia bolos e doces antes, mas parei devido ao alto custo dos materiais. No começo da pandemia participei de voluntária para organizar e orientar nas filas dos bancos. Tenho sonho de trabalhar na minha área e seria muito gratificante se eu recebesse tal oportunidade.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-07T20:00:00.000Z'::timestamptz),
  ('André Luís dos Santos Werppe','andrewerppe2011@hotmail.com',NULL,'51999393073','2000-12-21',25,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1T0Pze6QClYEy3S_uoExlYoMJ69SgqoaW','Direito','Ensino Superior Incompleto','Unicnec',NULL,NULL,'1- Secretaria de Educação do Estado do Rio Grande do Sul (CREA) setor de RH/ Efetividade 
2- fórum da comarca de Santo Antônio da Patrulha/RS ( cartório judicial da 1 vara)','Graduação nível básico e intermediário em
Inglês','Graduado em nível intermediário pela LSI London/UK','Administrativa, Comercial, Licenciamentos, Novos Negócios',NULL,NULL,'Instagram',NULL,NULL,NULL,NULL,'Vaga comercial em Santo Antônio da Patrulha/RS',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-07T20:09:00.000Z'::timestamptz),
  ('Iasmin Juliane de Sousa Flem','iasminsflem@gmail.com',NULL,'51997922731','1999-06-20',26,'Solteiro(a)',NULL,'Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1uLPcq9aQp0cm-Wp2DSrb3kMi3rCtRjjt','Gestão de Recursos humanos','Ensino Superior Incompleto','Uniasselvi EAD',NULL,NULL,'Estagiando telemarketing','Nenhum','Não','Administrativa, Estágio, Recursos Humanos',NULL,NULL,'Indicação',NULL,NULL,NULL,'Auxiliar administrativo em empresa cortel e estagiando em telemarketing','Quero inscrever-me no banco de talentos da Young!','Sou proativa e muito animada para aprender coisas novas !','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-07T21:47:00.000Z'::timestamptz),
  ('TAINA SOUZA DOS SANTOS COELHO','taina.22@outlook.com',NULL,'55999230020','1994-11-15',31,'Casado(a)',NULL,'Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=17zIiypc78IUrpB3hx-saxdb3OvWyRtA0','Engenharia Agrícola - em andamento','Ensino Superior Incompleto','UNIPAMPA - Universidade Federal do Pampa',NULL,NULL,'Fev/2017 – Atualmente - AUTONÔMA – Vendas, Compras e Administrativo
Abr/2015 – Dez/2016 - A VETERICAMPO PRODUTOS VETERINÁRIOS LTDA –
Recebimento, Cobrança, Lançamento de Notas, Serviços Bancários, Emissão de Notas Fiscais, Abertura e Fechamento de Caixa.
Jun/2014 – Mar/2015 - PR Gráfica e Imp. Digitais LTDA ME – Atendimento ao público,
Montagem de contratos para licitações e Emissão de Notas Fiscais;
Abr/2012 – Abr/2014 - Auto Posto Lukatan – Atendimento ao público e Manuseio de Caixa (Abertura
E Fechamento)',NULL,NULL,'Administrativa, Comercial, Estágio, Financeiro, Marketing, Novos Negócios','https://drive.google.com/open?id=1-ec0eapLm95oyslyCQMt_kz0ffXwzc3k',NULL,'Agência de Empregos',NULL,NULL,NULL,'Ana Maria (65)99622-9088 A Vetericampo','Estágio Administrativo','Sou Prática, Efetiva, Organizada, Criativa, Empreendedora, Estudiosa e com facilidade de trabalhar em equipe e aprender novas funções;
• Tenho bom conhecimento na área da Informática, possibilitando suporte à clientes e atividades administrativas;
• Tenho fácil relacionamento com Bancos, assegurando a manutenção deste Canal de Serviços;
• 4 anos de experiência profissional no ambiente Administrativo, com atuação junto a Rotinas Administrativas;
• Experiência e atuação na Área Administrativa e Financeira, onde realizo atividades como: (Administração, Vendas / Atendimento e Recepção de Clientes / Breve Experiência em Lançamentos Fiscais / Cadastro de Clientes / Contas a Pagar / Contas a Receber / Controle de Material de Expediente / Controle e Recebimento de Notas Fiscais em Geral / Controle de Negativas, entre outras atividades inerentes);
• Atividades pertencentes à Área como: Atuação em Cobrança, Recebimento de Valores,
• Realizo outras atividades de Caráter Especial neste ambiente profissional, sempre que solicitado;
• Tenho fácil trânsito com todos os meus pares profissionais;
• Tenho facilidade e Habilidade nos relacionamentos com Superiores Executivos;','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-07T21:53:00.000Z'::timestamptz),
  ('TAINA SOUZA DOS SANTOS COELHO','taina.22@outlook.com',NULL,'55999230020','1994-11-15',31,'Casado(a)',NULL,'Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1kEQH2UQcVqS5smBliylidycMMdMVCRSS','Engenharia Agrícola - em andamento','Ensino Superior Incompleto','UNIPAMPA - Universidade Federal do Pampa',NULL,NULL,'Fev/2017 – Atualmente - AUTONÔMA – Vendas, Compras e Administrativo
Abr/2015 – Dez/2016 - A VETERICAMPO PRODUTOS VETERINÁRIOS LTDA –
Recebimento, Cobrança, Lançamento de Notas, Serviços Bancários, Emissão de Notas Fiscais, Abertura e Fechamento de Caixa.
Jun/2014 – Mar/2015 - PR Gráfica e Imp. Digitais LTDA ME – Atendimento ao público,
Montagem de contratos para licitações e Emissão de Notas Fiscais;
Abr/2012 – Abr/2014 - Auto Posto Lukatan – Atendimento ao público e Manuseio de Caixa (Abertura
E Fechamento)',NULL,NULL,'Administrativa, Comercial, Estágio, Financeiro, Marketing, Novos Negócios','https://drive.google.com/open?id=1uV3tvAGZxBlbnTlj65Ccu4j7qf3ZGkLy',NULL,'Agência de Empregos',NULL,NULL,NULL,'Ana Maria (65)99622-9088 A Vetericampo','Estágio Administrativo','Sou Prática, Efetiva, Organizada, Criativa, Empreendedora, Estudiosa e com facilidade de trabalhar em equipe e aprender novas funções;
• Tenho bom conhecimento na área da Informática, possibilitando suporte à clientes e atividades administrativas;
• Tenho fácil relacionamento com Bancos, assegurando a manutenção deste Canal de Serviços;
• 4 anos de experiência profissional no ambiente Administrativo, com atuação junto a Rotinas Administrativas;
• Experiência e atuação na Área Administrativa e Financeira, onde realizo atividades como: (Administração, Vendas / Atendimento e Recepção de Clientes / Breve Experiência em Lançamentos Fiscais / Cadastro de Clientes / Contas a Pagar / Contas a Receber / Controle de Material de Expediente / Controle e Recebimento de Notas Fiscais em Geral / Controle de Negativas, entre outras atividades inerentes);
• Atividades pertencentes à Área como: Atuação em Cobrança, Recebimento de Valores,
• Realizo outras atividades de Caráter Especial neste ambiente profissional, sempre que solicitado;
• Tenho fácil trânsito com todos os meus pares profissionais;
• Tenho facilidade e Habilidade nos relacionamentos com Superiores Executivos;','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-07T21:54:00.000Z'::timestamptz),
  ('Afonso Cardoso de Souza','afonsocardosodesouza@gmail.com',NULL,'996407651','1999-05-04',26,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Ex5sinGkjoF_wLQmqbGoc56cCkHnONBC',NULL,'Ensino Médio Completo',NULL,NULL,NULL,'RR SHOES- Comercial/Compras
Efetuando pedidos, atendimentos aos clientes; ordem de compras de produtos. 
Admissão: 15 de fevereiro de 2016
Saída: 14 de julho de 2017
FORMEL D- Qualidade
Inspetor de peças 
Admissão: 2 de maio de 2018
Saída: 10 de janeiro de 2019',NULL,NULL,'Administrativa, Comercial, Financeiro',NULL,NULL,'Instagram',NULL,NULL,NULL,NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-07T22:31:00.000Z'::timestamptz),
  ('Rúbia Mara da Silva Tedesco','rubiamtedesco@gmail.com',NULL,'51996158165','1997-09-16',28,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1cbNsIAbUx8M8zVBriPG-DYWRXHghdJpo',NULL,'Ensino Superior Incompleto',NULL,NULL,NULL,'Estagiei pela prefeitura do Caraá como contrato Ciee, em 2015; Trabalhei de 2016 a 2017 no frigorífico da Borrussia como Auxiliar de Controle de Qualidade; Estagiei na Delegacia de Polícia de 2017 a 2018; Estagiei na Receita Estadual entre 2018 e 2019, atualmente faço estágio no Tribunal de Justiça, Comarca de Santo Antônio da Patrulha.',NULL,NULL,'Comercial, Marketing','https://drive.google.com/open?id=1Dh4kgGg3h9bq-Cx_Y6ZbZX6juqPcQbi_',NULL,'Instagram',NULL,NULL,NULL,NULL,'Vaga Comercial em Santo Antônio da Patrulha','Estudo Direito, me formo em 2022-1, gostaria muito de entrar em outra área, tenho uma afinidade com marketing, gostaria de aprender e buscar conhecimento, agregar com todos.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-07T23:56:00.000Z'::timestamptz),
  ('Sabrina da Silva Santos','sabrinasilvasilva1219@gmail.com',NULL,'51995577772','1985-09-26',40,'Casado(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=14ovaI2wkoPN3nWl_jfNFKHOK6ftfY211','Ciências Contábeis','Ensino Superior Incompleto','Escola Jovem Proficional',NULL,NULL,'Farmácia Maxxi Econômica estrada 06/05/2013 saída 19/03/2019',NULL,NULL,'Administrativa, Comercial, Estágio, Financeiro',NULL,NULL,'Facebook',NULL,NULL,NULL,NULL,'Estágio Administrativo',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-08T01:49:00.000Z'::timestamptz),
  ('MARIO SOUSA COELHO JUNIOR','mariojuniorcoelho@gmail.com',NULL,'55996788021','1991-08-28',34,'Casado(a)',NULL,'Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1Y4YQiVPWcVf8hiZaxN6BR8EuSibGnsbY','Engenharia Civil','Pós-graduação Incompleta','Universidade Federal do Pampa','2015-02-21',NULL,'1 - MJC Engenharia - Autônomo; 2 - Sócio Proprietário; 3 - 02/2018 até o momento; 4 - Elaboração de Projetos, Orçamentos, Acompanhamento de obras, Desmembramento e Unificação de Lotes.

1 - Prefeitura de Campo Novo do Parecis - MT; 2 - Coordenador de Projetos; 3 - 01/2017 até 01/2018; 4 - Elaboração de Projetos, Orçamentos e Fiscalização de Obras públicas.

1 - Prefeitura de Tangará da Serra - MT; 2 - Assessor de Projetos e Convênios; 3 - 06/2015 até 12/2016; 4 - Elaboração de Projetos e Orçamentos de obras públicas;','1 - MBA em Projeto, Execução e Desempenho de Estrutura e Fundações - IPOG/MT - Cursando;
2 - Pós em Engenharia de Segurança do Trabalho - IMP/MT - Cursando;
3 - Engenharia Civil - Universidade Federal do Pampa - Concluído;
4 - Curso de Elaboração de Plano de Prevenção e Proteção contra Incêndia - PPCI;
5 - Curso de MS Project Básico;
6 - Curso de Excel Avançado;
7 - Curso E.I.V - Estudo de Impacto de Vizinhança;
8 - Curso de Avaliação de Imóveis com Inferência Estatística.',NULL,'Administrativa, Comercial, Financeiro, Licenciamentos, Marketing, Novos Negócios, Engenharia','https://drive.google.com/open?id=1uHfLq5X7eCAuFGUvxwneN0x9YIKHD3N8',NULL,'Agência de Empregos',NULL,NULL,NULL,NULL,'Vaga Comercial','Tenho domínio avançado em diversos tipos de softwares, são eles: Eberick, QiElétrico, QiHidrossanitário, AutoCAD, Excel e MS Project.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-08T19:33:00.000Z'::timestamptz),
  ('Marcelo Diedrich Glaeser da Silva','marcelodiedrich@hotmail.com',NULL,'51996280304','1989-04-25',36,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1lrkAHOhk-2KRIE2lLGdSGSy0lnI8Fzcu','Administração de empresas','Ensino Superior Incompleto','Furg','2023-06-30',NULL,'Banrisul: estagiário de 02/2017 a 03/2019
Prefeitura municipal de santo Antônio da patrulha - 06/2019 - atual',NULL,NULL,'Administrativa, Estágio',NULL,NULL,'Facebook',NULL,NULL,NULL,NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-08T22:31:00.000Z'::timestamptz),
  ('Tamires dos Santos Muniz','tamiresmuniz1995@gmail.com',NULL,'51997635103','1995-08-05',30,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1kqC46JniZzzazqzaw49xCOWjbSCBl-BW','Licenciatura em Matemática','Pós-graduação Incompleta','UNICNEC',NULL,NULL,'2019/2 – 2020 – INB Telecom, Santo Antônio da Patrulha, RS.
Cargo: Auxiliar Administrativo
2017 – 2019/2 – Hotel Ecovilly, Santo Antônio da Patrulha, RS.
Cargo: Auxiliar Administrativo
2014 – 2016/2 - Prefeitura Municipal de Caraá, RS – Secretaria de Desenvolvimento Social – CRAS
Cargo: Educadora Social
2013 – 2014 - Prefeitura Municipal de Caraá, RS – Secretaria da Educação – Escola Municipal Pedro José de Borba.
Cargo: Auxiliar de Sala de Aula.','Pós Graduação em Educação Básica e Profissional - IFRS - Campus Osório/RS.
Curso de Idiomas - Inglês - Wizard',NULL,'Administrativa, Comercial','https://drive.google.com/open?id=18lBIgMItCta3QzuMWrp2KANj9vHm0TYx','https://drive.google.com/open?id=1rWciYhsAQFz6HBmUfbA2aMBZR7m85DZq','Instagram',NULL,NULL,NULL,NULL,'Vaga Comercial em Santo Antônio da Patrulha.','Olá! Deixei anexado uma carta de apresentação no formulário. Peço que leia com carinho, pois conto um pouco mais sobre minhas experiências profissionais. Estou à disposição para qualquer dúvida. Abraços.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-09T01:45:00.000Z'::timestamptz),
  ('Angélica machado da cunha','angelicacunha166@gmail.com',NULL,'998784442','1992-03-22',33,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1btUqh0Jpr38G03HI9s6uPScHiyItLOJj',NULL,'Ensino Médio Completo',NULL,NULL,NULL,'Vendedora autônoma imóveis','Secretariado executivo, informática básica cursando gestão imobiliárias',NULL,'Administrativa',NULL,NULL,'Indicação',NULL,NULL,NULL,'999277127ze Carlos','Vendas imóveis',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-10T01:45:00.000Z'::timestamptz),
  ('Anderson da silva soares','Carolflorsantos9@gmail.com',NULL,'998345568','1997-03-21',28,'Casado(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1WpH4Usg8tK5OpIsMjBB9U0Jcb_o3M7ND',NULL,'Ensino Superior Incompleto',NULL,NULL,NULL,'Supermercado:trabalhei de repositor e supridor durou 2 anos e 8 meses','Computação',NULL,'Novos Negócios',NULL,NULL,'Agência de Empregos',NULL,NULL,NULL,NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-10T01:51:00.000Z'::timestamptz),
  ('Ursula Freitas Barcelos','ursula.barcelos6311@gmail.com',NULL,'51991618770','1980-07-22',45,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1oqjyZHQaS7DhTaKEn328D8xLtVM98NWs','Curso de Decoração de interiores','Ensino Superior Incompleto','IBDI santa Catarina','2014-12-22',NULL,'Empresa: Carol Comércio de Cortinas LTDA – Florianópolis/SC
Telefone: (48) 991744860
Período: 07/11/2014 à 10/10/2017
Iniciei como vendedora interna, e com 1 ano de experiência fui convidada a ser vendedora 
externa, onde aprimorei meu trabalho de consultora de vendas e Design de interiores,
realizando trabalhos particulares e com parceiros da área. 
Como consultoria de Design harmonizava ambientes, com cores, tecidos e papéis de 
parede, fazendo com que o ambiente incorporasse a personalidade do cliente.
Na parceria com Arquitetos e Design de interiores, estudávamos os projetos fornecendo 
sugestões de tecidos, acabamentos, persianas, papéis de parede, almofadas, piso vinílico e 
dicas, dando melhores soluções para que o projeto tivesse um excelente acabamento e que ficasse funcional aos seus clientes. 

Empresa: Attuale Decor- São José.
Telefone:48-98222029 Franciele
Desenvolvimento: Consultora de Vendas.
Período: 01/05/2018 até 31\\07\\2018, 01/08/2018 a loja foi comprada pela Carol Cortinas 
onde permaneci até o dia 28/02/2019.
Como Consultora desenvolvi um trabalho de vendas internas e externas, levávamos peças 
na casa de clientes para fazer ambientações, era responsável pela loja e na ambientação da mesma.

Empresa: Janela Aberta Cortinas
Telefone:32330052 -999559891 Iara
Desenvolvimento: Consultora de Vendas.
Período: 11/06/2019 até dia 23/09/2019.
Como consultora de vendas, desenvolvi um trabalho de vendas internas e atendimentos
externos, em parcerias com Designs de Interiores e Arquitetos nas escolhas de materiais conforme projeto.

 Empresa: Calvin Klein (Shopping Iguatemi POA)
Telefone:51-986132774 Ana -Gerente
Desenvolvimento: Consultora de Vendas.
Período:21/11/2019 até 17/01/2020.
Como consultora de vendas, desenvolvi um trabalho de vendas com metas, e atendimento ao cliente.','Eu fiz o Curso de Corretora de imóveis, CRECI em Piracicaba SP','Creci /SP   Curso de Decoração de interiores/IBDI','Comercial, Novos Negócios','https://drive.google.com/open?id=1_sDFQETiyvGJtr_0N5UKDQOiyBAx8UVs',NULL,'Facebook',NULL,NULL,NULL,'Telefone:32330052 -999559891 Iara Janela Aberta
Telefone: (48) 991744860  Heder -Carol Cortinas','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-12T16:12:00.000Z'::timestamptz),
  ('RENATA FERREIRA DA SILVA','preta.natty@hotmail.com',NULL,'51995090524','1991-07-25',34,'Casado(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Qm3zM4RMgro8xe4B1R8wjWt0hhnJ5WSC',NULL,'Ensino Médio Completo',NULL,NULL,NULL,'NUBIA MARIELA ROCHA
Assistentende de vendas
PROTMAIS
pesquisadora
OFICINA DA BELEZA
manicure e pedicure',NULL,NULL,'Administrativa, Comercial, Marketing','https://drive.google.com/open?id=1zSjCvIKVsvilLLTYlO9wFSC3d51M9tx-',NULL,'Facebook',NULL,NULL,NULL,'Rosangela:51 997089185','Quero inscrever-me no banco de talentos da Young!','Bom dia, Estou lutando por essa vaga a quase um ano. 
Quero muito me qualificar no mercado sendo uma corretora de imóveis respeitada.
Não tenho experiência mas tenho força de vontade. 
Trabalhar e fazer o curso.
Sou dinâmica, amo trabalhar com público e vendas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-13T10:13:00.000Z'::timestamptz),
  ('Larissa Barbosa Fernandes','larissafernandeslk@gmail.com',NULL,'993361074','1999-01-31',27,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1QSGNKJL6-DYzx8g1CLhIDwGVTixKqg0S','Estudante de Engenharia de Produção','Ensino Superior Incompleto','Universidade Federal do Rio Grande- FURG','2023-01-13',NULL,'Empresa: COSMA DO BRASIL PRODUTOS E SERVIÇOS AUTOMOTIVOS LTDA
 Período: Um ano e seis meses
 Cargo: Aprendiz de manufatura
 Atividades Exercidas: Responsável pela atualização de indicadores de produção e auxilio de treinamento para
operadores através de FTP.

 Empresa: PITSTOP-MULTIMARCAS
 Período: Um ano e oito meses
 Cargo: Assistente de finanças
 Atividades Exercidas: Responsável por contas a pagar e receber, pelo fluxo de caixa, cobrança e emissão de
notas fiscais

 Empresa: INB TELECOM EIRELI
 Período: Atualmente
 Cargo: Monitor de sistemas e suporte
 Atividades Exercidas: Suporte de redes.','Sou graduanda em engenharia de produção pela FURG, atualmente dentro da minha área realizo projetos de pesquisas, junto com professores na área de gestão da qualidade. Pelo SENAI cursei iniciação profissional em Metrologia, pela Escola Mundo Office cursei nível avançado em Excel. Possuo conhecimento avançado em pacotes office, assim como em Autocad.','Sim.','Administrativa, Arquitetura, Estágio, Engenharia','https://drive.google.com/open?id=1r3_RLmgD8ytl2UxE0833TE3qAqDsUb3i',NULL,'Instagram',NULL,NULL,NULL,'José Carlos-Pitstop 51 980105235','Quero inscrever-me no banco de talentos da Young!','Sou jovem, tenho 21 anos, graduanda em engenharia, que gosta de trabalhar com pesquisa, apaixonada pela área de gestão da qualidade que procura por meio dela a melhoria continua. Gosto de trabalhar em equipe, pela troca de experiências,  acredito que esse é o caminho para crescer profissionalmente.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-13T19:12:00.000Z'::timestamptz),
  ('Paloma Rafaela de Fraga Barcelos','paloma.barcelos@hotmail.com',NULL,'51996377223','1996-05-04',29,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=19s5J0o_HcsUGfuMygqze17s0cAu1I0Ix','Cursando Pedagogia','Ensino Superior Incompleto','Uniasselvi',NULL,NULL,'Empresa Dacolonia Alimentos Naturais. 
Serviços Gerais
01/03/2013 até 01/08/2014
Estética Grasi Fashion Hair
Auxiliar de cabeleireira
01/04/2016 até 01/03/2017
Estética Grasi Fashion Hair
Recepcionista
01/03/2018 até 01/12/2018',NULL,NULL,'Comercial, Estágio','https://drive.google.com/open?id=1lzmi6hJg4XqOsy0Uwhd0IaTbzKD-Ddn1',NULL,'Facebook',NULL,NULL,NULL,'Grasi Fashion Hair 997580635','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-14T16:17:00.000Z'::timestamptz),
  ('Aline Endres','linyliny.endres@gmail.com',NULL,'51996571263','1995-03-18',30,'Solteiro(a)',NULL,'Sim','Rolante/rs','https://drive.google.com/uc?export=view&id=147jp2J3vuTri-Qi8xGNuwphMm51oT75y','Ciências Contábeis','Ensino Superior Completo','Anhanguera Uniderp','2019-06-29',NULL,'Nelci kaieski ME, costureira de overclock 01/072014 à 09/07/2017 trabalhei por mais 2 anos sem carteira assinada nesta mesma empresa.
Complast LTDA-ME,abastecedora de esteira controle de pares,costura entre outros 12/06/2019 à 26/02/2020.
Procuro o primeiro emprego na área de comércio para poder utilizar dos meus conhecimentos.','Cursos de escrita fiscal, curso de rotinas administrativas e curso de controle financeiro, também fiz dois estágios supervisionados obrigatórios de 40h/cada .',NULL,'Administrativa, Comercial, Estágio, Financeiro, Novos Negócios','https://drive.google.com/open?id=1nYVUdFfC9K6TLGtry9f888XhsuNrjUCx',NULL,'Facebook',NULL,NULL,NULL,NULL,'Vaga comercial para a empresa de Santo Antônio da Patrulha/RS','Sou uma jovem empreendedora que em meio a crise da pandemia de covid-19 busquei algo para pagar as minhas contas onde investi na fabricação de biscoitos de 9 sabores diferentes, onde eu fabricava, divulgava nas redes sociais, administrava a página e ainda vendia e entregava os mesmo. Procuro um emprego onde eu possa me dedicar e aprender com os demais','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-14T16:17:00.000Z'::timestamptz),
  ('Tainá  dos Passos','tainapassos49@gmail.com',NULL,'999173795','2001-03-07',24,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1lx1jWy7oGaMk94j2LWuGVY04xXbAveax',NULL,'Ensino Médio Completo',NULL,NULL,NULL,'Trabalho desde 2017 em uma panificadora. Onde la sou balconista, atendo no caixa, ajudo na produção quando precisa e abasteço prateleiras. 
A panificadora fica na Borges de Medeiros ( Cidade Alta), chamada: Padaria e Confeitaria Santa Cecília. 
Lá aprendi muita coisa, conheci muitas pessoas criei um vínculo muito bom com os clientes e colegas de trabalho.  Porém, quero expandir meus conhecimentos, acredito no meu potencial de ser mais e de desbravar novos meios. Meta de crescer sempre!','Ensino médio completo em: Gregória de Mendonça e atualmente cursando Bacharel em Fisioterapia nas Faculdades Integradas de Taquara-FACCAT, ( 3° semestre).','Tenho cursos de informática.','Administrativa, Comercial, Marketing, Novos Negócios',NULL,NULL,'Facebook',NULL,NULL,'Sim','Seria meu atual local de trabalho, Padaria e Confeitaria Santa Cecília. 
3662-5257.','Quero inscrever-me no banco de talentos da Young!','Por conta do meu curso em Graduação na Fisioterapia, meu vínculo e amor as pessoas me faz acreditar que nasci para trabalhar com o público.
Sempre que surge uma oportunidade para algum trabalho voluntário, curso ou qualquer coisa que me vá acrescentar na minha carreira profissional eu vou atrás e faço! 
Tirei minha habilitação logo que fiz meus 18, sou bem independente, amo minha família e amigos. Acredito no meu futuro e procuro sempre passar isto para meu irmão e amigos.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-14T23:13:00.000Z'::timestamptz),
  ('Bianca Messaggi dos Santos','biancamessaggi060795@gmail.com',NULL,'51995611038','1995-07-06',30,'Namorando',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1KkudrH58TJq2iM4hYwR8meBcM9OKkSfj','Matemática','Ensino Superior Completo','Uniasselvi','2018-09-22',NULL,'Farmácia Santo Antônio. Balconista, caixa, serviços de banco e compra de medicamentos. De 01/09/2015 até 06/03/2019','Cursando Licenciatura em Pedagogia','Alguns cursos de aprimoramento em libras e redirecionado a criancas. Agora estou fazendo Analise e gestão.','Comercial',NULL,NULL,'Instagram',NULL,NULL,'Sim','Farmácia Santo Antônio e Colégio Santa Terezinha.','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-15T23:13:00.000Z'::timestamptz),
  ('Vitória dos Reis Famer','vitoriafamer209@gmail.com',NULL,'51995908517','2000-03-06',25,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1SIXi68iMz_letvmSekUSLprCB5MU73-O',NULL,'Ensino Superior Incompleto','Centro Universitário Leonardo Da Vinci - UNIASSELVI','2021-03-22',NULL,'Trabalhei como estagiaria de maio de 2017 à Novembro  de 2018 na Prefeitura Municipal de Santo Antônio da Patrulha, no departamento de compras e licitações e também como secretaria do prefeito municipal.
Atualmente trabalho na empresa INB Telecom como monitorar de sistemas e suporte ao usuário.','Atualmente estou cursando o 8º semestre do curso de Administração',NULL,'Administrativa, Comercial, Financeiro','https://drive.google.com/open?id=1WFmTGcSC1KpqDhOB_3gkQcq_WCdCG5MT',NULL,'Instagram',NULL,NULL,'Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-15T12:54:00.000Z'::timestamptz),
  ('Brendha Bitencourt Cardoso','brendhabcardoso@outlook.com',NULL,'51997230714','1997-04-08',28,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1xVJaVLOtpgnJcrEBuwYlN5ki8oqQ7rYf','6 meses em processos gerenciais - uniasselv - trancado no momento','Ensino Médio Completo',NULL,NULL,NULL,'•	Praia Norte Corretora de Seguros 06/04/2015 á 23/11/2016
Cargo: Secretária 
Atendimento ao publico, arquivo, serviços bancários, cotação de seguros, lançamentos...
•	Olacir Natal Rodrigues e CIA LTDA 03/04/2020 á 30/10/2020
Cargo: Auxiliar de escritório.
Atendimento, fechamentos, lançamentos, arquivos...
•	NL Spitznagel 05/05/2020 até o momento.
Cargo: Secretária .
Atendimento ao publico, caixa, pagamentos, serviços bancários...',NULL,NULL,'Comercial',NULL,NULL,'Facebook',NULL,NULL,'Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Me adapto a ambientes fácil, boa comunicação, muita vontade de aprender...','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-15T18:53:00.000Z'::timestamptz),
  ('Flávia Braun Cardeal','fbrauncardeal@gmail.com',NULL,'51996583880','2001-10-07',24,'Solteiro(a)',NULL,'Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=12-K-ZcfLxxWJyJkOBt5CYLbeL8KdDIwO',NULL,'Ensino Médio Completo',NULL,NULL,NULL,'Carteira assinada somente uma vez- Indústria de calçados RR Shoes/ Via Uno. Cargo: Assistente de estilo. Setor: Desenvolvimento criativo. Início 10/10/2019 Fim 14/06/2020. Principais atividades: Atendimento ao fornecedor, confecção de cartelas, organização showroom.','Cursando inglês - Be you do you Company',NULL,'Administrativa, Comercial, Marketing, Novos Negócios','https://drive.google.com/open?id=1TJ-SOZmssxj5Kw3jCdxNz1y9lJ72hCG3',NULL,'Instagram',NULL,NULL,'Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Atualmente estou cursando Inglês e em processo final para possuir CNH tipo AB. Em busca de novas oportunidades para conquistar minha independência, experiência profissional, pessoal e assim, ingressar em uma universidade. Fácil adaptação e hábil para lidar com público.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-15T20:19:00.000Z'::timestamptz),
  ('Jordanna Almeida Moraes Machado','jojo.almeida.moraes@gmail.com',NULL,'51999977096','1999-03-02',26,'Casado(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=100YX8DZY8dpRhHc2D2A_f9Iy1YGU26PW',NULL,'Ensino Médio Completo',NULL,NULL,NULL,'• CORSAN
- Estagiária (auxiliar administrativo).
- Agosto/2015 a Dezembro/2016.
- Atribuições: Auxiliar nas rotinas administrativas; Atendimento ao público; Cobrança; Abertura de ordens de serviço;  Abertura e/ou manutenção de cadastros.

• Supermercado Gomes
- Operadora de caixa.
- Janeiro/2017 a Março/2017.
- Atribuições: Operação de caixa; Atendimento ao público.

• Loja A Primavera
- Operadora de caixa.
- Julho/2017 a Maio/2018.
- Atribuições: Operação de caixa; Atendimento ao público; Abertura e/ou manutenção de crediários; Análise de crédito.

• Supermercado Gomes
- Aprendiz em comércio e varejo.
- Julho/2018 a Fevereiro/2019.
- Atribuições: Reposição de mercadorias; Layout, higienização e precificação de prateleiras de exposição; Atendimento ao público.',NULL,NULL,'Administrativa, Comercial','https://drive.google.com/open?id=1-tCzGz2_VfpOuBcf2W4UV3Mb3uoEHGy8',NULL,'Instagram',NULL,NULL,'Não','Valdaci Cunha (Loja A Primavera) - 3662- 2385','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-22T03:22:00.000Z'::timestamptz),
  ('Rutiele de Oliveira Rosa','rutieleoliveira051@gmail.com',NULL,'980192155','1989-04-15',36,'Casado(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1MJyr7ZeDvmUEk4hK9MGy630JXRPmTbLv',NULL,'Ensino Médio Completo',NULL,NULL,NULL,'Brenner calçados /auxiliar de escritorio/03/01/2006 até13/07/2008

Mara modas /vendedora/28/03/2017 até 28/09/2017

Lojas lebes/vendedora/04/10/2017 em andamento.',NULL,NULL,'Comercial',NULL,NULL,'Facebook',NULL,NULL,'Sim','Mara modas :3662 1523
Lojas lebes: 3662 45 67','Quero inscrever-me no banco de talentos da Young!','Tenho a intenção de integrar a equipe de vendas para colaborar na formação de um time , que agregue resultados expressivos e sustentáveis para a empresa.Sou uma pessoa q gosto de desafios.Tenho esperiências com vendas e acredito q posso agregar muito na empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-26T23:36:00.000Z'::timestamptz),
  ('João Pedro Flores Portal','jackportal2009@hotmail.com',NULL,'051996455748','1992-12-22',33,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1NV-OLm8IEcewNKtUfP5nlFG-RKXE-tab','Não há','Ensino Médio Completo','Departamento Pedagógico Educação de Jovens e Adultos','2019-08-25',NULL,'Benoit Eletrodomésticos Ltda
Vendedor comissionado 
20/11/13 a 16/05/20

Argos Guindastes Indústria e Comércio
Auxiliar de produção
22/04/13 a 10/1013

Luau Lanches e Pizzas
Garçom
16/05/09 a 21/11/12','Secretariado Basico-Styllus
Informática Nível 1 e 2-Styllus
Inglês Nível Básico-Mundo Office
Mecânica e Hidráulica-Senai',NULL,'Comercial','https://drive.google.com/open?id=1NtFyICxbHVPFKO2SAC8_vXjbSVKImXeQ',NULL,'Instagram',NULL,NULL,'Sim','Nelton Cunha; Gerente Filial Santo Antônio da Patrulha; Lojas Benoit
051996105169
Nilson Nyland; Supervisor Regional Lojas Benoit
051994081347
Josué Messagi Ramos; Proprietário Luau Lanches e Pizzas
051998477091','Candidato-me para vaga comercial','Bom, me  chame para uma entrevista pessoalmente e sem dúvidas falaremos mais sobre tudo isso!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-27T17:22:00.000Z'::timestamptz),
  ('Minela Patrícia FAGUNDES da Rosa','minelafagundes@gmail.com',NULL,'997621820','1979-02-08',47,'Não sou casada no papel',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1loX8wCgOBrHRy5CKkeyWZEC9S8ehKtIF',NULL,'Ensino Médio Completo',NULL,NULL,NULL,'Lojas Lebes, consultora de moda ,02/05/2018 até agora',NULL,NULL,'Comercial',NULL,NULL,'Facebook',NULL,NULL,'Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-10-28T00:20:00.000Z'::timestamptz),
  ('MONICA CARDOSO MANIQUE','niquemanique@gmail.com',NULL,'51981034427','1982-09-01',43,'Divorciada',NULL,'Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1igmTwptRAurtV53z87oWJmcH3XJOub0Z','Arquitetura','Pós-graduação Completa','UFRGS','2008-08-20',NULL,'1) LV Participações 2) Arquiteta 3) Maio/2014 a Outubro/2019  4)Elaboração de projeto executivo de edifícios residenciais; detalhamento construtivo, especificação para obra, quantitativos, memorial descritivo; estudos de viabilidade, estudos de layout, projeto para prefeitura/projeto legal/aprovação de projetos, plano diretor, código de obras, NBR 12721, compatibilização.

1) HB  2) Arquiteta/Coordenadora de Projetos 3)Fevereiro/2010 a Agosto/2013  4) Elaboração de projetos de interiores, detalhamento de marcenaria, forro de gesso; acompanhamento de obras de interiores, contato com os clientes, cobranças, orçamentos, contato com fornecedores.
Projeto executivo de empreendimentos comerciais e residenciais para construtora; detalhamento construtivo, especificação para obra, quantitativos, memorial descritivo; estudos de viabilidade, estudos de layout, projeto para prefeitura/projeto legal/aprovação de projetos, plano diretor, código de obras.
Coordenação de projeto residencial e comercial de 50.000m² com sistema de painéis pré-moldados de concreto para fachadas (Merit). Coordenação, orientação e supervisão de equipe de estagiárias e arquitetas; reuniões com projetistas complementares, resolução de problemas e conflitos, gerenciamento de prazos.','Pós Graduação em Gerenciamento de Projetos PMI, Engenharia de Patologia das Edificações; cursando Design Gráfico',NULL,'Arquitetura, Novos Negócios, Engenharia','https://drive.google.com/open?id=1madR2vwB6ACcvQbs9w7_GQCVFZluyXY_',NULL,'Agência de Empregos',NULL,NULL,'Sim','Diretor Eng. Vilmar (51)3013-9778  LV Participações','Quero inscrever-me no banco de talentos da Young!','Olá, sou Arquiteta e estudante de Design. Também já fui professora de Kung-fu, e sou paraquedista. Adoro desafios, principalmente que envolvam criatividade.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-11-14T02:30:00.000Z'::timestamptz),
  ('MONICA CARDOSO MANIQUE','niquemanique@gmail.com',NULL,'51981034427','1982-09-01',43,'Solteiro(a)',NULL,'Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1SThBZVc5ME7XiuEB7WqG953BBrE-eszM','Arquitetura','Pós-graduação Completa','UFRGS','2008-07-30',NULL,'1) LV PAR 2) Arquiteta 3)Maio de 2004 a Outubro de 2019 4) Projetos de edificações residenciais 
1) HB 2) Arquiteta coordenadora de projetos 3)Fevereiro de 2010 a Agosto de 2013 4) Projetos de edificações residenciais e comerciais de alto padrão, coordenação de equipe','Pós-graduação em Gerenciamento de Projetos PMI (SENAC), Pós-graduação em Engenharia de Patologia das Edificações (Unyleya), graduação em andamento em Design Gráfico. Possuo cursos de perícia em imóveis, PPCI e compatibilização de projetos.',NULL,'Arquitetura, Licenciamentos, Engenharia','https://drive.google.com/open?id=1dKLu6TFj4KnGPZ7bUdpjJRbywYLsDjA4',NULL,'Agência de Empregos',NULL,NULL,'Sim','Dir. Eng. Vilmar Elman (LV PAR)','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2020-11-16T16:57:00.000Z'::timestamptz),
  ('João Gabriel Bitencourt Altenetter','gabrielaltenetter@hotmail.com',NULL,'51998182516','1999-12-03',26,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1OgA_ba6kJ3KITfLqMKygFdUSpg5_omav','Direito','Ensino Superior Incompleto','Unicnec - facos','2023-12-15',NULL,'1 - Ordem dos advogados do Brasil - Subsecção de Santo Antônio da patrulha
2 - auxiliar de escritório 
3 - 22/01/2018 até 07/11/2019 
4 - diligências processuais solicitadas, serviços bancários, atendimento ao público e advogados

1 - Fórum de Santo Antônio da Patrulha 
2 - Estagiário 
3-  09/11/2019 - Até os dias atuais 
4 - Cumprimentos processuais, movimentações de processos, redigir e expedir documentos necessários, atendimento ao público e a advogados e demais cumprimentos solicitados pelo escrivão.',NULL,NULL,'Administrativa, Comercial, Estágio','https://drive.google.com/open?id=1VZWSfE2NUDNbNNzp6DHtTXjYOAOx1YPw',NULL,'Instagram',NULL,NULL,'Sim','3662-3839 - Ordem dos advogados do Brasil - Subsecção de Santo Antônio da patrulha','Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa que sempre procuro ajudar e procuro resolver os problemas que aparecem, sou uma pessoa que está sempre aberta ao diálogo para ouvir opiniões e conselhos dos colegas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-01-20T11:47:00.000Z'::timestamptz),
  ('Taylane Oliveira de Araujo','taylaneoliveira@hotmail.com',NULL,'51996529056','1989-05-07',36,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1ep_12mts6I77jxaL81PDYpj8tdgCT939','Gestão em Recursos Humanos','Ensino Superior Incompleto','Unisinos',NULL,NULL,'Lojas Taqi, Vendedora, período de 3 anos, atendimento ao cliente, organização de mercadorias e preços.',NULL,NULL,'Comercial, Marketing, Novos Negócios, Engenharia',NULL,NULL,'Instagram',NULL,NULL,'Não','Trabalhei como autônoma vendendo roupas e acessórios','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-01-20T11:48:00.000Z'::timestamptz),
  ('Ingrid Jordana de Oliveira Padilha','jordana.oliveira.ijop@gmail.com',NULL,'51996342276','1996-05-18',29,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1wckZrFyi2lAGdWbE2bdb4VsFfWVutXnW','Ciências Contábeis','Ensino Superior Incompleto','Uniasselvi',NULL,NULL,'Auxiliar de produção','Técnico em Administração',NULL,'Estágio',NULL,NULL,'Instagram',NULL,NULL,'Não','Doces A Boa- 996916919','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-01-20T12:13:00.000Z'::timestamptz),
  ('Shaiane dos Santos Südecum','shaiane-sap@hotmail.com',NULL,'51980111480','2000-09-24',25,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1zeD6PI4HtbOnQIQjriZm7WBwV9HW4GYb','Psicologia - cursando','Ensino Superior Incompleto','Faculdades Integradas de Taquara - FACCAT',NULL,NULL,'ESTAGIÁRIA, PREFEITURA MUNICIPAL DE SANTO ANTÔNIO DA PATRULHA, DEZEMBRO/2016 – FEVEREIRO/2019;
ASSESSORA DE SERVIÇOS, PREFEITURA MUNICIPAL DE SANTO ANTÔNIO DA PATRULHA, FEVEREIRO/2019 – OUTUBRO/2020.
COORDENADORA DE SETOR, PREFEITURA MUNICIPAL DE SANTO ANTÔNIO DA PATRULHA, OUTUBRO/2020 – DEZEMBRO/2020.

Em todo período descrito atuei junto ao Departamento Administrativo, da Secretaria Municipal da Administração e Finanças, o qual oportunizou enriquecimento de conhecimentos e experiência nas atividades administrativas exercidas, bem como experiência especialmente no Setor de Recursos Humanos.','Curso Psicologia, junto à FACCAT, o qual oportuniza constante enriquecimento de conhecimentos no âmbito pessoal e prepara-nos para, futuramente, atuar profissionalmente. 
Listo como cursos de curta e média duração:
VIII JORNADA CIENTÍFICA DO CURSO DE PSICOLOGIA – (SOBRE)VIVER A VIOLÊNCIA: RISCOS, ENFRENTAMENTO E PROTEÇÃO, AGOSTO/2018 - FACULDADES INTEGRADAS DE TAQUARA- FACCAT;
PALESTRA SOBRE MOTIVAÇÃO PARA O SERVIÇO PÚBLICO DE QUALIDADE, MAIO/2019 – PREFEITURA MUNICIPAL DE SANTO ANTÔNIO DA PATRULHA;
ENTREVISTA DE AVALIAÇÃO NEUROPSICOLÓGICA, AGOSTO/2020 – NÚCLEO MÉDICO PSICOLÓGICO;
MINISTRANTE – CURSO SOBRE REGIME JURÍDICO ÚNICO, PREFEITURA MUNICIPAL DE SANTO ANTÔNIO DA PATRULHA, SETEMBRO/2018;
MINISTRANTE – CURSO SOBRE REGIME JURÍDICO ÚNICO, PREFEITURA MUNICIPAL DE SANTO ANTÔNIO DA PATRULHA, NOVEMBRO/2019.',NULL,'Administrativa, Comercial, Financeiro','https://drive.google.com/open?id=1FwoiG_TDhZtzLZMmuCgUSVhwWqttC-mq',NULL,'Instagram',NULL,NULL,'Não','Cléia Juçara Airoldi 
(51) 99944-1070
Secretária Municipal da Administração e Finanças
Prefeitura Municipal de Santo Antônio da Patrulha, RS.','Vaga divulgada nas redes sociais da Young','Possuo facilidade de comunicação, considero-me bastante flexível à propostas e empenho-me para realizar todas as atividades com máximo de excelência possível, sendo em situações pessoais e/ou profissionais.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-01-20T12:27:00.000Z'::timestamptz),
  ('Dandara de Souza Pereira','dandarasouza2000@gmail.com',NULL,'51995240555','2000-05-08',25,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1_M1MQ1H0HtC8qfP_67h6JOZ3HdGyA6i8','Cursando Licenciatura em Pedagogia','Ensino Superior Incompleto','Universidade Estadual do Rio Grande do Sul',NULL,NULL,'1) Colégio Santa Teresinha 
2)Auxiliar de Educação Infantil
3)2017/2019
4)Analisar atividades educativas, recreativas e pedagógicas e aplica-las; auxiliar as crianças nos momentos das refeições escolares; auxiliar nas atividades lúdicas; auxiliar no cuidado e higiene das crianças.

1)EMEI FATIA DO SOL/ NOTABILI
2) Auxiliar de Educação Infantil 
3)2019/2020
4) Auxiliar a professora titular aos cuidados e atividades realizadas com as crianças. 

Atendente de loja em períodos temporários. (Caixa, venda, etiquetagem)','Formada no ensino normal/ magistério',NULL,'Administrativa, Estágio, Financeiro, Marketing','https://drive.google.com/open?id=1Lb-ar3rKx5kYnwxdyipCte_Vp89WYH6o',NULL,'Instagram',NULL,NULL,'Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-01-20T12:30:00.000Z'::timestamptz),
  ('Valéria Maria de Castro','castrovaleria015@gmail.com',NULL,'51985355774','1986-04-24',39,'Casado(a)',NULL,'Sim','Caraá/rs','https://drive.google.com/uc?export=view&id=1viGbFJOWZHlsMAIa9jZ91Dk2l-qT8bzK','Ciências Contábeis','Ensino Superior Incompleto','Uniasselvi','2022-12-20',NULL,'BANRISUL- Estágiaria-  Jan/2020 a Jan/2021. Atendimento ao cliente por diversos canais de comunicação,registros de dados e atividades diversas com sistema interno ,organização de documentos, fotocopiar,digitalizar digitar documentos em geral...
MARTINS ASSESSORIA CONTÁBIL - Auxiliar Societário - Set/3013 a Dez/2013.  Elaborar planilhas, controle e atualização de CNDS, arquivo e organização de documentos, serviço de rua a órgãos de administração pública...
CONZATTI CONTABILIDADE - Recepcionista -  Dez/3012 a Set/2013. Atendimento ao telefone, atendimento ao cliente,relatórios, planilhas,agenda, organização de documentos...
CLINICA ODONTOLÓGICA FARIA SANTOS - Recepcionista - Jan/2009 a Agosto/2011. Atendimento ao telefone encaminhando as chamadas aos devidos ramais, atendimento ao cliente, relatórios, planilhas, agenda, orçamentos....',NULL,'Seminário de Contabilidade e Negócios - CRC -RS  Trilha de Planejamento e Investimento - ANBIMA','Administrativa, Financeiro','https://drive.google.com/open?id=10VQfx_pcIyRPQegMAG-HPng0ftZTMy7S',NULL,'Indicação',NULL,NULL,'Sim',NULL,'Administrativo ou financeiro','Olá
Estou buscando oportunidade no mercado de trabalho dentro da área a qual estou estudando ou áreas afins relacionadas. Dentro de um mercado competitivo se torna difícil conseguir oportunidade pois o requisito principal solicitado normalmente é a experiência, mas alguém que está estudando geralmente ainda não atuou na área, então não tem experiência! Na busca de me colocar no mercado de trabalho e adiquirir experiência, me coloco a disposição desta organização, afim de aprimorar meus conhecimentos e contribuir com desenvolvimento da empresa, agindo com responsabilidade e muita vontade de aprender. Grata por sua compreensão.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-01-20T12:38:00.000Z'::timestamptz),
  ('Eduarda da Silva','eduardabragasilva2018@gmail.com',NULL,'51998203314','2000-11-22',25,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1ulupjPCv5rLD4SN6G-l8z2Q06GtcWI17','Pedagogia','Ensino Superior Incompleto','Unifacvest','2023-09-22',NULL,'Prefeitura/auxiliar de professora/2anos. Bill Burguer/Temporário/2semanas
Otica Braun/Diária.',NULL,NULL,'Administrativa, Comercial, Financeiro',NULL,NULL,'Agência de Empregos',NULL,NULL,'Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Olá,  me chamo Eduarda. No momento estou desempregada a procura de serviço. Tenho grande facilidade em aprender e de trabalhar em grupo. Gostaria muito de uma oportunidade. Obrigada!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-01-20T13:47:00.000Z'::timestamptz),
  ('Mariana Messagi da Silva','marianamessaggi14@gmail.com',NULL,'51997995455','2001-03-08',24,'Solteiro(a)',NULL,'Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=19OL_pKDreIeUi9LPIDuSJncrmDekSAZs',NULL,'Ensino Médio Completo','Escola de Ensino Médio Patrulhense','2019-01-16',NULL,'Eu já trabalhei na L&G calçados minha carteira era assinada como passadeira de fita, mas eu fazia de tudo um pouco, tudo que eles me pedissem estava disposta a aprender e exercer, comecei 2019 e sai 2020. Minha outra experiência foi o Açougue Coma Bem eu trabalhava no caixa, mais sempre tinha que deixar a parte ali da frente organizada e limpa (balcão, prateleiras, freezers, chão), trabalhei um curto período lá, 6 meses (2020).','Atualmente estudo pedagogia na instituição Leonardo da Vinci (Uniasselvi)',NULL,'Comercial','https://drive.google.com/open?id=1dJnNEq5Da5pArRViXsgi65wvle2GZVcB',NULL,'Instagram',NULL,NULL,'Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Curso eu não tenho mas é por isso que busco um emprego(ter uma renda que eu possa investir em mim e nos meus sonhos), tenho muita vontade de aprender outro idioma e de me aperfeiçoar na cozinha!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-01-20T15:28:00.000Z'::timestamptz),
  ('Cauana Kavitz','cauana.cau.ck@gmail.com',NULL,'51980174662','2000-10-18',25,'Solteiro(a)',NULL,'Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1oODZ257boXMUVm5phmPF3p__WKq-qyAz','Administração de empresas','Ensino Superior Incompleto','Uniasselvi','2022-07-01',NULL,'Masal Indústria e Comércio S/A
Auxiliar Administrativo 09/01/2017-09/01/2019
•  Emissão de notas fiscais de entrada e saída, entrada de notas fiscais de fornecedores e terceiros, faturamento e afins.
Prefeitura Municipal de Santo Antônio da Patrulha 
Estágio – Delegacia de Polícia 10/06/2019-02/07/2019
•  Atendimento ao público e serviços administrativos.
Clínica Luz Medicina e Ortodontia 
Estágio 17/02/2020 – vigente 
•  Atendimento ao público, secretaria e serviços administrativos.','Sou formada no curso de ocupações administrativas, atualmente faço curso de inglês e de edição de vídeos e imagens.',NULL,'Administrativa, Comercial, Marketing',NULL,NULL,'Instagram',NULL,NULL,'Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou formada em maquiagem e ocupações administrativas, crio conteúdo para o Instagram, e pretendo me especializar em marketing após concluir a graduação, sou líder de jovens da minha igreja e realizo trabalhos voluntários de forma regular, doações de sangue, arrecadação de alimentos e outros, através do projeto Missão Calebe, estou fazendo curso de inglês e de edição de vídeo e fotos.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-01-20T18:28:00.000Z'::timestamptz)
;

INSERT INTO young_talents.candidates (full_name, email, email_secondary, phone, birth_date, age, marital_status, children_count, has_license, city, photo_url, education, schooling_level, institution, graduation_date, is_studying, experience, courses, certifications, interest_areas, cv_url, portfolio_url, source, referral, salary_expectation, can_relocate, professional_references, type_of_app, free_field, status, tags, origin, created_by, original_timestamp)
VALUES
  ('Halana de Oliveira Guimarães','oliveira.halana@hotmail.com',NULL,'51996048809','1998-01-21',28,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1yDbnqbtk3R2k8WazoRSnMqZQSV5N2qOb',NULL,'Ensino Superior Incompleto','Centro Universitário Cenecista de Osório',NULL,NULL,'Farmácia Muniz
Balconista e auxiliar da farmacêutica
Inicio: 01/11/2017 - 04/05/2020 
Organizava e realizava as compras de medicamentos, solicitava Nfe para clientes e atendimento no balcão.',NULL,NULL,'Comercial, Novos Negócios, Engenharia','https://drive.google.com/open?id=1pqSe0FWftVRyweQFKoyVmYYXl-761hnR',NULL,'Instagram',NULL,NULL,'Sim','Farmacêutica Alice telefone (51-995292642) Farmácia Muniz','Quero inscrever-me no banco de talentos da Young!','Tenho experiência em atendimento com público','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-01-20T18:56:00.000Z'::timestamptz),
  ('Ana Carulini Rosa de Lima','anacarulini@hotmail.com',NULL,'998104980','1997-08-20',28,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1vvkEsWeG0GNnS0Xga3_zIN-cWL6pygXD','Ciências Contábeis','Ensino Superior Incompleto','Faculdades Integradas de Taquara',NULL,NULL,'1) Big Festas Decorações
2)Decoradora de Eventos
3)02/2015 - 06/2016
Realização de eventos personalizados.

1) Sabor Alimentos
2)Secretária 
3)01/2017-03/2018
Atendimento ao telefone e público, conferência de notas fiscais e lancamento, emissão e organização de boletos, serviços bancários.

1)Prefeitura Municipal de Gravataí 
2)Estágio 
3)08/2018-03/2019
Realização de empenhos no Excel, atendimento ao telefone e auxilio nas demandas solicitadas.','Curso faculdade de ciências contábeis no 6 semestre onde já aprendi sobre conciliações bancarias, prestação de serviços, contabilidade gerencial, planejamento e controladoria. 
Cursei os cursos de rotinas administrativas e informática básica.',NULL,'Administrativa, Comercial, Estágio, Financeiro',NULL,NULL,'Instagram',NULL,NULL,'Sim',NULL,'Estágio e CLT','Proativa, Excelente relacionamento interpessoal, Comprometida, Responsável, Adaptabilidade, Pontual e Organizada.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-01-20T19:23:00.000Z'::timestamptz),
  ('Fernanda Diemer Quintana','fernandadiemerquintana@gmail.com',NULL,'51999089004','1995-11-14',30,'Solteiro(a)',NULL,'Sim','Caraá/rs','https://drive.google.com/uc?export=view&id=1dYPFwucyef5A9Fu7kdQB3uLV4JnJIZGa','Pedagogia','Ensino Superior Completo','Centro Universitário Cenecista de Osório','2020-03-05',NULL,'2017/2020 Escola Municipal de Ensino Infantil Mundo Encantado II - Monitora de sala de aula
2014/2017 Fábrica de Calçados - Serviços Gerais
2012/2013 CIEE - Auxiliar de sala de aula','Filosofia - (FGV ONLINE) Fundação Getúlio Vargas
Tecnologias Digitais para Educação - Grupo de Educadores Google, Polo Universitário Santo Antônio
Semana Acadêmica 2020 - Polo Universitário Santo Antônio
Tecnologias na Educação - Secretaria Municipal de Caraá',NULL,'Administrativa, Comercial, Marketing, Novos Negócios','https://drive.google.com/open?id=16Tynm7NWGqK2SXr52d0E4XVjuplF6Yav',NULL,'Instagram',NULL,NULL,'Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Oie, sou a Fernanda!!
Hum o que posso dizer sobre mim...
Bem, vamos lá!!
Sou ativa, comunicativa, curiosa, esforçada, detalhista, atenta com as situações que estão acontecendo ao meu redor...
Ah e adoro desafios, conhecer coisas novas, sou aventureira e escorpiana...🦂
Adoraria fazer parte da equipe Young!!
Acredito que posso contribuir com o sucesso da empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-01-20T20:29:00.000Z'::timestamptz),
  ('Flávia Braun Cardeal','fbrauncardeal@gmail.com',NULL,'996583880','2001-10-07',24,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1mm-62hzMYSORWao4lUBmsvP5YSZhfn7j',NULL,'Ensino Médio Completo','Be you do you Company',NULL,NULL,'Livraria e Papelaria Kardeal - Atendente ; 1 ano ; organização, atendimento ao cliente, abastecimento de produtos.
Via Uno - Assistente de estilo ; 8 meses ; atendimento exclusivo ao fornecedor, responsável pelo showroom, confecção de cartelas, abastecimento de planilhas.
Pompeia - Vendedora ; Emprego atual ; atendimento ao cliente, abastecimento de setor.','Cursando Inglês em nível básico, completo um ano de estudos',NULL,'Administrativa, Comercial, Marketing','https://drive.google.com/open?id=1jnCzlB06dvB99lzv4P7yOmHqVn3m5hVf',NULL,'Indicação',NULL,NULL,'Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Atualmente busco novas experiências profissionais e pessoais, algo a mais que me permita crescer junto à empresa.
Fácil adaptação com novas oportunidades e boa comunicação. Assim como, experiência em atendimento, escritório e conhecimento básico em inglês.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-01-20T22:17:00.000Z'::timestamptz),
  ('Leandro Feijó Lima','leandro-feijo@hotmail.com',NULL,'51997946301','1996-01-10',30,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=11-Xqb5u5jnhply0kuxLRpjtDG599x5vE','Administração de empresas','Ensino Superior Incompleto','Fael- Polo Mundo Office','2021-07-08',NULL,'Primeira empresa foi DaColônia alimentos naturais, inicio março de 2013, saída janeiro de 2015.
Comecei como auxiliar de produção depois passei algum período no setor PCP até ir para o Compras como auxiliar. Segunda empresa Boa Esperança Agroindústria em agosto de 2016 iniciei como estagiário auxiliando no faturamento, em janeiro de 2018 fui efetivado e por problemas financeiros da empresa fui desligado em junho do mesmo ano. Terceira empresa RR Shoes Com. E Fabr. De calçados início em agosto de 2018 como auxiliar de compras onde realizava compra de insumos para produção e ordens de compra, em maio de 2020 devido a pandemia e a crise mundial fui desligado da empresa e em novembro do mesmo ano fui recontratado para mesma função onde estou atualmente.',NULL,NULL,'Administrativa, Comercial','https://drive.google.com/open?id=10954li4EPNY32lchByBC7QsGHwqqbBC_',NULL,'Agência de Empregos',NULL,NULL,'Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-01-20T22:42:00.000Z'::timestamptz),
  ('SABRINA DA SILVA SANTOS','sabrinasilvasilva1219@gmail.com',NULL,'51995577772','1985-09-26',40,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1PR17AAq80Pqb4M6H7NUJhhMguzhrlQM9','Ciências Contábeis','Ensino Superior Incompleto','Escola Jovem Profissional',NULL,NULL,'Empresa: Rede Maxxi Econômica Drogaria Ltda
Cargo: caixa e atendente
Período: 06/05/2013 a 14/03/2019','Informática, Comunicação Digital, Nota Fiscal Avulsa - Eletrônica',NULL,'Administrativa, Estágio, Financeiro',NULL,NULL,'Facebook',NULL,NULL,'Não',NULL,'De Estágio',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-01-20T22:55:00.000Z'::timestamptz),
  ('Luana Carolina Pinto Bittencourt','luanabittencourt2596@gmail.com',NULL,'51980537008','2003-04-09',22,'Solteiro(a)',NULL,'Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1YBXTEKV_bXOBbZUeZVodJN1ZXQ3-sxta',NULL,'Ensino Médio Completo','E.E.E.M. Patrulhense','2021-01-15',NULL,'Empresa: Magna Cosma;
Cargo: Menor aprendiz CIEE;
Data início e fim: 12/2019 - 04/2020;
Principais atividades: Auxiliar operadores de produção em documentações pessoais e analisar com eles espelho ponto individualmente. Cuidar de documentos das linhas de produção, sinalizar em caso de invalidez e validar na sequência. Lançar planilhas diariamente com dados de produção de cada linha, para supervisores ter os mesmos em mãos. Arquivar e atualizar documentos enviados por operadores líderes, facilitando para linha de produção o desenvolvimento de documentos e o processo de todos.

Empresa: BT (Terceirizada operadora Oi);
Cargo: Estágio Notabili; 
Data de início: 04/2020 - Atual emprego;
Principais atividades: Vendas e atendimento via telemarketing. Apresentar aos clientes os produtos Oi, cuidar do pós venda ajudando os clientes em casos de dúvidas e problemas e atualizar planilhas diárias com meta empresarial.','Menor aprendiz CIEE - atividades administrativas
Bacharelado administração semi-presencial Uniasselvi - primeiro semestre',NULL,'Administrativa, Comercial, Financeiro, Marketing',NULL,NULL,'Instagram',NULL,NULL,'Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho conhecimento básico no pacote office por ter tido bastante experiência nas empresas do qual já atuei. Eu gosto muito de lidar com pessoas, apresentar o produto e dividir conhecimento. Quero muito um emprego efetivo, do qual me passe uma segurança maior pois tenho planos maiores. Tenho só 17 anos, mas amo aprender e lidar com trabalho em equipe e por isso, busco contribuir com a empresa sempre da melhor forma. Sou uma pessoa do qual aprende fácil e se adapta fácil também!!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-01-20T23:21:00.000Z'::timestamptz),
  ('Isis Gois de Souza','isisgois@icloud.com',NULL,'11975922414','1997-08-12',28,'Solteiro(a)',NULL,'Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1ig5Z-hI-n5XASfNuYKkT7Co0XkqNZDW4','Engenharia Agroquímica','Ensino Superior Incompleto','FURG','2022-12-20',NULL,'Trabalhei na empresa M.A representações como gerente administrativa e financeira do ano de 2014 ao 2018, nesta função realizada emissão de notas fiscais eletrônicas, folha de pagamento dos funcionários, palestras para apresentação de novos produtos e contato direto com clientes.','Sou graduanda em engenharia agroquímica pela FURG SAP e realizo linha de pesquisa que envolve o estudo do Software CFD (Computational Fluid Dynamics) além disso realizei dois cursos de oratória, curso Software Estatística para Otimização de Processos Industriais e Arduíno;
Na faculdade englobei vários âmbitos entre eles extensão (Membro do Diretório Acadêmico) e ensino (Monitorias);
Possuo habilidades com todas as ferramentas do programa Office;
Realizei um intercâmbio para o Canadá de 5 meses e possuo inglês avançado em bussiness e espanhol nível básico.',NULL,'Administrativa, Estágio, Financeiro, Marketing','https://drive.google.com/open?id=1lMgoXlznlf-HlD0CtgzmYN0fBMz0-jTs',NULL,'Instagram',NULL,NULL,'Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Meu maior hobby é realizar atividades físicas, principalmente esportes que remetem ao conceito de disciplina que no meu caso seria o judô, pratico desde os 8 anos de idade. Além disso gosto de conciliar viagens com ensinamentos históricos e aprendizagem de novos idiomas, como ocorreram nas minhas viagens do Canadá e México.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-01-21T01:27:00.000Z'::timestamptz),
  ('Natália Gomes da Silva','natalia.gomesdasilva123@gmail.com',NULL,'51999942759','2001-10-21',24,'Solteiro(a)',NULL,'Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Pn4HbTaf6xi42Ol4ZHbmahwSQQWUOi1g','Administração','Ensino Superior Incompleto','Uniasselvi','2025-03-05',NULL,'Trabalho atualmente na empresa Lopes Spitznagel, sou jovem aprendiz como auxiliar administrativo, comecei no dia 30/10/2019 e meu contrato expira em outubro deste ano. Tenho experiência no setor financeiro, organização de documentos, notas fiscais,
planilhas, recepção de clientes, venda de produtos, faturamento de notas
fiscais, atendimento telefônico, recebimento e conferência de mercadorias.','Informática Intermediária','Não','Administrativa, Comercial, Financeiro','https://drive.google.com/open?id=1nPbtbTVl-YD04dZ3pQ1NUjjYC9rdhfEw',NULL,'Story Da Página De Vocês.',NULL,NULL,'Não',NULL,'Vaga disponível para estágio.','Meu nome é Natália, tenho 19 anos, e estou ingressando em uma faculdade de administração. Sou jovem aprendiz no setor administrativo e busco uma nova oportunidade nessa área por conta do meu contrato estar acabando esse ano e eu precisar muito de algo novo para continuar pagando minha faculdade. Gosto muito de trabalhar com rotinas administrativas, tarefas ligadas a financeiro, etc. Sou uma pessoa mais tímida mas ao mesmo tempo extrovertida, muito dedicada, super organizada no meu local de trabalho e fora, aprendo com muita facilidade, executo minhas tarefas com responsabilidade e amo aprender coisas novas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-01-21T12:05:00.000Z'::timestamptz),
  ('Andressa Nogy da Silva','nogyandressa@outook.com',NULL,'51995993830','1999-09-03',26,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=13D6tpruCOPOA3aEHUONRLlkkF0zhcJAs',NULL,'Ensino Médio Completo',NULL,NULL,NULL,'F R Calçados Ltda, Conferente de peças. (Janeiro 2017 á Setembro de 2017)

• Prefeitura municipal de Caraá, Agente Comunitário de saúde. (Setembro 2017 á Outubro de 2018)

• MF Gomes & Cia LDTA, Atendente de padaria ( Outubro de 2018 á Março de 2019)

• PMP Drogaria e Comerco de Eletronicos Ltda, Promotora de Vendas, Vendedora, Operadora de Caixa( Março de 2019 á Outubro 2020)

• União Supermercado, Atendente de Padaria (Outubro de 2020 á Dezembro de 2020)','Curso de Dicção e Oratória Comunicação de Auto Impacto, Fundação Ulysses Guimarães, 2015.

 Noções Básicas de Word, Alfa Digital, 2010.

Curso técnico de Enfermagem, (adiado) Centro Universitário UNICNEC/ Colégio Cenecista Marquês do Herval, 2018.',NULL,'Administrativa, Comercial, Estágio, Marketing',NULL,NULL,'Indicação',NULL,NULL,'Não','Alison Borba: 996930902 (Gerente Mercado Gomes)
Patricia Rodrigues: 995153595 (Gerente Farmácia PMP)
Micheli Reis: 997214170 ( Subgerente Farmácia PMP)','Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa educada, que gosta de pessoas, não sou envergonhada procuro me dar bem com todos os colegas de trabalho, sempre faço o melhor e mim, sou dedicada, aprendo rápido, tenho vontade e necessidade de trabalhar, desde já sou muito grata pela oportunidade de ser pelo menos avaliada por vocês.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-01-21T15:32:00.000Z'::timestamptz),
  ('Gustavo Henrique Stoffel dos Santos','ghstoffel@hotmail.com',NULL,'51996037888','1994-11-19',31,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=17EaJ-RN_dn0HFkG9NZlwIb3KiDWP-D86','Engenharia mecânica(ainda cursando)','Ensino Superior Incompleto','Unisinos',NULL,NULL,'Magna International.Estagiário.Dez/17 até Jun/2020.As principais atividades exercidas foram relacionadas aos projetos na fábrica, desde gerenciamento das contas direcionadas para o setor e alocação de verba até questões burocráticas de procedimentos de compras de material dos projetos(de robôs à materiais de baixo custo agregado)','Curso de inglês avançado na escola InForum (Gold Coast, AUS)',NULL,'Administrativa, Financeiro, Novos Negócios, Engenharia','https://drive.google.com/open?id=1fw2QJLB_m_V6ctSOj1N72E_ExQX0VF8u',NULL,'Instagram',NULL,NULL,'Sim','Márcio, 51 99644-9724, Magna International','Quero inscrever-me no banco de talentos da Young!','Possuo cursos de softwares de desenho 2D/3D, programação na linguagem C, certificação de mergulho, faixa roxa em karate e curso de tiro com revolveres e pistolas','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-01-22T03:02:00.000Z'::timestamptz),
  ('Renan de Souza Muniz','renanmunizhb@gmail.com',NULL,'998092133','2002-12-26',23,'Solteiro(a)',NULL,'Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=16U1gUK6gSP5vejo6q23BfryWFIOvu_Mb','Cursando administração','Ensino Médio Completo','Unisinos','2021-01-21',NULL,'Tabelionato Baierle, comecei em dezembro de 2019 e sai em março de 2020 devido a pandemia. Exercia cargo de estagiário e fazia de tudo um pouco lá dentro.','Estou cursando administração','Atestado de atendimento em excelência','Administrativa, Marketing',NULL,'https://drive.google.com/open?id=1EQi7Evs9suBw4tUVRS4OHG1SoI04rZMl','Instagram',NULL,NULL,'Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Esse ano terminei o ensino médio on-line por causa da pandemia, estou fazendo a carteira de motorista tipo B, fiz a primeira etapa das aulas teóricas e agora estou aguardando para fazer as aulas práticas, assim que o cfc liberar.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-01-27T15:26:00.000Z'::timestamptz),
  ('Jênifer de Oliveira Furlan','jeniferfurlanof@gmail.com',NULL,'85171452','1995-06-09',30,'Solteiro(a)',NULL,'Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1ZjXVl6zuitRi6j_tR3HSir8b1Kl3bJ4w','Gestão em Recursos Humanos','Ensino Superior Incompleto','Uniasselvi','2023-01-27',NULL,'- Experiência Profissional
Empresa: Clic do dia intermediações (INOVE-GRUPO BOM SIM)
Endereço: Rua Riachuelo, número 1334, galeria São marcos, Centro-Porto Alegre/RS
Início:12 de dezembro de 2017
Saída:10 de junho de 2019
Cargo: atendente       
Funções: Atendimento ao público, vendas em loja de produtos internos, telemarketing ativo e receptivo, sistemas operacionais interno e pacote Office;(criação de planilhas e elaboração de contratos e verificação de normativas) e-mails, organização de arquivos e documentos.

- Atualmente
Empresa: APL apoio logístico Eireli epp
Endereço do contratante: Floresta, número 146-Porto Alegre/RS
Endereço do local de trabalho: Pedágio 474
Início: 25 de julho de 2020
Cargo: chefe de turno 
Horário: 14hrs às 20hrs e 15 min; (carga horária, 6hrs)
Funções: Atendimento ao público, organização escalas e supervisão dos demais funcionários, pendências administrativas; controle de caixas, tesouraria e mantimentos do local, lançamento e monitoração de dados, elaboração de relatórios, e-mails, e planilhas.',NULL,NULL,'Novos Negócios','https://drive.google.com/open?id=1maxJTerrfZyUVTTQu3vNshIfpKg8jmlH',NULL,'Google',NULL,NULL,'Não','gerente Valquíria  (51) 99776-1434','estágio','Curiosidade me define, tenho interesse em assuntos completamente distintos um dos outros. Exemplificando; tenho paixão por agricultura, inclusive cultivo minha horta, ao mesmo tempo gosto de videio games e coisas ligadas a tecnologia. Ao meu ver completamento apostos, não?! Tenho interesse na língua Inglesa, faço curso, mas ainda estou longe do nível de diálogo fluente, e muito menos me virar por lá. Bom como é notável na minha escrita, sou alegre, bem humorada, e sendo audaciosa, bem criativa e desinibida. Comunicação é um ponto forte na minha personalidade.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-01-28T01:47:00.000Z'::timestamptz),
  ('Virgínia Gomes dos Santos','virginiagsantos@yahoo.com.br',NULL,'51996894850','1995-08-09',30,'Solteiro(a)',NULL,'Sim','Osório/RS','https://drive.google.com/uc?export=view&id=1Q5_WRTwMYMWONDtzGJFA4gGUs2xrV77d','Administração de empresas','Ensino Superior Completo','Universidade Leonardo da Vinci','2021-03-20',NULL,'•	Auxiliar administrativo – KRAFT Papelaria e Bazar (Janeiro 2019/ Agosto 2020)	
•      Estagiária de Administração – Prefeitura Municipal de Osório (Julho 2013/ Dezembro/2014)','•	Curso de Auxiliar de Logística – Faculdade Cenecista de Osório (Março 2013/ Fevereiro 2014)
•	Técnico em Meio Ambiente – Escola Estadual de Ensino Médio Ildefonso Simões Lopes (Março/2011 a Dezembro/2012)
•	Curso de Especialização em AUTOCAD 2D E 3D – Miranda Informática (Agosto 2014/ Agosto 2015)',NULL,'Administrativa, Financeiro, Marketing','https://drive.google.com/open?id=1HPIxqeF5eZZXS1yOcRZ4mKbqlrgup7Yw',NULL,'Indicação',NULL,NULL,'Sim','Ramires Costa (Proprietário da Kraft Papelaria e Bazar, Santo Antônio da Patrulha)
51 99519-5598
51 3141-4280','Quero inscrever-me no banco de talentos da Young!','Olá!

Sou formanda em Bacharel de Administração, e estou a procura de trabalho na área Administrativa com o intuito de adquirir maior experiência na área. Já tenho algumas experiências e sei que posso agregar na empresa com um pouco do meu conhecimento e tambem aprender com vocês ainda mais.

Desde já agradeço contato!

Virgínia.
51 996894850','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-01-29T00:36:00.000Z'::timestamptz),
  ('Bruna dos Santos Dias','brunadiasrp.com@gmail.com',NULL,'51997533332','1996-06-21',29,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1UFMrJpsyoAHUbxL6T1u3-0KLDcm2cdrA','Comunicação Social com Habilitação em Relações Públicas','Ensino Superior Completo','Faculdades Integradas de Taquara FACCAT','2020-02-14',NULL,'PIRISA PIRETRO INDUSTRIAL LTDA. - Coordenadora de comunicação e marketing. - Jul 2019 à Ago 2020 - Gestão de projetos de comunicação, Desenvolvimento e criação de layout para eventos, material gráfico, embalagens, protótipos, logotipos, divulgações criação de folder, flyer, banner, adesivo, cartão de visita, etc)., Gestão de Mídias Sociais,  Relacionamento com o Cliente, Gestão de eventos e Planejamento de Comunicação e Marketing.

IMAP INDÚSTRIA E COMÉRCIO LTDA. - Prospecção. - Mai 2018 à Jun 2019.  Prospecção de clientes Inbound e Outbound, atendimento ao cliente e gestão de relacionamento, análise e controle do CRM, relatórios de vendas e possíveis clientes, chatbot e social media.

REDE MAXXI ECONÔMICA DROGARIA LTDA. - Assistente Administrativa - Set 2015 à Abr 2018.  Fiscal de caixa, suporte à gerência, controle de entradas e saídas de NF''S, administração de depósitos e controle financeiro.

CRISTIANE CLEZAR LOJA E ESTÚDIO FOTOGRÁFICO. - Secretária. - Jan 2013 à Julho 2015. Realizar atendimento ao público, agendamentos de horários, compras de artigos fotográficos, controle de caixa, ajuste e edição de fotos para impressão.','Fiz cursos nas áreas de comunicação e relacionamento, SAC 3.0, marketing digital, prospecção de clientes e especialista em marketing inbound.','MARKETING DIGITAL - RD Station 2019 | SUCESSO DO CLIENTE - RD Station 2019 | INGLÊS - Wizard 2019','Administrativa, Comercial, Estágio, Marketing','https://drive.google.com/open?id=1oK-ZTgHEE6wzRhr-dvgdLnOBwM3BQzb4','https://drive.google.com/open?id=1EyxI1W6IdmVkzPU2afHGYg6VstYjsb8j','Indicação',NULL,NULL,'Sim','Josué Pereira 51 99793 - 9500
Maristane Gomes 51 99894 - 9880
Jorge Unterleider 51 99683 - 3388','Quero inscrever-me no banco de talentos da Young!','Me considero uma pessoa pró ativa, tenho atuação criativa e adoro trabalhar em equipe, tenho um bom relacionamento interpessoal, sou responsável e procuro sempre colaborar para que meu empregador e eu alcancemos resultados satisfatórios. 
Morei fora da cidade por um ano e meio, e por complicações de saúde na minha família resolvi voltar. Atualmente trabalho como freelancer desenvolvendo designers gráficos e prestando alguns serviços de assessoria na área da comunicação. Formada no curso de Relações Públicas pela FACCAT, procuro atuar nas áreas nas quais meu perfil profissional estejam de acordo. Minha intenção é me desenvolver, tanto pessoal como profissional, e claro, gerar resultados para meu(a) empregador(a).','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-01-29T22:47:00.000Z'::timestamptz),
  ('Guilherme Bittencourt','guilhermeantunes23@gmail.com',NULL,'51991884867','1996-04-23',29,'Solteiro(a)',NULL,'Sim','Canoas/RS','https://drive.google.com/uc?export=view&id=1rNBI3kH4Aoxp6m-irFEhgaC5JUT5MWYC','Engenharia Civil','Ensino Superior Incompleto','Unilasalle Canoas','2021-12-01',NULL,'SULGÁS RS - Companhia de Gás do Estado do Rio Grande do Sul 2018/2019 - Coordenadoria Técnica do setor de Mercado Urbano. Principais atribuições: Análise de projetos de rede de gás; Liberação de material p/ obras de adequação; Emissão de ordens de serviço; Controle de Medição das empresas terceirizadas; Atendimento ao público via telefone/e-mail; Relatórios gerenciais. Controles dos fluxogramas da carteira de clientes; Suporte Técnico. Controle e atualização dos sistemas ERP e SE Suíte; 

MRV ENGENHARIA Estágio de Engenharia Civil - 2017/2018 Responsável pela montagem(elet., hid.), concretagem e içamento de todas lajes pré-moldadas referentes aos 30 pavimentos das obras Porto Laçador e Porto Quintana. Atribuições gerais: Compras; Orçamentos; Lançamentos fiscais; Acompanhamento dos processos construtivos; Contratação e acompanhamento de serviços terceirizados; Revisão e compatibilização de projetos; Revisão e correção de projetos em AutoCAD; Controle de serviços e documentação de terceiros; Medições; Levantamentos quantitativos; Planejamento de cronograma; Controle de suprimentos/ almoxarifado; Apresentação comercial dos empreendimentos. Passando pelos setores de Planejamento, Controle, Auditorias e Qualidade. 

EPPLAN CONSTRUTORA LTDA Auxiliar de Engenharia/ Administrativo - Regime CLT - 2016/2017 Acompanhamento das Obras - Reforma Maternidade da Santa Casa de Misericórdia de Porto Alegre; Ampliação e reforma Hospital Santa Clara/ Santa Casa; Reforma da Cobertura do GHC - Hospital Nossa Sra. da Conceição. Atribuições gerais: Compras; Orçamentos; Lançamentos fiscais; Acompanhamento dos processos construtivos; Contratação de serviços terceirizados; Revisão e compatibilização de projetos; Revisão e correção de projetos em AutoCAD. Controle de serviços e documentação de terceiros; Medições; Levantamentos quantitativos; Planejamento de cronograma; Controle de suprimentos/ almoxarifado; Recrutamento;',NULL,NULL,'Licenciamentos, Novos Negócios, Engenharia','https://drive.google.com/open?id=1bbqjOd8L5x78YDlKrRFGJcRScr_hDy1t','https://drive.google.com/open?id=1j6IdxKBBBi4wpp3I6R9hMecl8cfBWaiW','Instagram',NULL,NULL,'Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-01-30T00:51:00.000Z'::timestamptz),
  ('Raquel Barbosa dias','raquel.2010.barbosa@hotmail.com',NULL,'51999198012','1995-01-05',31,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1dQh0fNXPbW_ukMUKPlT7nnsZ6vxEZs4K','Técnico em contabilidade','Ensino Superior Incompleto','Instituto Federal de Educação, Ciência e  Tecnologia Sul-Rio Grandense','2016-03-12',NULL,'Vaga de estágio e primeiro emprego','Sou técnica em contabilidade, e graduanda de Engenharia Agroindustrial Alimentícias - Universidade Federal do Rio Grande (FURG), onde é um curso diferenciado por possuir disciplinas voltadas para a parte administrativa e estratégias.','Não','Administrativa, Estágio, Financeiro','https://drive.google.com/open?id=1gxlpnGCOEnYqnwCkpVT9MuSquKyS2Wvn',NULL,'Instagram',NULL,NULL,'Não',NULL,'Estágio','Durante a graduação não era possível conciliar curso com trabalho, devido ao curso ser em período integral, com isso decidi empreender na confeitaria, onde trabalho com doces a quase 5 anos.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-01-30T16:22:00.000Z'::timestamptz),
  ('Maria Eduarda da Luz Meregali','melmeregali@gmail.com',NULL,'51997462757','2000-09-08',25,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1AyExJquqolmWKsXdrinVoQXnvxIFa2Lf','Sistemas de Informação','Ensino Superior Incompleto','FURG - Universidade Federal do Rio Grande','2021-03-01',NULL,'Diretora Administrativa Financeira
Byte Jr.
Rio Grande - RS
Período: 01/2020 - 06/2020
A Byte Jr. é uma empresa sem fins lucrativos que atua no desenvolvimento de sistemas web e aplicativos mobile. 
Realizações / tarefas:
Responsável pelo funcionamento legal e financeira da empresa, entre as principais atividades estava o planejamento financeiro, o controle do fluxo de caixa e renovação de documentos.

Diretora de Projetos
Byte Jr.
Rio Grande - RS
Período: 08/2018 - 12/2019
Realizações / tarefas:
Responsável pelo gerenciamento dos projetos, garantindo que os prazos, os requisitos e os orçamentos saia de acordo com o planejado. Gerenciamento de pessoas e processos, contato constante com clientes.
Realizei a implementação do SCRUM como metodologia para o desenvolvimento dos projetos na empresa, no processo ministrei palestras e mini cursos para adaptar a metodologia para nossa realidade, atualmente é este o processo utilizado.
Participei do desenvolvimento de sistemas em Node Js como linguagem de programação, Mongo DB para banco de dados e HTML e CSS para o front-end.

Recepcionista
Hotel Ecovilly
Santo Antônio da Patrulha - RS
Período: 09/2016 - 03/2018
Realizações / tarefas:
Recepção e atendimento aos hospedes e visitantes, execução de escalas dos funcionários, controle e manutenção de estoque e controle de fluxo de caixa da empresa.','Na graduação em Sistemas de Informação o foco da formação é dividida entre Administração e Tecnologia.',NULL,'Administrativa, Financeiro, Marketing','https://drive.google.com/open?id=1RpSx_S2iZ_0pcDIQNt0KQWVwoWFuSAjw',NULL,'Indicação',NULL,NULL,'Sim','Elizabeth - Gerente do Hotel Ecovilly
Telefone: +55 51 8020-8079','Vaga administrativa','Sou proativa, comunicativa e me adapto rapidamente a novas tecnologias. Atualmente com as aulas online assíncronas, o que me da liberdade com os horário de trabalho, estou a procura de um ambiente de trabalho amigável onde possa crescer junto com a empresa. Desde já muito obrigada pela oportunidade de me candidatar a vaga.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-01-30T16:39:00.000Z'::timestamptz),
  ('Mariana dos Santos','marianabdossantos@outlook.com',NULL,'51995204566','2002-10-06',23,'Solteiro(a)',NULL,'Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1XK0mwzHEY_D8iUG25b0v_sfw743hvPly',NULL,'Ensino Médio Completo','Escola Estadual de Ensino Médio Patrulhense','2021-01-09',NULL,'Prefeitura Municipal de Santo Antônio da Patrulha.
2- Estagiária.
3- Atendimento ao Público no Posto de Saúde Centrar, telefonista e auxiliar administrativo. (04/06/2019 até 08/01/2021)
 
1-Capacit IT
2- Auxiliar de escritório.
3- Auxílio administrativo e atendimentos via telefone.
De 09/12/2020 até 16/01/2021.',NULL,NULL,'Estágio','https://drive.google.com/open?id=1ClxLUtzB-8maNjo1PRfioqLZs2tMjb4O',NULL,'Agência de Empregos',NULL,NULL,'Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-01-30T17:22:00.000Z'::timestamptz),
  ('Rafael Azambuja de Deus','rafaazd@gmail.com',NULL,'55999799563','1987-12-22',38,'Solteiro(a)',NULL,'Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1lMEZkfGK0K86rR5zKt2yoQ2jTTeoDvlM','Engenharia Civil','Ensino Superior Incompleto','UNIPAMPA','2021-12-21',NULL,'1) Corsan, 2) Estagiário, 3) 03/03/2007 a 18/01/2008, 4) Executava serviços de escritório, documentos, memorandos, atendimento ao público','Antes de cursar engenharia civil, eu cursei Informatica, administração e engenharia elétrica, todos incompletos. Também fiz estágio no escritório da Corsan, durante 1 ano. No momento, também faço parte do grupo de pesquisa da UNIPAMPA laboratório de Fluidodinâmica computacional e turbulência atmosférica.',NULL,'Administrativa, Estágio','https://drive.google.com/open?id=18nfcrekiknbZqDluM0Ea7Nb1zrDI1UU1',NULL,'Agência de Empregos',NULL,NULL,'Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa comunicativa e pró ativa. Minhas habilidades em softwares são basicamente os que uso na minha graduação, como autocad, excel, word. Estou em busca de uma oportunidade para aprender não só na minha área, mas no que for útil. Obrigado!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-01-30T22:30:00.000Z'::timestamptz),
  ('Cássio Vidal dos Santos','cassio_shaman@hotmail.com',NULL,'51999983484','1991-03-20',34,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1tnoBe8Sv24sXcQ5FCAMCefpjUnTzxsDN','Administração de empresas','Ensino Superior Completo','Faculdade São Judas Tadeu','2018-03-17',NULL,'JB dos Santos
Auxiliar administrativo
Data de admissão: Março 2004
Lançamento de caixas;
Arquivo em geral;
Movimentação de cargas.

Wall-Mart Brasil
Fiscal de caixa
Data de admissão: Dezembro 2007
Fechamento de caixas;
Serviço bancário;
Gestão de cofre;
Atendimento ao cliente;
Gestão dos caixas operadores;
Elaboração de escala de trabalho para caixas operadores e empacotadores.

Sistema FIERGS - CIERGS
Assistente coorporativo III
Data de admissão: Março 2011
a) Patrimônio:
Lançamento de notas fiscais de bens e obras dos imóveis;
Conhecimento do sistema de inventário;
Emplacamentos na sede do Sistema FIERGS;
Lançamento de dados do custeio ABC;
Arquivo em geral;
Baixas patrimoniais.
b) Expedição:
Gestão de contratos (fornecimento de café, serviço notarial, postagens,
malotes, serviço de motoboy, serviço de reprografia, fornecimento de
periódicos);
Elaboração de termos de referência para novos contratos;
Montagem de rateios e pagamentos dos contratos em geral (fornecimento de
café, serviço notarial, postagens, malotes, serviço de motoboy, serviço de
reprografia, fornecimento de periódicos).
c) Seguro:
 Gestão de contratos (seguro de veículos, patrimonial, acidentes pessoais e
responsabilidade civil);
Elaboração de termos de referência para novos contratos;
Elaboração e acompanhamento de sinistros.
d) Transporte:
Gestão de contratos (locação fixa de veículos, locação eventual,
gerenciamento de cartão de combustível, locação de container e serviço de 
transporte de passageiros);
Elaboração de termos de referência para novos contratos;
Avaliação de fornecedores;
Montagem de rateios e pagamentos dos contratos em geral (combustível,
taxi, locações, avarias, manutenções e multas);
Gestão de motoristas e das horas trabalhadas;
Aprovação de registro ponto;
Realização das prestações de contas;
Distribuição e montagem de roteiros de transportes;
Controle dos veículos ativos da frota;
Operacionalização do aplicativo de Reserva de Veículos;
Gestão das planilhas de utilização dos veículos;
Controle das infrações de trânsito e seus respectivos pagamentos;
Gestão das manutenções dos veículos locados e próprios (pesados e leves);
Pagamento e gestão dos licenciamentos dos veículos;
Sindicância das avarias;
Liberação de acessos bem como regularização nos sistemas do processo;
Realização de orçamentos referente a manutenção de veículos;
Construção do valor de km rodado;
Atendimento de plantão das 8h às 22h;
Elaboração e controle de indicadores
Emissão documentos internos;
Conhecimento no sistema ERP TOTOVS – Protheus;
6S.

Sicredi – Nordeste RS
Gerente de negócios - PJ
Data de admissão: Abril 2019
a) Assistente de negócios:
Realizar o atendimento ao público PJ (pessoa jurídica);
Venda/comercialização de produtos financeiros;
Apoio no atingimento e monitoramento de resultados/metas estabelecidas;
Apoio na elaboração de plano de ações;
Execução e fomento de novos negócios;
Apoio na formalização das operações, recebendo e analisando os
documentos a fim de que haja o cumprimento das formalidades;
Realizar a organização da agenda de demandas diárias da carteira PJ.
b) Gerente de negócios Pessoa Jurídica:
Realizar o atendimento aos associados do segmento Pessoa Jurídica,
visando prestar um atendimento diferenciado e direcionado ao público alvo;
Identificar as soluções financeiras que melhor atendam ás necessidades do
público;
Responder pela administração e desenvolvimento de carteira de associados
Pessoa Jurídica;
Prospectar novos associados realizando estudos do potencial da carteira;
Realizar estudos de potencial do mercado;
Conhecer o ramo da atividade desempenhada pelo associado, o grau de
endividamento;
Realizar visitas externas, visando o aumento do quadro social;
Realizar o controle da cobrança das operações;
Participar de eventos externos visando à prospecção de novos associados e
incremento da carteira do(s) segmentos sob sua responsabilidade;
Líder da Célula PJ Menores 2020/2;
Participação em grupos de trabalho para desenvolver um perfil de produto e
atendimento específico/adequado para Contadores e MEI’s.','Ativo Imobilizado, Redação Empresarial, Qualidade no Atendimento, Microsoft Excel, Contabilidade, Técnicas de Vendas, Estratégia de Negócios, Noções Básicas do Direito, Certificação Profissional ANBIMA - CPA 10.',NULL,'Administrativa, Comercial, Financeiro, Novos Negócios','https://drive.google.com/open?id=1EpHGTz9ISX4ytw61662a89uD5XHbiOZj',NULL,'Indicação',NULL,NULL,'Sim','Laura (51) 997821740 FIERGS e Marciane (51) 993260858 Sicredi','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-01-31T22:45:00.000Z'::timestamptz),
  ('Willian Augusto Silveira de Oliveira','willianaugusto70@gmail.com',NULL,'51998030381','2001-09-21',24,'Solteiro(a)',NULL,'Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=166EQ_KntuDf73LfjwcSx0Q1dS1UvW4W4','Atualmente cursando Relações Públicas','Ensino Superior Incompleto','FACCAT - Faculdades Integradas de Taquara',NULL,NULL,'ABC Livraria e Papelaria - Ocupando o cargo de atendente. (Outubro de 2017 à Maio de 2018)
ABC Livraria e Papelaria - Ocupando o cargo de atendente e programador de sistemas. (Dezembro de 2019 até o atual momento)
Click Content Comunicação - Empresa própria na área da comunicação.','Curso de computação, marketing e marketing em redes sociais',NULL,'Administrativa, Comercial, Estágio, Marketing',NULL,NULL,'Instagram',NULL,NULL,'Sim',NULL,'Estagiário','Sou uma pessoa extremamente comunicativa e com uma super facilidade quando se deve trabalhar em grupo.
Além disso, sou pontual e procuro sempre entregar o trabalho da melhor forma possível.
Com minha experiência espero agregar ao futuro da Young, e junto crescer profissionalmente com todos os ensinamentos da empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-02-01T23:58:00.000Z'::timestamptz),
  ('Paula Taís  Soares de Jesus','paulass1213@gmail.com',NULL,'51999226820','1997-06-11',28,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1x8CmhkImYYHe28zyBZIpSYtMoRz1jJFg','Gestão de Recursos Humanos','Ensino Superior Incompleto','Uniasselvi','2021-06-30',NULL,'Loja Sempre Linda - Operadora de Vendas - Admissão 16 de agosto de 2016 até o momento - Vendedora, prestando um serviço de atendimento ao cliente, vendas online e controle das redes sociais da empresa.
Além de organização e serviços administrativos da empresa.

Loja Sempre Linda - Operadora de Vendas - Março de 2015 a setembro de 2015. 

Estagiaria no Programa PIM - Primeira Infância Melhor - Outubro de 2015 a Abril de 2016','Gestão de Recursos Humanos Formanda 2021/2. Com interesse em Pós Graduação na área de Administração de Pessoas.',NULL,'Administrativa',NULL,NULL,'Indicação',NULL,NULL,'Sim','Loja Sempre Linda - 36625884','Quero inscrever-me no banco de talentos da Young!','Aberta para novas possibilidades e oportunidades de emprego, agora na minha área de Recursos Humanos ou área similar. 
Facilidade para solucionar problemas; 
Comunicativa; 
Noções básicas de informática;
Disposta a aprender e adquirir novos conhecimentos.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-02-02T04:35:00.000Z'::timestamptz),
  ('Daniela da Silveira Barcella','danielabarcella199813@gmail.com',NULL,'51997668301','1998-01-13',28,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=123hNZ6x61wtZGD66SgTDYssOwsA_g8g9','Direito','Ensino Superior Incompleto','Unicnec','2021-12-22',NULL,'Atividades profissionais
Assistente Jurídica - WLB Advogados Abril/2019 – janeiro de 2021
Responsabilidades
• responsável pelo atendimento ao público;
• responsável pela conferência de cadastros;
• elaborações de petição inicial e de andamento; • protocolos sistema TJRS e Eproc; elaboração de contratos.
Assistente de Atendimento ao Consumidor – Procon Santo Antônio da Patrulha Julho/2015 - fevereiro/2016
Responsabilidades
• atendimento ao público;
• realização de acordo;
• solucionar problemas e solicitações de reclamações.
Secretária – Conselho Tutelar Janeiro/2014 - janeiro/2015
Responsabilidades
• atendimento ao público;
• responsável por elaborar relatórios e ofícios destinados ao MP; • serviços administrativos no geral.','Possuo curso de atendimento sistêmico humanizado ao cliente.',NULL,'Administrativa, Comercial, Financeiro, Novos Negócios','https://drive.google.com/open?id=1lGwkxsJLJreV2Jjp8cFgnYYOj2uvghFn',NULL,'Instagram',NULL,NULL,'Sim',NULL,'Jurídico da empresa',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-02-04T23:25:00.000Z'::timestamptz),
  ('Luíza Farias da Silva','luizafarias2003@hotmail.com',NULL,'51998411440','2003-03-07',22,'Solteiro(a)',NULL,'Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1LUVRS75SbIVZuIadjzujaTi1jIT5NMd7',NULL,'Ensino Médio Completo','Colégio Santa Teresinha','2021-12-19',NULL,'Estou me candidatando para meu primeiro emprego.','Língua Inglesa, nível avançado. Pela “English Place”',NULL,'Administrativa, Comercial, Estágio, Marketing','https://drive.google.com/open?id=1lEmlrpANLxRh5gdlob_K3WRgqaCKXeqH',NULL,'Instagram',NULL,NULL,'Sim',NULL,'Estágio em Santo Antônio da Patrulha','Sou recém-formada e estou disposta a me dedicar para o ingresso na vida profissional. Tenho amplo conhecimento com a língua inglesa, faço curso há 5 anos. Além disso, possuo bastante afinidade com projetos de marketing, meu pai trabalha com isso e sempre fui familiarizada. Desde já, agradeço qualquer oportunidade!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-02-06T00:33:00.000Z'::timestamptz),
  ('Jeniffer Souza Guindani','jenifferguindani96@hotmail.com',NULL,'51998023673','1996-08-05',29,'Solteiro(a)',NULL,'Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Qnn3SOyvRMUv4C6Hakrn5cmW4a3wGo8E','Ciências Contábeis','Ensino Superior Incompleto','Uniasselvi','2022-12-14',NULL,'IRGA- Instituto Rio Grandense do Arroz- secretaria','Curso Técnico em administração IFSUL- FORMADA',NULL,'Financeiro','https://drive.google.com/open?id=1a3mBB6tPRzOGr7twtr4DUKFMs_83JjO2',NULL,'Indicação',NULL,NULL,'Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-02-07T02:28:00.000Z'::timestamptz),
  ('Marcelo Alves da Silva','marceloalvessilva999@gmail.com',NULL,'51999123736','1981-12-26',44,'Casado(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1UqSnv7FozFy9cHUpbaUTCmZHXVPHRbEd','Ciências Contábeis','Ensino Médio Completo','Escola Cenescista Barão do Cahy','1999-12-31',NULL,'1- Jazida de Areia Rincão Eireli 2- Assistente Administrativo 3-01/07/2017 à 15/06/2020 4- Responsável pela rotina diária administrativa da empresa, como aprovação de orçamentos, controle das vendas e das compras, contato com clientes e fornecedores, emissão de notas fiscais e boletos, gestão de funcionários, logística das vendas e outros.','Cursei 1 semestre de Administração de Empresas na Facos/ Facas no ano 2000.',NULL,'Administrativa, Comercial, Financeiro','https://drive.google.com/open?id=1UUSBQpW44fUyqnA-VMYU3wwq1P4UkqwM',NULL,'Facebook',NULL,NULL,'Sim','*Flávio Rocha - Madeireira Pindorama - 51996111080  * Daniel Wasem - Jazida Rincão - 11 96494-7634','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-02-07T23:52:00.000Z'::timestamptz),
  ('SIMONI SANTOS DA SILVA HELBICH','helbich25@gmail.com',NULL,'51999522164','1979-06-25',46,'Casado(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1XW7n_va06RX2A5GLE8Flxxn2-A_zZ86a','Administração de empresas','Ensino Superior Completo','FACOS/OSORIO','2004-01-10',NULL,'1) MASAL S/A 2) ASSISTENTE FINANCEIRO II 3) 06/11/2007 A 31/10/2020 4) RESPONSAVEL PELO CONTAS A RECEBER, CONTROLE DE DESPESAS VENDEDORES EXTERNOS, CONCILIAÇÃO BANCARIA, CONTAS A PAGAR E OUTRAS ATIVIDADES AFINS.','DEPARTAMENTO PESSOAL, CONTABILIDADE, FINANCEIRO(SEBRAE), INGLES BASICO',NULL,'Administrativa, Financeiro',NULL,NULL,'Indicação',NULL,NULL,'Sim','AMARILDO OU CIDA - MASAL - 36623066','Quero inscrever-me no banco de talentos da Young!','ESTOU A PROCURA DE UM NOVO EMPREGO, SOU ORGANIZADA, RESPONSAVEL, TENHO EXPERIENCIA DE 13 ANOS EM UMA EMPRESA','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-02-08T13:38:00.000Z'::timestamptz),
  ('William Delmar da Silva','williamdelmar10@gmail.com',NULL,'51982979502','1994-10-10',31,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1iKLqZiSguniYV18F1uAVowT2J1zWhuVd','Direito','Ensino Superior Completo','UNICNEC','2020-05-27',NULL,'1- Atuei como assessor jurídico especial na Procuradoria Geral do Município de Santo Antônio de Fevereiro de 2020 até o final da gestão em 28 de Dezembro de 2020.

2- Atuei como estagiário na Procuradoria Geral do Município de Santo Antônio da Patrulha no ano de 2019.

3- Trabalhei como Gestor na rede de Farmácias São João em Santo Antônio da Patrulha/RS.

4- Trabalhei como balconista na rede de Farmácias Maxxi Econômica, de 24 de junho de 2016 até 04 de junho de 2018. 

5- Estagiei na agência FGTAS/SINE de Santo Antônio da Patrulha no período de um ano e seis meses.

6- Trabalhei como balconista na rede de farmácias Mais Econômica de 20 de dezembro de 2012 até 14 de setembro de 2013 em Santo Antonio da Patrulha/RS.','Informática Básica: IPD, Windows, Word, Internet, Antivírus, Impressão, Scanner, Digitação, Excel, Multimídia e PowerPoint. Instituição: Styllu’s . Carga Horária: 88 horas. 

Informática Avançada: Corel Draw, Photoshop, Flash, Dreanweaver e HTML. Instituição: Styllu’s. Carga Horária: 88 horas. 

PEDEP: Programa de Direcionamento e Experiência Profissional. 1ªEtapa. Instituição: Mundo Office. Carga Horária: 6 horas. 

PEDEP: Programa de Direcionamento e Experiência Profissional. 2ª Etapa. Instituição: Mundo Office. Carga Horária: 36 horas. 

Designer Gráfico: Corel Draw, Corel Draw Avançado, Photoshop, Photoshop Avançado. Instituição: Mundo Office. Carga Horária: 40 horas. 

Rotinas Administrativas: Administração, Secretariado, Departamento de Pessoal, Contabilidade, Telemarketing, Vendas. Instituição: Mundo Office. Carga Horária: 40 horas.

Espanhol: Linguagem, Alfabeto em geral. Instituição: Mundo Office. Carga Horária: 20 horas.

Monitora de Laboratório de Informática: supervisão e treinamento pedagógico, auxilio aos alunos durante as aulas, recuperação de aulas perdidas, manutenção básica de computadores (hardware) sistemas operacionais Windows e Linux, redes Básicas. Instituição: Mundo Office. Carga Horária: 200 horas. 

Inglês: Linguagem, Alfabeto, leitura, Dialogo. Instituição: Mundo Office. Carga Horária: 80 horas. Web Designer Avançado: PHP, CSS e HTML, Logica de Programação.',NULL,'Administrativa, Comercial, Novos Negócios','https://drive.google.com/open?id=1NzD_9MyYMpQwLb6r3UdcJobWWIPDKCXD',NULL,'Instagram',NULL,NULL,'Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-02-08T13:45:00.000Z'::timestamptz),
  ('Francine Mattos','mattos.francii@gmail.com',NULL,'51994250162','1993-08-18',32,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=198YA6GBbklKW8o87DIxl-SjkR8MpBRQT','Biomedicina','Ensino Superior Incompleto','Unisinos','2023-03-01',NULL,'C.S. Maravilhosa Alimentos Ltda.
Auxiliar Administrativa 
2009-2016

YÁ-YÁ Kids
Gerente Comercial
Auxiliar Administrativa 
2016-2019','Curso Técnico em Transações Imobiliárias',NULL,'Administrativa',NULL,NULL,'Jonata',NULL,NULL,'Não','Fernandes
(51) 3409-1028
C.S. Maravilhosa Alimentos Ltda.','Quero inscrever-me no banco de talentos da Young!','Gosto de tocar violão no meu tempo livre para aprimorar minhas habilidades..','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-02-09T14:09:00.000Z'::timestamptz),
  ('Maria Eduarda Silva da Silveira','mariaeduardasilveira7079@gmail.com.com',NULL,'51996657642','2002-12-26',23,'Solteiro(a)',NULL,'Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1MdMqb5Y6uv737rUSXpB-ojxc9oOuvqEA','Ciências Contábeis','Ensino Superior Incompleto','UNIASSELVI - Centro Universitário Leonardo da Vinci','2025-02-10',NULL,'1) Bier, Silveira e Costa advogados Associados 
2) Secretária 
3) Data de início- 01/02/2020 Data de saída- 16/02/2020 (Trabalho temporário para cobrir férias)
4) • Atender e fazer telefonemas;
• Anotar e transmitir recados;
• Administrar a agenda de clientes;
• Fazer e administrar a agenda profissional;
• Agendar reuniões;
• Atendimento ao cliente.','Curso- Assistente Administrativo
Local- IFSul- EAD 
160h 

Curso- Trainee Coaching Informática com administração 
Local- Mundo office 
Data de início- 07/2019 Data de saída- 07/2020

Curso- Inglês 
Local- English Place 
Data de início- 03/2015 Data de saída- 12/2019

Curso- Inglês 
Local- Wizard 
Data de início- 03/2020 Data de saída- 12/2021',NULL,'Administrativa, Comercial, Estágio, Financeiro','https://drive.google.com/open?id=1YSjx5e20OGkR0zRUoiHwNqaB6ckJnhEs',NULL,'Instagram',NULL,NULL,'Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','• Pacote office completo e Internet;
• Inglês avançado;
• Google drive.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-02-10T13:27:00.000Z'::timestamptz),
  ('Juliana dos Santos Machado Silveira','julianamachados98@yahoo.com.br',NULL,'996743778','1998-07-25',27,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1ZaiP-YKAkRQsWjA_dod8yb37Uq1YLlKd','Direito','Ensino Superior Incompleto','Facos',NULL,NULL,'Escritório de advocacia Christiane Rocha e Polícia civil',NULL,NULL,'Administrativa, Comercial',NULL,NULL,'Google',NULL,NULL,'Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Comunicativa, organizada, pontual. Cursos de Excel, Powerpoint.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-02-10T13:33:00.000Z'::timestamptz),
  ('João Vitor Costa dos santos','Joaovitorc.santos_29@hotmail.com',NULL,'51998485490','2000-05-03',25,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=16YWxMojX_bjQwlagdLblDRObdeUn5skq','Ciências Contábeis','Ensino Superior Incompleto','Faccat',NULL,NULL,'1) Colombo 2)Aprendiz 3) primeiro emprego de carteira assinada, trabalhei mais voltado para a área de assistência ao cliente e controle de estoques.
1)Lojas Sensação 2) Operador de caixa 3) onde atualmente trabalho, trabalho com o público onde tenho boa comunicação, lido com a área financeira da empresa também, organizando e fazendo os pagamentos de fornecedores. Também lido com a parte de estoque e de pedidos.','Escolhi a contabilidade pelo "leque" de opções que tem, atualmente estou no 4 semestre. Possuo curso de informática básica e algum certo conhecimento a mais.',NULL,'Administrativa, Financeiro',NULL,NULL,'Instagram',NULL,NULL,'Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa dedicada e boa de grupo, procurando evoluir no mercado de trabalho contribuindo com a empresa onde eu estiver.Trabalho com Excel e Word. Inglês básico.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-02-12T16:16:00.000Z'::timestamptz),
  ('João Vitor Costa dos santos','Joaovitorc.santos_29@hotmail.com',NULL,'51998485490','2000-05-03',25,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1PQU5JwLY98FxOBfE3OhCtutl-B5-GvPR','Ciências Contábeis','Ensino Superior Incompleto','Faccat',NULL,NULL,'1) Colombo 2)Aprendiz 3) primeiro emprego de carteira assinada, trabalhei mais voltado para a área de assistência ao cliente e controle de estoques.
1)Lojas Sensação 2) Operador de caixa 3) onde atualmente trabalho, trabalho com o público onde tenho boa comunicação, lido com a área financeira da empresa também, organizando e fazendo os pagamentos de fornecedores. Também lido com a parte de estoque e de pedidos.','Escolhi a contabilidade pelo "leque" de opções que tem, atualmente estou no 4 semestre. Possuo curso de informática básica e algum certo conhecimento a mais.',NULL,'Administrativa, Financeiro',NULL,NULL,'Instagram',NULL,NULL,'Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa dedicada e boa de grupo, procurando evoluir no mercado de trabalho contribuindo com a empresa onde eu estiver.Trabalho com Excel e Word. Inglês básico.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-02-12T16:17:00.000Z'::timestamptz),
  ('João Pedro de Abreu','joaopedrodeabreu2@gmail.com',NULL,'997593658','2000-07-22',25,'Casado(a)',NULL,'Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1uy_Trk6WMbuLL5IOvBjXNjhc1OrwqhAN','Não tenho nem uma por enquanto.','Ensino Médio Completo','Escola Municipal de Ensino Fundamental Madre Tereza',NULL,NULL,'Empresa; RR shoes    Cargo; Preparador de calçado junior    Data de início; 26 de setembro de 2017, 09 de fevereiro de 2018.       Empresa; Magma Cosmo    Cargo; Aux. de Qualidade   Data início; 30/10/2019, Data exata em que eu saí não me lembro ao certo.','Não tenho nem um no momento, mas tenho vontade de fazer alguns, ah sobre data minha formatura eu não me lembro ao certo é que faz tempo que me formei já.','Não tenho','Engenharia',NULL,NULL,'Indicação',NULL,NULL,'Não','Não tenho','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-02-18T16:56:00.000Z'::timestamptz),
  ('Moacir Canaã Santos Irias','moacircanaa@hotmail.com',NULL,'51991389235','1997-10-07',28,'Solteiro(a)',NULL,'Sim','Tramandaí/RS','https://drive.google.com/uc?export=view&id=1npQw_TJrUuNQha9NgQFtdZFPvbuSxMmb','Administração de empresas','Pós-graduação Incompleta','Unicnec Osório','2019-09-21',NULL,'MB & C. Assessoria Empresarial 
Cargo: Gerente Estratégico - 04/2020 a 12/2020
Principais atividades: Assessoria Empresarial para empresas terceirizadas, criação e
planejamento de marketing, recrutamento e seleção de colaboradores, apoio
estratégico nas áreas de Gestão de Pessoas, Marketing e Financeiro.
• Roderjan Administradora de Condomínios - Itapema SC
Cargo: Supervisor Administrativo - 10/2019 a 03/2020
Principais Atividades: Elaboração de planilhas para previsões orçamentárias, controle
da folha ponto de Zeladores, controle de notificações e assembleias, controle financeiro
de condomínios e controle de finalização dos processos administrativos.
• INB Telecom 
Cargo: Auxiliar de Estoque - 05/201 a 10/2019
Principais atividades: Controle de entrada e saída do estoque, realização de
inventário mensal, montagem de cronogramas para distribuições de cargas e
equipamentos, gerenciamento de Notas Fiscais, elaboração de faturamentos.
• Itaú Unibanco 
Cargo: Estagiário - 06/2018 a 04/2019
Principais Atividades: Venda de Crédito Consignado, venda de seguros, venda de
empréstimos pessoais, atendimento aos clientes e abertura de contas.
• Registro de Imóveis de Tramandaí
Cargo: Assistente Administrativo - 05/17 a 05/2019 
Principais atividades: Responsável pelo setor de buscas da CNIB, elaboração de
relatórios diários, realização de buscas e controle de qualidade, coordenação de equipe
e atendimento ao público, controle da folha ponto dos demais colaboradores do setor.','Cursando Ciências Contábeis - Previsão de conclusão em 2021/2','Tutor Externo – Curso de Administração de Empresas – Faculdade Uniasselvi. • Curso de extensão Ead – Departamento Pessoal – Ginead. • Curso de extensão Ead - Gerenciamento com Excelência - SestSenat. • Curso de extensão Ead - Administração Financeira – SestSenat. • Curso de extensão Ead - Gestão de Pessoas - SestSenat • Curso de extensão Ead - Desenvolvimento de Liderança – SestSenat. • Curso de extensão Ead - Gestão de Estoques – SestSenat.','Administrativa','https://drive.google.com/open?id=1hkLAzXrPEoRa-xgZdiX_rUzF5siLQ5SS',NULL,'Instagram',NULL,NULL,'Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Desejo atuar em uma organização que esteja procurando alguém proativo, determinado,
disciplinado e com oportunidade de plano de carreira. Tenho conhecimento, experiências
práticas e teóricas em diferentes áreas da Administração, como: Gestão de Pessoas,
Logística, Finanças, Faturamento, Comercial e Coordenação de equipes.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-02-23T19:05:00.000Z'::timestamptz),
  ('Renan Souza Lunardi','renansouzalunardi@gmail.com',NULL,'55999015883','1995-06-28',30,'Solteiro(a)',NULL,'Sim','São Luiz Gonzaga','https://drive.google.com/uc?export=view&id=1-Lp-cYH5rNc8gw5-xTyor9EqO9pG7r4d','Engenharia Civil','Ensino Superior Completo','Universidade Regional e Integrada do Alto Uruguai e das missões - URI','2019-01-18',NULL,'1) Silva Zamberlan Incorporadora/Santa Maria RS; 2)Superisor Administrativo; 3) 18/03/2019 a 29/11/2019; 4)Gerênciava materiais e participava diretamente da execução de um edifício de 9 pavimentos do começo ao fim. Comecei na empresa como estagiário e logo me destaquei por estar no lugar onde mais gosto, que é na obra junto com o pessoal, logo meu chefe e diretor da empresa Evandro Zamberlan admirou o quanto me esforçava e gostava enquanto estagiava na empresa, no outro ano eu fui até ele pedir para ficar na  pois tinha algo mais a somar para ele, ele me admitiu criando um cargo para mim pois a empresa dele não tinha como ter um Engenheiro Civil, mas um Supervisor sim. Trabalhava direto com os pedreiros e serventes e também com o Mestre de Obras. Aprendi muita coisa de execução em concreto armado e também protendido, lajes nervuradas e maciças e fundações perfuradas com hélice helicoidal, marcação de obra e o mais importante na minha opinião, aprendi a conversar com todo tipo de pessoa dentro de uma obra.','Curso de AutoCad pela Autodesk e Curso de Revit de projetos arquitetônicos, estrutural, elétrico e Hidrossanitário, Curso de TQS em andamento.',NULL,'Engenharia','https://drive.google.com/open?id=155IGMKCzEJCRMuNKKZALxnw4Bx3tRx3T','https://drive.google.com/open?id=1TgMUtjJ1YIe0vkDXcdJtMShQoAQyv8KY','Indicação',NULL,NULL,'Sim','Grupo Silva Zamberlan, Rua Acampamento número 333, Fone 3222-5354, Falar com Evandro Zamberlan.','Quero inscrever-me no banco de talentos da Young!','Eu sou o Renan, gosto muito de estar no meio das obras, desde novo tinha uma obra do lado da minha casa e eu vivia enchendo o saco dos pedreiros lá enfiado (sempre ficavam putos comigo kk), tanto que trabalhava mais que servente de pedreiro na obra que trabalhei porque não aguentava ver a lerdeza de alguns deles, aí eu me enfiava e pegava as cubas das lajes nervuradas, colocava nas costas e levava pros lugares. Também dei uma mini palestra na obra pra uma turma de arquitetura e tive um estagiário que eu era responsável na obra.  Eu gosto de mexer em softwares de modelagem tipo Revit e TQS, também gostava do Eberick, as vezes ficava fazendo até modelagem 3D no AutoCad. Estou cursando inglês porque acredito que todo mundo deve saber mais que um idioma para se virar bem por aí e não depender de ninguém, gosto de jogos on-line onde preciso ter velocidade e raciocínio rápido, sempre prefiro essas coisas mais "difíceis" das mais fáceis. Sou um cara calmo e tranquilo e não gosto de causar intriga, resolvo tudo na base da conversa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-02-25T14:10:00.000Z'::timestamptz),
  ('Raquel Barbosa','raquel.2010.barbosa@hotmail.com',NULL,'51999198012','1995-01-05',31,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=17HywvSHXmMyzNrAY4HnikM7FculHfz-s','Engenharia Agroindustrial de indústrias alimentícias','Ensino Superior Incompleto','Universidade Federal do Rio grande (FURG)','2021-05-31',NULL,'Em busca de uma vaga de estágio','O curso de engenharia agroindustrial é um curso completo, com disciplina na área de gestão, contabilidade, gestão ambiental. Sou formada em técnico em contabilidade pelo Instituto Federal de Educação, Ciência e 
Tecnologia Sul-Rio Grandense desde 2015',NULL,'Estágio','https://drive.google.com/open?id=1LDwulftsDnuifXDgPDTi7dAb1T6zSaWa',NULL,'Facebook',NULL,NULL,'Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-03-01T14:37:00.000Z'::timestamptz),
  ('Antonio Jose Alves Ferreira','alvesantonio240502@icloud.com',NULL,'51995793848','2002-05-24',23,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1x3wmEnIB5YQkJcl_C0AavzcLNDNy_QRC','Gestão de turismo','Ensino Médio Completo','Uniasselvi','2023-05-25',NULL,'estou me candidatando para meu primeiro emprego.','cursando gestão de turismo com disciplina em administração, gestão de pessoas, empreenderismo...',NULL,'Administrativa, Comercial, Financeiro, Novos Negócios','https://drive.google.com/open?id=1kFbs6rdvtYND5SkopNO_4ATpRBIr9YQy',NULL,'Instagram',NULL,NULL,'Não',NULL,'Quero inscrever-me no banco de talentos da Young!','ingles avançado.
habilidades com programas de software.
tenho ótimo contato com pessoas, comunicação destaque.
sempre quis fazer Arquitetura, mas nunca pude pois é um curso bem caro, sendo assim, o ambiente Young me deixa confortável.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-03-29T17:04:00.000Z'::timestamptz),
  ('Mel Silva Pereira','melspereira59@gmail.com',NULL,'51995813858','2002-04-16',23,'Solteiro(a)',NULL,'Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1xzcqlVii42ODnNlWu7iZOuS3-0czt2-I',NULL,'Ensino Superior Incompleto',NULL,NULL,NULL,'1) Savale Imóveis 
2) Secretária 
3) 30/10/2020 trabalho atualmente 
4) Recepcionista, rotinas administrativas e atendimento ao público.',NULL,NULL,'Administrativa, Comercial, Estágio','https://drive.google.com/open?id=126zltOQM5eV3o2SpaIC9rI-TG7fZezRB',NULL,'Instagram',NULL,NULL,'Não',NULL,'Vaga Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-03-29T21:45:00.000Z'::timestamptz),
  ('Ana Julia da Costa Melo','anajuliamelo@sou.faccat.br',NULL,'51998529032','2001-04-08',24,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1_c9mQdl7bzYrE2pu7OpbwwsIcyqzrOBC','Pedagogia','Ensino Superior Incompleto','Faculdades Integradas de Taquara',NULL,NULL,'Secretaria Municipal de Educação( Prefeitura de Santo Antônio da Patrulha), atuando como recepcionista, período de 27/05/2019 à 12/07/2021.  Exercendo às seguintes funções: atendimento ao público, atender ligações, cuidar da agenda, receber e entregar documentos...',NULL,NULL,'Administrativa, Comercial, Estágio, Marketing',NULL,NULL,'Instagram',NULL,NULL,'Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-03-29T22:14:00.000Z'::timestamptz),
  ('Dandara de Souza Pereira','dandarasouza2000@gmail.com',NULL,'51995240555','2000-05-08',25,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1MsnnpOcnn8XzMhqcAvpSnYQHPIZFOyT3',NULL,'Ensino Superior Incompleto','UNIVERSIDADE ESTADUAL DO RIO GRANDE DO SUL',NULL,NULL,'1) Colégio Santa Teresinha ; 2)Auxiliar de Educação Infantil; 3)2015/2019; 4) Auxiliar as crianças no seu desenvolvimento pessoal e cognitivo. 1) EMEI Fatia Do Sol ; 2)Auxiliar de Educação Infantil; 3)2019/2021; 4) Auxiliar as crianças no seu desenvolvimento pessoal e cognitivo. Todos contratos como estagios.','Graduanda em Pedagogia, realizei formações relacionadas a área e cursos de informática',NULL,'Administrativa, Comercial, Marketing','https://drive.google.com/open?id=1r39cuhx8uxZXqIbEwwNxQ6WymiOEH_zp',NULL,'Instagram',NULL,NULL,'Não',NULL,'VAGA COMERCIAL','No inicio da pandemia, como meu contrato na Prefeitura era um estágio, nos colocaram em um comitê solidário onde organizávamos listas e saímos para entregas nos locais que determinada família estava necessitando de alimentos. Trabalhei em períodos curtos em lojas, como atendente e caixa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-03-29T22:22:00.000Z'::timestamptz),
  ('Luciana Santos oliveira','lucianasantos3552@gmail.com',NULL,'51998614563','1999-03-02',26,'Casado(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1WLgRXX_x0yqRo6nubpkqFO_yl3NdtIIM','Gestão de recursos humanos','Ensino Superior Incompleto','Uniasselvi','2023-03-29',NULL,'Garçonete /operadora de caixa -casa do sonho 2016 a 2018
Balconista -padaria porto emerim -2019 a 2021','Sou técnica em administração e estou cursando uma graduação em gestão de recursos humanos',NULL,'Administrativa',NULL,NULL,'Instagram',NULL,NULL,'Não',NULL,'Quero inscrever-me no banco de talentos da Young!','No momento queria trocar minha área de trabalho ,então estou estudando e procurando algo,qualquer trabalho pra mim será bem vindo!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-03-29T23:10:00.000Z'::timestamptz),
  ('Virginia Gomes dos Santos','virginiagsantos@yahoo.com.br',NULL,'51996894850','1995-08-09',30,'Solteiro(a)',NULL,'Sim','Osório/RS','https://drive.google.com/uc?export=view&id=1diRtB5sE5LytSTNlZnlQgpfHFjm0lKCl','Administração de empresas','Ensino Superior Incompleto','Centro Universitário Leonardo Da Vinci','2021-10-10',NULL,'•	Auxiliar administrativo – KRAFT Papelaria e Bazar (Janeiro 2019/ Agosto 2020)
•	Curso de Especialização em AUTOCAD 2D E 3D – Miranda Informática (Agosto 2014/ Agosto 2015)
•	Estagiária de Administração – Prefeitura Municipal de Osório (Julho 2013/ Dezembro/2014)
•	Curso de Auxiliar de Logística – Faculdade Cenecista de Osório (Março 2013/ Fevereiro 2014)
•	Técnico em Meio Ambiente – Escola Estadual de Ensino Médio Ildefonso Simões Lopes (Março/2011 a Dezembro/2012)
•	Curso de Auxiliar Administrativo – UNIALCANCE (2011)',NULL,NULL,'Administrativa, Comercial, Marketing, Engenharia','https://drive.google.com/open?id=1Td8XDnxfa780q67pGvENTF_xRbQh_yVn',NULL,'Instagram',NULL,NULL,'Sim',NULL,'VAGA COMERCIAL',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-03-29T23:32:00.000Z'::timestamptz),
  ('Débora Collar da Cunha','deboracollardacunha@outlook.com',NULL,'51985841989','1995-08-07',30,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1MlX9zLX5kimryLUo-U2fK80nrbXHrkra','Bacharel e Especialista em Estética','Pós-graduação Completa','Ulbra','2017-03-16',NULL,'Esteticista na Estética Almeci Martins 2014/2015
Esteticista equipe Luciana Menna Barreto 2017','Estudante de Biomedicina',NULL,'Marketing',NULL,'https://drive.google.com/open?id=17u9-tcBgdKgTlyTdMTyeNmbwG5_kmaih','Instagram',NULL,NULL,'Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-03-30T00:34:00.000Z'::timestamptz),
  ('Carolini Pacheco dos Reis','carolpach06@gmail.com',NULL,'51996609083','1993-06-06',32,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1fnYexavgDx-G3b9rIZTp3J4KtfLiVNwg','Psicólogia','Ensino Superior Incompleto','Unisinos','2023-07-01',NULL,'CRVA - Centro de Registo de Veículos Automotores, no cargo de atendente. Trabalhei durante 3 anos, iniciei em 06/09/2015 com saída em 26/08/2018. Principais funções eram atendimento ao público diretamente no balcão passando informações aos clientes sobre veículos, Análise de documentos  em processos de troca de placa, alteração de endereço, solicitação de vistoria, arquivo de processos, conferência entre outros. 

Taqi Grupo Herval-  loja de eletrodomésticos, móveis e materiais de construção, no cargo de auxiliar de crediário e caixa.
Trabalhei durante 3 anos , iniciei  em 08/10/2012 com saída em 16/06/2015.
Principais funções eram abertura de conta,  emissão de carnês,  cobranças no caixa e cobrança de parcelas em atraso.',NULL,NULL,'Administrativa, Comercial, Estágio, Financeiro',NULL,NULL,'Instagram',NULL,NULL,'Não',NULL,'Vaga Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-03-30T01:05:00.000Z'::timestamptz),
  ('UILIAN SOUZA DA SILVA','uilians492@gmail.com',NULL,'51999214096','1998-12-16',27,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=14dl9wZFWL5eDGB8idwpVCgBl3qjSTzVN',NULL,'Ensino Médio Completo','Escola estadual de ensino médio professora Gregória de Mendonça','2021-02-10',NULL,'Supermercado Gomes - serviços gerais - 2014/2016 - trabalhava abastecendo o Hortifruti e as demais prateleiras (sem carteira assinada)
Mercado Alternativo - balconista - 2016/2017 (sem carteira assinada)
Picadilly - serviços gerais - 2017/2018 
QualiCoco - envasador de óleo - 2018/2019 (9 meses) - trabalhava na linha de produção fechando os potes de óleo de coco
Magna Cosma Internacional - operador de produção - 2019/ trabalhando atualmente nesta empresa.','Cursando atualmente Inglês básico na escola Wizard',NULL,'Administrativa, Comercial, Marketing, Engenharia',NULL,NULL,'Instagram',NULL,NULL,'Sim','Alexsandro - (51) 99651-5829 (Mercado Alternativo)','Vaga Comercial e demais vagas disponíveis','Busco melhora contínua e constante aprendizado, procurando sempre novos desafios. Sou proativo, comunicativo, aprendo rápido e trabalho bem em equipe, tenho disponibilidade de horários e tenho carro próprio. Busco também a oportunidade de crescimento profissional em conjunto com a empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-03-30T01:11:00.000Z'::timestamptz),
  ('Bruno Genta Fernandes','brunogenta2@hotmail.com',NULL,'51996316982','1999-12-17',26,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1lv4juKgW4MxCRQ8peA8KPVUMcAY5Q8bA',NULL,'Ensino Médio Completo',NULL,NULL,NULL,'Imobiliaria da Fazenda, Corretor de Imoveis,24/08/2020 a 09/02/2021','Curso de Comissario de Bordo e Curso de Francês',NULL,'Comercial','https://drive.google.com/open?id=1MbpaTfbirgfFCPChxqgnpPfV1TtTITqH',NULL,'Instagram',NULL,NULL,'Não','Luiz Pedro, 998447369, Cia do Sono','Vaga Comercial','Meu nome é Bruno Genta Fernandes, Falo Francês, Tenho uma grande experiencia na área de vendas de colchões e na área de Venda de Imoveis','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-03-30T22:03:00.000Z'::timestamptz),
  ('Rafaela Maria Maciel Adam','adam.rafaelamaciel@gmail.com',NULL,'51996117380','1997-02-18',29,'Solteiro(a)',NULL,'Sim','Glorinha/rs','https://drive.google.com/uc?export=view&id=1HhiizvGn_SYWWm7AbAVhsiqzNnWhOxiw','Administração de empresas','Ensino Superior Completo','CNEC Gravataí','2019-09-14',NULL,'Prefeitura Municipal de Glorinha
Auxiliar Administrativa/ 06/2019 à 09/2020
Responsável pela compra dos benefícios de VA, VT e Cesto Básico dos funcionários, admissões, emissão de ordem de pagamento, contratos, controle em planilhas excel.

Consultório Odontológico Isaac Coelho
Auxiliar Administrativa/ 08/2018 à 03/2019
Atendimento ao público, orçamentos, realizações de cobranças, compra de materiais, contratos, emissão de notas, fechamento de caixa.',NULL,NULL,'Administrativa, Comercial','https://drive.google.com/open?id=1KMy7AS7TR7P-aylohlCcpgxcIaQRY9Ob',NULL,'Instagram',NULL,NULL,'Sim','Luciana Raupp - 3487-1020 - Prefeitura Municipal de Glorinha','Vaga Comercial','Estou buscando oportunidade para voltar a estudar na área de Gestão Financeira.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-03-31T20:47:00.000Z'::timestamptz),
  ('Laís Silveira da Silva','laissilveiradasilva88@gmail.com',NULL,'51997242367','1988-11-03',37,'Solteiro(a)',NULL,'Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1qLaB-XSOpwy5nodpuhlV7qGMzJ9Z0lb0','Gestão de Recursos Humanos','Ensino Superior Incompleto','Escolas e Faculdades QI',NULL,NULL,'Empresa: INB TELECOM EIRELI
Cargo: Auxiliar financeiro
Período: 04/2017 - atualmente
Atividades: Minhas atividades iniciaram no setor comercial, onde realizava atendimento ao
público, como vendas de planos de internet por telefone e presencial e a
cobrança de boletos.
Atualmente sou auxiliar financeiro no setor da cobrança, onde sou responsável
por realizar cobrança de pessoa fisica e jurídica, como negociação e formas
de pagamento, manutenção de carteira de clientes e atualização de cadastros

Empresa: Clinimed - Medicina e Segurança do Trabalho
Cargo: Auxiliar Administrativo
Período: 06/2015 até 03/2017
Atividades: Nesta empresa minha atividade foi como auxiliar administrativo, onde
trabalhava na recepção com atendimento aos pacientes, organizava as
agendas dos médicos, fonodiólógos e técnicos, marcava exames, organizava
arquivos, realizava cobranças e emitia notas fiscais.','No ano de 2013 conclui o curso Técnico em Administração, atualmente curso Gestão de Recursos Humanos.',NULL,'Administrativa','https://drive.google.com/open?id=1W4HTytzrH81dq3BRl7zlvJEWcB5hiP3d',NULL,'Instagram',NULL,NULL,'Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-03-31T23:41:00.000Z'::timestamptz),
  ('Lohrana Quadros de Oliveira','lohranaoliveira2015@gmail.com',NULL,'51980273739','1999-05-18',26,'Solteiro(a)',NULL,'Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1hFWhK-GE-CfXOE_lKM0jW31hf7LvFRvm',NULL,'Ensino Médio Completo',NULL,NULL,NULL,'Operadora de montagem , empresa Picadilly , desde 08/01/2018 até 27/04/1999','Cursando Auxiliar Administrativo','Curso de secretariado','Administrativa',NULL,NULL,'Facebook',NULL,NULL,'Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-05T14:48:00.000Z'::timestamptz),
  ('Luiza Villaverde Cirio','luizacirio@hotmail.com',NULL,'51999895746','2002-07-17',23,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=11mlNOgCCCM3ElOzmWKl48n5sgQ2T42br','Fisioterapia.','Ensino Médio Completo','Universidade Luterana do Brasil (ULBRA-Canoas)',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Estou me candidatando a minha primeira vaga de emprego. Tive apenas uma pequena oportunidade de estágio referente a prefeitura no CRAS, onde fui recepcionista por 3 meses. Outubro de 2020 a janeiro de 2021. Como completei o ensino médio não pude continuar trabalhando como estagiária. Quero muito contribuir a empresa, e mostrar que tenho potencial, mesmo sem experiência. Tenho muito o que aprender e evoluir, estou em busca de uma oportunidade.','Estou estudando Fisioterapia, uma linda profissão, que ajuda a tratar as dores e desconfortos. Pretendo crescer muito profissionalmente e exercer com orgulho minha futura profissão, trazendo novamente uma boa qualidade de vida  para os pacientes.',NULL,'Administrativa, Comercial, Estágio, Marketing','https://drive.google.com/open?id=1Y6TPQCxfYkLWTrTD01raox0b7ACCackL',NULL,'Instagram',NULL,NULL,'Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Artes marciais não sei, mas ballet serve?Hahah. Fui bailarina durante 12 anos e sem dúvidas foi uma das melhores experiências vividas. Não apenas a dança, mas sim a dedicação envolvendo muito amor e comprometimento. Tenho dois cursos de inglês e quero aprender mais sobre espanhol.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-12T22:23:00.000Z'::timestamptz),
  ('Natalie Teixeira de Souza','natalie16julho@gmail.com',NULL,'999076591','2000-07-29',25,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1oJRv9uETVS8-Tt7Z4nhaRNPfnnNhOfxD','Educação Física','Ensino Superior Incompleto','Unicnec-Osório','2022-12-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Experiência na área da educação por dois anos, experiência em recepção, atualmente auxiliar administrativo.','Graduação quase completa',NULL,'Novos Negócios',NULL,NULL,'Instagram',NULL,NULL,'Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Me considero uma pessoa com muita facilidade para lidar com as pessoas, gosto de interagir com o público, estou disposta a viver novas experiências, aprender novos caminhos. Tenho facilidade com software, gosto de aprender, me considero responsável diante dos meus objetivos.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-13T00:44:00.000Z'::timestamptz),
  ('Paula Taís Soares de Jesus','paulass1213@gmail.com',NULL,'51999226820','1997-06-11',28,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1--Ot-ASDNjSAGqtwXZVK_JF5qLDM0WTO','Gestão de Recursos Humanos','Ensino Superior Incompleto','Uniasselvi','2021-07-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Loja Sempre Linda. 2) Operadora de Vendas. 3) Admissão 16 de agosto de 2016. (em atividade) 4) Vendas com contatos diretos (pessoalmente) e indiretos (forma online)  com os clientes. Financeiro. Organização da loja.','Especialização em Gestão de Pessoas.',NULL,'Administrativa, Comercial, Financeiro',NULL,NULL,'Indicação',NULL,NULL,'Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Em busca de novas experiências profissionais.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-13T01:58:00.000Z'::timestamptz),
  ('Maria Eduarda Silveira da Silva','dudamariasilveira1@gmail.com',NULL,'51999269442','2002-04-16',23,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1m9WzS0wREdYFeibM0QrqpuJFqLDOsSDv','Administração de empresas','Ensino Superior Incompleto','FURG - Universidade Federal do Rio Grande',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Instituto Nacional do Seguro Social – INSS (01/01/2019 – 31/12/2019):
 Cargo: Estagiária
 Atribuições: Atendimento ao público e telefone; Auxiliar na organização de arquivos;
 Auxiliar na identificação de procedimentos; Realização de procedimentos internos.

Ezequiel Peixoto Advogado (26/02/2020 - 2021, atual)
Cargo: Secretária
Atribuições: Atendimento ao público e telefone; Serviços de auxiliar administrativo; 
Realização de procedimentos internos e externos.','Operador de Micro (10/2018 a 06/2019):
Escola Técnica e Faculdade Jovem Profissional SAP/RS
Carga Horária: 72 horas
Ementa: IPD, Word 2016, Excel 2016, PowerPoint 2016, Internet e Segurança Digital.

Rotinas Administrativas (01/2019 a 12/2019):
Escola Técnica e Faculdade Jovem Profissional SAP/RS
Carga Horária: 100 horas
Ementa: Auxiliar Administrativo, Contabilidade, Departamento de Pessoal, Marketing Pessoal.',NULL,'Administrativa, Financeiro','https://drive.google.com/open?id=127ui25lGgp6R-7lAeyn6Be1T3DCo5Pnr',NULL,'Instagram',NULL,NULL,'Não',NULL,'Vaga Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-13T03:25:00.000Z'::timestamptz),
  ('Andre Luis dos Santos Werppe','andrewerppe2011@hotmail.com',NULL,'51999393073','2000-12-21',25,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=13HrrvZPnrrRp5HwtDgR2qv0rydAThAsD','Direito','Ensino Superior Incompleto','Unicnec','2023-08-17','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Tabelionato de notas como escrevente.','Curso de nível intermediário de inglês',NULL,'Administrativa, Comercial, Licenciamentos','https://drive.google.com/open?id=1_nn1VFHmy8ffelQmIwJ2-CzD-CL6wHDe',NULL,'Instagram',NULL,NULL,'Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-13T11:21:00.000Z'::timestamptz),
  ('Francine Mattos','francinemattos.sts@gmail.com',NULL,'51994250162','1993-08-18',32,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1zYd1TnwHHWc_2Wpymkns4AC0fSeIHL2z',NULL,'Ensino Superior Incompleto','Universidade do Vale do Rio dos Sinos','2024-03-15','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Auxiliar Administrativa
J.F. Comércio de Alimentos Ltda.  | 2020 - 2021
Contribuí com o auxílio de relatórios gerenciais, controle de contas a pagar, acompanhamento de faturamento, emissão de notas fiscais e emissão de guias relacionadas à escrita fiscal. 

Gerente Administrativa
YÁ-YÁ Kids | 2016 - 2019
Gerenciei, planejei e controlei todas as rotinas de comércio varejista, envolvendo a arrumação de mercadorias, gestão de estoque, programação de compras, fechamento de caixa e faturamento com a finalidade de obter bons resultados. 

Auxiliar Administrativa
C.S. Maravilhosa Alimentos Ltda. | 2009 - 2016
Auxiliei no controle de contas à pagar, contas à receber, emissão de notas fiscais, gerenciava o setor de RH, e realizava demais atividades para o alcance dos objetivos administrativos.','Recentemente concluí dois cursos de extensão que me trouxeram ainda mais conhecimento para o mercado de trabalho. Sendo eles: Grandes Investimentos: Pessoas, Finanças e Negócios. (Unisinos). Produtividade, Gestão do Tempo e Propósito. (PUC).','Escrita Fiscal e Rotinas Administrativas','Administrativa, Comercial, Financeiro, Novos Negócios','https://drive.google.com/open?id=1cCCGisQn0RXohOFB-g6rgZLMzFJyj5Ti',NULL,'Willian Augusto',NULL,NULL,'Não','Fernandes/ Contato: (51) 99918-2068/ C.S. Maravilhosa Alimentos Ltda.','Comercial','Cantar, tocar violão e corrida ao ar livre, são meus hobbies favoritos.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-13T13:38:00.000Z'::timestamptz),
  ('Litieli Muniz da Silva','litielimunizdasilva@gmail.com',NULL,'51995750495','1997-02-20',29,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Er7SLeUQZx4jq_7Gyxy6wOOkEiSZk_D1',NULL,'Pós-graduação Incompleta','UFSM - Universidade Federal de Santa Maria','2025-02-08','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1° - Marmoraria Reis.
Auxiliar de Escritório em Geral (com vendas e emissões de notas fiscais).
Maio/2013 a Fevereiro/2019.

2° - Rosângela Laureana Brito - ME.
Atendente de Balcão.
Setembro/2019 a Março/2020.

3° - E. E. I. O País das Maravilhas.
Auxiliar de Creche.
Abril/2020.','Magistério, Curso Básico Marketing Digital',NULL,'Comercial',NULL,NULL,'Facebook',NULL,NULL,'Não',NULL,'Vaga para Setor Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-13T15:59:00.000Z'::timestamptz),
  ('Maria Eduarda Fantin Dacheri','eng.mariaeduardad@gmail.com',NULL,'49999701824','1997-07-16',28,'Solteiro(a)',NULL,'Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1kTMkIF5nAFO8pSRUA9Nqw5J6cCKwzPWd','Engenharia Civil','Ensino Superior Completo','Universidade Federal do pampa','2021-01-21','Não, no momento pausei/parei por um período.','1) Ferronato Arquitetura Eirelli
2) Estágiária do setor de obras 
3) 21/01/2020 a 21/02/2020 - 192h Estágio obrigatório
4)
•	Acompanhamento de obras
•	Desenho digital
•	Quantitativos e Orçamentos
•	PBQP-H
•	Projetos complementares (Elétricos e Hidrossanitários)','FORMAÇÃO COMPLEMENTAR
Curso Autodesk REVIT – Módulo Hidrossanitário – 19h
Curso AutoCAD Básico – 18h
Curso Excel Básico – 18 h
Curso Introdução ao Gerenciamento de projetos no Prática - 8h.
Curso MS Project 2019 – Básico e Avançado - 16h.
Curso SketchUp - 8h
Curso SketchUp para Projeto Hidráulico – 4h

SOFTWARES
AutoCAD - Avançado
Autodesk REVIT - Intermediário
Corel Draw - Intermediário
Pacote office – Avançado
MS Project - Básico
SketchUp - Básico
TQS – Intermediário',NULL,'Arquitetura, Engenharia','https://drive.google.com/open?id=1jgGyIKvQebFR0gSNcBCHGV3CdfhpfWpo',NULL,'Indicação',NULL,NULL,'Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Olá, meu nome é Maria Eduarda Dacheri, sou Engenheira Civil formada na Universidade Federal do Pampa. Atualmente estou em busca de uma oportunidade no mercado de trabalho como auxiliar de engenharia, projetista ou desenhista. Embora esteja no início da minha carreira como profissional possuo experiência como estagiária na parte de projetos complementares e acompanhamento de obras. Além disso, possuo experiência nos softwares Revit, AutoCAD e SketchUp. 
Em relação ao meu perfil profissional e pessoal, destaco como competências a minha capacidade de solucionar problemas, facilidade de trabalho em equipe, comunicação assertiva, proatividade, planejamento, responsabilidade, organização e facilidade de aprendizado. Qualquer dúvida estou à disposição. 

Grata desde já pela atenção!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-13T18:56:00.000Z'::timestamptz),
  ('Jamila brito portal','jamilabritoportal@gmail.com',NULL,'51997502135','1993-12-01',32,'Casado(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Q8QTWYEDJJ6HWKF57YeSAc7Bq-U_6OpT',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Caverna do dino , consultora de vendas,15/07/17 a 15/07/19 atendimento ao cliente, atendimento ao caixa e crediário organização dos setores,e local de trabalho.',NULL,NULL,'Comercial',NULL,NULL,'Instagram',NULL,NULL,'Não',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-14T00:52:00.000Z'::timestamptz),
  ('Lygia Müller Barcela','lmbarcela@hotmail.com',NULL,'5199328733','1997-10-16',28,'União Estável',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1-PSSafx7TFXQGlcf2HrMZPfacaXWGoGD',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Primeira experiência de emprego:
Secretária Paroquial da Igreja Boa Viagem 
Secretária
02/01/2017 - 31/12/2017
A principal função do cargo inicialmente, era realizar informativos como folhetins de forma criativa para divulgar informações para a comunidade, após o mês de setembro passei também a atender ao público no local de trabalho e também através de mídias sociais.

INB Telecom
Monitorador de Sistemas Suporte ao Usuário
17/12/2018 - Até o momento.
A função do cargo solicita que durante o meu horário de trabalho eu atenda ao cliente e resolva o problema do mesmo com o serviço da empresa. Trabalhei inicialmente atendendo aos clientes através de telefone e mídias ao mesmo tempo. Atualmente como cada sistema foi sendo setorizado, trabalho somente em atendimento via mídias (Whats App, Facebook Messenger, Telegram e chat).','Iniciei o curso de Psicologia em 2016 na Unisinos, cursei em média 4 semestres da grade na época, acabei trancando o curso devido a perda do financiamento estudantil que eu possuía.',NULL,'Comercial, Financeiro, Marketing, Engenharia','https://drive.google.com/open?id=1R1A8NizaZIjVBD1YWPFMtOOk7E1aqxCD',NULL,'Instagram',NULL,NULL,'Não','Alisson - (51) 99532 9132
Supervisor atual do Suporte Técnico Noturno da INB.','Vaga Comercial','Gosto de lidar e tenho alguma experiência com o programa CorelDraw, já realizei diversos trabalhos comunicativos através dele, apesar de nunca ter buscado um curso a respeito do programa, sempre me dei super bem para criações nele. Gosto bastante deste tipo de comunicação através de mídias. Gosto de planejar e colocar em prática projetos que podem ser reais, gosto de lidar com pessoas e atender pessoas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-15T01:27:00.000Z'::timestamptz),
  ('Antígone Foss Neves','antigonefoss@hotmail.com',NULL,'995792384','1999-07-18',26,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1ZMiXzdicf7tYUV3hSDKhm6tETDsJbi5T','Geologia','Ensino Superior Incompleto','Ufrgs','2023-01-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','*English place: como secretária e financias. Início: março de 2017 a 2018. 
* Trabalhei vendendo roupas e acessórios da minha loja online(tribonita loja) por mais de 2 anos, hoje em dia não tenho mais ela.','Terminando curso de perícia ambiental',NULL,'Comercial, Estágio, Marketing, Engenharia','https://drive.google.com/open?id=1XHUcM4zIXABX8RHb8MefH1Xeo6-snlu2',NULL,'Instagram',NULL,NULL,'Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-15T16:11:00.000Z'::timestamptz),
  ('NATHAN FERNANDO NUNES VARGAS GONCALVES','nathanfernando97@gmail.com',NULL,'55999065441','1997-01-16',29,'Solteiro(a)',NULL,'Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1CqrWEtQ1Ak9LOMw3SkgY8bd7RWYIBWIK','Ciência da computação','Ensino Superior Incompleto','Unipampa','2022-12-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Fronteira internet. Carro de técnico em telecomunicações e informática na qual faço instalação de fibra óptica e manutenções. Início em dezembro de 2020 e ainda estou trabalhando na empresa. Realizo também a verificação do sinal óptico nas casas de clientes onde desenvolvi um melhor contato com o público de diferentes idades etc.','Técnico em telecomunicações, técnico em informática, cursos na área de administração e RH.','Técnico em informática, excel, word, powerpoint, montagem e manutenções de computadores, rh, administração, informática básica e avançada.','Administrativa, Financeiro, Marketing, Engenharia',NULL,NULL,'Facebook',NULL,NULL,'Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sendo da ciência da computação sou apto para manuseio de qualquer software e hardware, possuo também conhecimento em Rh, administração onde escrevi artigos da área.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-16T00:31:00.000Z'::timestamptz),
  ('Jonas Rodrigues Menezes','jonasrmenezes04@gmail.com',NULL,'55999192242','1997-07-04',28,'Solteiro(a)',NULL,'Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1awVarAj8WLFjot_wNgG_OElO4dFsKoxi','Direito','Ensino Superior Incompleto','Universidade da Região da Campanha - URCAMP','2023-03-11','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','TRE-RS; Estagiário; Dezembro/2019 - Atual; Serviços administrativos e jurídicos, atendimento ao público, biometria, entre outros.

Também fui Jovem Aprendiz do Curso de Vendas do SENAC Alegrete em parceria com o Peruzzo Supermercados, onde obtive amplo conhecimento em comunicação interpessoal e técnicas comerciais.',NULL,NULL,'Administrativa, Comercial, Financeiro, Engenharia','https://drive.google.com/open?id=1hHa5DIUYVO60wW0DXTvLrgvYFo_qZci-',NULL,'Facebook',NULL,NULL,'Sim',NULL,'Estagiário Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-16T02:11:00.000Z'::timestamptz),
  ('Eduarda Silva dos Santos','eduardasilva71561@gmail.com',NULL,'51998810789','2003-01-17',23,'Solteiro(a)',NULL,'Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1yW5d2IaLtOhvbIy8vNFPetaOyU3g2Eu1','Administração de empresas','Ensino Médio Completo','Uniasselvi',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Magna Cosma, Fiscal Financeiro, início em outubro de 2019 até agora','Inglês',NULL,'Administrativa, Estágio, Financeiro','https://drive.google.com/open?id=137qaP1gdsP9qz9J2Ddx59CqAdfEcJplJ',NULL,'Instagram',NULL,NULL,'Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-16T15:38:00.000Z'::timestamptz),
  ('Débora Lima da Silva','deboradasilva9608@gmail.com',NULL,'55991538985','2000-12-04',25,'Solteiro(a)',NULL,'Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=17Z5wnfcfpxntvlwIxDh2W5DRUtJraxZ8','Recursos humanos','Pós-graduação Incompleta','Uniasselvi','2020-06-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','CAAL, menor aprendiz em departamentos pessoal, 10/2020 a 04/2021, auxiliar de departamento pessoal e funções admitrativas, atendimento ao público entre outros.','Sou formada em Recursos Humanos, estou Cursando Processos Gerenciais, Curso pós graduação em Administração de Pessoas e MBA em Coaching',NULL,'Administrativa, Comercial, Estágio','https://drive.google.com/open?id=1AL5fVh92dOcasGiTnerQE1AjlV9wq34Z',NULL,'Agência de Empregos',NULL,NULL,'Sim',NULL,'Vagas disponíveis','Gosto de estudar e trabalhar, estou a procura de uma oportunidade, sou ágil, aprendo rápido, tenho experiência com atendimento ao público e áreas admitrativas','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-16T17:59:00.000Z'::timestamptz),
  ('Evelen Lima Bernardes','evellyn.lyma@hotmail.com',NULL,'55996346011','1998-07-04',27,'Solteiro(a)',NULL,'Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1ufUikDwbG_PecnhuFN9w2oip7AATNkks','Administração de empresas','Ensino Superior Incompleto','Universidade da Região da Campanha','2024-01-04','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Secretaria de Desenvolvimento Econômico e Turismo. Estagiária Administrativa - Entrada em Dezembro/2019 até atualmente. Atendimento e Recepção aos contribuintes da Casa do Empreendedor
- Realização de telefonemas, bem como atendimento e monitoramento do perfil pessoal nas mídias digitais da Secretaria de Desenvolvimento Econômico e Turismo
- Elaboração e conferência de documentos pertencentes a rotina administrativa da Secretaria.
- Escaneamento e arquivamento de processos e documentações referentes a formalização e regularização de empresas.
-Elaboração de documentos financeiros e solicitações de compras mensais e anuais.','Curso breve de 3 meses em Microsoft Office Word em nível avançado, Microsoft Office Excel em nível intermediário e Microsoft Office PowerPoint em nível avançado.',NULL,'Administrativa, Comercial, Estágio, Marketing','https://drive.google.com/open?id=1kOqfyf_Wk3MIcTEsHICXshc9skHAmJAU',NULL,'Facebook',NULL,NULL,'Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-16T19:24:00.000Z'::timestamptz),
  ('Nathalia Nunes Mendes','nathaliamendess18@gmail.com',NULL,'55996782234','1999-09-07',26,'Solteiro(a)',NULL,'Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1jUCwtL9mLhjtkhZYwD4FgD2RhQCQZ6Z5',NULL,'Ensino Superior Incompleto','Urcamp','2021-12-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Marfrig, Alegrete, RS – Jovem Aprendiz

Auxiliar Administrativo.


Escritório de Advocacia – Dr. Dimitri Toscani – Estágio

Atividades desenvolvidas: Atendimento ao público, petição inicial e petições diversas, accompanhamento de processos na área de previdência entre outros.


PREFEITURA MUNICIPAL DE ALEGRETE – Estágio

Atividades desencolvidas: conhecer a unidade concedente de estagio; auxiliar na identificacao dos procedimentos realizados na unidade concedente de estagio; auxiliar no atendimento ao público, acompanhar as rotinas administrativas do setor; analise de processos, elaboracao de memorandos e oficios, arquivamento de documentos e processos.','Curso de Informática, Interneith Cursos
Pacote Office; Digitação; Internet
Finalizado.
Curso de Auxiliar Administrativo, Jovem aprendiz Marfrig Alegrete

Finalizado.


Curso     de  Direito, Universidade da Região da Campanha — 

9° semestre',NULL,'Estágio',NULL,NULL,'Instagram',NULL,NULL,'Não',NULL,'Estagio comercial','COMPETÊNCIAS
(Área Afetiva)

Liderança;
Trabalho em equipe; Cooperação; Comunicação; Colaboração; Sociabilidade; Organização;
Tolerância; Agilidade;
Pró-atividade; Criatividade; Pontualidade; Disciplina; Responsabilidade.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-16T19:47:00.000Z'::timestamptz),
  ('David Buzatto de Castilhos','david3.castilhos@gmail.com',NULL,'999474415','2000-02-25',25,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1bejZbpJ-OV0Z7bdY9V3Rr5I_KLurC5Ds',NULL,'Ensino Médio Completo','Ulbra-Gravatai',NULL,'Não, no momento pausei/parei por um período.','- Doces Guimarães 
Expedição | 2019-2020
Funções:  Separar pedidos nas cargas correspondentes e organizar o setor.
- Cuartavez Representações Ltda.
Comercial e financeiro | 2018-2019
Funções: Recepcionar e atender clientes, realizar vendas, negociar prazos e condições de pagamentos e entrega de matérias em obras. 
      - Agropecuária Castilhos 
Balconista | 2017-2018
Funções: Recepcionar e atender aos clientes, realizar vendas,  realocando mercadorias nas prateleiras.',NULL,NULL,'Comercial','https://drive.google.com/open?id=1jbjs-vVNDYIX0EoG2VomFMvEVwfAqCd7',NULL,'Instagram',NULL,NULL,'Sim','Agropecuária Castilhos tel- 3488-5440
Cuartavez representações tel- 999645801
Factum tel- 3409-1100','Vaga comercial','O que posso falar a mais sobre o David, é que é um jovem como tantos outros, mas que possue características individuais que acredito serem importantes, como o respeito, a ética, a seriedade e a honestidade.
Penso que além do conhecimento acadêmico, esses são atributos indispensáveis à um bom profissional.
Apesar de poucas experiências sonho com uma oportunidade de agregar conhecimento e também demostrar minha atuação e desenvolvimento profissional.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-17T00:36:00.000Z'::timestamptz),
  ('Dienefer Barbosa do Amaral','dieneferamaral1995@gmail.com',NULL,'995391399','1995-03-10',30,'Casado(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1fNJqL-wxP2CNBBm5EIPubWOUpCpuI71H','Pedagogia','Pós-graduação Completa','Uniasselvi','2019-03-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','EMPRESA: Mauricio de Oliveira Mercado
DATA DE ENTRADA E SAÍDA: 01/08/2011 á 28/03/2012
CARGO: Repositora de mercadorias

EMPRESA: Calçados Wunnir
DATA DE ENTRADA E SAÍDA: 03/09/2012 á 14/05/2015
CARGO: Serviços Gerais (revisora)

EMPRESA: Josiane de O. Lemos
DATA DE ENTRADA E SAÍDA: 16/03/2018 à Abril /2021
CARGO: Professora de Educação Infantil

EMPRESA: Venda autônoma de roupa, utensílios, e acessórios.
Trabalhando de autônoma à três anos',NULL,NULL,'Comercial','https://drive.google.com/open?id=10CUMvltfNFuOQ1Q5MoYAuq1MUmztOJlG',NULL,'Instagram',NULL,NULL,'Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-17T01:25:00.000Z'::timestamptz),
  ('Ana Caroline de Almeida Pontes','pontescaroline94@gmail.com',NULL,'55999266832','1994-12-22',31,'Solteiro(a)',NULL,'Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=13ZGiGfMLa3m-rYTXY2TcqPNmHHAhT7RQ','Letras - ingles / Letras Espanhol','Ensino Superior Completo','Unopar','2022-12-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Spengler motos e peças - 2) Caixa - 3) Fevereiro a Outubro de 2018 4) Todas as atividades administrativas com relação a empresa e as vendas.','Formada em Letras/Literatura, e Pós graduada em Literatura Básica','Pós graduada em Literatura Básica','Administrativa, Comercial, Estágio, Financeiro','https://drive.google.com/open?id=1EHIqGWW_G4LLgmJ7Fp8X0Vo0snpPNSdz',NULL,'Instagram',NULL,NULL,'Não','Liza - 55996588491','Quero inscrever-me no banco de talentos da Young!','Gosto de ser desafiada a novos desafios , trabalho em equipe, e conquistar resultados, tudo o que possa vir a colaborar com a empresa','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-17T04:00:00.000Z'::timestamptz),
  ('Vitória de Oliveira da Silva','vitoriafiona123@gmail.com',NULL,'55996427288','2001-07-08',24,'Solteiro(a)',NULL,'Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1xz6cfvRhCMr_bPZ0UlbDzt6f6DXZoaC_','Ciências Contábeis','Ensino Superior Incompleto','Urcamp Alegrete','2024-03-15','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Trabalhei na ME- Centro Cópias, com o cargo de atendente, durante um período de 2 anos, sendo iniciado em 24/10/2018 e com término no dia 22/11/2020. Tenho um ótimo currículo em atender clientes e lidar com o caixa, proporcionando uma satisfação maior para a empresa.','Curso ciências contábeis na urcamp e estou realizando cursos preparatórios para o mercado como: fluxo de caixa e gestão de pessoas',NULL,'Estágio, Financeiro','https://drive.google.com/open?id=1DJofsMOmwGaJd9oG3UG_44YQAt7vyqfv',NULL,'Instagram',NULL,NULL,'Sim','Claudio Martins da Silva Oliveira (55) 991295150 - Dono da empresa Centro Cópias','Quero inscrever-me no banco de talentos da Young!','Sou muito comunicativa e procuro a excelência sempre que possível, além de trabalhar muito bem em conjunto de grupos, procuro sempre atender os requisitos necessários para a vaga, possuo também experiências com o word e excel. Grata pela oportunidade de poder concorrer a uma vaga nessa empresa que é de se admirar.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-17T05:06:00.000Z'::timestamptz),
  ('Ana Paula Santos da Silveira','a.paula.silveira2015@bol.com.br',NULL,'55996595522','2001-10-30',24,'Solteiro(a)',NULL,'Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1W1XwflwGAU6F8fVbO7hmU1HgvRebOM__','Gestão de Recursos Humanos','Ensino Superior Incompleto','Unopar - Campus Alegrete','2022-08-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Empresa 1
1) Polícia Civil - 1ª Delegacia de Polícia de Alegrete 
2) Estágio - Auxiliar administrativo na Secretaria da 1ª DP
3) Fevereiro/2018 - Fevereiro/2019
4) Arquivo, protocolo e digitação de documentos, estatística mensal, recebimento de materiais, manipulação de sistemas e atendimento geral.

Empresa 2
1) Prefeitura Municipal de Alegrete - Secretaria de Saúde
2) Estágio - Secretária Executiva do Conselho Municipal de Saúde e Assessora de Gabinete no Gabinete da Secretária de Saúde
3) Fevereiro/2019 - Fevereiro/2020
4) Elaboração e recebimento de documentos, checagem de e-mails, realização de atas, planilhas, organização de reuniões e agenda interna, atendimentos e direcionamentos de demandas, presencial e por telefone.',NULL,NULL,'Administrativa, Comercial, Estágio, Marketing','https://drive.google.com/open?id=13gnfpSywk2P-_8_yjgfE10U23--JFu1M',NULL,'Facebook',NULL,NULL,'Não','Polícia Civil -  Luciana (55) 9 99416575 e Morais (55) 9 99590647.  
Secretaria de Saúde - Bianca Casarotto (55) 9 9926-6459 e Daniela (55) 9 9935-3330.','Estágio Comercial','Acredito que posso somar junto à empresa, pois me sentiria muito motivada de trabalhar numa empresa deste porte :)','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-17T06:30:00.000Z'::timestamptz),
  ('Rodrigo Cezar Dos Santos','roodrigo.cezar@hotmail.com',NULL,'55997056282','1993-06-20',32,'Uniao estavel',NULL,'Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=11JfOoijA89TPSgv85Qwpd66CeBUSVtuh','Direito','Ensino Superior Incompleto','Urcamp Campus Alegrete','2021-12-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Trabalhei no Exército Brasileiro onde exerci a função de auxiliar de escritório e analista de processos para aquisição e registro de arma de fogo.',NULL,NULL,'Administrativa','https://drive.google.com/open?id=15pgAVuYT3BTkrq02A6eJ88kTVadYrxKZ',NULL,'Facebook',NULL,NULL,'Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho extrema facilidade para o trabalho em equipe e procuro novas possibilidades de crescimento profissional e intelectual que possibilite o crescimento da empresa com meu trabalho e atividades.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-17T10:03:00.000Z'::timestamptz),
  ('Hanna Rebeca Ismail','hanna.rebeka64@gmail.com',NULL,'11944442010','1999-03-08',26,'Solteiro(a)',NULL,'Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1D0aK4CsJSuptU9XZ3AYFQofy8cCi5KXg','Engenharia Mecânica','Ensino Superior Incompleto','Universidade Federal do Pampa','2022-04-17','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Experiência profissional: La Tortilla 99','Consultoria em matemática básica e aplicada pelo Prandiano - Museu da Matemática/Lean Six Sigma Green Belt/Planejamento de marketing/Canva Editor/Engenharia Mecânica/Processos de produção/Proprietária La Tortilla 99',NULL,'Estágio, Marketing, Novos Negócios, Engenharia',NULL,'https://drive.google.com/open?id=1R2880oDLVf-LS6c-9TM-gpPFRY32Xzg7, https://drive.google.com/open?id=1GozLXkNROiLz2YihS9UGHzef1R_2pYFv, https://drive.google.com/open?id=1EV5rAbonp7Ra0mglbDxT3X242e1AscpR','Instagram',NULL,NULL,'Sim',NULL,'Vaga de Estágio - Alegrete (vista no Instagram)','Sou a melhor nas coisas que escolho fazer, aprendo muito e muito rápido!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-17T14:25:00.000Z'::timestamptz),
  ('Maurício Galarça Pereira','mauriciogalarka@gmail.com',NULL,'55996728782','1999-04-16',26,'Solteiro(a)',NULL,'Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1Hk2dqqfmQPL6koV2Rel6AFRGwzgwebK5','Segurança do Trabalho','Ensino Médio Completo','Senac',NULL,'Não, no momento pausei/parei por um período.','Responsável almoxarifado exército Brasileiro, responsável depósito parque aquático Porto das água, auxiliar de eletricista, operador de máquina e zona produção marfrig global foods',NULL,'Nr 12 operador máquina civil, nr 18 meio ambiente civil e nr 35 trabalho em altura','Comercial',NULL,NULL,'Instagram',NULL,NULL,'Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa muito boa em convivência social, aprendo tudo muito rápido, trabalhei em diferentes áreas me dando muito bem sempre nelas','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-17T17:18:00.000Z'::timestamptz),
  ('Talissa da Rosa Bitencourt','taabitencourt@gmail.com',NULL,'55999547979','1991-07-24',34,'Solteiro(a)',NULL,'Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1vMyQiUT4EhKyv2KzRmdZBLp14NuYW6K7','Tecnologia em Marketing','Ensino Superior Completo','Unopar',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','AK Serviços de vendas e credenciamento de cartões de credito LTDA
12/2019 – 02/2020
Vendedora de máquina de cartão GetNet – Santander
 
Empório das Aves
Abril/2019 – Agosto/2019
Auxiliar Administrativo;
Caixa;
Pagamento de contas;
Recebimento/conferência de mercadorias;
 
Nicola Veículos Ltda (Alegrete/RS)
Maio/2015 - Julho/2018
Auxiliar Administrativo e Atendente central de atendimento
Caixa;
Contas a receber;
Contas a pagar;
Cobrança;
Faturamento;
Entrada de Notas Fiscais;
Emissão de Boletos;
Preenchimento de DUT;
Elaboração de contratos reserva de domínio;
Agendamento oficina;
Abertura e fechamento de ordem de serviço;
Atendimento direto com os clientes;
Cadastro de clientes;
Entre outros.
 
Inhanduí Veículos Ltda
Fevereiro/2014 – Maio/2015
Operadora de CRM
Cadastro de clientes;
Agendamento Oficina;
Pesquisa de satisfação;',NULL,NULL,'Administrativa',NULL,NULL,'Instagram',NULL,NULL,'Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-17T22:24:00.000Z'::timestamptz),
  ('Thais da Rosa Guedes','thaisrg2209@gmail.com',NULL,'55992028278','1998-09-22',27,'Solteiro(a)',NULL,'Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1dZE1pWhB7KHiayN8OSsfT_rf1eQgyx6w','Administração de empresas','Ensino Superior Incompleto','Unopar','2022-06-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Imobiliária Souza Imóveis, estágio, início 19/12/2018, término 19/03/2021, trabalhava com recebimento de aluguéis, separação destes valores, repasse destes valor e serviço de banco.
Santa Casa, estágio na cafeteria, início 11/12/2021 até o presente momento, atendimento ao público, reposição de bebidas e alimentos.','Curso atualmente o sexto semestre de Administração e faço também faculdade de Licenciatura em Química.',NULL,'Administrativa, Estágio, Financeiro','https://drive.google.com/open?id=1ydn8Ykduj97h--GUybSxcGJHcUZd2B4K',NULL,'Facebook',NULL,NULL,'Sim','Magda Virginia - (55) 98442 - 9743 - Souza Imóveis','Estágio Comercial','Bom me chamo Thais, tenho 22 anos, gosto muito de trabalhar na parte administrativa, trabalho bem em grupo, gosto de me esforçar e conseguir desempenhar as minhas funções da melhor forma possível, procuro novas oportunidades.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-18T00:43:00.000Z'::timestamptz),
  ('Marlize Rodrigues Almeida','marlize_rodrigues@hotmail.com',NULL,'47991705722','1995-11-03',30,'Casado(a)',NULL,'Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=17cg0wIJWyuuJFr4MQpb5MwPwiNxLi0sA','Ciências Contábeis','Ensino Superior Incompleto','Centro Universitário Senac Santo Amaro','2021-12-10','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Contville - Contabilidade Joinville/SC; 2) Estagiária; 3)02/12/2019 a 01/04/2020; 4)Atendimento ao cliente, por telefone, aplicativo, pessoalmente; auxílio na rotina fiscal e contábil; acompanhamento da triagem dos documentos dos clientes até o arquivo ou devolução.

1) Loja Fios da Vida; 2) Vendedora; 3) 02/02/2015 a 16/08/2016; 4) Atendimento e vendas ao cliente no setor de vestuário feminino e masculino, vitrinista, etiquetamento de mercadorias.','Possuo Técnico em Contabilidade concluído em 2014','Análise de Balanços (20h) – Fundação Bradesco  2019; Contabilidade Empresarial (18h) – Fundação Bradesco – 2019; Administração no século 21 (42h) – Fundação Bradesco - 2019; Escrita Fiscal (50h) – Prime Cursos – 2020; Contabilidade Básica (35h) – Prime Cursos – 2020; Contabilidade Gerencial (40h) – Prime Cursos – 2021; Noções de Folha de Pagamento (24h) – SENAC EAD – 2021; Operações Financeiras Imobiliárias (42h) – SENAC EAD – 2021; Contabilidade Geral (60h) – Nossa Escola – 2021; Contabilidade Básica (35h) – Certificado Cursos Online – 2021; Curso Contabilidade (60h) – Cursos Online Educa – 2021','Comercial, Estágio, Financeiro','https://drive.google.com/open?id=18xLZUUCD7aX4CmRlvcq8fUjVcpHuOmf7',NULL,'Instagram',NULL,NULL,'Sim',NULL,'Estágio Comercial','Olá, meu nome é Marlize Rodrigues Almeida, tenho 25 anos, sou estudante de Ciências Contábeis, esposa e mãe ♥.  A família é tudo pra mim! Minha pequena se chama Lívia, tem 10 meses, e meu marido Mateus.
Adoro atividades físicas, ler e cozinhar.. no geral prefiro as coisas mais fitt, mas claro que há dias que a gente faz aquele docinho pra casa também né haha :p
Esse é um pequeno resumo sobre mim :).','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-18T01:23:00.000Z'::timestamptz),
  ('Renata da Silva Xavier','renataurc_2016@outlook.com',NULL,'55996222826','1998-05-24',27,'Solteiro(a)',NULL,'Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=15Fut9ab-qTeQ4UKCV7hsb8Ri2rjDwsF-',NULL,'Ensino Superior Incompleto','URCAMP','2022-12-23','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1)Empresa: Panvel/Dimed: assistente de atendimento e caixa operador 
2) Empresa: Nosso Guia: Agente de Registro/Certificado Digital 
3)Estágio atual: 2° Tabelionato Blaskesi/ Estagiária','Direito',NULL,'Estágio, Marketing, Novos Negócios, Engenharia','https://drive.google.com/open?id=1hqhku4rYliaZ5jErRxfxyo4-BuLbaFKv',NULL,'Instagram',NULL,NULL,'Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-18T11:30:00.000Z'::timestamptz)
;

INSERT INTO young_talents.candidates (full_name, email, email_secondary, phone, birth_date, age, marital_status, children_count, has_license, city, photo_url, education, schooling_level, institution, graduation_date, is_studying, experience, courses, certifications, interest_areas, cv_url, portfolio_url, source, referral, salary_expectation, can_relocate, professional_references, type_of_app, free_field, status, tags, origin, created_by, original_timestamp)
VALUES
  ('Renata da Silva Xavier','renataurc_2016@outlook.com',NULL,'55996222826','1998-05-24',27,'Solteiro(a)',NULL,'Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1ZH6xKOaHkTZwAV7byT9JrzO542ZP_EHl',NULL,'Ensino Superior Incompleto','URCAMP','2022-12-23','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1)Empresa: Panvel/Dimed: assistente de atendimento e caixa operador 
2) Empresa: Nosso Guia: Agente de Registro/Certificado Digital 
3)Estágio atual: 2° Tabelionato Blaskesi/ Estagiária','Direito',NULL,'Estágio, Marketing, Novos Negócios, Engenharia','https://drive.google.com/open?id=1jCAjdC0g9q6psvhEzi7-dhpLeQ-GMZgK',NULL,'Instagram',NULL,NULL,'Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-18T11:30:00.000Z'::timestamptz),
  ('Bruna Morais da Silva','brunacallegaro@hotmail.com',NULL,'996371485','1997-03-31',28,'Solteiro(a)',NULL,'Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1IaEBUOtuTSVAYGHUCYQ6beBT4Pp6v3Ik','Administração de empresas','Ensino Superior Completo','Unopar','2020-08-29','Não, no momento pausei/parei por um período.','CIEE ( Prefeitura de Alegrete)
Estagiária 
Início em 08/03/2018 a 06/03/2020
Era recepcionista,  atendimento ao público, atendimento telefônico, agendamento de consultas, controle da agenda médica.',NULL,NULL,'Administrativa, Comercial, Estágio','https://drive.google.com/open?id=1Dt5NrQZR4PuCBLqq6e7s1TyJGaTBBoWg',NULL,'Instagram',NULL,NULL,'Não','ESF PIOLA 3961-1125
Enfermeira Taise','Estágio Comercial','Sou uma pessoa calma, gosto de trabalhar em grupo , tenho prazer em poder ajudar. Nos horários vagos gosto muito de fazer atividade física  e estar ao ar livre.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-18T16:47:00.000Z'::timestamptz),
  ('Bruna Leticia Macedo Montado','brunamacedo30@hotmail.com',NULL,'55999328799','1988-05-30',37,'União Estável',NULL,'Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1WBc2iJTUx3yoWsk4NszAZ66vuQUAEMpA','Ciências Contábeis','Ensino Superior Incompleto','Urcamp','2022-07-15','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','BANRISUL - Entrei como estagiária. Comecei o estágio em 03/04/2019 e encerrei o contrato em 02/04/2021 fiquei 2 anos completos sem possibilidade de efetivação por se tratar de banco público só efetiva através de concurso. Fazia atendimento ao cliente na plataforma de pessoa física, venda de consignados e produtos estratégicos do banco, atendimento ao telefone, organização de planilhas para acompanhamento de metas e também disponibilização de horários para os clientes entre outras funções.
No início quando entrei trabalhava de assistente da gerente de mercado onde fazia a prospecção de clientes via telefone.',NULL,NULL,'Administrativa, Comercial, Estágio, Financeiro','https://drive.google.com/open?id=1pHuPI95__2AYaGAIXUrSx4aoIf2G23Ma',NULL,'Facebook',NULL,NULL,'Não','Nara Beatriz Fernandes Nunes( GERENTE DE MERCADO BANRISUL) - 997150011.
Jonathan Cassol Reimann ( GERENTE GERAL BANRISUL)- 999027581.','Quero inscrever-me no banco de talentos da Young!','Tenho 32 anos, um filho de 5 anos que está na escolinha, 6 semestre da faculdade, sou uma pessoa pro ativa, organizada, gosto de pontualidade, trabalho em equipe com bom relacionamento sempre presando pelo desenvolvimento de um bom trabalho e buscando sempre crescimento pessoal e profissional, fazendo com que a empresa também cresça.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-18T22:17:00.000Z'::timestamptz),
  ('Vitória Dal Bem Veiga','vitoria_dalbem@hotmail.com',NULL,'55996559316','2000-05-24',25,'Solteiro(a)',NULL,'Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1a73TX4fQyXrlq7kU2De-Ah3Wc6swm73-','Administração de empresas','Ensino Superior Incompleto','Urcamp',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Prefeitura de Alegrete; 2) Estagiária; 3) agosto de 2020 até o momento; 4) Atualmente estou na Secretaria de Planejamento, recebo documentos, atendo telefone, faço planilhas das obras e outras, faço atas, etc.','Concluí o curso técnico em administração de empresas',NULL,'Administrativa, Comercial, Estágio, Marketing',NULL,NULL,'Instagram',NULL,NULL,'Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Fiz o técnico em administração, e me apaixonei pela área tanto é que resolvi seguir na mesma, já fiz estágio no consultório médico do doutor José Antônio Grings, onde era secretária e tenho curso de informática.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-19T11:11:00.000Z'::timestamptz),
  ('Carmem daiane soares alves tassinari dos santos','carmemdaiane480@gmail.com',NULL,'055999058618','1989-10-21',36,'Casado(a)',NULL,'Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1Z2yqRtQEWvZmdsPr-zv4aZDNo9fw01eb',NULL,'Ensino Superior Incompleto','Instituto federal farroupilha campus alegrete','2021-12-17','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Trabalhei como estagiaria na prefeitura em minha cidade , desenvolvi funções administrativas com documentação, elaboração de relatório, expedição de documentos e atendimento ao publico para encaminhamento a outros setores, atendimentos telefonicos,fiquei como estagiaria um ano e seis meses. 
Trabalhei como secretaria em um consultorio medico , tambem desenvolvi funcoes administrativas , atendimento ao publico , agendamento de horarios, serviços externos como eventualmente alguma compra ou pagamentos do consultorio, entrei como estagiaria e fui efetivada assegurada pela CLT, sai da empresa em dezembro de 2015.','Possuo curso técnico em administração e outro em contabilidade. Tenho participação em seminarios na area de administração, cursos de informática, aperfeiçoamento em atendimento ao público,',NULL,'Administrativa, Estágio',NULL,NULL,'Facebook',NULL,NULL,'Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-19T15:58:00.000Z'::timestamptz),
  ('Litieli Muniz da Silva','litielimunizdasilva@gmail.com',NULL,'51995750495','1997-02-20',29,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1YazR1L8ZWxtRSksrZM4XYvaMa4R5Wp2-',NULL,'Ensino Médio Completo','UFSM - Universidade Federal de Santa Maria','2025-02-10','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Reis mármores e granitos LTDA
Auxiliar de escritório em geral - Maio/2013 a Fevereiro/2019.

Rosângela Lauriana Brito ME
Atendente de balcão - setembro/2019 a março/2020.','Marketing Digital',NULL,'Administrativa, Comercial, Marketing','https://drive.google.com/open?id=1ZbgS4QYmECGDuT2c_xUnrqRFsdxgbPgN',NULL,'Instagram',NULL,NULL,'Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-19T16:47:00.000Z'::timestamptz),
  ('Rodrigo da Silva Moraes','moraes.rodrigo98@hotmail.com',NULL,'55999650590','1998-10-24',27,'Solteiro(a)',NULL,'Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1qtGD4SgkgjwEWCjqVf9J11Fdr5AKrUAr','Engenharia elétrica','Ensino Superior Incompleto','UNIPAMPA','2022-12-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Prefeitura Municipal de Alegrete - Estagiário
De 01/05/2016 até 01/11/2016
Assistente de almoxarifado, registrar a entrada e saída de produtos, realizar entregas.',NULL,NULL,'Estágio, Financeiro, Engenharia','https://drive.google.com/open?id=1_UWWoO7ykppd3JJniHtofsBx9SVjcl4e',NULL,'Facebook',NULL,NULL,'Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-19T19:36:00.000Z'::timestamptz),
  ('Isa Gabriela Gomes Pinheiro','isaggomespinheiro@gmail.com',NULL,'55984145516','1999-01-29',27,'Solteiro(a)',NULL,'Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=14bToNdE_HS_eTMNvvAZpXfyJBRUmUBJt','Biologia','Ensino Superior Incompleto','IFFar - campus Alegrete','2022-12-23','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Primeiro emprego',NULL,NULL,'Estágio',NULL,NULL,'Facebook',NULL,NULL,'Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Meu nome é Isa Gabriela, mas todo mundo me chama de Isa apenas. Tenho 21 anos, sou natural de Alegrete, estou cursando Licenciatura em Ciências Biologicas no IFFar.
Estou em busca do primeiro emprego, possuo muita vontade em aprender coisas novas e estou aberta a desafios.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-19T20:09:00.000Z'::timestamptz),
  ('Eduarda Kemmerich Dos Santos','eduarda-kemmerich@hotmail.com',NULL,'55999319544','1995-10-10',30,'Solteiro(a)',NULL,'Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1Fbb8-mfnZD0nk0EiuyZtxpZygdu1KN67','Administração','Ensino Superior Completo',NULL,'2021-03-20','Não, no momento pausei/parei por um período.','1) Marfrig Global Foods 2) Analista administração de pessoal pleno 3) 07/08/2017 4) Conferência de folha de pagamento, admissão, rescisão, mercado eletrônico, férias',NULL,NULL,'Administrativa','https://drive.google.com/open?id=1n4XD_3lbNiim4bLd0lIGfHnstzjzVJZ8',NULL,'Facebook',NULL,NULL,'Sim',NULL,'Analista',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-19T22:41:00.000Z'::timestamptz),
  ('Gabriel da Rosa Correa','gabrielsevero159@gmail.com',NULL,'55984049436','1998-02-09',28,'Solteiro(a)',NULL,'Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1WrifAiuGMiO1RRcKIz2z3MtQ4d46d3pU','Técnico em informática','Ensino Superior Incompleto','Instituto Federal Farroupilha','2019-07-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Prefeitura de Alegrete, estagiário, 12/12/2019 e 12/07/2020, digitalização de documentos e manutenção em equipamentos da TI;
Monitorar, técnico em informática, 05/01/2019 e 05/10/2019, fazia instalações de sistemas CFTV e alarmes;
Cooperativa agroindústria Alegrete, aprendiz, 30/06/2014 e 30/06/2016, cuidado do estoque do setor de manutenção.','Sou graduando em Análise e Desenvolvimento de Sistemas!','Não','Comercial, Estágio, Engenharia','https://drive.google.com/open?id=11xq4_bzpcUFT0_YqyIC_nwUqErrLrYWL',NULL,'Instagram',NULL,NULL,'Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Já trabalhei em muitas áreas, já fui padeiro( tenho curso de auxiliar de padeiro), auxiliar administrativo (tenho o curso ), garçom, técnico em instalador,atualmente faço Websites em WordPress e tenho algum conhecimento em banco de dados, php, HTML e css!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-20T02:42:00.000Z'::timestamptz),
  ('Laura Francisca Brito da silva','laurafrancisca519@gmail.com',NULL,'51980261690','1999-09-01',26,'Solteiro(a)',NULL,'Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1SjkRFOUu9zCQkTCSJf-RL9UjVg600UhE','Ciências Contábeis','Ensino Superior Incompleto','Uniasselvi','2024-10-23','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Nome da empresa: Masal S/A 
Cargo: auxiliar administrativo (jovem aprendiz) 
Data de início: 03/08/2015 término: 02/01/2017 
Nome da empresa: RR shoes
Cargo: preparador de calçados 
Data de início: 29/01/2018 término: 23/06/2020','Cursos de curta e média duração: 
Emissão de nota fiscal 
Gestão de recursos humanos 
Gestão financeira 
CPA 10 e CPA 20 em andamento',NULL,'Administrativa, Comercial, Financeiro, Engenharia',NULL,NULL,'Instagram',NULL,NULL,'Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-20T15:24:00.000Z'::timestamptz),
  ('Rafael Jesus dos Reis','eng.rafaeljreis@gmail.com',NULL,'51981293790','1992-01-14',34,'Casado(a)',NULL,'Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1jpSLuwE2SDwou71V7wN0gqm5SS0NXwta','Engenharia Civil','Pós-graduação Incompleta','Universidade Luterana do Brasil','1992-08-15','Não, no momento pausei/parei por um período.','(10/2020 a atualmente) Profissional Liberal 
Engenheiro Civil
Projetos e Execução de Obras

(01/2019 a 09/2020) Luiz Dalsenter Construtora Ltda - Canoas
Engenheiro Civil 
Execução de uma obra escolar de aproximadamente 6.000m².

(01/2013 a 08/2018) Instituição Adventista Sul Riograndense de Educação - Porto Alegre
Projetista (Cadista)
Execução de projetos arquitetônicos, hidrossanitários e acompanhamento a pequenas reformas.

(01/2012 a 01/2013) Escritório de Arquitetura Ângela Guerreiro - Sto Antônio da Patrulha
Estagiário
Projetos arquitetônicos residenciais e comerciais, acompanhamento de obra e planilhas de orçamento.','Pós-Graduação: Pós em Estruturas de Concreto Armado(incompleta-trancada), pela Universidade Adventista de São Paulo.
Cursos: Revit Architecture(pela CADS) e Revit MEP(pela CADS)
Engenheiro de Financiamento e Obras BIM (pela escola técnica LEIAUT)
Instalações Hidrossanitárias e Elétricas Residenciais (cursando - pelo Plus do Meu Escritório).',NULL,'Novos Negócios, Engenharia','https://drive.google.com/open?id=1s70L4rNqdiNVoy4xMh1X3EOQWlKnB-m6',NULL,'Instagram',NULL,NULL,'Sim',NULL,'Auxiliar de Engenharia - Post Instagram','Atualmente moro em Porto Alegre, mas sou natural de Santo Antônio da Patrulha, tenho disponibilidade para inicio imediato.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-20T17:43:00.000Z'::timestamptz),
  ('Valdisnei oliveira ramos','valdis_oliveira@hotmail.com',NULL,'51995341047','1991-09-03',34,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1vw6aL6mlI-NsAk2N0HclEI8tpOfXoT6a','Técnico em edificações','Ensino Médio Completo','Unipacs',NULL,'Não, no momento pausei/parei por um período.','1)walbrinq ltda 2)garcon,pizzaiolo,chefe de cozinha 3)03/03/2013 a 10/10/2019.4) gerenciava cozinha e salao 
1)contrutora mao certa 2) tecnico em edificações 3)03/04/2017 a 15/07/2017 trabalhei mais dois anos sem carteira assinada 4)apontador,gerenciava canteiro de obras leitura de projetos qualificação de mao de obra',NULL,NULL,'Arquitetura, Comercial, Engenharia',NULL,NULL,'Youtube',NULL,NULL,'Sim',NULL,'Tecnico em edificações ou cursando Engenharia','Tenho duas paixões construção e cozinha ambos as funções acabei cordenando equipes tenho facilidade em aprender e trabalhar com pessoas sempre trabalhando nas duas funções','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-21T01:24:00.000Z'::timestamptz),
  ('Thiago Machado do Nascimento','tnasc21@gmail.com',NULL,'51982256305','1992-11-24',33,'Solteiro(a)',NULL,'Sim','São Leopoldo/rs','https://drive.google.com/uc?export=view&id=19eYRbqhT1wq7ILfSMm6kfzdilPLdF1L8','Engenharia Civil','Ensino Superior Completo','UNISINOS','1992-11-24','Não, no momento pausei/parei por um período.','1)ZS Engenharia
2)Estagiário – Engenharia Civil
3)mai/2017 – dez/2019	
4)Medição, elaboração e conferência de projetos de drenagem, pavimentação e sinalização de estradas.

1)Prefeitura Municipal de São Leopoldo
2)Estagiário - Engenharia Civil
3)mar/2015 – mar/2017	
4)Medição, confecção e conferência de projetos arquitetônicos; Realização de vistorias de Habite-se e revisões de IPTU.

1)New Life Cursos
2)Estagiário - Técnico em informática
3)Fev/2011 – Jul/2011	
4)Instrução de cursos de informática, auxiliar em suporte técnico.','Autocad 2D e 3D',NULL,'Financeiro, Licenciamentos, Engenharia','https://drive.google.com/open?id=1-QLw4Xz1IeIBXvq7ggUoy_-1cMeeQGHL',NULL,'Indicação',NULL,NULL,'Sim',NULL,'Vaga para Auxiliar de Engenharia',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-21T16:23:00.000Z'::timestamptz),
  ('Gustavo Bernardes','eng.gustavobernardes@gmail.com',NULL,'051984063495','1993-04-03',32,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=15l-emRSe4RMy4EgjXH3XW3Pjw11PduWa','Engenharia Civil','Pós-graduação Incompleta','Unisinos','2019-01-19','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Última emprego: Prefeitura Municipal de Gramado - RS. Cargo de Engenheiro Civil na Secretaria de Obras e Serviços Urbanos ocupado entre novembro de 2019 e dezembro de 2020, realizando serviços de gestão de equipes, gestão e planejamento de obras, elaboração de projetos, acompanhamento e fiscalização da execução de projetos, elaboração de orçamentos, elaboração de cronogramas, elaboração de medições.','Cursando Pós-graduação em Engenharia de Segurança do Trabalho',NULL,'Novos Negócios, Engenharia','https://drive.google.com/open?id=1HzXCRNT2EnOvAMHs4nga8d05FICdIV3r',NULL,'Indicação',NULL,NULL,'Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-22T02:34:00.000Z'::timestamptz),
  ('MIGUEL GEOVANI MEEREIS SCHMITT','miguelschmitt1@gmail.com',NULL,'55996517013','1992-02-01',34,'Solteiro(a)',NULL,'Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1u1DkeHQTtyPtCsxXp--vN8SuBnISSVwG','Engenharia Civil','Ensino Superior Incompleto','Universidade Federal do Pampa','2021-12-22','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Desenhista técnico
Nome da empresa-Arquitetura Personal Estágio
Período do emprego-fev. de 2020 – nov. de 2020
Duração - 10 meses
Localidade-Alegrete, Rio Grande do Sul
Desenho técnico utilizando o software Revit.

Desenhista
Nome da empresa-Autonômo Freelance
Período do emprego-jul. de 2018 – fev. de 2020
Duração - 1 ano 8 meses
Localidade-Alegrete
Desenho de plantas em 2D e 3D utilizando os softwares AutoCAD e Revit.
Modelagens e renderizações.

Estagiário
Nome da empresa-Prefeitura Municipal de Alegrete
Período do emprego-abr. de 2017 – mar. de 2019
Duração - 2 anos
Localidade-Alegrete
Levantamentos topográficos de terrenos e vias públicas utilizando Estação Total;
Desenvolvimento de mapas e perfis longitudinais.',NULL,NULL,'Arquitetura, Estágio, Engenharia','https://drive.google.com/open?id=1zjXK8IjH5pn83rbVhbJoPyomVj5mrcrC','https://drive.google.com/open?id=1cynuHemnUy5d828hMVr6A4pjfbAUHUCn, https://drive.google.com/open?id=1Iezv3FjM8azfyeN4W39JCg9X4jweb5e5, https://drive.google.com/open?id=1kLyheatXVoXk3HThtNfBg5AVOUHqOoAo, https://drive.google.com/open?id=1GqD9laN7FCeq3S6rnlqZ2VoMwOSvZbEl','Instagram',NULL,'20000','Sim','Whats.: 55 996517013 
E-mail: miguelschmitt1@gmail.com
Portfolio: behance.net/miguelschmitt
LinkedIn: linkedin.com/in/miguel-schmitt-22b6a463/','Estágio','Olá, possuo conhecimento nos softwares:
- AutoCAD;
-Revit;
-Sketchup;
-Lumion;
-Enscape;
-D5 render;
-Twinmotion;
-Pacote Office.

Busco adquirir conhecimentos nas áreas de:
-Engenharia Civil;
-Arquitetura;
-Administração.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-22T11:32:00.000Z'::timestamptz),
  ('Juliana Rodrigues da Silva','julianarsilva2201@gamail.com',NULL,'51998394394','1993-01-22',33,'Casado(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Opt5MrXs0S6MinOhicE-mn23Kf0AbJQh','Licenciatura em Pedagogia','Ensino Superior Completo','Centro universitário Leonardo da Vinci','2016-09-17','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1- Prefeitura Municipal de Santo Antônio da Patrulha. 
2- professora
3- DI: 17/03/14 DF: 18/12/18
4- Cuidados básicos com crianças de 0 a 6 anos, como auxílio na alimentação, higiene e atividades pedagógicas.','Curso de planejamento e gestão de vendas.',NULL,'Administrativa, Comercial, Marketing','https://drive.google.com/open?id=1wjEGQB2HAucUOhd5IqV9vxGoFPN0nOR_',NULL,'Facebook',NULL,'1.700,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Trabalho como autônoma no ramo de confeitaria.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-24T00:17:00.000Z'::timestamptz),
  ('Antônio Fernando Gomes dos santos','fernandovendas7@outlook.com',NULL,'051980169580','1994-06-13',31,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1pleWOY4FeDglpEechhrtLyIQMbZgqJLM',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Experiência em vendas externas e internas de produtos congelados, no ramo de vendas a mais de 7 anos',NULL,NULL,'Comercial',NULL,NULL,'Instagram',NULL,'10.000,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-25T05:20:00.000Z'::timestamptz),
  ('Claudia Maria Assis Ramos','claudia_itati@hotmail.com',NULL,'51995159457','1970-04-18',55,'União estável',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1R8kAA8BEJIhLmOSQcKUIk1xv9TE0yaWN','Gestão administrativa publica','Ensino Superior Incompleto','Uniasselvi',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Iniciei minha carreira profissional como digitadora, fui promovida a técnica em informática na empresa Direção processamento dados, em seguida passei a trabalhar como secretária na empresa Cia União dos refinadores  de açúcar e café - Copersucar, onde era responsável por toda área administrativa da regional de Porto Alegre, em seguida tive oportunidade de lidar com sistema de pedidos de vendas (SAP) e dar treinamento do mesmo aos vendedores da regional,  também obtive a oportunidade de fazer a venda direta à atacadistas, varejistas e industrias do RS, participando de cursos e exposições como AGAS. E por fim em 2001 entrei para o serviço público onde me aposentei por tempo de contribuição em março deste ano, na Prefeitura Municipal de Itati, atuei em praticamente todas as áreas da administração, compras e licitações, chefe de controle interno (auditoria interna) chefe de arrecadação, secretária municipal da saúde, fiscal do meio ambiente dentre outros.  Mas sinto que ainda tenho muito a contribuir e a aprender.','Direito tributário, auditoria interna, compras e licitações, licitações e contratos..',NULL,'Administrativa, Comercial, Financeiro, Engenharia',NULL,NULL,'Indicação',NULL,'A combinar','Sim','Prefeitura municipal de itati/36285104/Madalena','Vaga comercial','Tenho experiência em word, excel, trabalhei com venda de imóvel na empresa construtora BBS engenharia, gosto de viajar conheço alguns países da América Latina e alguns estados do Brasil, quando funcionária da empresa união/copersucar, praticamente residia em São Paulo em virtude de treinamentos e palestras.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-25T23:45:00.000Z'::timestamptz),
  ('Fabrício Prestes Iori','fabricio.iori93@gmail.com',NULL,'991987431','1993-05-04',32,'Solteiro(a)',NULL,'Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=11yiNOD1BBlaDhkJyyCBb8L6k-9xwTCJI','Engenharia Civil','Ensino Superior Completo','UniRitter','2018-01-17','Não, no momento pausei/parei por um período.','Haza Construções de Edifícios Ltda
Auxiliar de Engenharia: junho/2020 a janeiro/2021
Desempenhando as seguintes atividades:
• Planejamento da reforma dos setores da base aérea de canoas;
• Orçamento e compra de materiais;
• Acompanhamento dos serviços de assentamento de piso cerâmico, porcelanato e azulejo, remoção e 
instalação de esquadrias em madeira, alumínio e vidro, demolições em geral, funilaria, acabamentos, 
execução de passeios, impermeabilizações, adequações em telhados e alvenaria.
• Medições e pagamentos;
• Contratação de funcionários.

MRV Construções Ltda
Estagiário de engenharia civil: maio/2016 a janeiro/2018
Desempenhando as seguintes atividades:
• Auxiliar nas atividades de PBQP-H;
• Supervisionar as atividades de: execução da alvenaria (bloco de concreto); concretagem (in loco) das 
lajes; carpintaria (forma e desforma das lajes); instalação de esquadrias; reboco interno e externo; 
pintura interna e externa; limpeza grossa e fina;
• Entrega dos apartamentos para moradores;
• Planejamento e cronograma de obra;
• Realizar medições (empreiteiros e mão de obra própria);
• Lançamento de notas fiscais.

Coordenadoria Geral de Vigilância em Saúde/SMS/PMPA
Estagiário de engenharia civil: agosto/2012 a agosto/2014
Desempenhando as seguintes atividades:
• Análise de projetos físicos de estabelecimentos assistenciais de saúde;
• Revisão de plantas baixas, cortes e fachadas de projetos arquitetônicos;
• Avaliação documental de processos de aprovação de projeto;
• Elaboração de relatórios técnicos sobre as análises realizadas dos projetos;
• Organização dos processos, bem como, encaminhamento para arquivamento final;
• Acompanhamento da reforma do edifício da CGVS.','Curso de AutoCAD 2D (Senac-RS), curso de Eberick, ministrado pelo Engenheiro Renan Junqueira e curso do Pacote office, ofertado pela prefeitura de Porto Alegre',NULL,'Administrativa, Novos Negócios, Engenharia','https://drive.google.com/open?id=1A71VOFprTHxa2XTU5q8-6Q5wrU2aME9F',NULL,'Indicação',NULL,'2000','Sim','Eng. Thiago Motta (Haza) - 98422 6392
Eng. Virgínia Scherer (MRV) - 99660 8380','Auxiliar de Engenharia','Sou formado desde 2018 e neste período trabalhei algum tempo de forma autônoma, realizando projetos elétrico, hidráulico e alguns projetos complementares, que acabei planejando e supervisionando a execução. Paralelamente a isso, administrava os negócios da minha família. Além do conhecimento adquirido através de cursos, aprendi a utilizar ferramentas de planejamento como MS Project e sienge, software de modelagem como o SketchUp.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-26T00:10:00.000Z'::timestamptz),
  ('Jéferson Henrique Fernandes','agendajefersonfernandes@gmail.com',NULL,'51980240587','1996-03-06',29,'Casado(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1yc1yeaED-VKbImBe48Nw7YTFxgnyfG3_',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','1-INB Telecom
-Vendedor Externo
-15/05/2020 até o momento. Foi na INB que formei ainda mais minha paixão por vendas trabalho com metas, planilias, carta de clientes e cadastro de Leads, trabalhando muito com o conceito de Rapport e técnica 4 V''s. 1:Vibrar 2:Verificar 3:Vender 4:Valorizar. Atualmente o Grupo Inb Telecom foi vendido a Vero Internet que assumiu as atividades desde Novembro de 2020 tenho ficado sempre no top 5 de vendedores do Brasil em uma empresa com 270 colaboradores com esta função, porém busco novos desafios e um lugar que possa me proporcionar um crescimento profissional e financeiro de uma forma mais sólida!',NULL,NULL,'Comercial',NULL,NULL,'Facebook',NULL,'3.500','Não','Deividi Ramos (51) 98182-0542 Gerente Comercial Inb Telecom','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-27T01:07:00.000Z'::timestamptz),
  ('Valéria Maria de Castro','castrovaleria015@gmail.com',NULL,'51985355774','1986-04-24',39,'Casado(a)',NULL,'Não','Caraá/rs','https://drive.google.com/uc?export=view&id=1EwQRxgAroRpF0717smFJ5ZHjb_bcuOWp','Ciências Contábeis','Ensino Superior Incompleto','Uniasselvi','2022-08-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Estágio Banrisul  01/2020 a 01/2021 atendimento ao público, sistema operacional, arquivo. 
Conzatti Contabilidade  09/2012 a 12/2013 - Recepção/administrativo, atendimento ao telefone e aos clientes, agenda, relatórios, sistema gerencial,documentos,planilhas. Atividades em geral administrativas
Clínica Odontológica Faria santos- 08/2009 a 11/2010- Recepção/administrativo Atendimento ao telefone e aos clientes,relatórios,orçamentos,planilhas agenda atividades em geral administrativas.',NULL,'Certificado Evento CRC -RS, Certificação ANBIMA EAD - Certificado de Estagio do Banrisul','Administrativa, Financeiro','https://drive.google.com/open?id=1qWaMg81hvPaWLthBubnT8q-dRtH9ylRf',NULL,'Agência de Empregos',NULL,'R$1.200 a R$ 2.000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','meu nome é Valeria escrevo para demonstrar meu interesse em ser uma colaboradora da organização estou cursando o 6º semestre de Ciências Contábeis.
Tenho conhecimento na área administrativa sobre os processos e funções da atividade, relatórios, registros, agendas, documentos, atendimento, compras e afins. Gosto de organização, sou proativa e comunicativa e de bom relacionamento interpessoal. Estou bastante entusiasmada com a oportunidade de trabalhar com vocês, tenho acompanhado as atividades da empresa através de suas redes socias e  gostaria de colaborar com os objetivos da empresa colocando em pratica meus conhecimentos assim posso contribuir para desenvolvimento da empresa bem como para o meu aprendizado.
segue meu currículo para analise e coloco-me a disposição para melhores esclarecimentos.
Muito obrigada pela atenção.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-27T02:58:00.000Z'::timestamptz),
  ('Valéria Maria de Castro','castrovaleria015@gmail.com',NULL,'51985355774','1986-04-24',39,'Casado(a)',NULL,'Não','Caraá/rs','https://drive.google.com/uc?export=view&id=1n7JWk5z32hBttoI9lmcTaQkzVxg28zzc','Ciências Contábeis','Ensino Superior Incompleto','Uniasselvi','2022-08-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Estágio Banrisul  01/2020 a 01/2021 atendimento ao público, sistema operacional, arquivo. 
Conzatti Contabilidade  09/2012 a 12/2013 - Recepção/administrativo, atendimento ao telefone e aos clientes, agenda, relatórios, sistema gerencial,documentos,planilhas. Atividades em geral administrativas
Clínica Odontológica Faria santos- 08/2009 a 11/2010- Recepção/administrativo Atendimento ao telefone e aos clientes,relatórios,orçamentos,planilhas agenda atividades em geral administrativas.',NULL,'Certificado Evento CRC -RS, Certificação ANBIMA EAD - Certificado de Estagio do Banrisul','Administrativa, Financeiro','https://drive.google.com/open?id=1kz9irNj2v8hLO9Upn9joBviHDGq6ZKVK',NULL,'Agência de Empregos',NULL,'R$1.200 a R$ 2.000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','meu nome é Valeria escrevo para demonstrar meu interesse em ser uma colaboradora da organização estou cursando o 6º semestre de Ciências Contábeis.
Tenho conhecimento na área administrativa sobre os processos e funções da atividade, relatórios, registros, agendas, documentos, atendimento, compras e afins. Gosto de organização, sou proativa e comunicativa e de bom relacionamento interpessoal. Estou bastante entusiasmada com a oportunidade de trabalhar com vocês, tenho acompanhado as atividades da empresa através de suas redes socias e  gostaria de colaborar com os objetivos da empresa colocando em pratica meus conhecimentos assim posso contribuir para desenvolvimento da empresa bem como para o meu aprendizado.
segue meu currículo para analise e coloco-me a disposição para melhores esclarecimentos.
Muito obrigada pela atenção.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-27T02:58:00.000Z'::timestamptz),
  ('Valéria Maria de Castro','castrovaleria015@gmail.com',NULL,'51985355774','1986-04-24',39,'Casado(a)',NULL,'Não','Caraá/rs','https://drive.google.com/uc?export=view&id=12dmlrNwIIjgWLVexMrYRZ5TX_aYQ-ezg','Ciências Contábeis','Ensino Superior Incompleto','Uniasselvi','2022-08-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Estágio Banrisul  01/2020 a 01/2021 atendimento ao público, sistema operacional, arquivo. 
Conzatti Contabilidade  09/2012 a 12/2013 - Recepção/administrativo, atendimento ao telefone e aos clientes, agenda, relatórios, sistema gerencial,documentos,planilhas. Atividades em geral administrativas
Clínica Odontológica Faria santos- 08/2009 a 11/2010- Recepção/administrativo Atendimento ao telefone e aos clientes,relatórios,orçamentos,planilhas agenda atividades em geral administrativas.',NULL,'Certificado Evento CRC -RS, Certificação ANBIMA EAD - Certificado de Estagio do Banrisul','Administrativa, Financeiro','https://drive.google.com/open?id=1swmRTTcVc8mpcVRA7ZyLVI3gTtE6Vu26',NULL,'Agência de Empregos',NULL,'R$1.200 a R$ 2.000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','meu nome é Valeria escrevo para demonstrar meu interesse em ser uma colaboradora da organização estou cursando o 6º semestre de Ciências Contábeis.
Tenho conhecimento na área administrativa sobre os processos e funções da atividade, relatórios, registros, agendas, documentos, atendimento, compras e afins. Gosto de organização, sou proativa e comunicativa e de bom relacionamento interpessoal. Estou bastante entusiasmada com a oportunidade de trabalhar com vocês, tenho acompanhado as atividades da empresa através de suas redes socias e  gostaria de colaborar com os objetivos da empresa colocando em pratica meus conhecimentos assim posso contribuir para desenvolvimento da empresa bem como para o meu aprendizado.
segue meu currículo para analise e coloco-me a disposição para melhores esclarecimentos.
Muito obrigada pela atenção.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-27T02:58:00.000Z'::timestamptz),
  ('Valéria Maria de Castro','castrovaleria015@gmail.com',NULL,'51985355774','1986-04-24',39,'Casado(a)',NULL,'Não','Caraá/rs','https://drive.google.com/uc?export=view&id=1UMiphkjkG2iZe5XwN9d68irL8ERGvqpT','Ciências Contábeis','Ensino Superior Incompleto','Uniasselvi','2022-08-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Estágio Banrisul  01/2020 a 01/2021 atendimento ao público, sistema operacional, arquivo. 
Conzatti Contabilidade  09/2012 a 12/2013 - Recepção/administrativo, atendimento ao telefone e aos clientes, agenda, relatórios, sistema gerencial,documentos,planilhas. Atividades em geral administrativas
Clínica Odontológica Faria santos- 08/2009 a 11/2010- Recepção/administrativo Atendimento ao telefone e aos clientes,relatórios,orçamentos,planilhas agenda atividades em geral administrativas.',NULL,'Certificado Evento CRC -RS, Certificação ANBIMA EAD - Certificado de Estagio do Banrisul','Administrativa, Financeiro','https://drive.google.com/open?id=10I65YXH4jOz5k4l0h2PNAqH8dMQU061N',NULL,'Agência de Empregos',NULL,'R$1.200 a R$ 2.000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','meu nome é Valeria escrevo para demonstrar meu interesse em ser uma colaboradora da organização estou cursando o 6º semestre de Ciências Contábeis.
Tenho conhecimento na área administrativa sobre os processos e funções da atividade, relatórios, registros, agendas, documentos, atendimento, compras e afins. Gosto de organização, sou proativa e comunicativa e de bom relacionamento interpessoal. Estou bastante entusiasmada com a oportunidade de trabalhar com vocês, tenho acompanhado as atividades da empresa através de suas redes socias e  gostaria de colaborar com os objetivos da empresa colocando em pratica meus conhecimentos assim posso contribuir para desenvolvimento da empresa bem como para o meu aprendizado.
segue meu currículo para analise e coloco-me a disposição para melhores esclarecimentos.
Muito obrigada pela atenção.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-27T02:58:00.000Z'::timestamptz),
  ('JANAINA SOUZA','jana.souzas@hotmail.com',NULL,'51998186114','1990-09-04',35,'Casado(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=13a_ac2RqRUNsQEFfQjVHhsz_Q8jzfKB8','Ciências Contábeis','Ensino Superior Completo','Leonardo Da Vince - grupo Uniasselvi','2014-03-30','Não, no momento pausei/parei por um período.','Santander - Estagio faculdade, por dois semestres.

Banrisul- Estagio ensino médio, por um três semestres.

Caixa Econômica Federal - Menor aprendiz, por um ano.

Nas intuições acima realizei trabalho semelhantes, pude atuar do lado dos gerentes auxiliando nas metas e no trabalho diário, tais como: Abertura de contas, bloqueio e desbloqueio de cartões e talões, Atendimento ao telefone, conferencia de documentos, atendimento ao público interno, e também no auto-atendimento, venda de produtos, empréstimo, tramite de processos indenizatórios, auxilio na tesouraria, controle de almoxarifado, orçamento e compras de material, auxilio na manutenção dos equipamentos do auto-atendimento das agencias.

Banrisul fui reconhecida pela empresa Millenium pesquisas publicitárias como melhor atendente bancaria 2006/ 2007


CFC Santo Antonio: Atualmente 

O Direção Geral: o responsável pela administração e o correto funcionamento da Instituição estabelecendo e mantendo  as relações oficiais com os órgãos ou entidades do Sistema Nacional de Trânsito,  administrando a instituição de acordo com as normas estabelecidas pelo órgão de trânsito do Estado e do Distrito Federal,  decidindo, em primeira instância, sobre os recursos interpostos ou reclamações feitas por candidato ou condutor contra qualquer ato julgado prejudicial, praticado nas atividades escolares, aplicar as penalidades administrativas ao pessoal que lhe é subordinado, nos termos bem como toda organização operacional da empresa desde criação de metodologia e criação de metas e reconhecimento. 

O Diretor de Ensino  planejando e avaliando pedagogicamente as atividades realizadas no CFC, bem como outras funções como  coordenar as atividades pedagógicas, coordenar a atuação dos instrutores e participar do planejamento estratégico da instituição, e revisão e manutenção dos veículos.','2º semestre de transações imobiliárias, instrutor de transito, direção de ensino auto escola, direção geral auto escola.',NULL,'Administrativa, Comercial, Estágio, Novos Negócios',NULL,NULL,'Instagram',NULL,'Atualmente minha renda atual é de R$3.600,00 mensal. Mas esse renda é fixa e sem previsão de aumento ou comissões pelo meu trabalho. Busco oportunidade de me  desenvolver e ser remunerada de acordo com minha dedicação e produtividade.','Não','Solange Lopes Diretora CFC: (51) 99104 2038','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-27T12:37:00.000Z'::timestamptz),
  ('Tauan dos Santos Fraga','tauanfraga98@gmail.com',NULL,'51996618257','1998-06-06',27,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=16YpMdqD63GHCSqFe089H_bP_rAB3qhZi','Engenharia Civil','Ensino Superior Incompleto','Universidade Lutera do Brasil - Ulbra - Polo Canoas','2022-08-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Trabalhei durante o período de quase 3 anos no escritório de Arquitetura Bergamin, junto também a AAB Projetos, de Abril de 2015 a Março de 2018, onde executava desenhos arquitetônicos e projetos, atendimento a clientes, medição em obra.
Atualmente Trabalho fora da área na loja Clip como estoquista e faço cadastro de recebimentos de mercadorias.','Curso de Autocad relizado em 2015.',NULL,'Engenharia','https://drive.google.com/open?id=1aFje321dNsLoqL01Sov8sPyb5aETuWPh',NULL,'Instagram',NULL,'Em torno de R$ 1500,00 á R$ 1700,00','Sim',NULL,'Auxiliar de Engenharia','Possuo grande flexibilidade a atividades propostas, possuo inglês fluente, tenho experiência com obras tendo vivenciado em alguns momentos e bastante experiencia com desenho técnico em Autocad.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-27T21:02:00.000Z'::timestamptz),
  ('Fagner Lopes flores','fagnerfagnerlopes@gmail.com',NULL,'51980490284','1989-10-27',36,'Casado(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=18USVoMnafwiOvnEunPLexlGo_qfoRiOJ',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Parque da guarda vendedor externo Masal SA auxiliar de logística',NULL,NULL,'Comercial',NULL,NULL,'Facebook',NULL,'1500','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-28T02:02:00.000Z'::timestamptz),
  ('Nathália da Silva Farias','nathalia.farias@terra.com.br',NULL,'995614079','1999-05-06',26,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=154m5irnH2vPHA1XUqdLycHaZr72VbWPS',NULL,'Ensino Médio Completo','Escola Estadual Deoclécio Ferrugem','2016-12-22','Não, no momento pausei/parei por um período.','Operador de Caixa - Empresa Farias Super MS Mercado Padaria LTDA
Início 03/10/2018
Saída 02/04/2021','Auxiliar Administrativo - SENAI 800 horas
Auxiliar Administrativo- SENAC 180 horas
Informática Essencial - Microlins 77 horas',NULL,'Administrativa',NULL,NULL,'Facebook',NULL,'1500','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa dinâmica, responsável, dedicada e estou disposta a aprender com intuito de ajudar a equipe de trabalho.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-28T18:00:00.000Z'::timestamptz),
  ('Luciana maria de Oliveira hendges','luhendges@yahoo.com.br',NULL,'55999410674','1980-06-02',45,'Casado(a)',NULL,'Sim','Santo Ângelo/rs','https://drive.google.com/uc?export=view&id=1wvAsPMOKCUhJ4my87y3oE1SaZ8q1YFJ6','Direito','Ensino Superior Completo','Iesa','2008-12-21','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Trabalho em uma empresa famíliar de engenharia, topografia e imobiliária, onde desempenho a parte de documentação e regularização de imóveis junto aos órgãos públicos.','Pós graduação em direito notarial e registral',NULL,'Administrativa, Comercial, Engenharia','https://drive.google.com/open?id=1p8JUsvvgqeUfsAmxZBtmjQ1pAXt9kP4s',NULL,'Instagram',NULL,'3.000,00','Sim','Imobiliária Entre Ijuis
Escritório de advocacia Dr Cláudio Sidnei da Silva','Quero inscrever-me no banco de talentos da Young!','Especialista em documentação, regularização, averbação de imóveis em geral','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-29T12:25:00.000Z'::timestamptz),
  ('Bruno Reis Fogaça Sussenbach','brunosussenbach@gmail.com',NULL,'51991537673','1996-07-29',29,'Solteiro(a)',NULL,'Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=12pvgA7baUy3rp3gzqIG5AWvyWAx1Jyod',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Trabalhei 3 anos na Termolar S/A como representante , atualmente sou gestor comercial de uma empresa em Frederico Westphalen no noroeste do estado.','3 semestres cursados de Agronomia 
Cursando Gestão Comercial EAD Uniasselvi',NULL,'Comercial',NULL,NULL,'Indicação',NULL,'Minha expectativa salarial serial algum fixo + comissão. Ou  fixo de 4.000 reais ou mais.','Sim','Gerente do RS da Termolar / Coordenador de Marketing da Termolar / Coordenadora de Trade Marketing da Urbana Farmcy','Quero me inscrever para alguma Vaga comercial.','Olá me chamo Bruno Reis, tenho 24 anos natural de Porto Alegre, mas morei vida inteira em Santo Antônio da Patrulha. Tenho um trajetória de sucesso na carreira comercial, tendo números e referências profissionais para provarem isto. Possuo grande conhecimento em negociações e grande facilidade de constituir relações, que és uma das habilidades mais importantes em nosso seguimento comercial. 

Atualmente sou gerente comercial de uma indústria de produtos para chimarrão e Tereré e proprietário de uma marca de roupas e acessórios campeiros. Resido em Frederico Westphalen mas não me adotei muito a cidade. Tenho vontade de voltar para região Metropolitana / Santo Antônio. Mas tenho disponibilidade de viagens e trabalhos externos, por sinal são meus favoritos. Tenho conhecimento em informática avançado, PPT, Excel, Canva, Word e em algumas plataformas comerciais. 

Possuo carro próprio e tenho uma breve experiência em negociação de imóveis. 

Desde já agradeço, posso mandar algumas informações extras caso necessário.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-30T18:09:00.000Z'::timestamptz),
  ('Camila da Silveira Rodrigues Aposentada','kamylarodr@gmail.com',NULL,'51998672383','1994-11-10',31,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1mR2gAMwkKzIZZRnwnoumO8HJ2MwlWyVa','Educação fisica','Ensino Superior Incompleto','Iniasselvi',NULL,'Não, no momento pausei/parei por um período.','Eder A. C. Da Silva e Cia Ltda',NULL,NULL,'Administrativa, Comercial, Financeiro',NULL,NULL,'Facebook',NULL,'1500','Não','Júnior 51998672383','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-04-30T23:12:00.000Z'::timestamptz),
  ('Lucas de souza e silva','lucasdesouzaesilva80@gmail.com',NULL,'5551998547769','2021-04-17',4,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1VBfdtlNFoeJP11OYQfGfKRtwzUOj08E6',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Nao tenho muita experiencia mas quero aprender estou muito disposto a aparender e entrar nesses negocios',NULL,NULL,'Estágio, Novos Negócios, Engenharia',NULL,NULL,'Facebook',NULL,'2500','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Eu trabalhei em obras','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-05-01T16:58:00.000Z'::timestamptz),
  ('Renata Ferreira da Silva','re.preta2507@gmail.com',NULL,'51995090524','1991-07-25',34,'Morando junto!',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1q0HWoLDS_1IboKMS8T5LUqwom0oimbG0',NULL,'Ensino Superior Incompleto','Uniasselvi','2026-04-10','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Trabalhei com vendas de plano de saúde!',NULL,NULL,'Administrativa, Comercial',NULL,NULL,'Facebook',NULL,'R$1 500,00 á R$3 000,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-05-01T22:25:00.000Z'::timestamptz),
  ('Rafael dos Santos Rocha','rafael_rocha_91@hotmail.com',NULL,'51998154829','1991-12-23',34,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=11MJ7AdJzWTbBUs-n4xUuP6NRGUuGUTil','Gestão Financeira','Pós-graduação Completa','FADERGS - Faculdade de Desenvolvimento do Rio Grande do Sul','2018-10-29','Não, no momento pausei/parei por um período.','Olá, este seria meu histórico profissional nos últimos 16 anos praticamente.

01-2021 – 04-2021 Terraplenagem Lagoa 
Assistente Administrativo - Serviços administrativos tanto da Terraplenagem Lagoa quanto da Missel Empreendimentos Imobiliários, Saibreira Lagoa e Saibreira Saltiél.

10/2019 - 12-2020 INB Telecom 
 Supervisor de relacionamentos - Gestão de Processos e Pessoas; Seleção de Candidatos e Treinamentos internos. Vendas e Atendimento ao público.

07/2013 – 09/2019 - Registro de Imóveis da 4° zona 
Gestor Financeiro - Gestão financeira da empresa e dos sócios proprietários. Auxiliar de Departamento Pessoal e RH.

06/2012 – 07/2013 - Barcellos Assessoria Imobiliária 
Auxiliar de escritório - Cadastramento de Imóveis, Serviços Bancários, Serviços de office boy e auxílios administrativos.

11/2005 – 09/2011 - Rocha e Peixoto Materiais De Construção 
Vendas e atendimento ao público; Função de caixa e auxiliar financeiro.','Olá,
Minha formação base foi a Gestão Financeira pela FADERGS e um MBA em Administração, Finanças e Geração de Valor pela PUC no ano passado (2020).
Tenho formação em Coaching pelo IBC (Instituto Brasileiro de Coaching), formação em Master Pratitioner em PNL pelo Instituto Rogério Castilhos e mais alguns cursos como Gestão das Emoções pelo Instituto Augusto Cury e atualizações na área de DP - Departamento Pessoal pela Proxus Contábil.','Informações inclusas anteriormente.','Administrativa, Financeiro','https://drive.google.com/open?id=1TbecsYzLbiLZIW1ooF3HhbsEp25dg2B_',NULL,'Indicação',NULL,'R$2.500,00','Não','Caroline Saltiél - 99251-8778 (Barcelos+) (RI 4ª Zona)

Cristina Missel - 99972-9927 (Terraplenagem)

Deividi Santos - 98182-0542 (INB)','Quero inscrever-me no banco de talentos da Young!','Bom, atualmente estou dedicando meu tempo também na área do Marketing Digital e softwares de criação de site como o Wordpress.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-05-06T19:48:00.000Z'::timestamptz),
  ('Kely Rosa Avila','kelyavilaa@icloud.com',NULL,'51998337729','1997-05-06',28,'Solteiro(a)',NULL,'Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1EyWvaz5NBIi9w0KI7VNjQ9rMHhTcq8tg','Administração de empresas','Ensino Superior Incompleto','Unicnec','2023-07-07','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Magna Cosma 
Auxiliar Administrativo 
Setor de compras desempenhei atividades de orçamentos com fornecedores e abastecia o estoque.

Doces Seleção 
Atendente 
Atendimento em loja.','Pacote Office, Informática básica',NULL,'Administrativa, Comercial, Engenharia','https://drive.google.com/open?id=1e4EfEuNNNVlVdgBxba8DjU_j_rkJC60T',NULL,'Indicação',NULL,'1.100,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-05-06T22:10:00.000Z'::timestamptz),
  ('Andrieli Soares da Silva','andrieli1997@gmail.com',NULL,'55984214060','1997-01-04',29,'Solteiro(a)',NULL,'Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1XfHJXqC2Gcn9KCNYmDltFFVpuoUXqtA6','Bacharelado em zootecnia','Ensino Superior Completo','Instituto Federal Farroupilha','2020-07-16','Não, no momento pausei/parei por um período.','1) Magazine Luiza. 2) vendedora. 3) trabalho atualmente, desde março de 2019. 4) atendimento ao público, venda, pós venda, negociações, venda de consórcio, e organização da loja. Atualmente sou madrinha do consórcio.
Já trabalhei como estagiária no sindicato rural e na hercosul na cidade de Ivoti.','Possuo diversos cursos, dentre eles informática e atendimento ao público. Possuo participação em eventos e trabalhos científicos publicados.','Possuo o certificado de graduação em bacharelado de zootecnia. Certificado de alguns cursos profissionalizantes como de atendimento ao público, atendente de farmácia, e alguns na área zootécnica. Possuo certificado de colabora destaque na minha empresa atual em dezembro e março.','Administrativa, Comercial, Marketing','https://drive.google.com/open?id=1hHO7Y5UgIMP3CDco7-vWBBCzZTcKjg6M',NULL,'Instagram',NULL,'1.800,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Oieee! Então, já trabalhei como voluntária no projeto amigo do bicho, onde atuei ajudando animais abandonados. Atualmente me envolvo em causas sociais com a empresa doando alimentos e materiais escolares. Adoro estudar, gosto de aprender coisas novas, nas minhas férias li o livro o poder da autorresponsabilidade (super indico), terminei minhas aulas da carteira de habilitação também. Minhas habilidades são vendas, gosto de encantar meu cliente. E adoro animais, ultimamente não estou presente em alguma ong mas sigo auxiliando coletando doações.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-05-08T00:55:00.000Z'::timestamptz),
  ('Andrieli Cardoso Soares','andrieli64@gmail.com','andrieli64@gmail.com','+5551996281876','1994-10-25',31,'Solteiro(a)',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1_i6A8WKongbMxtx9D2h2I22xC6NMteNv',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Hoffmann Agrocomercial Ltda, trabalhei na área financeira por 3 anos dando início em 17/01/2018 até 28/04/2021','Curso técnico de administração',NULL,'Comercial','https://drive.google.com/open?id=169PINe47GYo4AW9IUNcXFWmxIuWebNhN',NULL,'Indicação',NULL,'R$1.500,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-05-10T18:24:00.000Z'::timestamptz),
  ('Edgar Mazzuco Fernandes','edgarmazzucofernandes@gmail.com','edgarmazzucofernandes@gmail.com','55996420452','1987-09-02',38,'União estável',NULL,'Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=11cVHj5J55DNz9IGAI50xHZd-DReNqK9k','Administração de empresas','Ensino Superior Incompleto','Administração, 7° semestre, UNIGRAN– Polo de Santo Antônio da Patrulha/RS','2022-01-10','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Empresa atual: Santos e Heller Ltda
Tel: (51) 3662-5585
Cargo: Recepcionista 

Empresa: Cerealista Strek Ltda
Tel: (55) 3431-1802
Cargo: Embalador de máquina (Temporário) 

Empresa: Cerealista Oryza Ltda de São Borja
Tel: (55) 3431-3990
Cargo: Auxiliar de secagem (Temporário) 
		
Empresa: Cerealista Oryza Ltda de São Borja
Tel: (55) 3431-3990
Cargo: Auxiliar de escritório','Curso superior Agronomia incompleto 7° semestre',NULL,'Administrativa, Estágio',NULL,NULL,'Facebook',NULL,'2.000 acima','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Busco um ramo de crescimento para por em práticas meus conhecimentos e crescer profissionalmente juramentante com a empresa. Busco oferecer futuro melhor para esposa e filho.
Sou um cara família, que gosta de um futebol e viajar.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-05-10T20:55:00.000Z'::timestamptz),
  ('maria eduarda perlot','dudaperlot27@gmail.com','dudaperlot27@gmail.com','51996376017','2001-05-27',24,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1TPmy7UtpVvZMKEAEPDTzpLtJvN6R4ROH','nutrição','Ensino Superior Incompleto','uniritter','2025-02-25','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Qualicoco: 2) Estágio obrigatório no setor da qualidade. 3) Inicio 13/02/2020 até 26/07/2020. 4) Realizava controle de qualidade na produção dos produtos, controlava a portabilidade da água e efetuava análises físico-químicas.                                                                            1) Loft 105: 2) Vendedora. 3) Inicio 02/11/2020 até o presente momento. 4) Vendas de roupas.','técnica em química',NULL,'Administrativa, Estágio, Financeiro','https://drive.google.com/open?id=1LdVofk_freScoSex2RxNtOxiBuO7eqeP',NULL,'Indicação',NULL,'1200','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Prazer, me chamo Maria Eduarda Perlot, sou estudante de nutrição do terceiro semestre. Sobre mim me considero uma pessoa proativa, que se da bem no coletivo, me adapto fácil a novas pessoas e tarefas, tenho facilidade em manusear o computador. Estou em busca de uma oportunidade de emprego para ampliar meus conhecimentos','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-05-11T00:37:00.000Z'::timestamptz),
  ('André Luís dos Santos Werppe','andrewerppe2011@hotmail.com','andrewerppe2011@hotmail.com','51999393073','2000-12-21',25,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1ssbiHG9ouJgCNXWEsodNqMo1jyREbaMd','Direito','Ensino Superior Incompleto','Unicnec','2023-07-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Tabelionato de notas','Curso intermediário de inglês em Londres/UK',NULL,'Administrativa, Novos Negócios',NULL,NULL,'Indicação',NULL,'2000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-05-11T00:52:00.000Z'::timestamptz),
  ('Cássio Vidal dos Santos','cassio_shaman@hotmail.com','cassio_shaman@hotmail.com','51999983484','1991-03-20',34,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1FxwTeHHUCLEjR3h8Rh_3vBOryr1gAdHQ','Administração de empresas','Ensino Superior Completo','Faculdade São Judas Tadeu','2018-03-17','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','JB dos Santos
Cargo ocupado: Auxiliar administrativo
Data de admissão: Março 2004
Cidade: Capão da Canoa
Resumo das atividades exercidas / responsabilidades atribuídas:
 Lançamento de caixas;  Arquivo em geral;  Movimentação de cargas.

Wall-Mart Brasil
Cargo ocupado: Fiscal de caixa
Data de admissão: Dezembro 2007
Cidade: Capão da Canoa
Resumo das atividades exercidas / responsabilidades atribuídas:
 Fechamento de caixas;
 Serviço bancário;
 Gestão de cofre;
 Atendimento ao cliente;
 Gestão dos caixas operadores;
 Elaboração de escala de trabalho para caixas operadores e empacotadores.

Sistema FIERGS - CIERGS
Cargo ocupado: Assistente coorporativo III
Data de admissão: Março 2011
Cidade: Porto Alegre
Resumo das atividades exercidas / responsabilidades atribuídas:
a) Patrimônio:
 Lançamento de notas fiscais de bens e obras dos imóveis;
 Conhecimento do sistema de inventário;
 Emplacamentos na sede do Sistema FIERGS;
 Lançamento de dados do custeio ABC;
 Arquivo em geral;
 Baixas patrimoniais.
b) Expedição:
 Gestão de contratos (fornecimento de café, serviço notarial, postagens, 
malotes, serviço de motoboy, serviço de reprografia, fornecimento de 
periódicos);
 Elaboração de termos de referência para novos contratos;
 Montagem de rateios e pagamentos dos contratos em geral (fornecimento de 
café, serviço notarial, postagens, malotes, serviço de motoboy, serviço de 
reprografia, fornecimento de periódicos).
c) Seguro:
 Gestão de contratos (seguro de veículos, patrimonial, acidentes pessoais e 
responsabilidade civil);
 Elaboração de termos de referência para novos contratos;
 Elaboração e acompanhamento de sinistros.
d) Transporte:
 Gestão de contratos (locação fixa de veículos, locação eventual, 
gerenciamento de cartão de combustível, locação de container e serviço de 
transporte de passageiros);
 Elaboração de termos de referência para novos contratos;
 Avaliação de fornecedores;
 Montagem de rateios e pagamentos dos contratos em geral (combustível, 
taxi, locações, avarias, manutenções e multas);
 Gestão de motoristas e das horas trabalhadas;
 Aprovação de registro ponto;
 Realização das prestações de contas;
 Distribuição e montagem de roteiros de transportes;
 Controle dos veículos ativos da frota;
 Operacionalização do aplicativo de Reserva de Veículos;
 Gestão das planilhas de utilização dos veículos;
 Controle das infrações de trânsito e seus respectivos pagamentos;
 Gestão das manutenções dos veículos locados e próprios (pesados e leves);
 Pagamento e gestão dos licenciamentos dos veículos;
 Sindicância das avarias;
 Liberação de acessos bem como regularização nos sistemas do processo;  Realização de orçamentos referente a manutenção de veículos;
 Construção do valor de km rodado;
 Atendimento de plantão das 8h às 22h;
 Elaboração e controle de indicadores
 Emissão documentos internos;
 Conhecimento no sistema ERP TOTOVS – Protheus.
 6S

Sicredi – Nordeste RS
Cargo ocupado: Gerente de negócios
Data de admissão: Abril 2019
Cidade: Santo Antônio da Patrulha
Resumo das atividades exercidas / responsabilidades atribuídas:
a) Assistente de negócios:  Realizar o atendimento ao público PJ (pessoa jurídica);
 Venda/comercialização de produtos financeiros;
 Apoio no atingimento e monitoramento de resultados/metas estabelecidas;
 Apoio na elaboração de plano de ações;
 Execução e fomento de novos negócios;
 Apoio na formalização das operações, recebendo e analisando os 
documentos a fim de que haja o cumprimento das formalidades;
 Realizar a organização da agenda de demandas diárias da carteira PJ.
b) Gerente de negócios Pessoa Jurídica:  Realizar o atendimento aos associados do segmento Pessoa Jurídica, 
visando prestar um atendimento diferenciado e direcionado ao público alvo;  Identificar as soluções financeiras que melhor atendam ás necessidades do 
público;
 Responder pela administração e desenvolvimento de carteira de associados 
Pessoa Jurídica;  Prospectar novos associados realizando estudos do potencial da carteira;
 Realizar estudos de potencial do mercado;
 Conhecer o ramo da atividade desempenhada pelo associado, o grau de 
endividamento;
 Realizar visitas externas, visando o aumento do quadro social;
 Realizar o controle da cobrança das operações;
 Participar de eventos externos visando à prospecção de novos associados e 
incremento da carteira do(s) segmentos sob sua responsabilidade;
 Líder da Célula PJ Menores 2020/2;
 Participação em grupos de trabalho para desenvolver um perfil de produto e 
atendimento específico/adequado para Contadores e MEI’s.','Ativo Imobilizado, Redação Empresarial, Qualidade no Atendimento, Estatuto dos motoristas profissionais, Otimização da frota de veículos de distribuição, Microsoft Excel Básico, Microsoft Excel Intermediário, Contabilidade, Técnicas de Vendas, Estratégia de Negócios, Noções Básicas do Direito, Certificação Profissional ANBIMA - CPA 10 e Planejamento e Controle de Produção – PCP','Ativo Imobilizado, Redação Empresarial, Qualidade no Atendimento, Estatuto dos motoristas profissionais, Otimização da frota de veículos de distribuição, Microsoft Excel Básico, Microsoft Excel Intermediário, Contabilidade, Técnicas de Vendas, Estratégia de Negócios, Noções Básicas do Direito, Certificação Profissional ANBIMA - CPA 10 e Planejamento e Controle de Produção – PCP','Administrativa, Comercial, Financeiro','https://drive.google.com/open?id=1o1wNLOXbt1OskrvAejKMUgAEgjLj-XLh',NULL,'Já Atuo Dentro Da Empresa Em Outra Função.',NULL,'4500','Não','Laura Schuch - Sistema FIERGS - 51997821740','Coordenação Administrativa','Sei que estou na empresa faz pouco tempo mas gostaria de agregar as atividades e responsabilidades da função de Coordenador Administrativo para poder mostrar o meu trabalho na parte administrativa e gerar o resultado esperado juntamente com as que possuo atualmente.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-05-12T01:51:00.000Z'::timestamptz),
  ('Augusto de Oliveira Messagi','augusto.messagi@gmail.com','augusto.messagi@gmail.com','51997618223','1993-01-18',33,'Solteiro(a)','0','Sim','Osório/RS','https://drive.google.com/uc?export=view&id=18bRzrisB7F7tc9Lr6eBrZE09K1liv3xa','Engenharia Civil','Ensino Superior Completo','Unisinos','2019-08-10','Não, no momento pausei/parei por um período.','Trabalhei por 5 anos na prefeitura municipal de Osório no setor de gestão territorial, responsável pelo manejo do Plano Diretor, análise de requerimentos e projetos/licenciamentos de parcelamento de solo - material no qual desenvolvo frequentemente trabalhos como engenheiro. No setor fui dirigente do mesmo, ao lado de uma equipe de técnicos formado por um arquiteto e uma engenheira florestal. Atualmente, já formado, exerço os mais diversos trabalhos que a formação me permite, mas com especial apreço pela área de acompanhamento de obras, compatibilização de projetos e regularização/licenciamento de condomínios e loteamentos.','Formação em AutoCAD 2D, domínio pleno do programa.',NULL,'Arquitetura, Licenciamentos, Engenharia','https://drive.google.com/open?id=1gixTEZndZnqsnP7MROUkCqH6TR784_fq',NULL,'Facebook',NULL,'R$6.000,00','Sim','Prefeitura Municipal de Osório - Arquiteto Alencar Massulo de Oliveira 51 999165924','Engenheiro Civil','Enfim, viciado em trabalho totalmente. Sempre em busca de novos desafios e experiências, e ciente de que o dia a dia na obra traz isso, busco oportunidade em ingressar em uma empresa que me possibilite essa vivência, de modo a me estabelecer e fazer carreira. O compromisso e responsabilidade com os projetos abraçados são essenciais para que a relação entre técnico e empresa seja saudável, digo pois são valores que carrego para qualquer empreendimento ou cliente atendido.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-05-13T02:16:00.000Z'::timestamptz),
  ('Ingrid Angelo Vidigal','ingridvidiga@gmail.com','ingridvidiga@gmail.com','55991033641','1987-06-30',38,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1pc4Gs0RfyzyfhQvkBrY4A4yPKvNpOSjM','Engenharia Civil','Ensino Superior Incompleto','Universidade Federal do Pampa','2021-10-09','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Ílios Energias Renováveis | Freelancer - Implantação de Placas Solares Fotovoltaicas | nov. e dez. de 2020 | Atividades desenvolvidas:
Levantamento técnico (LT);
Plantas com detalhamentos e diagramas;
Dimensionamentos, e; 
Preenchimento de viabilidade técnica, memorial descritivo, anexos e outros documentos.

Prefeitura Municipal de Alegrete - Secretaria de Planejamento, setor de Arquitetura e Engenharia | Estagiária de Engenharia Civil | de fev. 2019 a ago. 2020 | Atividades Desenvolvidas:
Realizei levantamentos técnicos;
Produzi desenhos técnicos gerais em AutoCAD;
Fiz quantificação de materiais e serviços;
Orçamentos SINAPI, SICRO, DAER, e outros;
Planilha Orçamentária padrão CEF;
Auxiliei na fiscalização e acompanhamento de obras, e;
Confeccionei documentos, relatórios e memoriais.','- Estou com todas as disciplinas da graduação vencidas, exceto a de Trabalho de Conclusão de Curso II. O trabalho está pronto e a defesa, que será realizada por videoconferência, está prevista para o mês de junho. 
-Possuo conhecimento em Excel e AutoCAD nível avançado.',NULL,'Licenciamentos, Novos Negócios, Engenharia','https://drive.google.com/open?id=11XXzH7qOSLyIkbx5-XSGNC2TcAPglVZG',NULL,'Facebook',NULL,'R$1.800,00','Sim','Alex Tomaz de Assis | (55) 9683-9928 | Ílios Energias Renováveis
Érica de Vargas | (55) 9659-9354 | Prefeitura Municipal de Alegrete','Coordenador de Negócios Trainee e Auxiliar de Engenharia',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-05-15T17:30:00.000Z'::timestamptz),
  ('Ariane Pedrozo do Amaral','aripedrozoo@hotmail.com','aripedrozoo@hotmail.com','55999849538','2000-03-16',25,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1j621tHBvIuKQNH1PBgls0YLYcoV29MY4','Enfermagem','Ensino Médio Completo','Unipampa',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) RGE Sul
2)Jovem Aprendiz
3) 2018/2019
4) Atividades administrativas',NULL,NULL,'Estágio',NULL,NULL,'Instagram',NULL,'800 reais','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','A algum tempo venho procurando oportunidade de emprego e encontrei essa lá no Instagram. Sou prestativa, tenho facilidade em aprender, tenho experiência com internet, Word e Excel, tenho disponibilidade de horário, sou bem comunicativa, tenho habilidade em trabalhar em grupo, gostaria dessa oportunidade de emprego aqui em Alegrete para mostrar que eu posso ser prestativa para a empresa e crescer junto com vocês. Tenho 21 anos, tenho como hobby dançar em grupo de dança tradicionalista e pratico MMA na academia biofitnes pela parte da noite. A algum tempo venho me sentindo mal por apenas estudar e não ter o meu financeiro, então por favor, só peço uma oportunidade.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-05-18T14:58:00.000Z'::timestamptz),
  ('Giane Santos Silveira','gianesantossilveira96@gmail.com','gianesantossilveira96@gmail.com','51998202300','1996-01-17',30,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1_sgYV85af1c82ZPy-e_ZqbU-oTTQjsya','Ciências Contábeis','Ensino Superior Incompleto',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1)Supermercado Sabiá 2) op.de caixa/ aux. Administrativo. 3) 03/01/2017 a 06/06/2020 4) serviços gerais.',NULL,NULL,'Administrativa, Estágio','https://drive.google.com/open?id=1agDp98wJq9dJvir2-qaQnznGyUcDxMs-',NULL,'Indicação',NULL,'1700','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-05-20T22:30:00.000Z'::timestamptz),
  ('Dominique de Moura Jank','dominiquejank@gmail.com','dominiquejank@gmail.com','55999248608','1994-08-30',31,'Solteiro(a)','0','Sim','Caxias Do Sul/rs','https://drive.google.com/uc?export=view&id=1mGmmsl2n84wyLVTsxqWfUthKs3IdY3Zz','Engenharia Civil','Ensino Superior Incompleto','Unipampa','2021-11-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Estagiei por dois anos na prefeitura de Alegrete, no setor de obras, onde atuei diretamente com engenheiros no projeto de algumas obras. Esse estágio foi de Maio/2018 a Abril/2020.','Possuo conhecimento nos softwares AutoCad e Revit, e iniciando curso sobre Eberick.',NULL,'Arquitetura, Estágio, Engenharia','https://drive.google.com/open?id=1qxdzk6AHPPCkXr9FBnsRzUr7jbMMYwIf',NULL,'Indicação',NULL,'R$2.000,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Estou cursando meu último semestre, com previsão de formatura em novembro/2021, possuo conhecimento em Revit, AutoCad, Pacote Office e um pouco de Eberick.
Possuo um nível bom em inglês, que me permite ouvir e ler bem.
Costumo ler bastante, tenho coleção de livros.
No momento estou em Caxias, mas até ano passado estava em Alegrete devido a faculdade, vim para cá por causa da pandemia, para morar com meus pais, mas não tenho restrições a onde ir quando me formar.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-05-21T23:05:00.000Z'::timestamptz),
  ('Claudia Muniz Heldt','heldt88.ch@gmail.com','heldt88.ch@gmail.com','51998126012','1988-12-08',37,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1wW8eb8sb12iHGu-slrgfkaI88orFblCl','Administração de empresas','Ensino Superior Incompleto','Unisinos','2023-03-01','Não, no momento pausei/parei por um período.','Associação Antônio Vieira
Coordenador de polo
Setembro de 2019 a Janeiro de 2021
Principais atividades: Gestão do polo como acompanhar, executar, coordenar as atividades administrativas e comerciais, atendimento aos alunos, aplicação de avaliações, contato com empresas para ações e parcerias, divulgação da marca, controle de materiais, captação de novos alunos.

Michel Comercial de Peças
Assistente Administrativo
Janeiro de 2019 a Setembro de 2019
Principais atividades: Acompanhamento quanto ao cumprimento, por parte dos colaboradores, das normas de segurança no trabalho, saúde ocupacional, meio ambiente e procedimentos internos do cliente, execução das rotinas de admissão, demissão, férias, afastamentos, fechamento de pontos, fechamento de salários, cálculos de comissões, arquivamento, emissão de notas fiscais, acompanhamento de pedidos, alimentação de planilhas de controles e envio de orçamentos.
Melhoria na eficiência da gestão contábil após gerenciar a configuração e implantação de novo sistema informatizado.

Eficazz Construções e Terraplanagem Eirelli 
Encarregada Administrativa
Dezembro de 2016 a Novembro de 2018
Principais atividades: Gerenciamento e controle da área Administrativa voltada a Construção
Civil, controle de toda área financeira (contas a receber, contas a pagar, faturamento, cobrança, conciliação e movimentação bancária), representante da empresa junto a Sindicatos, órgãos governamentais e órgãos financeiros, acompanhamento quanto ao cumprimento, por parte dos colaboradores, das normas de segurança no trabalho, saúde ocupacional, meio ambiente e procedimentos internos do cliente, gerenciamento e preposto de processos trabalhistas,
tributários, cível junto à diretoria e advogados contratados pela empresa com autonomia para acordos, gestão de contratos diversos e acompanhamento dos subcontratados.

Pindorama Comércio de Material de Construção Ltda 
Auxiliar Administrativo e Financeiro
Agosto de 2015 a Outubro de 2016
Principais Atividades: Controle da área administrativa e financeira (contas a receber, contas a pagar, faturamento, cobrança), execução das rotinas de admissão, demissão, férias,
afastamento, fechamento do ponto eletrônico, arquivamento, análise de crédito da empresa, contato com clientes, fornecedores e representantes externos e interface junto à logística, atualização de tabela de preços, envio de orçamentos, emissão de notas fiscais, vendas na loja física e por telefone.

Rangel Equipamentos Ltda 
Financeiro
Agosto de 2014 a Junho de 2015
Principais Atividades: Controle bancário, contas a receber, contas a pagar, fluxo de caixas, pagamento de funcionários, serviços externos.

Global Distribuição de Bens de Consumo Ltda 
Vendedor em Comércio
Outubro de 2012 a Agosto de 2013
Principais atividades: Vendas de produtos e serviços, responsável por setor, organização e reposição da loja.

3 Laços Materiais de Construção Ltda 
Vendedor em Comércio
Janeiro de 2011 a Outubro de 2012
Principais atividades: Vendas, organização e reposição de loja.

Drebes & Cia Ltda
Atendente de Agência
Julho de 2007 a Janeiro de 2011
Principais atividades: Atendimento de caixa, lançamento de despesas da filial, pagamentos de premiações aos vendedores, vendas de produtos telefônicos, abertura de crediário e análise de crédito, cobrança, retiradas dos caixas, fechamento de caixa e caixa geral, depósitos bancários.','Formada em Técnico Administrativo - IFSUL, Cursos de Atendimento ao Público - Fundação PB, Competências Profissionais, Emocionais e Tecnológicas para Tempos de Mudanças - PUCRS, Como Vender (Certo) Pelo WhatsApp - Unisinos, Congresso Cognition Unisinos Online - Unisinos',NULL,'Administrativa, Comercial, Financeiro','https://drive.google.com/open?id=13QqHqAdLjf_hJnMi-vDwt-mDrQGP3a5b',NULL,'Facebook',NULL,'2.800,00/3.000,00','Sim','Vinicius Barcelos - 51999476899
Paulo Ricardo - 51997398793
Leandro Ferreira - 51998836924','Quero inscrever-me no banco de talentos da Young!','Mesária voluntária por 10 anos, apaixonada por atendimento ao público, números, resoluções de problemas e desafios.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-05-25T01:15:00.000Z'::timestamptz),
  ('Kauana Alves da Silveira','kauanasap123@hotmail.com','kauanasap123@hotmail.com','51998953002','1999-04-30',26,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=15l8xqg67r4rY57aFL1_VNoJEW0aq3X9i',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Cargo: Atendente
Empresa: Bellpro
Período: 05/2018 – 04/2021
Atribuições: Venda de mercadorias auxiliando os clientes na escolha do produto, assim como prestando consultoria de beleza para aumento de faturamento da empresa. Registro de entradas e saídas de mercadorias e apoio no marketing digital e campanhas comerciais da empresa.',NULL,NULL,'Comercial','https://drive.google.com/open?id=1R6V43Gp_yXFPcnujmAujBGw1AGyoWlPf',NULL,'Facebook',NULL,'1500','Sim','Marilene Oliveira
Tel: (51) 9 9811 9227','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-05-26T16:13:00.000Z'::timestamptz),
  ('Andreia Beatris da Silva Dias','andreiabdias@hotmail.com','andreiabdias@hotmail.com','51981336676','1974-10-30',51,'Solteiro(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=19kQc4eASZDA8vCYS04i98ch5iP9Yxe5i','Direito','Ensino Superior Incompleto','Facos/ Barão do Cahy',NULL,'Não, no momento pausei/parei por um período.','Aldeias infantil Dos Brasil . Assistente ADM, prestação de contas p. Município, Fluxo de caixa , Controle bancário, Folha de pgto, admissão, rescisão, orçamento .','Técnica Contail',NULL,'Administrativa, Comercial, Financeiro','https://drive.google.com/open?id=1eDVoGT78U4pPprjLtyZZ20ttvSwHMO4o',NULL,'Facebook',NULL,'A. Combinar','Não','Márcia Porto.','Quero inscrever-me no banco de talentos da Young!','Trabalhei vinte anos na J C contabilidade, na área de RH, depois fui p Aldeias infantil , e Codema , Lopes Distribuidora, hj estou em busca de um novo emprego, acredito que com dedicação e organização, podemos ter um trabalho diferenciado.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-05-28T23:39:00.000Z'::timestamptz),
  ('Débora Meregali de Borba','deborameregalideborba@gmail.com','deborameregalideborba@gmail.com','51997636895','1993-01-20',33,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1hm13fNAqk5gO3XIUM2om1ee3KMI8n1IY','Administração de empresas','Pós-graduação Incompleta','Uniasselvi',NULL,'Não, no momento pausei/parei por um período.','Trabalhei MR Assessoria em Taquara 03/09/12-21/03/13,trabalhava como Aux.Adm, trabalhava com DPVAT,atendia telefone,fazia ligações entre outras coisas,trabalhei em fábricas de calçado como Usaflex 03/04/14-23/10/14 e Picadilly 10/01/16-30/10/17 como Revisora,por último trabalhei em uma empresa de Rapaduras 02/04/19 embalando os produtos.','Admnistração Senac,informática básica.',NULL,'Administrativa, Comercial',NULL,NULL,'Instagram',NULL,'1.300','Sim','Rapaduras Gaúchas','Quero inscrever-me no banco de talentos da Young!','Sou uma mulher responsável,com ambições em crescer profissionalmente,concluir a faculdade,facilidade em aprender o que a empresa me exigir,me esforçar para o crescimento da empresa assim como meu profissionalismo.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-06-01T22:29:00.000Z'::timestamptz),
  ('Lauriana Ramos','laurianaramos140@gmail.com','laurianaramos140@gmail.com','51980223340','2002-09-17',23,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=16aQIeCU-kO-uQWcE_rTTMpumuFlWJsj1',NULL,'Ensino Médio Completo','Patrulhense',NULL,'Não, no momento pausei/parei por um período.','Unicalce Planeta Calçados, vendedora, 11/01 até 31/03',NULL,NULL,'Administrativa, Arquitetura, Comercial, Financeiro','https://drive.google.com/open?id=1FSR6JfD8SeFSDsgCSekail1HvWQaMJBG',NULL,'Facebook',NULL,'1500','Sim','Unicalce Planeta Calçados, Kanpeki sushi','Quero inscrever-me no banco de talentos da Young!','Sou muito ágil, tenho experiência em cozinha , gosto de trabalhar em grupo. Me dedico ao máximo nas minhas metas!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-06-02T06:33:00.000Z'::timestamptz),
  ('Daniel Albani Pisoni','danipisoni00@gmail.com','danipisoni00@gmail.com','51996030139','2000-04-06',25,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1HSVDSgjUJcwHcdJPIe_a0vV99rXPnP6H','Administração de empresas','Ensino Superior Incompleto','Centro Universitário Leonardo da Vinci - Uniasselvi','2022-12-23','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Monitorador de Sistema e Suporte ao Cliente na empresa INB Telecom- Santo Antônio da Patrulha.
02/2020 - Até o momento.
Presta suporte ao cliente; monitora rotas de tráfego de banda larga; efetua cancelamento, realiza upgrades; faz retenção de clientes; troca de titularidade; efetua descontos aos clientes; aprova ou não descontos. 

Estagiário  
Banco do Estado do Rio Grande do Sul S/A- Santo Antônio da Patrulha.
12/2018 até 11/2020
Atendimento ao público em geral; atender ligações telefônicas e efetuar os devidos encaminhamentos quando necessário; auxiliar ao público geral nas salas de autoatendimento, cashs eletrônicos; comparecer aos órgãos da administração pública estadual, federal, municipal; contatar e atender os clientes pelos diversos canais de comunicação; fotocopiar, digitalizar, digitar documentos em geral; organizar e arquivar.  

Separador de Peças  
Atelier de Calçados Iaronka Ltda.- Caraá.  
01/2017 até 11/2018
Realizou procedimentos de análise de qualidade das peças que iriam para produção; tinha função de contar e, separar os lotes de peças de cada modelo para somente o necessário ir para a produção, não podendo haver desperdício de material. Ter agilidade para realizar a função no menor tempo possível.','Certificação de conclusão de curso realizado pela Unialcance (Escola Técnica Jovem Profissional), curso na área de Hardware e Software, com carga Horária de 50 horas, realizado no ano de 2015.  
Certificado de conclusão do curso de Microsoft Office, Microsoft Windows avançado, realizado pela Master Informática, em dezembro de 2014 com carga horária de 62 horas.',NULL,'Administrativa',NULL,NULL,'Indicação',NULL,'Entre 1800 à 2500 reais','Sim','Banrisul 
Contato Gerente Adjunto - 51 99935-6343
Contato Gerente Geral - 51 99858-0426

Perguntar por Denise ou Marangoni','Quero inscrever-me no banco de talentos da Young!','Sou natural de Santo Antônio da Patrulha, criado em Caraá, nascido em 06 de abril de 2000, comecei minha carreira profissional já aos 16 anos, no atelier de calçados Iaronka conclui o ensino médio em 2017, no ano seguinte já ingressei na faculdade onde estou em formação, no segundo semestre da mesma comecei a trabalhar na empresa Banco do Estado do Rio Grande do Sul. Me adapto bem a ambientes novos, sou centrado no atendimento ao cliente, na eficiência e na realização de objetivos e metas.  
Tenho um ótimo conhecimento na área da informática, então não tenho problemas com operações de sistemas. Tento ser amigo de todo mundo, pois gosto de trabalho em equipe e uma equipe precisa ser unida, tenho bom relacionamento com pessoas (clientes), pois trabalho com isso e gosto muito do que faço, sou ágil e não gosto de ficar parado, então estou sempre procurando algo para fazer ou uma nova tarefa para apreender. Orientado para os objetivos, busco sempre fazer o desejo da empresa sendo isso cumprir regras e metas, sou organizado e gosto de manter o ambiente todo organizado para que as tarefas sejam sempre realizadas de forma rápida e eficiente, para que o cliente não fique esperando e, saia satisfeito com o atendimento. Sou ágil para contagem de moedas e notas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-06-09T01:52:00.000Z'::timestamptz),
  ('Paula Oliveira Buss','paulaobuss@gmail.com','paulabuss.arquitetura@gmail.com','55997234474','1992-09-28',33,'Solteiro(a)','0','Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=14a_meFUOkT1xMDqF2X9aUxAtdnEifgdv','Arquitetura','Pós-graduação Completa','UFN','2017-02-23','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Trabalho como arquiteta autônoma em Alegrete, gostaria se possível de continuar trabalhando aqui, como há o condomínio Monte Carlo talvez possa haver alguma vaga que eu me encaixe ou se for o caso posso me mudar também, sem problemas.','Pós Graduada em Design de Interiores e cursando MBA em Design Thinking.',NULL,'Arquitetura, Engenharia','https://drive.google.com/open?id=14hnaDdgjH1OaF-Al5hJ5CdAT6jItJf4i','https://drive.google.com/open?id=1vmobtBKwHIRhU-EXKlWM0KXIBPZgRyWv, https://drive.google.com/open?id=1craBWzyVQiKJinyPSt5kwcXlIfvEtkqN, https://drive.google.com/open?id=1yLoOHXk4Ij1egGrSDN2ELyREFs1TpFXm, https://drive.google.com/open?id=13YuMY5E64gd3bczJyqHaxjMZ9SyJdBM5, https://drive.google.com/open?id=1Rn6tBwRoHMFA3W1eF9XvMMZ2Jjgnvw93','Indicação',NULL,'3.500,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Paula Buss, Arquiteta e Urbanista, 28 anos, solteira, moro em Alegrete, habilidades AutoCad, SketchUp, Revit, Pacote Office, Layout, pós graduada em Design de Interiores, Conforto Ambiental e Luminotécnica Aplicada e cursando Pós Graduação MBA em Design Thinking.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-06-09T20:30:00.000Z'::timestamptz),
  ('Ana Paula Mattos Rodrigues','anapmr06@gmail.com','anapmr06@gmail.com','51991948221','1981-03-06',44,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1fjfX6_epRQf9ojbqkCnhjlgwr5vt2BYj','Arquitetura','Pós-graduação Completa','Uniritter','2004-08-14','Não, no momento pausei/parei por um período.','Pompeo stands - projetista- 2009- 2013
Spassus stands - projetista - 2014 - 2018
Italinea - 2019
Big Office- 2019','Design de interiores - IPOG',NULL,'Arquitetura',NULL,NULL,'Indicação',NULL,'R$7.000,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Gosto de trabalhar com Design de interiores, e projetos de mobiliário no software sketch up. Esportes de uma maneira geral eu gosto mto de praticar, principalmente futevolei e bicicleta.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-06-09T23:07:00.000Z'::timestamptz),
  ('CRISTINE SANTOS DE SOUZA','cristinearq@gmail.com','cristinearq@gmail.com','51999390299','1982-02-27',44,'Solteiro(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1wk0EmDBtc1tXmcEVKJ-taeznN4WcCbv1','Arquitetura','Ensino Superior Completo','Unisinos','2012-01-13','Não, no momento pausei/parei por um período.','Arquiteta autônoma',NULL,NULL,'Arquitetura, Engenharia',NULL,NULL,'Instagram',NULL,'4.000,00','Sim',NULL,'Arquiteta',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-06-10T01:58:00.000Z'::timestamptz),
  ('Hygor da Costa Martins','hygormartins@outlook.com','hygormartins@outlook.com','51985523516','1992-12-28',33,'Casado(a)','0','Sim','Tramandaí/RS','https://drive.google.com/uc?export=view&id=1mGU9tOuARmiz6Jg97jzeYb0bT2_5de64','Engenharia Civil','Ensino Superior Completo','Universidade do Vale do Rio dos Sinos - Unisinos','2019-06-10','Não, no momento pausei/parei por um período.','1 - Empresa Colissi engenharia - desenhista/projetista e acompanhamento de obras - de 2009 - 2011
2 - Prefeitura Municipal de Tramandaí- Estagiário - 2011- 2013
3- CVS Construções - Assistente de engenharia - acompanhamento de obras, medição de serviços, gestão de qualidade na obra, elaboração de laudos e planilhas orcamentarias - 2013 - 2015
4 - RDM Engenharia - assistente de engenharia, vide empresa CVS - 2015- 2018
5- Prefeitura Municipal de Tramandaí-  Concurso Público - projetista - 2018 - atual
6 - Traço Engenharia - sócio proprietário - escritório de projetos, laudos, ppci, entre outros, localizado em Tramandaí - 2018 - atual','Curso de desenho em autocad e sketchup, curso de especialização em fundações, atuo com criação de projetos, buscando fugir do esteriótipo de “projetos feito por engenheiro”, pensando na necessidade de cada pessoa com cuidado e criatividade.','Bacharelado em Engenharia Civil','Arquitetura, Licenciamentos, Engenharia',NULL,NULL,'Instagram',NULL,'Média salarial do cargo ofertado pela empresa','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Estou a 3 anos em um concurso público, e resolvi atualmente buscar novas oportunidades, que me tirem da zona de conforto e me faça aprender coisas novas e poder contribuir com outros setores. Sempre fui um funcionário de boa passagem pelas empresas que prestei serviço, e creio que posso ser útil seja em canteiros de obras, planejamentos, auxílio em obtenção de licenças e laudos, projetos entre outros.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-06-10T06:43:00.000Z'::timestamptz),
  ('Denise Meregali','denisemeregali@hotmail.com','denisemeregali.62@gmail.com','51999596405','1962-07-07',63,'Separada','3','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=19MTsz8Z3Yzbfaf6CZm7u5QAj7HB1RrwK','Arquitetura','Pós-graduação Completa','UNIVERSIDADE LUTERANA DO BRASIL','1993-08-13','Não, no momento pausei/parei por um período.','*Autônoma com atividades diversas na área de  Arquitatura & Urbanismo prestando serviços para particulares e empresas diversas.
1993 - 2021
* Prefeitura Municipal de Gravataí
Arquiteta & Urbanista
1981-1984
1991- 1994
2002 - 2004
* Prefeitura Municipal de Santo Antônio da Patrulha
Arquiteta & Urbanista
2009 - 2011
* Estado do Rio Grande do Sul
Arquiteta & Urbanista
2001 - 2002
 2011 - 2012
* Ministério Reforma Agrária
Arquiteta & Urbanista
2013','Especialização em Estratégias de Gestão de Políticas Públicas - UNICAMP
* Dentro de minha experiência profissional fiz vários cursos, seminários e simpósios no âmbito da administração e gestão de políticas públicas.
* Entre outros acompanhei aprovação e execução de loteamentos e condomínios tais como: Paragem dos Verdes Campos em Gravataí, Condomínio Alphaville em Gravataí, Condomínio Dom Feliciano em Gravataí e Condomínios Residencial Santo Antônio em Santo Antônio da Patrulha.',NULL,'Administrativa, Arquitetura, Licenciamentos, Engenharia',NULL,NULL,'Instagram',NULL,'Proporcional as tarefas realizadas','Sim',NULL,'Atuação profissional','Bem, sou uma profissional com experiência em algumas áreas, que hoje, gostaria imensamente de exercitar meu oficio e ampliar meu aprendizado, sempre. Aliás, continuar aprendendo e estar em meio a uma proposta inovadora no empreendedorismo imobiliário em nosso município, me provoca muita curiosidade e instiga minhas possibilidades de poder realizá-las.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-06-10T14:53:00.000Z'::timestamptz),
  ('Theylor Führ Hoelscher','theylorfuhr@gmail.com','theylorfuhr@gmail.com','55996198447','1998-02-27',27,'Solteiro(a)','0','Sim','Boa Vista Do Buricá','https://drive.google.com/uc?export=view&id=18eYkX40i_zWW5DcT1XrA3DseWqMitxGn','Arquitetura','Ensino Superior Completo','Universidade Regional Integrada do Alto Uruguai e das Missões - Campus Frederico Westphalen','2021-02-12','Não, no momento pausei/parei por um período.','1. Empresa: Metro Quadrado Arquitetura e Engenharia – Boa Vista do Buricá/RS
		2. Cargo: Arquiteto e Urbanista
		3. Período: 14/07/2020 - Atualmente                                 
		4. Funções Desempenhadas: desenvolvimento de projetos em geral na área da construção Civil, como arquitetônico, hidrossanitário, elétrico, de interiores, entre outros. Além disso colaboro na recepção de clientes e no acompanhamento de obras.

		1. Empresa: Dalmolin – Construções e Incorporações Ltda. – Frederico Westphalen/RS
		2. Cargo: desenhista e recepcionista
		3. Período: 02/03/2017 - 13/07/2020                                 
		4. Funções Desempenhadas: desenho técnico computadorizado na área da construção Civil, recepção de clientes, acompanhamento de obras e administração de páginas online.

		1. Empresa: Casa A Arquitetura – Frederico Westphalen/RS
		2. Cargo: desenhista
		3. Período: 05/02/2016 a 31/01/2017                                   
		4. Funções Desempenhadas: desenho técnico computadorizado na área da construção Civil.

		1. Empresa: Casa das Linhas – Boa Vista do Buricá/RS
		2. Cargo: cobrador e vendedor
		3. Período: 05/01/2012 a 31/01/2016                                   
		4. Funções Desempenhadas: além da função de auxiliar de vendas, realizei serviços de caixa, cobranças, auxílio administrativo, entre diversas outras atividades solicitadas.','Além da Gradução em Arquitetura e Urbanismo, sou formado em no curso de Técnico em Edificações pelo Instituto Federal Farroupilha - Campus Santa Rosa. Além disso possuo diversos outros cursos de especialização como de Lumion, do Programa Brasileiro de Qualidade e Produtividade do Habitat, entre outros.','Técnico em Edificações / Arquiteto e Urbanista','Arquitetura, Engenharia',NULL,'https://drive.google.com/open?id=1jRqom_tH0ntxhh-GElnhlTiFgf1jDvTD, https://drive.google.com/open?id=1V9yZE16m8tCtBLI741SJmTAewmm7EVX6, https://drive.google.com/open?id=1P-ekN6ff63yEtKx-L2cRiS3LMEUSbahp, https://drive.google.com/open?id=1k4BnMBYiJ5e2AwYjOUGvcfRRgXQW545E, https://drive.google.com/open?id=1vV3e1PRNaWWjumLWS9iCmVlG6iQ_5sma','Indicação',NULL,'20 h - R$ 2.200,00 (preferência por 20h) / 40 h - R$ 4.300,00','Sim','Édison Augusto Dalmolin - 55 999354483 - Dalmolin – Construções e Incorporações Ltda.
Diego Bertoletti - 55 984082285 - Casa A Arquitetura – Frederico Westphalen/RS','Vaga de Arquiteto e Urbanista','Olá. 
Sou uma pessoa que sonha alto e venho me dedicando ao muito para alcançar meus objetivos. Após sair do ensino médio formado em Técnico em Edificações ingressei na faculdade de Arquitetura e Urbanismo, a qual me graduei no início desse ano. 
Durante os 5 anos de faculdade, busquei adquirir experiência na área da construção civil, para que logo que formado, estivesse apto para exercer minha profissão com competência. Durante esse período, além da experiência adquirida no dia a dia de um escritório, passando pelas mais diversas situações. também me dediquei a aprimorar meus conhecimentos em diversos softwares, como Autocad, Sketchup, Lumion, Photoshop e Revit.
Me considero uma pessoa simpática e de fácil convívio, além de poder garantir que me dedico para dar meu melhor nos desafios a que me disponho, estando sempre pronto para evoluir. 
Isto posto, também gostaria de dizer que tenho interesse em ir morar na região de Santo Antônio da Patrulha pois tenho parentes nessa região. Dessa forma, me coloco a disposição para a vaga em questão, estando aberto a quaisquer questionamentos e/ou dúvidas. 

Obs: Quem me indicou está vaga foi um funcionário de vocês e ex colega meu no Técnico em Edificações, Felipe Kulzer. Se acharem válido, podem tomar referências minhas com ele.
Att. Theylor Führ Hoelscher','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-06-10T18:15:00.000Z'::timestamptz),
  ('Fábio Pereira Quevedo','fabio.quevedo@outlook.com','fabio.quevedo@outlook.com','55991445749','1985-07-05',40,'Solteiro(a)','1','Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1jItpg98X5nRwAW0Xx_Vyiq65dWZ0y64K',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Várias empresas, várias áreas na qual consta em meu currículo.',NULL,NULL,'Administrativa, Comercial, Estágio',NULL,NULL,'Instagram',NULL,'Salário compatível a categoria','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa extrovertida, atenciosa, dedicado. Trabalho bem em equipe, sempre ajudando, e sou curioso. Interesse em aprender e progredir na empresa e com a empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-06-11T09:28:00.000Z'::timestamptz),
  ('Alexandra de Oliveira Ramos','alexandradeolive4@gmail.com','alexandradeolive4@gmail.com','5199128110','2002-02-06',24,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1nJXxvtvzXebQa5_nBDnz7cSo7cl-XTDB','enfermagem','Ensino Superior Incompleto','FACCAT',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','não possuo experiência',NULL,NULL,'Estágio',NULL,NULL,'Outros',NULL,'o que for estabelecido pela empresa','Não',NULL,'Estágio Administrativo','eu fiz um curso de informática básica, faço enfermagem desde 2020. eu gosto de ler, estudar, cozinhar, aprender coisas novas...','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-06-14T19:10:00.000Z'::timestamptz),
  ('Brenda Aparecida Cardoso Santos','brendabre0100@gmail.com','brendabre0100@gmail.com','51997518712','2003-02-20',23,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Oi7TAm7cqNc6aPWfHs6olZ-t8NwRnLNK','Nutrição','Ensino Médio Completo','Anhanguera',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Sorrifácil 
2)Telemarketing 
3)14/10/2019 até 14/04/2020 (estágio)
4) Trazer novos pacientes até a clínica, marcar e remarcar consultas via celular.',NULL,NULL,'Estágio',NULL,NULL,'Instagram',NULL,'Um salário que cubra o horário de trabalho que cumprirei de acordo com o meu cargo na empresa.','Não',NULL,'Estágio Administrativo','Estudo, leio, assisto séries e pratico bastante exercícios físicos sempre, eu amo esportes.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-06-14T19:36:00.000Z'::timestamptz),
  ('Kaliandra de Lima','kaliandralima2604@gmail.com','kaliandralima2604@gmail.com','51995526821','1995-04-26',30,'Solteiro(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1SVdKtaASmpElVdiQzWDCaqk6m3QYJoor','Ciências Contábeis','Ensino Superior Incompleto','Uniasselvi','2024-01-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Trabalhei em fábrica de calçado fazendo de tudo um pouco por 2 anos, na RR Shoes, trabalhei no supermercado Gomes por 1 anos como operadora de caixa, 6 meses de estágio de secretária na inove cargo, por 4 meses na administração do posto de saúde central, e por último 5 meses na empresa Be happy na parte administrativa estágio tbm.','Faço o 5 semestre já de contabilidade, tenho curso de informática, de marketing e vendas, de economia, de inglês primwiro módulo e de estruturas e demonstrações contábeis.','Dos cursos todos tenho cerrificado.','Administrativa, Comercial, Financeiro, Marketing','https://drive.google.com/open?id=1NaWg2w9aE8X7p5uJOSyispjRaItw2O4E',NULL,'Instagram',NULL,'Salario base.','Sim','Michele Moreira - Be Happy Estúdio fotográfico - 51 99957 1911','Quero inscrever-me no banco de talentos da Young!','Tenho muita força de vontade e aprendo rápido, ou ágil e tenho disponibilidade de horário.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-06-14T19:44:00.000Z'::timestamptz),
  ('Eduarda Silva dos Santos','eduardasilva71561@gmail.com','eduardasilva71561@gmail.com','51998810789','2003-01-17',23,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1bY0HMDLPdpuuRG35TqniPKiRtIxZdTli',NULL,'Ensino Superior Incompleto','Uniasselvi',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Atualmente estou na empresa Magna Cosma, como aprendiz do financeiro. Executo lançamento de notas, controle de entrada e saída, organização de documentos, etc.','Inglês básico',NULL,'Administrativa, Comercial, Estágio, Financeiro','https://drive.google.com/open?id=1cA1BMb5XsN7FvX8o6gEHlXgOVmztOD7w',NULL,'Instagram',NULL,'1200','Não',NULL,'Estágio Administrativo',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-06-14T20:08:00.000Z'::timestamptz),
  ('Mel Silva Pereira','melspereira59@gmail.com','melspereira59@gmail.com','995813858','2002-04-16',23,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1-Iw17SSyVRL76NKh-UL2TbODqf1631MP',NULL,'Ensino Superior Incompleto',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1 Savale Imóveis 
2 Secretária 
3 30/10/2020 a 16/04/2021
4 Recepção, rotinas administrativas e atendimento ao público.','Curso Fisioterapia na Faccat, estou no terceiro semestre. Já realizei curso de média duração, como informática.',NULL,'Administrativa, Estágio','https://drive.google.com/open?id=1cpNPrhZRfh8KmUYlX6_OR9GQWczoi1Lc',NULL,'Instagram',NULL,'1400','Não','Mayana Fraga Gomes, diretora da empresa Savale Imóveis 999687789','Estágio Administrativo','Sou uma pessoa responsável, gosto de aprender e ser útil. Sou simpática, gosto de conversar e ajudar sempre que possível.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-06-14T20:09:00.000Z'::timestamptz),
  ('Danielle Fraga Soares','daniellefragasoares2@gmail.com','daniellefragasoares2@gmail.com','51995499994','2001-03-13',24,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=18L7LQh8DP1Zy8NzRIBYPIYSJ2ax1V2V5',NULL,'Ensino Médio Completo','Unimar - Universidade de Marília',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Empresa: Blake Store
Setor: vendas e administração.
Data de Início/ Término: 09/2019 até nos dias de hoje.
Principais atividades: vendas e administração, compras de coleção, marketing e entre outras.','Superior em GESTÃO COMERCIAL  - UNIMAR
Curso de ADMINISTRAÇÃO E INFORMÁTICA- Mundo Office
Marketing e empreendedorismo- SEBRAE','Curso de Empreendedorismo, curso de administração e informática.','Administrativa, Comercial, Estágio, Marketing','https://drive.google.com/open?id=1Dch1uxQu_eYP9wr1P_-W6tZC63I7nwRA',NULL,'Instagram',NULL,'Salário Comercial ou a combinar.','Sim',NULL,'Estágio Administrativo','Costumo sempre buscar novos conhecimentos em horários vagos, leio, amo cozinhar, acredito que tudo naquilo que ponho fé e acredito da certo. Acredito que a aprendizagem seja constante e diária, e por isso quero fazer parte da equipe Young Empreendimentos, buscar mais conhecimentos e por em prática toda minha habilidade e conhecimentos a favor da empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-06-14T23:19:00.000Z'::timestamptz),
  ('Maria Eduarda da silva ferreira','silvamariaeduarda913@gmail.com','silvamariaeduarda913@gmail.com','51998863370','2002-01-19',24,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1jcrklh7_l4LRcF3Mx3aGhRuJwbeS9Dij','Gestão de recursos humanos','Ensino Superior Incompleto','Uniasselvi','2023-03-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','M.F Gomes ltda e cia, caixa, 15/09/2020 ate 14/01/2021',NULL,NULL,'Administrativa, Comercial, Estágio, Marketing','https://drive.google.com/open?id=1y5pNuS6xE7F2OEBSI-VKFWchzq6rcxOW',NULL,'Instagram',NULL,'1.200','Sim',NULL,'Estágio Administrativo','Me chamo Maria Eduarda, tenho 19 anos, estudo RH, gosto de desafios, sou responsável e pontual. Quero uma vaga no mercado de trabalho  para ter oportunidades de dar o meu melhor e crescer!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-06-15T00:25:00.000Z'::timestamptz),
  ('Gabriela Oliveira dos Santos','gabrielaoliveiradossantos01@outlook.com','gabrielaoliveiradossantos01@outlook.com','51998639076','2001-04-21',24,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1khSRnx7dOuheKEba47tzGpt-Rqr2bp7u',NULL,'Ensino Superior Incompleto','UNIASSELVI',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Empresa: Centro de Referência da Assistência Social - CRAS
Cargo: Estágio
Período: 26/10/2017 a 26/01/2018
Atividades: Organização de documentos e atualizações de cadastros dos cidadãos. Foi um contrato emergencial.

Empresa: Masal S/A Indústria e Comércio
Cargo: Auxiliar Administrativo (Jovem aprendiz)
Período: 01/07/2019 a 18/08/2020
Atividades: Organização de documentos, atendimento ao telefone, serviços bancários, envio de e-mails.

Empresa: Valepel 
Cargo: Auxiliar de produção I
Período: 27/11/2020 a 19/02/2021
Atividades: Fechamento de embalagens e pacotes, operar máquinas. Por conta da pandemia, a empresa teve que demitir alguns funcionários para poder fechar o quadro, eu por estar no contrato, então tive que sair também.',NULL,NULL,'Administrativa, Comercial, Estágio, Financeiro',NULL,NULL,'Indicação',NULL,'R$1.000,00','Sim',NULL,'Estágio Administrativo','Me considero uma pessoa organizada, pontual, dedicada e espontânea. Pretendo desenvolver meus conhecimentos e ajudar com o crescimento da empresa. 
No momento estou desempregada, estou a procura de alguma vaga tanto para adquirir mais conhecimentos, quanto para continuar com minha graduação, pois considero os estudos umas coisas mais importantes em minha vida.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-06-15T00:45:00.000Z'::timestamptz),
  ('Gabriela Claro Sudecum','gabicsudecum@gmail.com','gabicsudecum@gmail.com','996966810','2002-09-10',23,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1XTv9tlF90lW87zzkeVrnKpdIFd72aXeD','Administração de empresas','Ensino Médio Completo','FURG - Universidade Federal do Rio Grande','2026-01-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Estou me candidatando para o meu primeiro emprego. Ainda não tive oportunidade de ingressar no mercado de trabalho, porém tenho confiança de que posso exercer as atividades a mim propostas de forma efetiva, cumprindo com a expectativa da empresa.','Ensino médio completo (EEEM Patrulhense); Graduação em andamento em Administração (FURG); Curso de Assistente Administrativo, 8h (Mundo Office); Curso de Português, 60h (Estratégia Concursos).',NULL,'Administrativa, Marketing, Novos Negócios, Engenharia','https://drive.google.com/open?id=1c9cnUk4jli5wCF_9hBzTvMZiVM0TdHga',NULL,'Indicação',NULL,'R$1.000,00','Não',NULL,'Estágio Administrativo','Tenho vontade de começar a trabalhar, poder conquistar meus objetivos e eu me interessei pela vaga, pois se encaixa com meu perfil acadêmico. Não tenho experiência ainda, mas sou determinada, não tenho dificuldade em me comunicar com o público, tenho facilidade com tecnologias, sempre consegui lidar bem documentos, análise e organização de dados. Me considero uma pessoa calma, comprometida com meus deveres e objetivo sempre entregar o melhor de mim. Sou bem estudiosa e leio bastante, procuro aprender cada dia mais, acumular o quanto mais de conhecimento que eu puder, é algo que edifica minha vida, estar com a mente aberta para novas experiências e ensinamentos. Agradeço a atenção e a oportunidade de estar participando do processo seletivo.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-06-15T01:00:00.000Z'::timestamptz),
  ('Leonardo Silveira Flores','leonardosilveira37@gmail.com','leonardosilveira37@gmail.com','51995064367','2002-09-26',23,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=16keSeZvpWyiwNj7ElSW0_QRDlXVllymq','Administração','Ensino Superior Incompleto','Faculdade Federal do Rio Grande - FURG',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Cooperja - Jovem Aprendiz - abril de 2018 a abril de 2020 - Desempenhei função de Auxiliar administrativo, onde trabalhava diretamente com público, pessoalmente e através de ligações e e-mails, realizava lançamento de notas no sistema e dados em planilhas, realizava arquivamento de documentos e entrega dos mesmos.

Prefeitura de Santo Antônio da Patrulha - Estagiário - 25 de setembro de 2020 a 30 de novembro de 2020 - Trabalhei no almoxarifado da Prefeitura, onde realizava a organização, recebimento e distribuição de materiais, dando baixa no sistema da entrada e saída dos mesmos.

Live160 - Auxiliar de Saúde Bucal - 01 de dezembro de 2020 até o momento - trabalho auxiliando os dentistas em procedimentos odontológicos, trabalhando sob pressão e com rápido aprendizado.',NULL,NULL,'Administrativa, Estágio','https://drive.google.com/open?id=1AllXmKcm61MUeTI90rI5uPzbB4FgQx8m',NULL,'Indicação',NULL,'750','Não',NULL,'Estágio Administrativo','Atualmente trabalho na área da saúde, mas me vejo no futuro trabalhando na área administrativa, estou ingressando no curso de Administração, tive boa experiência trabalhando com Microsoft Word, Excel e PowerPoint durante meu contrato de aprendizagem na Cooperja, fiz um curso de inglês básico e acredito que tenho um bom vocabulário e entendimento, tenho um aprendizado rápido, sou pontual, esforçado e com vontade de aprender.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-06-15T01:26:00.000Z'::timestamptz),
  ('Yasmin da Costa','yasmindacosta61@gmail.com','yasmindacosta61@gmail.com','51999146694','2003-03-27',22,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1WtqrOTDwntGpvei3WslUmGqRBI3egaNe',NULL,'Ensino Superior Incompleto','Uniasselvi',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Espaço Kids: Monitora (01/01/2019 - 10/03/2020
Casas de família: Babá
Brasil Telecom: Vendedor call center (26/04 - atualmente)',NULL,NULL,'Administrativa','https://drive.google.com/open?id=1b4IAasizFva1o65p6GvGdQ5e4YB4ajjl',NULL,'Indicação',NULL,'700','Sim',NULL,'Estágio Administrativo',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-06-15T11:49:00.000Z'::timestamptz),
  ('Ana Caroline Messaggi dos Santos','anacmessaggi1608@gmail.com','anacmessaggi1608@gmail.com','51997532471','2000-08-16',25,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1ywflU0Uj04X2MiAnaLx2LSxzAgQUBbXH','Gestão de recursos humanos','Ensino Superior Incompleto','Uniasselvi','2022-10-10','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Loja Vivo, ocupei o cargo de caixa operadora iniciei em 14/08/2019 e sai em 09/07/2021, trabalhava com entradas de valores, notas fiscais, estoque, entre outros.','Possuo ensino médio completo e estou cursando Gestão de Recursos Humanos.','Possuo curso básico de administração e informática.','Administrativa','https://drive.google.com/open?id=1GVZDU9Agq_bO288H77-Xd2xTPVBX4wzY',NULL,'Instagram',NULL,'1300','Não','Loja Vivo','Estágio Administrativo','Sou uma pessoa produtiva, organizada e dedicada! Possuo curso básico de administração e informática. Gosto de sair com os amigos, matear e conhecer lugares novos! Sou alto astral, gosto de colecionar memórias.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-06-15T15:57:00.000Z'::timestamptz),
  ('Rafaela da Silva Nunes','raaffa_nunes@hotmail.com','raaffa_nunes@hotmail.com','51997615515','1999-02-12',27,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1qN6DXH1Uv2LXhD5uj3FV-TNJMiiA5591','Pedagogia','Ensino Superior Incompleto','Unicnec Osório','2023-07-29','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Empresa: Posto de Saúde de Santo Antônio da Patrulha - (Estagiária do CIEE).
Cargo: Recepcionista, Telefonista e Digitadora. 
Período: Agosto de 2015 à Fevereiro de 2016.
Principais atividades: Contato constante com o público, buscando atender as necessidades para um melhor atendimento ao público. 

Empresa: Instituto Nacional de Seguro Social (INSS) - (Estagiária do CIEE). 
Período: 01 de Janeiro de 2017 até 29 de Dezembro de 2017. 
Principais atividades: Contato com o público, apoio ao setor administrativo, telefonista e digitadora. 

Empresa: Prefeitura Municipal de Santo Antônio da Patrulha - Escola Santa Inês
Período: 29 de Maio de 2019 até 25 de Novembro de 2019.
Principais atividades: Monitora de crianças com necessidades especiais.

Empresa: Prefeitura Municipal de Santo Antônio da Patrulha- EMEI Moranguinho
Período: 26 de Novembro de 2019 até 13 de Dezembro de 2020
Principais atividades: Auxiliar de sala de aula.','Windows, IPD, Word, Internet, Excel, Digitação e PowerPoint e Inglês Básico.',NULL,'Estágio','https://drive.google.com/open?id=14NupaR8J3tTed0TAuoaQk9Enp94pRras',NULL,'Indicação',NULL,'R$1.100,00','Não',NULL,'Secretária','Sou uma pessoa proativa, dinâmica, comprometida com o trabalho e tenho facilidade para trabalhar em grupo.
Trabalhei no Comitê da Solidariedade logo quando começou a Pandemia, pois a Escolinha estava fechada. As vezes ajudava na recepção do Sine.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-06-15T16:04:00.000Z'::timestamptz),
  ('Renan de Souza Muniz','renanmunizhb@outlook.com','renanmunizhb@gmail.com','998092133','2002-12-26',23,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1dq4yYuF9s9FA3HRJFdavCFa_fzyCuUmb','Administração de empresas','Ensino Superior Incompleto','Unisinos',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Tabelionato Baierle- estágio- 5 meses',NULL,NULL,'Administrativa, Marketing',NULL,NULL,'Instagram',NULL,'Um salário compatível com a função que irei exercer.','Não',NULL,'Estágio Administrativo','Fiz as aulas teóricas e as aulas práticas para tirar a carteira de habilitação, estou esperando para fazer a prova prática na próxima semana.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-06-15T18:44:00.000Z'::timestamptz),
  ('Samara Milcharek D ávila','milcharek.samara@gmail.com','milcharek.samara@gmail.com','51999883944','1998-07-03',27,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1-wYjeraQpJXKWyz9yj_CPZr3Ne10hZv_','Arquitetura','Ensino Superior Incompleto','Universidade do Vale do Rio dos Sinos - UNISINOS','2025-08-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) 21° CROP; 
2) Auxiliar arquiteto;
3) 2020/1 - 2021/2(Um ano e seis meses);
4) Auxiliei em levantamentos de campo, com croquis, medições e fotos para posteriormente passar tudo para desenhos em CAD. Atualizando desenhos em CAD já existentes e por fim deixar tudo conforme as normas. Documentos com informações para reformas e planilhas de Excel.','Possuo curso de inglês, photoshop e illustrator. Possuo conhecimentos extras que procurei por conta para aprimorar minhas habilidades e grande facilidade com informática e tecnologia. Atualmente sou monitora da atividade de Expressão gráfica III na Unisinos.',NULL,'Arquitetura, Estágio, Engenharia','https://drive.google.com/open?id=1_n_kmXkt2WPjVmsXUR6zfa1nCh65bvc-','https://drive.google.com/open?id=1rsB29cgFNRnoXw0Vd58QfGfrsnBQ0_xW','Indicação',NULL,'Entre R$: 1.000 a 1.500','Não','21° CROP
Sheila Benedetti
sheila-benedetti@sop.rs.gov.br','Estágio Administrativo','Olá, boa tarde! 
Gostaria de comentar sobre alguns hobbies, adoro música e tecnologia, geralmente passando o tempo livre no computador. Adoro estudar sobre ferramentas novas, e geralmente tenho facilidade com elas, uma vez que quase todas as ferramentas que me ajudam atualmente aprendi por conta própria. Procuro sempre me aprimorar e desenvolver meus conhecimentos.
Adoro ler e sou o tipo de pessoa que é mais direta, ouvinte e quieta.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-06-16T18:38:00.000Z'::timestamptz),
  ('Caroline de Lins Freiberger','freiberger.arquitetura@gmail.com','freiberger.arquitetura@gmail.com','51997163209','1994-07-30',31,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1qWf83vkxX3QeNatOXIq0BNh3WQxEbK_m','Arquitetura','Ensino Superior Completo','Ulbra','2020-07-18','Não, no momento pausei/parei por um período.','21° Coordenadoria Regional de Obras Públicas - Estágio
06/2012 Á 05/2013 - SAP/ RS.
Graficação de projetos, estudos preliminares, projeto
executivo, planilhas de orçamento, visita em obras,
entre outras funções;
Escritório Ângela Guerreiro - Estágio
05/2013 Á 02/2015 - SAP/ RS.
Graficação de projetos, detalhamentos técnicos,
estudos preliminares, projeto executivo, planilhas
de orçamento, contato com clientes e fornecedores,
visita em obras, entre outras funções;
AllBekaa Arquitetura e Engenharia
03/2015 Á 07/2015 - Lages/ SC - Estágio
Graficação de projetos, detalhamentos técnicos,
estudos preliminares, projeto executivo, planilhas de
orçamento, atendimento de clientes e fornecedores,
visita em obras, entre outras funções;
Blooms Arquitetura e Design – Â. Guerreiro - Projetista
08/2015 Á 05/2020 - SAP/ RS.
Graficação de projetos, detalhamentos técnicos,
estudos preliminares, projeto executivo, planilhas
de orçamento, contato com clientes e fornecedores,
visita em obras, entre outras funções.
Benditta Marcenaria - Projetista
09/2020 Á 05/2021
Elaboração de projetos de interiores e orçamento.',NULL,NULL,'Arquitetura, Licenciamentos, Engenharia','https://drive.google.com/open?id=1xuw7C6LvtpperVDGcQRoN2LNwSVNhfdW',NULL,'Indicação',NULL,'R$5.000,00','Sim',NULL,'Arquiteto(a)','Olá, sou Caroline Freiberger, técnica agrícola, graduada em arquitetura e urbanismo. Trabalho bem em grupo, aprendo rápido, tenho domínio nos programas AutoCAD e SketchUp, conhecimento em Vray, Illustrator e Archicad, tenho muita vontade de crescer e aprender dentro da empresa. Me candidato a está vaga, com a intenção de ajudar a empresa em seu desenvolvimento, dando todo o meu esforço e trabalho, busco com isso, além do meu crescimento pessoal e profissional, muito aprendizado, que me auxiliarão na busca pelo sucesso.

Desde já agradeço a atenção!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV',NULL),
  ('Jéssica da Rocha','rocha.arquitetura@hotmail.com','rocha.arquitetura@hotmail.com','54997092523','1994-10-31',31,'Solteiro(a)','0','Sim','Tramandaí/RS','https://drive.google.com/uc?export=view&id=13a6VmdaHKaCHfZVAICs5ax0NSX50cdU-','Arquitetura','Ensino Superior Completo','Ulbra Campus Carazinho','2020-03-07','Não, no momento pausei/parei por um período.','Candidata ao primeiro emprego na área de formação.','Formou-se com ênfase em projetos arquitetônicos, especianlizando-se em software BIM. Ampliou seus conhecimentos pela prática constante em projetos autorais desenvolvidos na plataforma Revit, onde também laborou com interiores.',NULL,'Arquitetura, Engenharia',NULL,NULL,'Instagram',NULL,'A partir de dois salários mínimo.','Sim',NULL,'Arquiteto(a)',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-06-19T05:04:00.000Z'::timestamptz),
  ('Antônio de Castilhos Silveira','antoniodecastilhos.decastilhos@gmail.com','antoniodecastilhos.decastilhos@gmail.com','51998585727','2000-02-10',26,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=19dPLw5JJ_x6M9kl1AxjNF4gKtAEZv6ez',NULL,'Ensino Médio Completo',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Trabalhei na magna cosma, linha de produção, sendo inspetor de qualidade. Durante o período de experiência, sendo de a 15 de agosto de 2018 à 26 de setembro de 2018. Atualmente, trabalho no supermercado nacional desde 21 de fevereiro de 2020, sendo operador de loja, assim atendendo o público, organizando a loja e operando o caixa.','Curso de inglês, informática e atendimento ao público.',NULL,'Administrativa','https://drive.google.com/open?id=12X6S5GNA1G9YRjrZNhUxF_PGtf9eZ5De',NULL,'Indicação',NULL,'1.500,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-06-23T04:27:00.000Z'::timestamptz),
  ('Bruna Quintana Ribeiro','brunaribeiro.rs@hotmail.com','brunaribeiro.rs@hotmail.com','55996889597','1997-02-13',29,'Solteiro(a)','1','Sim','Manoel Viana/rs','https://drive.google.com/uc?export=view&id=1O2R_mwoIaA3mEbypm9ZEfbt0oUPypM_c','Administração de empresas','Ensino Superior Incompleto','UNOPAR',NULL,'Não, no momento pausei/parei por um período.','2013 – 2018
Vendedora • atendimento e vendas • 8w8 tecnologia.
2018 – 2019
Estagiária • Atendimento ao público • Sicredi Essência Manoel 
Viana.
2019 – atualmente
Gestora de projetos • Administrativo • Visual Arquitetura.','CURSANSO TTI-SENAC/ALEGRETE',NULL,'Comercial, Estágio, Novos Negócios','https://drive.google.com/open?id=1sDIDVGwZ9h1KRlCPHcWoOhA7uv-Imxw6','https://drive.google.com/open?id=1aMJlGHXBi4RmJWFS_PiAcUZa1ngKreCx','Instagram',NULL,'2.990,00','Sim','8W8 Tecnologia - (55) 3256-2583
Visual Arquitetura - (55) 99713-8223','Quero inscrever-me no banco de talentos da Young!','Considero qualquer que seja o tipo de venda como um meio e não um fim, o processo da 
venda permite conectar pessoas de uma forma única, pois de um lado estão as que buscam algo (necessidades) e de outro que ofertam (resultado).
O sucesso da venda está em conhecer a transformação que o seu produto/serviço causa na vida das pessoas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-06-24T18:39:00.000Z'::timestamptz),
  ('Karen Danielle Coelho da Silva','karendaniellecoelho@gmail.com','karendaniellecoelho@gmail.com','+55991097036','1993-02-09',33,'Solteiro(a)','0','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1_sv6di3Z5jQCOYos7Zpgp7Q3anVE-bCF','Técnico de Logística','Ensino Superior Completo','Instituto Federal Farroupilha - Campus São Borja','2021-06-07','Não, no momento pausei/parei por um período.','Auxiliar em Comércio exterior- operações de importação. Empresa: Tito Smart Modal Logística. Atuando na área desde 2009, é o emprego atual.',NULL,NULL,'Administrativa, Marketing','https://drive.google.com/open?id=1EyADBldg27Ux07IvxN4R3sAa5iXd2_lh',NULL,'Facebook',NULL,'R$ 2.500,00 a negociar.','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho interessa em adquirir novas experiências e aprendizados. Busco inovar em minha carreira profissional. Estou aberta a novas oportunidades. Adoro viajar e obter novos conhecimentos.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-06-28T23:35:00.000Z'::timestamptz)
;

INSERT INTO young_talents.candidates (full_name, email, email_secondary, phone, birth_date, age, marital_status, children_count, has_license, city, photo_url, education, schooling_level, institution, graduation_date, is_studying, experience, courses, certifications, interest_areas, cv_url, portfolio_url, source, referral, salary_expectation, can_relocate, professional_references, type_of_app, free_field, status, tags, origin, created_by, original_timestamp)
VALUES
  ('Felipp Aguiar da Silva','felypp1@hotmail.com','felypp1@hotmail.com','51982094232','1986-10-11',39,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Wfh5vzB6Iwop-X6YlTZUETXcXBhq8Tj0',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Experiência em vendas',NULL,NULL,'Comercial, Marketing, Novos Negócios, Engenharia',NULL,NULL,'Tenho Convivência Com Um Arquiteto',NULL,'1500.00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa bem comunicativa, prestativo','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-06-30T17:29:00.000Z'::timestamptz),
  ('Everson Batista da Silva','eversonbats@hotmail.com','eversonbats1@gmail.com','48996080270','1981-03-04',44,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=18X5OGW6m6ARgK8F8Z6oYC8PUccUsVYwq','Arquitetura','Ensino Superior Completo','ULBRA','2012-01-14','Não, no momento pausei/parei por um período.','Última empresa: Hotel Ceci - Capão da Canoa/RS                                                 Função: Sócio Gerente
Período: 10/2011 à 31/07/2018
Atividades: Gerente geral, atendimento a clientes, check-in e check-out, controle de reservas inclusive no site Booking.com Extranet, orçamentos, compras, pagamentos, atendimento a fornecedores, controle de estoque, controle de funcionários e controle financeiro geral.
 
Penúltima empresa: BR Consultoria e Serviços Ltda. - São José/SC           Função: Encarregado Nível III - Fiscal e RH
Período: 06/08/2013 à 30/06/2014                         
Atividades: Organização da rotina do Departamento Pessoal e informações para a folha de pagamento, emissão on line de Notas Fiscais, fiscalização nos postos de trabalho para acompanhar presença e devidos serviços de portaria, limpeza e zeladoria em condomínios da Grande Florianópolis. 
 
Antepenúltima empresa: DiGesso & Decorações – Capão da Canoa/RS       Função: Projetista Vendedor
Período: 03/11/2008 à 14/07/2011                 
Atividades: Desenvolvimento de projetos de gesso decorado para diversos ambientes residenciais e comerciais; demonstração de forro e paredes de gesso convencional e acartonado (Dry wall); orçamentos; cálculo de material; cálculo de mão-de-obra e acompanhamento da execução da obra de gesso. 

Obs.: Trabalhei por 3 anos (2001 a 2004) dentro da Young, no escritório Kaiser Contabilidade no qual fazia as rotinas do departamento pessoal da empresa e suas terceirizadas.','Técnico em Contabilidade','Diploma de Arquiteto e Urbanista','Arquitetura','https://drive.google.com/open?id=1gZI-OG65jNCcwsvcbWU_FAbD9KHNHW2v',NULL,'Facebook',NULL,'2.500,00','Sim','Obs.: Trabalhei por 3 anos (2001 a 2004) dentro da Young, no escritório Kaiser Contabilidade no qual fazia as rotinas do departamento pessoal da empresa e suas terceirizadas.','Arquiteto(a)','Já fiz de tudo um pouco mas maior parte foi em escritórios que possuem departamento pessoal. Gerenciei um Hotel arrendado por minha família por 7 anos. Na Arquitetura fiz inúmeros projetos de gesso, iluminação e interiores. Trabalho nos programas CAD, SKETCHUP e pacote OFFICE.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-06-30T19:28:00.000Z'::timestamptz),
  ('Sabrina dos Santos','sabrinadsanntos1@hotmail.com','sabrinadsanntos1@hotmail.com','51997986148','1996-05-13',29,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1oEZdrMjJh8e3OQNPso8cc9kB6d3x9qxu','Psicologia','Pós-graduação Completa','Unicnec','2020-09-29','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Atualmente trabalho como Psicóloga Clinica particular. E estou realizando um curso em Gestão de pessoas.','Curso de Gestão de pessoas',NULL,'Administrativa',NULL,'https://drive.google.com/open?id=1NKKDPRNqALsmAL1XjQaaWBvZ58-2R66n','Instagram',NULL,'R$1.900,00 á R$2.500,00','Não',NULL,'Setor administrativo ou para RH, recrutamento e seleção da empresa.','Pretendo através da minha experiência e boa desenvoltura colaborar com desempenho da empresa e toda a equipe.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-07-06T01:13:00.000Z'::timestamptz),
  ('Isadora da Rosa Ferri','isadoradarosaferri@hotmail.com','isadoradarosaferri@hotmail.com','51999160750','2002-12-26',23,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=17pBfN1B5MC5UoRXIyUCUYUL2lVrnA3aB',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Estou me candidatando ao meu primeiro emprego.','Inglês immediate conversation- wizard;
Excel básico- Senar;
Informática básica- Senar.',NULL,'Administrativa, Comercial, Estágio, Financeiro',NULL,NULL,'Indicação',NULL,'O que a empresa está acostumada a pagar a seus funcionários iniciantes.','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho curso de inglês intermediário e informática básica, quero uma oportunidade para entrar no mercado de trabalho e adquirir novos conhecimentos e experiências!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-07-15T13:33:00.000Z'::timestamptz),
  ('Taylane Araujo','taylaneoliveira@hotmail.com','taylaneoliveira@hotmail.com','51996529056','1989-05-07',36,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1r8CW5uIXM7gDIC9qQpTXazpgx_13Etb3','Gestão em Recursos Humanos','Ensino Superior Incompleto','Unisinos','2022-08-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Consultório Saúde sempre / Secretaria / Julho/2017 até o momento / atendimento ao telefone, via whatsapp e recepção, organização de consultórios, realizações de prontuários.',NULL,NULL,'Administrativa, Comercial, Marketing, Novos Negócios',NULL,NULL,'Youtube',NULL,'1500','Não','Loja Taqi / cargo de vendedora / 3 anos /','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-07-15T22:43:00.000Z'::timestamptz),
  ('Sabrina dos Santos','sabrinadsanntos1@hotmail.com','sabrinadsanntos1@hotmail.com','51997986148','1996-05-13',29,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1x2wm5-3igO5fzqBXRQ007keQxJF4jo6S','Psicologia','Pós-graduação Completa','Faculdade Cnecista de Osório','2020-09-29','Não, no momento pausei/parei por um período.','Trabalhando atualmente na clínica privada. Atendimento psicológico.','Formada em Psicologia, pós graduação em Aba (análise do comportamento aplicada), curso básico de RH',NULL,'Administrativa',NULL,NULL,'Instagram',NULL,'1.900,00 á 2.500,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Através da minha experiência na graduação e na clínica, busco vaga na empresa para auxiliar na melhoria da empresa com as pessoas, melhorando assim o desenvolvimento do empregado com a empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-07-18T23:32:00.000Z'::timestamptz),
  ('Giovana Oliveira da Silva','giovana9756@gmail.com','giovana9756@gmail.com','51995579163','2003-03-04',22,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1FBjVka5F1B65ycOezeW2D7FxDtU8d0ys','Farmácia','Ensino Superior Incompleto','Uniasselvi','2025-12-10','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','DeMello Alimentos:

Jovem Aprendiz no setor administrativo (auxiliar nos setores de compras, recursos humanos e balança). 
De 04/2018 à 04/2020.

DeMello Alimentos:

Auxiliar administrativo,  comecei como recepcionista cuidando de atendimento aos clientes, organização do escritório, arquivamento, e-mail...
Após continuei como auxiliar administrativo mas trabalhando no Financeiro da DeMello Incorporações, onde fazia cobrança de clientes, envio de boletos e recibos, lançamento de contratos...
De 04/2020 à 03/2021.

Pátio Urbano:

Recepcionista, atender clientes e recepcionar.
Emprego atual.','Curso Técnico em Transações Imobiliárias na Escola Técnica Inteligência Educacional',NULL,'Administrativa, Comercial, Estágio, Financeiro','https://drive.google.com/open?id=1oU6bKLKHGkjCnlSXipVOKyKmcMSeltS7',NULL,'Facebook',NULL,'Na média entre R$1.300,00 à R$1.800,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho cursos de:
 Informática básica e avançada;
Auxiliar administrativo;
Fui monitora na Mundo Office no curso de informática por aproximadamente um ano.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-07-19T18:38:00.000Z'::timestamptz),
  ('Matheus de Barcellos Meregali','matheus.b.meregali@gmail.com','Matheus.b.meregali@gmail.com','51998482793','1995-08-22',30,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1GgD5cEhDjacS-J1EdoFAnlQ5HPhkXVAd',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Teccel Celulares - Fev 2015 - Ago 2017
Na empresa trabalhei em atendimento ao público, desde o auxílio às frequentes dúvidas dos clientes até o processo de venda de produtos e serviços. Também trabalhei com manutenção de celulares e outros equipamentos tecnológicos. 

Professor de Jiu-jítsu - 2017- 2020.
Atribuições do cargo: Ensino do Jiu-Jitsu para alunos das mais diversas graduações; prospecção de novos alunos, aconselhamento de técnicas, aulas específicas e gerais para crianças, jovens e adultos – homens e mulheres, defesa pessoal e outros relacionados ao âmbito do professor. Aulas ministradas em diversas academias de Santo Antônio da Patrulha, conforme a necessidade das mesmas, bem como aulas particulares. Horário de trabalho flexível.

Granja Galinhas Felizes Jun 2018 - Set 2020
Processo de desenvolvimento da marca, vendas e atendimento ao público. Na Agroindústria Familiar, fui processador de ovos, trabalhando com seleção, controle de inspeção, embalagem e estoque. Com as aves, atendi a manutenção das mesmas, garantindo a sanidade dos galpões e o controle dos procedimentos.
No setor de vendas, garanti a prospecção de clientes físicos e jurídicos, realizei controle negocial e criei métodos de venda para ampliar a quantia de produtos adquiridos pelo comércio. Além disso, realizei atendimento, mantendo fidelidade no relacionamento entre Granja e cliente. 

Meta Elavadores Out 2020 - Até hoje.
Como parte da equipe de manutenção, sou designado para a função de manutenção preventiva de elevadores. O serviço, fundamental para o mantimento de clientes que adquirem elevadores ou que precisam do serviço contínuo, é essencial. Pela empresa, viajo para diversas cidades do estado realizando a manutenção dos equipamentos e levando a mensagem da Meta comigo, o que garante um serviço continuo e duradouro.',NULL,NULL,'Comercial',NULL,NULL,'Indicação',NULL,'2000','Sim','Lucas Fernandes, 51999007755','Vendas','Amo ensinar as pessoas e ouvir o que elas tem a me dizer, para que possamos trocar conhecimento. Curto desenvolver novas habilidades e me esforço para que isso aconteça rapidamente. Gosto de tecnologia, mas também uso meu tempo livre para andar de bicicleta, skate ou treinar na academia, porque isso me ajuda a equilibrar meu corpo e minha mente. Sou faixa-marrom de Jiu Jitsu e já dei aulas, o que me ensinou a crescer como pessoa e a entender os outros e as necessidades que carregam. Gosto de horários e tarefas agendadas, mas também consigo lidar com imprevistos, porque tenho a paciência necessária para isso.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-07-26T20:56:00.000Z'::timestamptz),
  ('Carlos Alexandre da Conceição','conceicaoengcivil@gmail.com',NULL,'55999539591','1982-02-02',44,'Casado(a)','1','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1YuZ9TLZdvDOeDzv_uDFcYw2r5gDDheHj','Engenharia Civil','Pós-graduação Completa','unipampa','2010-07-29','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Prefeitura Alegrete e caixa Econômica federal (CREDENCIADO)','Conclusão em andamento eng. agricola','AVALIAÇÃO IMOBILIARIA, PROJETOS, ACOMP. OBRA CAIXA, POS ENG. ECONOMICA','Comercial, Engenharia',NULL,NULL,'Indicação',NULL,'PISO CLASSE ENGENHARIA','Sim',NULL,'COMERCIAL, ENG CIVIL','SEMPRE NA BUSCA DE CRESCIMENTO PROFISSIONAL, AGREGANDO CONHECIMENTOS E OPORTUNIDADES QUE SEJAM PARA AGREGAR.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-07-29T13:29:00.000Z'::timestamptz),
  ('Caroline Dorneles Fagundes','dornelesjfafagundes@gmail.com',NULL,'55996580870','1994-04-15',31,'Casado(a)','3','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1ckF6hITOs5_VrOc0ZONWLTejWYMPv4TL',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Açao social Edson Pereira Magalhaes
Trabalhei de secretaria, administrativo
Março 2016 a novembro 2017

Brasil cientifica
Auxiliar administrativo e venda de material de laboratorii
2017 a 2019','Curso jovem aprendiz',NULL,'Administrativa, Comercial','https://drive.google.com/open?id=1Ka_2FM_g_9auhz1FXuNDLUC7E-SUJakd',NULL,'Instagram',NULL,'1.500,00','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-08-11T17:38:00.000Z'::timestamptz),
  ('Cassius Luis Airoldi','cl.airoldi@hotmail.com',NULL,'54991385880','1994-09-07',31,'Solteiro(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1s8H1IpDqw4e4_HzQB6U12WcAGom17e2w','Mecatronica','Ensino Superior Incompleto','Senai/RS','2023-12-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Responsável Técnico (Cooperja)
Representante Externo (Produsolo)
Supervisor de Processo (Boulevard)
Orientador Educacional (Instituto Mix de Profissões)
Responsável de Qualidade cs1 (Ortomobil)','Coach em vendas e extensão em vendas (IBC)
Técnico Agrícola (Rural)
Gestão em vendas e liderança (Instituto Mix Carlos Barbosa)
Mecatrônica - Cursando (Senai/RS)','Extensões em vendas.','Comercial, Novos Negócios','https://drive.google.com/open?id=1SAy0P9Oi1GRDhBd2-lyGafhjAik773Q4',NULL,'Indicação',NULL,'Salário quem faz é o próprio funcionário.','Sim',NULL,'Comercial','Conhecimento na parte de georreferenciamento, mapas e laudos ambientais.
Uso de maquinários como estação total, teodolito e GPS, com termino em mapas dimensionado conforme laudo e escritura. 

Regulagem e calibragem de máquinas cnc''s e tornos mecânicos. Cursos em partes básica e avançada na área de informática e marketing.

Na parte de cozinha de modéstia parte um master chef, haha. Em meados de férias e tempo livre gosto de estar com amigos, família e principalmente com a minha filhota.


ATT: Cassius Airoldi.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-08-12T17:50:00.000Z'::timestamptz),
  ('Guilherme Francisco Barbosa Corrêa Oliveira','guilhermefrancisco614@gmail.com',NULL,'51989366948','2000-02-08',26,'Solteiro(a)','0','Não','Imbé/rs','https://drive.google.com/uc?export=view&id=1jAMUcJh9oD-8IoLfc5ufqjcaDysIfuMO',NULL,'Ensino Médio Completo','Escola Estadual de Ensino Médio 9 de maio','2017-09-01','Não, no momento pausei/parei por um período.','Trabalhei num empresa de advocacia. D''avila Lopes Advogados. Secretário. Outubro de 2019 até março de 2020. Eu atendia o telefone, todos os clientes que chegavam no escritório, fazia o fechamentos mensal das finanças, protocolava os documentos no fórum.','Música',NULL,'Administrativa, Financeiro, Licenciamentos, Novos Negócios','https://drive.google.com/open?id=1jb_5YoBdyZ2_pFQKmbHNIKBT3-EUZ30k','https://drive.google.com/open?id=1DtCA-ELpsGnB6pETU3Urt-2cT1arfNtl','Instagram',NULL,'No mínimo 1500','Não',NULL,'Administrativo ou qualquer coisa que seja no mesmo campo de atuação','Eu atualmente trabalho na área de jornalismo, com meu próprio veículo de mídia o Gallileu( @gallileuoficial no insta), onde eu posto notícias faço vídeos, escrevo artigos. Sou músico também, baterista na igreja Bola de neve Tramandaí','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-09-16T13:37:00.000Z'::timestamptz),
  ('Maria De Fátima Alves Soares Leal','patyasleal@gmail.com',NULL,'55992191354','1963-10-08',62,'Casado(a)','3','Não','Santa Maria/rs','https://drive.google.com/uc?export=view&id=1mpGyhgwX8lXiFsCvyJ-DpHW-XRZITPZl','Enfermagem','Ensino Médio Completo','Universidade federal de Santa Maria',NULL,'Não, no momento pausei/parei por um período.','Assistecare home Care, atendimento adomicilio de pacientes, medicações, cuidados de higiene pessoal, acompanhar a o médico,exames de rotina, cuidados de locomoção, passeios a ao ar livre, qdo não estão acamados,cuidados com cadeirantes, alimentação,oral ou gastro, saturação,pressão arterial, enfim todos os cuidados técnico.','Sou técnico enfermagem','Sim','Estágio','https://drive.google.com/open?id=1gYQk_iX_dISJpYxF-kJePdrEWzUKTrCu','https://drive.google.com/open?id=1cget25wEktvDXnmMvlamHU4VXGXoxgPN','Agência de Empregos',NULL,'O salário compatível com minha profissão técnico enfermagem','Sim','Cláudia Venturini Brondani tel: 55 991385362
Kellen Muller tel 55991826541','Técnico enfermagem','Já trabalhei como auxiliar de confeitaria, auxiliar de cozinha,e recepcionista','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-09-17T01:26:00.000Z'::timestamptz),
  ('Daniele Rodrigues da Silva','rodriguesdaniele051@gmail.com',NULL,'55996196905','1994-05-02',31,'Solteiro(a)','2','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1r07Hecq6hXkdVqsaH_8Tbkhb916wDX5Y',NULL,'Ensino Médio Completo',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Comercial Favorita
Cargo:Vendedora
Data: 2014/2015

Casa do gaucho
Cargo:Vendedora
Data:2016/2017

Rita Farias- Residência
Cargo:Empregada Doméstica
Data:2019/2021','Estou cursando tecnico em recursos humanos',NULL,'Comercial, Estágio, Marketing, Engenharia','https://drive.google.com/open?id=1Haqk76yA4pFeXdSmUhaKKyPeNVmHrLon',NULL,'Facebook',NULL,'1500','Sim',NULL,'Comercial','Olá. Me chamo Daniele Rodrigues, tenho 27 anos. Já trabalhei como vendedora e empregada doméstica. Estou em um momento onde procuro novas oportunidades e acredito que posso contribuir  sobre a vaga.   Pois estou me qualificando no curso tecnico em recursos humanos.
Criatividade, solucionar problemas, trabalhar em equipe, ser proativo, fazem parte do meu perfil. Me coloco a disposição para conversarmos pessoalmente.
Att. Daniele','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-09-18T15:30:00.000Z'::timestamptz),
  ('EDIVANE SILVA TRINDADE','edivanesilva314@gmail.com',NULL,'5596668549','1999-06-21',26,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1OVbFhSaRwmqy58zKq_LhTMsKiD1_KTAW',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Supermercado Baklizi  28/01/20 até 19/02/ 2021
Cargo: Operadora de caixa / Empacotadora/ Compras on-line 
Principais atividades: receber e processar pagamentos de diversos meios, responsável também pelo fechamento de caixa;
Embalar produtos, e checar códigos, preços; 
Auxiliar dos demais funcionários.','Tecnologia em Gestão de Turismo- Superior (trancado).
Curso Técnico De Auxiliar administrativo. (Concluído)',NULL,'Comercial','https://drive.google.com/open?id=1XIo7ZZ_02_nOuX4eqIkbRBrV6WlUjmbv',NULL,'Facebook',NULL,'1.350,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-09-18T16:37:00.000Z'::timestamptz),
  ('Aline Rodrigues','aline_ju@outlook.com.br',NULL,'999109841','1986-07-20',39,'União estável','2','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1L1KjlbEV-2_WwNgOJq1V8RN6riqLfpRK','Serviço Social','Ensino Superior Completo','Universidade Federal do Pampa','2017-03-11','Sou formado','Operadora de caixa, Restaurante da Ponte. Abertura e fechamento de caixa e atendimento ao cliente.',NULL,NULL,'Administrativa','https://drive.google.com/open?id=1EWSOjXt9nzSHSJwqDbv68RDfRtyoI3R_',NULL,'Facebook',NULL,'1.200,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho vontade de aprender, disposição, bom relacionamento em equipe. Sou extrovertida, simpática, assídua e comprometida.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-09-22T21:32:00.000Z'::timestamptz),
  ('Wilian Silveira Lima','wnarizlima@gmail.com',NULL,'55992150032','1991-04-11',34,'Casado(a)','1','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=15_uDF_vVNkPKy16UjeCvhyc4u-tSyqy0',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','1. TW transportes São Borja.
 2. Auxiliar administrativo ( realizando diversos trabalhos administrativos como emissão de conhecimentos de transportes, emissão de boletos de cobrança e faturamento).
 3.12/2015 até 5/2018.

 1.Tw Transportes Bento Gonçalves.
2.Auxiliar administrativo ( realizando diversos trabalhos administrativos como emissão de conhecimentos de transportes, emissão de boletos de cobrança e faturamento).
3. 12/2018 até 11/2019

1. Loja Iluminar São Borja
2. Vendedor de materiais elétricos e acessórios( realizando vendas de todos os tipos de materiais elétricos, com metas batidas todo o período trabalhado desde o primeiro mês metas de vendas 40mil por mês).
3. 12/19 até 9/2020',NULL,NULL,'Administrativa, Comercial','https://drive.google.com/open?id=1r32gCoUE1oRez1GXelKL6lvkzxRV3jP6',NULL,'Instagram',NULL,'1500','Sim','1. Fernando Nolibos, (55) 99679-1865 
Gerente Tw Transportes São Borja 
2. Elizandro, ( 54) 99677-7166
Sócio proprietário Tw Transportes Bento Gonçalves','Administrativo','Boa tarde, pessoa extrovertida, querido pelos colegas, amigo. Sempre disponível  um novo conhecimento, souniam pessoa do bem faço o bem pra receber o bem gosto de estar com minha família. Sou caseiro  saio pra jogar. Futebol mas logo volto pra casa. Estar com minha família e estar recarregando as energias, passear, viajar, dar risada ( nós momentos certo lógico )isso tudo me faz muito bem. Sou uma.pessoa curiosa gosto de aprender coisa novas gosto de desafios estou sempre disponível, profissional muito dedicado ao meu trabalho.atencioso e sempre pronto pra ajudar e receber ajuta também.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-09-22T21:37:00.000Z'::timestamptz),
  ('Renata Alves Serpa','ralvesserpa@gmail.com',NULL,'55999764923','1994-06-26',31,'Casado(a)','0','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1v8AXW58XiyCGkrMDM1e6SsrE__hEPYJ8','Tecnico em Contabilidade','Ensino Superior Incompleto','Escola Estadual Técnica Olavo Billac','2016-12-16','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Top 20 
2)Vendas/Atendimento ao Público
3)13/12/2020 à 03/01/2021( temporada de natal)
4) Vendas, organização do estoque, atendimento ao Público.','No memento estou cursando na área da saúde, mas também sou formada em contabilidade, e tenho um afeto imenso pelo curso, pois aprendi muito com o mesmo, e sei que ainda buscarei mais conhecimento em ambas as áreas no qual estudo.','Sim, de Estagio de Auxiliar Administrativo no Ministerio Publico, Curso Profissional de Auxiliar de Administrativo no Senac, Informatica Empresarial, Mini curso de Administração..','Administrativa, Comercial, Estágio, Financeiro','https://drive.google.com/open?id=1-5BzWuNeU45XgrbUkSgQwtwDFc1GlMv7',NULL,'Facebook',NULL,'1000','Não','Suelen Top 20: 55 9153-4720','Quero inscrever-me no banco de talentos da Young!','Prazer, meu nome é Renata, tenho 27 anos de idade, sou casada e não tenho filhos. Estou em busca de uma oportunidade de trabalho, tenho experiência em algumas áreas, caso meu currículo se encaixar em alguma, assim espero, e também tenho muita vontade de aprender e acredito que consiga, afinal conhecimento ainda mais em novas áreas nunca é de mais. Tenho cursos profissionais de informática, administrativo, atendimento ao Público, estágios, experiência com trabalhos voluntários, e ainda atuo na parte voluntária aqui na cidade aonde ajudamos pessoas com cestas Básicas, arrecadando alimentos não perecíveis paras as mesmas, o trabalho é nobre, gentil e cheio de amor a espalhar e dar, tenho muita alegria e orgulho em fazer parte, até os convido para conhecer, o projeto se chama Coração Solidário, tem uma pagina do Grupo da Igreja, se chama Nova Vida Church, lá esta divulgado nosso trabalho e apoio a estas familias, é lindo de se ver. Fora isto, na minha vida particular, faço quitutes para me virar, gerar renda extra e aprender mais, alias uma boa comida, feita com amor e zelo é sempre bem vinda, amo estar com minha família, pedalar, fazer viagens, conhecer lugares novos, estar arrodeada de pessoas do bem e de lugares incríveis! Acho que por ter um coração intenso, me adapte a esta vida maravilhosa, e me adaptaria também a outras mais, afinal, viver é aprender, descobrir, conhecer, e desta forma estou aberta se for contemplada a fazer parte da equipe. Desde já, obrigada pela atenção, desculpe por falar ou escrever de mais! Fico a disposição da vaga, e de qualquer oportunidade. Uma Boa Noite!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-09-23T02:30:00.000Z'::timestamptz),
  ('Bethania de Cássia Gay Klein','bethania.klein@hotmail.com',NULL,'999065321','2000-01-07',26,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1Y3cSuDVq3PtE04D28ecJKfR_cLrWwNzd','Direito','Ensino Superior Incompleto','Cnec santo Ângelo','2022-02-18','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Estágio no escritório de advocacia Rillo e Moreira - atendimento ao público, elaboração de petições e contratos de honorários. 
Estágio no poder judiciário - atendimento ao público, realização de audiências, despachos e sentenças.',NULL,NULL,'Administrativa, Comercial, Financeiro',NULL,NULL,'Facebook',NULL,'2.000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-09-23T12:04:00.000Z'::timestamptz),
  ('Denis Belmonte dos Santos','denisbelmonte@gmail.com',NULL,'55996701204','1990-09-21',35,'Casado(a)','1','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1xr8C2mqs1tBIeNLdj7rT4wNEPI1PKZK4',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Podal Distribuidora, início 01/10/2020. Meu emprego atual. Vendas, prospecção. Atendimento e cadastramento de clientes. Eccomerce e presencial.

Serviço nacional de aprendizagem comercial SENAC- Inicio 02/12/2019 termino 18/06/2020 auxiliar administrativo II, vendedor em soluções corporativas, vendas corporativas para prefeituras e empresas, elaboração de contratos e propostas, execução dos mesmos, prospecção, atendimento, elaboração de cursos personalizados. Aplicações de pesquisa e renovação de contratos.

Topflex Distribuidor de Alimentos 
Início 24/03/2017 término 29/11/2019.
Vendedor e prestador de serviços. Vendedor pronta entrega, venda, entrega, reposição, exposição, merchandising e precificação. Atendimento ao varejo em geral.',NULL,'Cursos de marketing big data, hsm university, marketing digital mídias sociais,  gerenciamento e desenvolvimento de competências.','Administrativa, Comercial, Financeiro, Marketing','https://drive.google.com/open?id=1iNYMUkTdikdDvhLe4I7vcmZWmZTVqQOX',NULL,'Facebook',NULL,'2500','Não','Edemilson 55 99829-2313','Quero inscrever-me no banco de talentos da Young!','Muito dinâmico, extrovertido, de bem com a vida, apreciando bons desafios. Sempre buscando ser resolutivo, trabalho em equipe, gosto de ajudar.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-09-23T12:29:00.000Z'::timestamptz),
  ('Louise Rodrigues Franco','louiserodrigues260@gmail.com',NULL,'996946834','1995-11-22',30,'Casado(a)','2','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1-gFFmv-R2bChErfRJKxCmaB_rZ8bYWpV',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Vendedora autônoma.','Curso: 
Atendente na área da saúde, e farmácia; Presencial
Atendente de farmácia/balconista EAD
Operador de caixa  EAD 
Auxiliar de Creche e Berçarista - Profissionalizante  EAD
Frentista Profissional; Presencial',NULL,'Administrativa, Comercial, Marketing, Novos Negócios','https://drive.google.com/open?id=1ge3c8oC1iMh-f9fFWY9cER-TOBynB_Cn',NULL,'Facebook',NULL,'.','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Busco uma vaga no mercado de trabalho, numa empresa onde eu possa me desenvolver profissionalmente, demonstrar minhas competências e habilidades, técnicas e emocionais.
Em busca de uma oportunidade, me coloco à disposição desta empresa para contribuir com o seu crescimento. 
Obrigada.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-09-23T13:03:00.000Z'::timestamptz),
  ('Helen Assunção','hassuncao111@gmail.com',NULL,'55999392633','2002-01-17',24,'Solteiro(a)','0','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=14rMiprdiN8qifb-Pmptm5Q782lKfmo7v',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Armazém Assunção 
Serviços Gerais
03\\01 até 20/10 
Atuava com vendas e no caixa','Cursando: Técnico em Enfermagem 
Concluído: Operador de caixa
                    Atendente de telemarketing 
                   Atendente de farmácia e drogaria
                    Atendimento ao cliente',NULL,'Comercial, Estágio','https://drive.google.com/open?id=1Zo7e3gYo8lNi3aWYmPo6lv-5sOfAqE8l',NULL,'Agência de Empregos',NULL,'1200.00','Não','Armazém Assunção 
55 34314601','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-09-23T15:09:00.000Z'::timestamptz),
  ('Carina Fontani Morteu','carifmorteu95@gmail.com',NULL,'55997001380','1995-07-02',30,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1mfg6QajyeaE9O5EZxxmUnvE-ZEbuRgex',NULL,'Ensino Médio Completo',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Rogério gás e agua: atendente 1 ano
Crocodilos grilo e lanches: garçonete 1 ano e 8 meses
Free lances em escolas profissionalizante atuando em vendas de cursos','Auxiliar administrativo; informática; cursando técnico em enfermagem',NULL,'Administrativa, Comercial',NULL,NULL,'Facebook',NULL,'1350','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-09-23T15:46:00.000Z'::timestamptz),
  ('Eleonara Ortiz Estivalet','estivaleteleonara@gmail.com',NULL,'55996211609','1996-09-05',29,'Solteiro(a)','1','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1fOcBJhA0TemwRRXqvR8cSegB4nMzOokr','Administração de empresas','Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Procuro oportunidade de primeiro emprego formal...','Tecnicas em Vendas. Administração .Marketing','Administração e Tecnicas em Vendas .','Administrativa, Comercial, Marketing, Novos Negócios',NULL,NULL,'Facebook',NULL,'Á combinar :-)','Sim',NULL,'Qualquer oportunidade que eu possa me encaixar','Procuro oportunidade de trabalho que eu possa me encaixar nas vagas abertas, tenho disponibilidades de horarios e dias e sou disposta a aceitar propostas para me enquadrar em alguma vaga. Sou comunicativa, inteligente e tenho facil aprendizagem ...','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-09-23T17:39:00.000Z'::timestamptz),
  ('Tariane Silva Trindade','tarytrindade29@gmail.com',NULL,'5596249414','2021-12-06',4,'Solteiro(a)','2','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1w6TPmksBY-xX_CsWLngCDGBOdzDRZ_Sm',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Já trabalhei como atende em farmácia,
Lojas mercados padaria ,estou sempre a procura de novas experiências .',NULL,'Tenho cursos','Comercial',NULL,NULL,'Facebook',NULL,'Salário compatível com minha função exercidas','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-09-23T17:51:00.000Z'::timestamptz),
  ('Cintia Correa de Mello','mellocintia18@gmail.com',NULL,'55991307253','2001-08-06',24,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1RE85UlYNYXTY-mxMKEWJ3S7bDK0ZmkBe',NULL,'Ensino Médio Completo','Unipampa',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Empresa:  Cartório da 2 vara cível, do Fórum da comarca de São Borja.
Atividades: Atividades gerais administrativas do setor.
Cargo: Estágio','Estudo Direito, na Universidade Federal do Pampa',NULL,'Administrativa',NULL,NULL,'Facebook',NULL,'1.000.00','Não',NULL,'Estágio','Possuo conhecimento básico em informática, sou formada em Técnico Agropecuária e Graduanda de Direito, sou uma pessoa responsável, organizada, e tenho grande aptidão para aprendizagem e desenvolvimento profissional e meu objetivo é dar avanço na minha carreira profissional, e sempre buscar o melhor e  aprender cada vez mais.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-09-23T20:17:00.000Z'::timestamptz),
  ('Gabriela Munari Nunes','gabrielanunesm17@gmail.com',NULL,'55997028155','1999-05-17',26,'Solteiro(a)','1','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1bUfMYpxW6qOqZnDcKnGA2Wt0SZs54EQO','Administração de empresas','Ensino Médio Completo','Uniasselvi polo São Borja','2025-09-22','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','RGE cpfl de energia s.a 
08/01/2018 até o momento','Cursos de informática',NULL,'Administrativa, Comercial','https://drive.google.com/open?id=1PFsGbvE-V164wKoD3VNGPjwkWxF04xHs',NULL,'Facebook',NULL,'1.200,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Comunicativa, responsável e com muita vontade de trabalhar e agregar na empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-09-24T12:01:00.000Z'::timestamptz),
  ('Marciele duarte stringuini','marcystringuini@gmail.com',NULL,'55991817419','1991-07-31',34,'Solteiro(a)','1','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1u1yqZS2DZ8TnjDbfYYUl2thY9aBKxFk_','Gestao de Servicos juridicos e notariais','Ensino Superior Incompleto','Uniasselvi','2023-12-10','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Camera Agroalimentos
Prefeitura de São borja',NULL,NULL,'Administrativa, Comercial, Estágio, Marketing',NULL,NULL,'Facebook',NULL,'1.200','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-09-24T14:26:00.000Z'::timestamptz),
  ('Muriel Abreu dos Santos','muriel.mury.mm@gmail.com',NULL,'55996077110','1987-10-28',38,'Solteiro(a)','0','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1XK0-rCbvVzKtJku4ybF2dTbtOcFONbvz',NULL,'Ensino Superior Incompleto','UNIDERP','2026-08-13','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Exército brasileiro','Informática',NULL,'Administrativa, Comercial, Estágio, Marketing',NULL,NULL,'Instagram',NULL,'2200','Sim','Evandro bohn','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-09-24T16:21:00.000Z'::timestamptz),
  ('Mariana da Rosa Martins','marianarmartins59@gmail.com',NULL,'55992058534','1999-01-05',27,'Solteiro(a)','0','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1-61jiBRFkF57eWwx2VzapGQG1R2Bvfoo','Administração de empresas','Ensino Médio Completo','Uninter',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Escritório de advocacia e consultório de odontologia, secretaria, atendimento com clientes e pacientes,período de 4 meses,  Volúpia moda intima, vendedora, vendas e serviços gerais,período de 8 meses, SB despachos aduaneiros, auxiliar administrativo, área de importação, período de 1 mês.','Informática básica, e técnico em administração',NULL,'Administrativa, Comercial, Financeiro','https://drive.google.com/open?id=1Gd1-ka8U39rkd5oAPV1KmGgpxY3HFm4d',NULL,'Facebook',NULL,'Não tenho','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-09-25T03:05:00.000Z'::timestamptz),
  ('Eduarda Silva dos Santos','eduardasilva71561@gmail.com',NULL,'51998810789','2003-01-17',23,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1lE-Ya0b1QN-q1cO3mG7VD3JLXIgaSt2X','Administração de empresas','Ensino Superior Incompleto','Uniasselvi','2024-03-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Magna Cosma- Financeiro
Delegacia de Polícia Civil',NULL,NULL,'Administrativa, Estágio, Financeiro','https://drive.google.com/open?id=1My-Rye95vF46HTiNIgdWVZsOkVtFg_bC',NULL,'Indicação',NULL,'1200','Sim',NULL,'Estágio','Sou Eduarda, tenho 18 anos e curso administração. Tenho experiência na área financeira, e possuo muito interessa na mesma. Fiz inglês durante um ano, e hoje em dia posso considerar meu inglês básico.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-09-27T20:20:00.000Z'::timestamptz),
  ('Roberto da Costa Silva','robertocosta.93@hotmail.com',NULL,'980465529','1993-02-14',33,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1mz7Ato6b6I14Ds1DEN4zN_PZ73BT_0du','Cursando Bacharel em Administração','Ensino Superior Incompleto','Universidade do Vale do Rio dos Sinos (unisinos)','2023-08-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1)WMS Supermercados do Brasil Ltda 
2)Aprendiz
3)Período: 09/08/2010 à 20/01/2011
4)Auxiliar Geral

1)ATUAL Serviços Técnicos Especializados Ltda
2)Auxiliar de Qualidade
3)período: 30/10/2012 à 27/01/2013
4)verificar e tirar medidas de peças para mandar para a expedição.

1)Distribuidora e Logística de Alimentos Spitznagel
2)Estagiário em Adminitração
3)Período: 22/11/2014 à 02/04/2015 
4) Entrada e saída de produtos, emissão de notas fiscais, administrar saídas de estoque, auxilio na parte financeira

1)Aldanir Luiz Cattaneo e Cia LTDA (Codema)
2)auxiliar administrativo
3)Período: 03/12/2018 à 23/12/2020
4)atendimento ao publico, vendas, contas a pagar e a receber entra e saída de produtos e emissões de notas fiscais .','Informatica',NULL,'Administrativa, Estágio, Financeiro, Marketing','https://drive.google.com/open?id=1Ryjx7EC4YloHOlevKUmgiS1AO8q4VYKt',NULL,'Indicação',NULL,'R$1.500,00','Sim','Luiz Fernando (51) 999641718 Aldanir Luiz Cattaneo e Cia LTDA (Codema)','Estágio','Sou o Roberto Da Costa Silva, Gosto de praticar exercícios físicos e de leitura nas horas vagas e gosto de estar junto a amigos.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-09-27T21:23:00.000Z'::timestamptz),
  ('Darlene Moraes Chaves','darlenemoraes69@gmail.com',NULL,'55999188414','2003-02-05',23,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1jR6TUe9JQaqZcQRM2NN9nb1i4Ci5tlHd','Técnico em Agropecuária','Ensino Médio Completo','Escola Estadual Técnica Encruzilhada',NULL,'Sou formado','Nenhuma','Curso de Gestão Profissional e Empresarial, curso de Atendente de Farmácia e Drogaria, Curso de Excel 2016 e Excel 2016 avançado e Curso de Informática básica.',NULL,'Administrativa, Estágio, Financeiro, Marketing','https://drive.google.com/open?id=1ehD2uHh3Q04sTRQiQRKdo7c9FEcWxOXK',NULL,'Instagram',NULL,'Um salario R$1.100,00','Sim',NULL,'Estágio','Olá! Meu nome é Darlene Moraes Chaves, tenho 18 anos e estou cursando Técnicas Administrativas no Instituto Mix-São Borja. Sou competitiva mas compreensiva. Tenho facilidade de mecher em computadores e oque não sei não êxito em pedir ajuda.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-09-28T17:05:00.000Z'::timestamptz),
  ('Rosemari Santos do Amaral','rosemariamarall@gmail.com',NULL,'55991024602','1988-08-08',37,'Solteiro(a)','1','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1vw1cFjDJbGvsKfXRBtITTfp9FSgBhd5-','matematica','Ensino Superior Incompleto','instituto federal farroupilha','2022-04-08','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','prefeitura municipal de São Borja/ monitor/2020-2021',NULL,NULL,'Administrativa, Comercial',NULL,NULL,'Facebook',NULL,'compatível com a funcao','Não',NULL,'vendas ou auxiliar administrativo','Gosto de trabalhar, tenho facilidade em aprender e aprecio lidar com pessoas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-09-28T18:00:00.000Z'::timestamptz),
  ('Renan rodrigues','renan-rodrigues89@hotmail.com',NULL,'55999133029','1989-08-28',36,'Casado(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1y30w4Q2QbfseQibGwLX4bONKaDsTAU3m',NULL,'Ensino Médio Completo','Colegio getulio vargas','2009-12-17','Não, no momento pausei/parei por um período.','Agr tintas,vendedor,2 anos de 2009 a 2011
Sapataria radar vendedor atentede e serviços bancarios de 2011 a 2021',NULL,NULL,'Administrativa, Comercial, Financeiro','https://drive.google.com/open?id=1DuUWKuZ7m3G0BKsKHQv9tyOZ_dkc1jNM',NULL,'Facebook',NULL,'Salario comercial','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-09-28T18:32:00.000Z'::timestamptz),
  ('Rafaela Munhoz Vieira','rafaelamunhozvieira@gmail.com',NULL,'55999283340','1982-02-03',44,'Solteiro(a)','2','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1yDW_0kaO_5FlqWUMVbGCDCe_Ov2AaYKP','Gestão em Agronegócio','Ensino Superior Incompleto','Uniasselvi','2022-09-15','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Vigilância sanitária ( Prefeitura municipal de São Borja)   2009 a 2012, Gally Malharia( vendedora interna e externa) 2019 a 2020, Cia dos Bichos( Secretária recepcionista) 2020 a 2021.',NULL,NULL,'Administrativa, Comercial, Novos Negócios',NULL,NULL,'Facebook',NULL,'1600','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-09-28T22:13:00.000Z'::timestamptz),
  ('Alison Vargas Martins','alison.autor@gmail.com',NULL,'55999798071','2001-05-17',24,'União estável','0','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1E3lFGSQW7DDBtOTO__ocHeI7x4IIDh1i',NULL,'Ensino Médio Completo','Colégio estadual de São borja cesb','2020-12-15','Sou formado','Não tenho',NULL,'Atendente de farmácia','Administrativa, Comercial, Marketing, Novos Negócios','https://drive.google.com/open?id=1YVykYvf1u8gpA7AOmqOizEvQLQtWNvM3','https://drive.google.com/open?id=1lrygUuoNZBzWhZPYz7QfK-nIP07szL3Y','Facebook',NULL,'A disposição da empresa','Não',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-09-29T00:30:00.000Z'::timestamptz),
  ('Gisele Martins dos santos','giselemartinsdossantos37@gmail.com',NULL,'55984585396','1996-04-03',29,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1iQwUH340mdGNhymz1idoN9Ouy5shOZdc','Não tenho','Ensino Médio Completo','Escola Arneldo matter','2014-11-21','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Ropel bebidas 
Atendimento ao publico,  operadora de caixa, vendas, 
Período de 60 dias.

E atividade de vendedora autonoma por 5 anos.','Curso de auxiliar administrativo básico com certificado.
Informática básica.
Curso de Frentista.
Atendente de farmácia.
Cursando técnico de enfermagem','Certificado de auxiliar administrativo.','Comercial','https://drive.google.com/open?id=18U1N5c-P-tXqkHIzaeL0UOAdPcMml1z4',NULL,'Facebook',NULL,'Disposta a prosposta de acordo com o serviço ser desempenhado.','Sim',NULL,'Comercial','Sou disposta a contribuir com a empresa com as minhas habilidades de aprender. Ótimo convívio em equipe, 
Trabalho com tudo até de obras ja tenho noção, fui cozinheira , tenho noção de Em fazer planilhas,  tenho domínio com vendas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-09-29T00:43:00.000Z'::timestamptz),
  ('Maria Eduarda Mello Fraga','eduarda.az.mello09@gmail.com',NULL,'55991385325','2002-05-25',23,'Solteiro(a)','1','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1n-i2NvMW5iFWo-wq0Yd89RrihwVMJFa1',NULL,'Ensino Médio Completo','Escola Estadual Getúlio Vargas','2020-12-15','Não, no momento pausei/parei por um período.','Mercado Giloé Boscardin
Cargo: Atendente 
Data: 06/11/2017 a 18/12/2017','Curso de informática básica',NULL,'Comercial','https://drive.google.com/open?id=1BakqF_dkrwjLecpNkpGn1pzj9Y61FZz6',NULL,'Facebook',NULL,'1300','Sim',NULL,'Estágio','Sou uma pessoa muito dedicada ao que faço,sempre dando meu melhor para conseguir melhores resultados. Sou atleta,gosto de um futebol e gosto de passar meus momentos livres com a família.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-01T11:19:00.000Z'::timestamptz),
  ('Juliane Lima de Camargo','juuliane.lc@hotmail.com',NULL,'55996794936','1993-06-14',32,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1wbrvR0njDmLMxe74PbfVmXb0576tMVJP','Administração de empresas','Ensino Superior Completo','Unopar','2020-12-31','Sou formado','Drogaria Mais Econômica S/A; Cargo Operador de Caixa; Março/2012 a Dezembro/2014
Bellevitta Estética; Cargo Secretária (Vaga temporária para cobrir férias); Junho/2015 a Outubro/2015
Pilecco Nobre Alimentos Ltda; Cargo Recepcionista; Outubro/2015 a Julho/2018
Pilecco Nobre Alimentos Ltda; Cargo Auxiliar de escritório sênior; Julho/2018 a Junho/2021
Principais funções na última experiência profissional - Pilecco Nobre
Cadastro de clientes; Análise de crédito e contas a receber; Geração de arquivos para enviar aos bancos; Conciliações bancárias; Comando de instruções bancárias; geração de relatórios de pendências; Liberação de pedidos; Conferência de clientes ativos em redes parceiras; Controle e organização de documentos; Preenchimento de planilhas.','Estou no último semestre do curso Gestão de Recursos Humanos na Unopar.',NULL,'Administrativa, Financeiro','https://drive.google.com/open?id=1F6-ELOSHAXKCIuFLQmnrsVooj2FgfF8s',NULL,'Instagram',NULL,'2.000,00','Não','Bruna França / Joziele Borba - 3421-9000 - RH Pilecco Nobre','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-01T14:34:00.000Z'::timestamptz),
  ('Nadine garcia robalo','nafersomsilva@gmail.com',NULL,'96472323','1999-09-19',26,'Casado(a)','0','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=11cuF8Q8bxdcUqxJC479KM6zVmBhgnph2','Autonomo','Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Comercial favorita vendas, multi 10 caixa',NULL,NULL,'Comercial, Marketing, Novos Negócios',NULL,NULL,'Facebook',NULL,'Normal','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-01T15:36:00.000Z'::timestamptz),
  ('Graziela lezina','grazicorretora@bol.com.br',NULL,'55999582453','1980-09-04',45,'Solteiro(a)','1','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1O-7o4-r4pbV9kGKXuD42XrPBhQYHXZOK',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Corretora imóveis',NULL,NULL,'Comercial','https://drive.google.com/open?id=16mzYRIhXINZ-KQ87LHXhB_9krw4YG581',NULL,'Facebook',NULL,'2500','Sim','Nicola imóveis .nicola veículos .donini corretora seguros','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-01T17:00:00.000Z'::timestamptz),
  ('Natalí Vieira da Silva','dasilvaanatali@gmail.com',NULL,'55996597152','1998-08-19',27,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=141qnIUh5GPNq1B1GkjiXcD0KICDP42rf',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Subway Ijuí, atendente de lanchonete de 06/19 a07/19
Restaurante imigrantes, garçonete de 11/19 a 03/21','Técnicas administrativas e Excel avançado cursando no momento.',NULL,'Administrativa, Comercial','https://drive.google.com/open?id=1Pkya_y7TE1O7FJldAMJI-1BBaMVUJWUL',NULL,'Facebook',NULL,'1300','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-01T18:21:00.000Z'::timestamptz),
  ('Bruna Santos da Rosa','brosa4005@gmail.com',NULL,'55992105381','2001-10-16',24,'Solteiro(a)','1','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=15UoLolHRr8F29Gu-CArJjFINwSI0FV6I',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Não possuo, gostaria muito de uma vaga... Na verdade necessito muito de um emprego...',NULL,NULL,'Comercial',NULL,NULL,'Facebook',NULL,'1200','Sim',NULL,'Comercial','Sou uma estudante a procura de um emprego, na verdade de um primeiro emprego, gostaria muito de conseguir alguma experiência com vocês, estarei disposta a tudo.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-01T20:33:00.000Z'::timestamptz),
  ('Maristane do Carmo Rodrigues','marystane21rodrigues@gmail.com',NULL,'55991691318','1982-01-21',44,'Casado(a)','3','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=12R18zssh6-hIbLdbXfZO8HXMfm8b7WRu',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Última experiência foi de cobradora externo na Marta Ferragem, início 1° de setembro de 2020 e término 13 de junho de 2021, atuando na função de ir até a residência de clientes receber pagamentos.',NULL,NULL,'Administrativa, Arquitetura, Comercial, Engenharia','https://drive.google.com/open?id=1T_OXzHMef1FyCanWwfW6OyDRJiAm95Fo',NULL,'Facebook',NULL,'1,800.00','Sim','Marta, 55 3431-3316, Marta Ferragem.','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-01T21:32:00.000Z'::timestamptz),
  ('Paloma godois cardoso','palomacardozo5@gmail.com',NULL,'55991765837','1994-08-28',31,'Solteiro(a)','1','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1zTpZTwxbw5Natr1XqYUT4WL_p59hcM_Q',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Trabalhei na empresa Sorveteria tropical como auxiliar administrativo de 02/2014 a 05/2019, minha função era de controle de caixa e entrada e saída de mercadorias.','Fiz curso de informática no módulo básico e também fiz curso de Espanhol.',NULL,'Comercial',NULL,NULL,'Facebook',NULL,'2200','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-01T23:21:00.000Z'::timestamptz),
  ('Carina Silva Martins','martinscarina072@gmail.com',NULL,'55991968298','1995-05-29',30,'Morando junto','2','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1r9RMUp2FopQSxoaOkZL8lIsAt3uWhqwt',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','*Loja Xarrô, vendedora, atendimento e organização.2 anos.
*JBS, operador de produção, setor de embalagem.1 ano.
*Loja Requinte Modas, atendimento e organização.9 meses.
*Dieminger Transportes, auxiliar administrativo.1 ano.','Curso auxiliar administrativo, e curso informática básica.',NULL,'Administrativa, Comercial','https://drive.google.com/open?id=1CZHGGcQ4lyfay4iiSLovPqGLvgKmp-HA',NULL,'Facebook',NULL,'A combinar','Não','Joana  55 9643-7220.
Joseane 55 9159-1096','Quero inscrever-me no banco de talentos da Young!','Procuro crescimento profissional, não tenho tantos conhecimentos, mas estou me esforçando pra isso, sou dedicada com o que me proponho a fazer.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-02T00:39:00.000Z'::timestamptz),
  ('Lorraine silva ariju','arijulorraine@gmail.com',NULL,'55996950587','1998-03-19',27,'Solteiro(a)','0','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1n6_cHuaQWArKztPgi1ts9QGAr77uDGaK','Administração de empresas','Ensino Médio Completo','Senac',NULL,'Não, no momento pausei/parei por um período.','Fui Jovem Aprendiz no Engenho São José, fui recepcionista do escritório no ano de 2017 à 2018. Fazia atendimentos aos clientes no balcão, preenchia notas fiscais e atendia telefone.','Cuso na área de administração(Jovem Aprendiz Senac): auxiliar administrativo, assistente pessoal e recepcionista. Curso de atendente de salão de beleza(Instituto Mix).','Curso na area de administracao e atendente de São de Beleza','Administrativa, Estágio',NULL,NULL,'Instagram',NULL,'1.300','Não',NULL,'Comercial','Ajudo na organização de festas de crianças do meu bairro, em datas comemorativas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-02T02:44:00.000Z'::timestamptz),
  ('Cristiele Mulassani Quaresma','mulassanic@gmail.com',NULL,'55984134518','1993-04-17',32,'Solteiro(a)','1','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1ymlnYPhpYRreWr6iGWpcN7UuTTgYpzaK','Pedagogia','Ensino Superior Incompleto','Anhanguera','2024-02-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Panvel farmácias
01/10/2018 a 11/12/2019
Atendimento,vendas, caixa e reposição de loja

Luiza bijoux
13/09/2015 a 13/03/2016
Vendas reposição de loja','Atendimento ao cliente, marketing, atendente de farmácia',NULL,'Administrativa, Comercial','https://drive.google.com/open?id=1bMHwA1yHl2S9-GasZ16vHnGLzNLsnPdi',NULL,'Facebook',NULL,'1.350','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-02T02:48:00.000Z'::timestamptz),
  ('Graciele Medeiros Meireles','gracielemedeiros.18@gmail.com',NULL,'055992025383','2021-02-22',4,'União estável','0','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1zMz_Dcs7_64dxfMNatBLhmmMN8s5GmkO','Ciências Contábeis','Ensino Superior Incompleto','Universidade cruzeiro do sul','2021-10-02','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Primeiro emprego','Técnico de contabilidade',NULL,'Administrativa, Financeiro','https://drive.google.com/open?id=1-d5W2Cr_-RTfv5afEWIS9hi3KP0lMFpS',NULL,'Facebook',NULL,'O que a empresa disponibilizar.','Sim',NULL,'Estágio',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-02T03:10:00.000Z'::timestamptz),
  ('Cristiele Mulassani Quaresma','mulassanic@gmail.com',NULL,'55984134518','1993-04-17',32,'Solteiro(a)','1','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1sdtZIv2UkMIguDV5AaGPrRHcyhPoHMd-','Pedagogia','Ensino Superior Incompleto','Anhanguera','2021-10-02','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Panvel farmácia- Assistente de atendimento
01/10/2018 a 11/12/2019
Atendimento, vendas, caixa e reposição de loja

Real center - Atendente
05/06/2017 a 01/01/2018
Atendimento, vendas e reposição de loja

Luiza bijoux - Vendedora
15/09/2015 a 11/03/2016
Vendas e reposição de loja','Atendimento ao cliente
Marketing
Atendente de farmácia',NULL,'Administrativa, Comercial','https://drive.google.com/open?id=1lkMgiV4bli0Ngsa50SczesH_6ZGboiek',NULL,'Facebook',NULL,'1,35','Não',NULL,'Comercial','Quero voltar ao mercado de trabalho,sou comunicativa, simpática e  tenho muita vontade de aprender, gosto de desafios e quero me desenvolver profissionalmente .','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-02T03:20:00.000Z'::timestamptz),
  ('Stefani Escobar Constâncio','stefaniescobarconstancio@gmail.com',NULL,'55991875655','1999-01-06',27,'União estável','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1Mf12hhbqvm6lU_rOpaJhto-heIXc_wi_','Pedagogia','Ensino Superior Incompleto','Anhanguera Educacional','2024-12-12','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1)Chopp in House São Borja; 2)Garçonete; 3)20/06/2021 à 20/12/2021; 4) Trabalho em equipe. Experiência em atendimento ao cliente.  Disponibilidade para aprender e vontade de trabalhar.','Curso de informática 
Aux. Escritório 
Operador de caixa','Curso de Gestão Empresarial','Administrativa, Comercial, Licenciamentos, Marketing','https://drive.google.com/open?id=1arwZl67wgMtkVru3bNFjh1inlQXXc0RB',NULL,'Facebook',NULL,'R$1.100','Não','Chopp In House São Borja RS','Na vaga que a empresa tiver disponível.','Curso de maquiagem profissional,  gosto de aprender e trabalhar em equipe.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-02T09:57:00.000Z'::timestamptz),
  ('Tatiane Belmonte Rodrigues','belmonterodrigues04@gmail.com',NULL,'55991377898','1992-12-04',33,'Solteiro(a)','2','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1M4hE8AWOcknIIqMuH3GcFa42FGS7lvnD',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Histórico Profissional       
                                  
> MH Moda Íntima   - vendedora 

• 16/08/2021 à 16/09/2021
•>atendimento ao cliente, vendas no atacado e varejo ,captação de clientes novos .



Crefisa 
S/A- Promotora de Vendas                                                São Borja
. Entrega de meta mensal, vendas de produtos captação de novos clientes.
Setembro de 2019 á Março de 2020.

Vale Canoas Comercio De Combustíveis Ltda.
Operador de Caixa                                                                  Canoas
. Recebimentos de pagamentos de notas, boletos e processamento de transações.
. Trabalho em conjunto com os caixas para resolver problemas e reclamações de clientes
. Manter a área dos caixas limpa e organizada.
Março de 2015 á Maio de 2017.

Unisuper Rede União Gaúcha de Supermercados Ltda.    
Atendente Comercial/Fiscal de Caixa                                  Canoas
. Revisão e acerto das diferenças entre as informações contábeis e a gaveta do caixa, examinado as transações a serem resolvidas.
. Monitoramento dos sistemas de caixa de autoatendimento e auxilio ou intervenção quando necessário.
Janeiro de 2014 á Junho de 2014.

WMS Supermercados do Brasil.
Operador de Caixa                                                                 Canoas
. Trabalho em conjunto com o caixa para resolver problemas e reclamações dos clientes
. Recebimento de pagamentos de contas, boletos, cheques e cartões para processar transações.',NULL,NULL,'Comercial',NULL,NULL,'Facebook',NULL,'1.400,00','Sim','Histórico Profissional       
                                  
> MH Moda Íntima   - vendedora 

• 16/08/2021 à 16/09/2021
•>atendimento ao cliente, vendas no atacado e varejo ,captação de clientes novos .



Crefisa 
S/A- Promotora de Vendas                                                São Borja
. Entrega de meta mensal, vendas de produtos captação de novos clientes.
Setembro de 2019 á Março de 2020.

Vale Canoas Comercio De Combustíveis Ltda.
Operador de Caixa                                                                  Canoas
. Recebimentos de pagamentos de notas, boletos e processamento de transações.
. Trabalho em conjunto com os caixas para resolver problemas e reclamações de clientes
. Manter a área dos caixas limpa e organizada.
Março de 2015 á Maio de 2017.

Unisuper Rede União Gaúcha de Supermercados Ltda.    
Atendente Comercial/Fiscal de Caixa                                  Canoas
. Revisão e acerto das diferenças entre as informações contábeis e a gaveta do caixa, examinado as transações a serem resolvidas.
. Monitoramento dos sistemas de caixa de autoatendimento e auxilio ou intervenção quando necessário.
Janeiro de 2014 á Junho de 2014.

WMS Supermercados do Brasil.
Operador de Caixa                                                                 Canoas
. Trabalho em conjunto com o caixa para resolver problemas e reclamações dos clientes
. Recebimento de pagamentos de contas, boletos, cheques e cartões para processar transações.','Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-02T10:07:00.000Z'::timestamptz),
  ('Bianca Lino pinto','biancalino70@gmail.com',NULL,'55991545842','2001-01-31',25,'Solteiro(a)','0','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1HPt66prspIKyFKZl2KEgBiPRJ1HO6FxM','Administração de empresas','Ensino Superior Incompleto','Uniasselvi','2025-06-24','Não, no momento pausei/parei por um período.','1) requinte modas 2)vendedora 3) 11/11/2019 são 15/02/2021, aprendi a atender e me relacionar com o público, aprendi muita coisa nesse período principalmente sobre vendas 
 1) Espaço santé 2) secretaria 3)26/04/2021 sai 13/08/2021, aprendi mais um pouco atender o público algumas demandas da clínica parte financeira também.','Informática básica',NULL,'Administrativa, Comercial, Financeiro','https://drive.google.com/open?id=1tSp50zGP7WAa9xvagiICkgq46yzfsgEU',NULL,'Instagram',NULL,'Não tenho uma expectativa, quero uma oportunidade de fazer a mudança dentro da empresa e assim receber um salário que mereço conforme minha função!','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Bom, eu estou 100% disposta a dar meu máximo para uma oportunidade de emprego, sou pontual tenho disponibilidade de horário e me relaciono muito bem com meu colegas de trabalho, quero aprender casa vez mais, quero ajudar a empresa no crescimento sempre, comecei um curso de técnico de administração também, junto dele vou fazer gestão de pessoas, gestão de compras, gestão financeira, matemática empresarial, liderança oratória e outras demais funções tudo para me ajudar no meu currículo e ter um diferencial','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-02T17:43:00.000Z'::timestamptz),
  ('Luana de Souza Gomes','lnsouzagomes@gmail.com',NULL,'55997046201','1993-04-04',32,'Solteiro(a)','2','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1D0HGc2g3iygaYsREVqIo7guP_H1cxYfs','TEC em administração','Ensino Médio Completo','Instituto Mix',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Emprego Magazine Luiza: cargo vendedora início outubro de 2019 a fevereiro de 2020 
Caçula pizzas: cargo garçonete março de  2018 a outubro de  2019
Cooperativa Sicredi RS cargo auxiliar administrativo março de 2012 a dezembro de 2012',NULL,NULL,'Administrativa, Comercial',NULL,NULL,'Facebook',NULL,'1500','Não',NULL,'Área de administração',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-02T18:59:00.000Z'::timestamptz),
  ('Giane Weber Nascimento','gweber1512@gmail.com',NULL,'55984569024','2021-12-15',4,'Casado(a)','1','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=17VKUwV3VnoBHKpo9Rzg-NXgaK7v5aQpP',NULL,'Ensino Médio Completo','SEG','2023-12-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Escritório de Contabilidade Contamil - auxiliar de contabilidade.
Cacau Show - vendedora e Caixa
Parati S/A promotora de vendas
Crediagora - auxiliar administrativa e vendedora','Cursando Técnico em Radiologia.','Não','Administrativa, Comercial, Novos Negócios, Engenharia',NULL,NULL,'Instagram',NULL,'A combinar','Não','CrediAgora - Mateus gerente 3430-3646','Preciso trabalhar, estou disposta a qualquer vaga. Tenho interesse e responsabilidade em exercer com muita dedicação e competência.','Então. 
Preciso trabalhar, e estou disposta a qualquer vaga disponível, sou competente e esforçada em aprender o que for necessário. Promete dedicação e profissionalismo em qualquer setor que me for dado a oportunidade.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-03T17:38:00.000Z'::timestamptz),
  ('Natali Benvegnu Galvao','naty.galvao0607@gmail.com',NULL,'55991910807','2002-02-06',24,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1m6WpybIAAea8TicLBBpiW_f7MGaCJi5K','Ciências Contábeis','Ensino Superior Incompleto','Campus da Ahanguera- São Borja','2025-11-25','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Banco do Brasil- atuei como estágiaria
Data de início: 16/01/2019 até 16/01/2021
Cumpria com atividades como, abertura de malotes, atendimento ao público em caixas eletrônicos, manipulava documentos de crédito imobiliário, domínio do sistema, idas a fórum e bancos distintos, arquivava documentos… 

Loja Monjuá- Operador de caixa 
Data de início 28/01/2021 até o momento.
Desenvolvo atividades de cobrança, conferência, depósitos, venda, telefonia, conteúdos para internet, crédito pessoal, garantia de veículo/plano safra/plano leite e garantia de imóvel…','Escola de línguas Fisk- Espanhol Completo',NULL,'Administrativa, Comercial, Estágio, Financeiro','https://drive.google.com/open?id=1efcC1aYS_YBfSlGuHk5sjaPxP3xpZMgI',NULL,'Instagram',NULL,'1500','Sim','Banco do Brasil- Gerente de relacionamento Flavio Rodrigues (55)996796375 

Loja Monjuá- Gerente Fernando Júnior (54)996169002','Quero inscrever-me no banco de talentos da Young!','Sou comunicativa, gosto do público e de ajudá-lo, eu adoro ter objetivos e metas a cumprir, pois é gratificante conseguir alcança-los, gosto muito de me desafiar e ver até onde posso ir. 
Por ser bem extrovertida já ter trabalhado nos lugares citados e ser ligada nas redes conheço bastante pessoas…

Faço artes marciais Taekwondo desde criança, o que ajudou em meu desenvolvimento, como ter disciplina, cumprir com horários, respeito…

Adoraria ter uma oportunidade diferente e novos desafios estou sempre em busca de aprender algo novo. Espero dividir isso com vocês. Obrigada .','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-04T10:27:00.000Z'::timestamptz),
  ('Tariane Silva Trindade','tarytrindade29@gmail.com',NULL,'5596249414','2021-12-06',4,'Solteiro(a)','2','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1zsu4TZwcS3MkvDdf8u2jLziD7ilTOb15',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Já trabalhei em farmácia : como balconista
Mercado: como serviço gerais 
Padaria como caixa e atendente','Tenho cursos profissionalizante
*Informática
*Atendente comercial',NULL,'Comercial','https://drive.google.com/open?id=1EnsPXi7ODmo74WUTCp2bzpzx8YB0vzMe',NULL,'Facebook',NULL,'De acordo com minhas funções desenvolvidas','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou bastante pró ativa , estou sempre buscando aprender nossa coisas , sou bastante comunicativa , tenho facilidade em trabalhar em equipe,','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-05T01:59:00.000Z'::timestamptz),
  ('Maurem Silveira Lima','mauremlima67767@gmail.com',NULL,'55991716557','2002-11-22',23,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1kUT_UUFJayBSn_7GMxiBR8DQ6Q3veYey',NULL,'Ensino Médio Completo','Instituto Estadual Arneldo Matter','2021-12-20','Não, no momento pausei/parei por um período.','Liga Feminina de Combate ao Câncer.
Secretária Executiva.
12/2019 - 09/2021.
Atendimento ao Público, Administrativo em Geral, Gestão Organizacional, Recebimentos e Repassos.','Assistente Administrativo
Gestão Pessoal e Profissional','Assistente Administrativa','Administrativa, Comercial','https://drive.google.com/open?id=1DbiGEk01uO9lgcRCmFmhaww2_Et6o_Qy',NULL,'Facebook',NULL,'R$1.250,00','Sim','Venilde - 55 3431-1194 - Liga Feminina de Combate ao Câncer
Eduardo - 55 3430-1466 - Assessoria Contábil Koltermann','Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa tranquila e com extrema facilidade em me comunicar, atender outras pessoas e escrever. Sempre disposta a aprender coisas novas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-05T11:36:00.000Z'::timestamptz),
  ('Carina Fontani Morteu','carifmorteu95@gmail.com',NULL,'55997001380','1995-07-02',30,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1bvW5NhdM06u-X6mOsO08ggh0I6gjw_Km',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Rogério gás e água: atendente; período: 1 ano
Crocodillos grill e lanches: garçonete e caixa; período: 1 ano 8 meses.
Milk shake up: atendente; periodo: 2 meses.','Auxiliar administrativo; informática completa',NULL,'Administrativa, Comercial, Financeiro','https://drive.google.com/open?id=1ux3IhgohNF1boB9o5MsAcAAT7YuY3drD',NULL,'Facebook',NULL,'1.300,00','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-05T13:48:00.000Z'::timestamptz)
;
