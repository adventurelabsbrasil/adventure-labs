-- Parte 2 de 9 (até 300 linhas por arquivo para caber no SQL Editor)
-- Cole no SQL Editor do Supabase → Run. Depois execute a próxima parte.
-- Tabela permite múltiplos envios por email (cada linha = um envio com timestamp).

INSERT INTO young_talents.candidates (full_name, email, email_secondary, phone, birth_date, age, marital_status, children_count, has_license, city, photo_url, education, schooling_level, institution, graduation_date, is_studying, experience, courses, certifications, interest_areas, cv_url, portfolio_url, source, referral, salary_expectation, can_relocate, professional_references, type_of_app, free_field, status, tags, origin, created_by, original_timestamp)
VALUES
  ('Viviara Viana Rebelo','rebeloviviara@gmail.com',NULL,'55991378764','1991-10-04',34,'União estável','1','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1GD3ZBtW38w_eiQeoieQeZCFTohC9ib3z','Administração de empresas','Ensino Superior Incompleto','Uniasselvi','2022-12-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Hospital Ivan Goulart
Cargo: Administração/Recepção
Período: 02/05/2010 à 09/04/2019
Principais atividades: Atendimento ao público, negociação e recebimento de valores, emissão de nota fiscal, atendimento de telefone, auxílio administrativo em atividades rotineiras e no controle de gestão financeira, experiência em auditoria e faturamento, administração, organização de arquivos, gerência de informações, revisão de documentos entre outras atividades.

Mecânica Comercial Auto Agrícola Ltda.
Cargo: Recepcionista/Estágio Sindilojas.
Período: 10/03/20 até 15/03/21.
Principais atividades: Atendimento ao público, atendimento de telefone, auxilio administrativo em atividades rotineiras, organização de arquivos, gerência de informações, revisão de documentos entre outras atividades.


Farmácia Panvel
Cargo: Assistente de atendimento.
Período: 04/2021 até o momento.
Principais atividades: Atendimento ao cliente, organização da loja, fechamento de vendas, abordagem de novos clientes e design de vitrines, operadora de caixa.',NULL,'Curso de Informática: WORD, WINDOWS XP, EXCEL, INTERNET, MULTIMIDIA, DIGITAÇÃO (Star Five 2005). Atendimento ao Cliente (Prime Cursos do Brasil, conclusão 2018).  Assistente Administrativo (Prime Cursos do Brasil, conclusão 2019). Gestão Financeira (Centro Universitário Leonardo da Vinci, conclusão 2019). Comércio Exterior (Prime Cursos do Brasil, conclusão 2020). Administração do tempo no trabalho (Prime Cursos do Brasil, conclusão 2020). Rotina de Pessoal na prática (Centro Universitário Leonardo da Vinci, conclusão 2020). Contabilidade Básica (Prime Cursos do Brasil, conclusão 2020). Curso sobre Prevenção de Acidentes de Trabalho para Componentes CIPA, NR 05;  Curso de Humanização Hospitalar; Curso a Arte e a Técnica de Negociar com Excelência Serviços e Produtos; Experiência em digitação de documentos e afins','Administrativa, Comercial, Financeiro',NULL,NULL,'Facebook',NULL,'1450','Não','Luisa Gattiboni: 55.99627-9505
Lissandro Leães: 55.99703-9717','Quero inscrever-me no banco de talentos da Young!','Me chamo Viviara Rebelo tenho 30 anos, sou estudante do 6° semestre de administração de empresas na Universidade Uniasselvi, trabalho no ramo administrativo a mais de 10 anos, onde desenvolvi diversas funções administrativas, como auditoria de contas, atendimento ao público, vendas de pacotes, serviços de tesouraria, entre outras funções desafiadoras todos os dias, também tenho experiência em vendas e negociações.
Sou uma pessoa super de bem com a vida, gosto de viver a vida, amo cozinha para minha família e amigos, gosto de conversar e aprender novas coisas, estou sempre em busca de evolução pessoal e profissional...','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-05T17:06:00.000Z'::timestamptz),
  ('FERNANDO OLIVEIRA DA SILVA','fernandooliveiradasilva2017@gmail.com',NULL,'55999843452','1997-09-18',28,'Solteiro(a)','0','Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1qS9XEmXagW63YUxr4vDii1syLq_o_2q6',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Condominio Residencial Montecarlo
Jardineiro
03/02/2020
Trabalho com a área de jardinagem, manutenção do condomínio e afins',NULL,NULL,'Arquitetura, Engenharia','https://drive.google.com/open?id=1y1MK57AR3Gd12iO9efzFJFg3as1-HCnC',NULL,'Indicação',NULL,'O salário base','Sim',NULL,'Uma vaga para o condominio montecarlo','tenho habilidades em pacotes office, manutenção de computadores, area de redes e suporte técnico, dei aulas de informática básica na Escola Arthur Hormain em Alegrete RS','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-05T19:36:00.000Z'::timestamptz),
  ('Patricia de Paula Rodrigues ledesma','patyledesma99@gmail.com',NULL,'55984350159','1990-04-23',35,'Casado(a)','2','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=15jW_VqqeokVwjnDL_4fE3CsTO9k1SQsc',NULL,'Ensino Médio Completo',NULL,NULL,'Sou formado','Operadora de caixa 
Central de carnes da Borges
De 2019 a 2020
Auxiliar de cozinha
Caçula pizza
De 2017 a 2019',NULL,NULL,'Engenharia',NULL,NULL,'Facebook',NULL,'De acordo com o cargo','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-05T23:38:00.000Z'::timestamptz),
  ('Claudiane Fernanda Maciel Teodoro','claudianemaciel24@gmail.com',NULL,'51996576275','2001-02-14',25,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=12_7jN5MB31JEOAFSuU_TRFMZeNU2DXA9','Ciências Contábeis','Ensino Superior Incompleto','Centro Universitário Leonardo da Vinci','2024-07-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Sabores da Matriz
2)Operador de Caixa
3)10/2019 a 03/2020
4)Operar o caixa e realizar pedidos via telefone e presencialmente.

1)Sabores da Matriz
2)Auxiliar de Escritório 
3)03/2021 a 07/2021
4) Auxiliar no caixa e fechamento do mesmo, recepcionar e atender.','Curso de Assistente Administrativo, Curso de Informática e Curso de Marketing.',NULL,'Administrativa, Financeiro, Marketing',NULL,NULL,'Indicação',NULL,'A combinar','Sim','Conrado: (51) 99967-7095','Quero inscrever-me no banco de talentos da Young!','Atualmente, acadêmica no terceiro semestre de Bacharelado em Ciências Contábeis, tenho uma boa comunicatividade e facilidade em aprender. Possuo experiências com recepção, operação de caixa, impressão de notas ficais com CPF e CNPJ, atendimento ao público de forma presencial e através de mídias, como telefone e redes sociais.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-06T14:56:00.000Z'::timestamptz),
  ('Gabriela Rodrigues','gabiirodriguesp@gmail.com',NULL,'55996854437','1997-04-15',28,'Solteiro(a)','0','Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1FSOJBYKRallFR0s4jofqedkOSoaewYeW','Licenciatura em química','Ensino Superior Incompleto','Instituto de ciências e tecnologia campus Alegrete','2022-01-10','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Concretos Ritt Ltda
2 ) Estágio
3) 26 de Outubro de 2020 há 27 de Janeiro de 2021

1)Super Tratores Ltda
2) Jovem aprendiz
3) 15 de abril de 2015 há 30 de maio 2016','Estudante de Contabilidade - nível técnico escola Emílio Zuneda',NULL,'Estágio',NULL,NULL,'Instagram',NULL,'O salário proporcional a categoria e função','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-07T13:27:00.000Z'::timestamptz),
  ('Geovana da Rosa Pereira','rosage765@gmail.com',NULL,'51999924496','1993-09-15',32,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1_L87-3BNVMkoSoFLbIV7XwRdTTvTExwt',NULL,'Ensino Superior Incompleto','UNIASSELVI','2025-09-05','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Prefeitura de Glorinha trabalhei como estagiaria nas escolas','Estou cursando Bacharelado em Ciências Contábeis, trabalhei como secretária, rotinas administrativas e prospecção. Gosto de trabalhar em equipe, prestativa, Disponibilidade de horário,  sempre busco realizar cursos para o aperfeiçoamento como atendimento ao cliente, demonstrações contábeis, matemática financeira entre outras.','Não','Administrativa, Estágio, Financeiro, Marketing','https://drive.google.com/open?id=1RThpL3XAT10H5mkTw-NV9JRqF5St5vWb',NULL,'Facebook',NULL,'1.300','Sim',NULL,'Estágio Financeiro','Gosto de fazer cursos
Conhecer lugares novos','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-07T16:55:00.000Z'::timestamptz),
  ('Guilherme Antunes Bittencourt','guilhermeantunes23@gmail.com',NULL,'51991884867','1996-04-23',29,'Solteiro(a)','0','Sim','Canoas/RS','https://drive.google.com/uc?export=view&id=1ZbTS4pzM3xqEtxfVmN0KJafFHAKS5sKj','Engenharia Civil','Ensino Superior Incompleto','Unilasalle Canoas','2023-12-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Currículo em anexo',NULL,NULL,'Marketing, Novos Negócios, Engenharia','https://drive.google.com/open?id=1zD-RLA4EIlxdNjXdJFxqXIjM3BrEhpvX','https://drive.google.com/open?id=1sGUhJZvtgmkOGCjYiX08Lo1GZiLSFsL7','Instagram',NULL,'R$2.000,00','Sim',NULL,'Estágio Engenharia e/ou Arquitetura',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-07T21:24:00.000Z'::timestamptz),
  ('Leonardo Silveira Flores','leonardosilveira37@gmail.com',NULL,'51995064367','2002-09-26',23,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1eQZdIkau7S4TWtNdCezZIk5d3vrVl0gF',NULL,'Ensino Superior Incompleto','Universidade Federal do Rio Grande - FURG',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Cooperja - Auxiliar Administrativo - 01/04/2018 até 01/04/2020 - atendimento ao público; envio de emails e telefonemas; lançamento de notas; arquivamento de documentos; lançamento de dados em planilhas; organização do mural da empresa; entrega de documentos em outros setores. 

Prefeitura Municipal de Santo Antônio da Patrulha - Estagiário (almoxarifado/patrimônio) - 25/09/2020 até 30/11/2020 - atendimento ao público; entrega e recebimento de materiais; organização do almoxarifado; lançamento de entrada e saída no sistema; entrega de documentos em outros setores.

Live160 (clínica de especialidades médicas e odontológicas) - Auxiliar de saúde bucal - 01/12/2020 até 27/11/2021 - auxílio nos procedimentos odontológicos (cirúrgicos e não cirúrgicos); higienização do consultório e material; esterilização do material; organização do consultório.',NULL,NULL,'Administrativa, Estágio, Financeiro','https://drive.google.com/open?id=1du22FA4YH7_e-i9rcea9_2Y1iadyb1O5',NULL,'Instagram',NULL,'800','Não',NULL,'Estágio Financeiro','Procuro começar a cursar algumas coisas voltadas para área administrativa, melhorando meu conhecimento em ferramentas como por exemplo o pacote Word e informática no geral, possuo um curso de inglês básico, mas tenho um bom entendimento e vocabulário, tenho rápido aprendizado e consigo trabalhar bem sob pressão.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-07T21:58:00.000Z'::timestamptz),
  ('Mariana Pereira Lemos','lemospmariana@gmail.com',NULL,'51999185912','2002-08-01',23,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Kvb0NI_oiOMPDswIruMe4oErPzhqCukb','Administração de empresas','Ensino Superior Incompleto','Uniasselvi',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Drebes & Cia LTDA 
Jovem Aprendiz 
07/12/2018 - 06/04/2020
Auxiliar de Crediario (cumprindo as rotinas administrativas). 

Supersam Supermercados Eireli
Operadora de caixa 
15/12/2020 - Até o momento. 
Atendimento ao público.',NULL,NULL,'Administrativa, Comercial, Marketing','https://drive.google.com/open?id=1cAv1oBI8eiO-HWMSu1HwxT8XS5FxiWR4',NULL,'Instagram',NULL,'1.500','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-07T23:48:00.000Z'::timestamptz),
  ('Danielle Fraga Soares','daniellefragasoares2@gmail.com',NULL,'51995499994','2001-03-13',24,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1x8_QLhhOLIhzU7esqdyO84nQEs7s7bHZ','Administração de empresas','Ensino Médio Completo','Universidade dá Marília - UNIMAR','2023-09-03','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','VENDEDORA
Blake Store | Santo Antônio da Patrulha, RS- (09/09/2019 á 22/09/2021)
•Criação e condução de promoções de vendas e estratégias de divulgação para aumentar os lucros e atrair novos clientes.
• Desenvolvimento e manutenção de relacionamentos duradouros com os clientes por meio de um atendimento cuidadoso, resolução de problemas e habilidades de vendas.
• Gestão das estratégias de marketing digital do cliente a fim de atender a suas metas e objetivos.

AUXILIAR ADMINISTRATIVO
Alice Salazar | Santo Antônio da Patrulha, RS  (05/03/2019 a 30/07/2019) 
• Atendimento ao cliente de maneira cordial, respondendo a perguntas gerais, verificando as informações.
• Processamento de emissão de notas e boletos.
• Gerenciamento em economia de custos mensais de todos os
pedidos reduzindo recursos gastos.
• Gestão de operações da caixa registradora, incluindo o processamento
de pagamentos e emissão de contratos e nota fiscal.','TECNOLOGIA EM GESTÃO COMERCIAL
GRADUAÇÃO | CURSANDO ATUALMENTE Universidade de Marília- UNIMAR

Curso de Administração, Informática - Mundo Office

Empreendedorismo- SEBRAE','Administração, Informática e marketing.','Administrativa, Estágio, Novos Negócios','https://drive.google.com/open?id=1Gp3DV0HikJE226zvV-2I-_l-nknBOScf',NULL,'Instagram',NULL,'1.100','Sim','Mundo Office - 3662-5041
Blake Store- 51 99663252','Estágio Administrativo','Com conhecimentos qua adquiri ao longo minha jornada profissional, junto a eles aprendi muito com minhas experiências, até mesmo com a venda que foi um passo muito alto na minha vida, pois através dela vi a necessidade que o ser humano tem, em adquirir um produto, até mesmo sem a necessidade dele, mas através de diálogos e informações e propostas faz com que ele veja a real necessidade do produto que a vendi, neste meio também criei uma paixão por administração, posso dizer que hoje estou me qualificando em duas graduações que sempre foram dos meus sonhos, pois em todas experiências que tive associada a elas, sempre vi como forma de evolução e aprendizagem e não só um trabalho cansativo, oque torna a vida mais leve e acredito que é isto devemos levar desta vida. Sempre admirei está empresa, através dos seus trabalhos e dedicação que a equipe Yong tem em fazer a empresa crescer, e por isso quero fazer parte dela, contando com toda minha experiência profissional.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-07T23:53:00.000Z'::timestamptz),
  ('Jackelline Santos Ferreira','jackellineferreira23@gmail.com',NULL,'51991772546','2002-06-23',23,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1d1H9zNcj_yY1P9eUDvUX3k6teyFxQ3QW','Ciências Contábeis','Ensino Superior Incompleto','Uniasselvi','2024-12-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Supermercado Nacional- jovem aprendiz- 2018 até 2020
Xis do Pc- chapista- 2018 até 2021
Ateliê Corrêa- 2020 até o momento','Curso de informática, curso de inglês',NULL,'Administrativa, Estágio, Financeiro',NULL,NULL,'Instagram',NULL,'1.200','Sim',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-08T14:59:00.000Z'::timestamptz),
  ('Davi Machado','davibass12@gmail.com',NULL,'51992379773','1991-03-15',34,'Casado(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1NsiL7PWFpkaLHeCBHu4d2Me7hxG9c4be','Administração de empresas','Ensino Superior Incompleto','Fael',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Green Route, Santo Antônio da Patrulha — Auxiliar Geral de
Conservação de Vias
JULHO DE 2020
Prestação de serviços para a CCR Via Sul.( Fabricação de placas de trânsito.)

Líder RH, Santo Antônio da Patrulha — Alimentador de Linha de
Produção
JULHO DE 2019 - MARÇO DE 2020
Operação de robôs de solda ponto e inspeção na montagem de peças automotivas.

Gabisul, Santo Antônio da Patrulha — Promotor de Vendas
JULHO DE 2018 - JUNHO DE 2019
Atendimento aos clientes em praça de vendas com divulgação da marca através da
exposição dos produtos, organização dos layouts,limpeza de gôndolas e
relacionamento com os clientes diretos e indiretos.

Mega Festas, Santo Antônio da Patrulha — Vendedor
JULHO DE 2017 - JUNHO DE 2018
Venda de artigos para festa, decoração, confeitaria, dentre outros…Atendimento ao
público no geral, operação de caixa, lançamento de notas eletrônicas, lançamento
de produtos no sistema, controle de estoque, intermédio entre escritório de
contabilidade e a matriz da empresa sobre espelho de ponto,contracheques e
cadastros individuais dos funcionários.

Cr Die Mentz, Santo Antônio da Patrulha — Vendedor
OUTUBRO DE 2015 - JUNHO DE 2017
Venda de produtos das linhas de eletrodomésticos, móveis, eletrônicos, telefonia,
bazar, ferramentas e confecções.Ofertas e vendas de serviços como diversos cursos
online, proteção financeira e consórcio.

M F Gomes, Santo Antônio da Patrulha — Repositor
SETEMBRO DE 2013 - OUTUBRO DE 2014
Atendimento ao público,exposição dos produtos, controle de validade, temperatura
e precificação das mercadorias.

Deltasul, Santo Antônio da Patrulha — Vendedor
JULHO DE 2012 - SETEMBRO DE 2013
Consultoria e venda de produtos da linha de móveis, eletrodomésticos, estofados,
bazar, ferramentas, informática, eletrônicos e telefonia. Realização de todo o
processo para o fechamento de vendas, entrega de produtos, pós venda e suporte
com assistência técnica.

Masal, Santo Antônio da Patrulha — Auxiliar de Produção
MARÇO DE 2010 - ABRIL DE 2012
Alimentador de linha de produção.',NULL,NULL,'Administrativa, Estágio','https://drive.google.com/open?id=18ZAl1WiLIbgbYQZchVIOQs1M307BzBKX',NULL,'Agência de Empregos',NULL,'1500','Sim',NULL,'Estágio Financeiro','Meu nome é Davi Machado, tenho 30 anos, sou casado, resido no bairro Cidade Alta em Santo Antônio da Patrulha.
Estou no sexto semestre do curso de administração, tenho muito interesse em desenvolver na área administrativa/ financeira de empresas, principalmente no ramo imobiliário e de bem estar.
Aprecio um ambiente limpo e organizado, me sinto realizado quando uma atividade que eu desempenho proporciona um  impacto positivo nas pessoas que me rodeiam.
Neste período da graduação tenho buscado meu aperfeiçoamento com diversos cursos no ramo da administração e empreendedorismo. Posso citar: Fazer Networking, Iniciando um pequeno grande negócio, planejamento de marketing, dentre outros.
Gosto de música, toco alguns instrumentos, sempre que posso ajudo em minha comunidade de fé na área da música.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-08T17:41:00.000Z'::timestamptz),
  ('Joseane Nunes Morgentale','nunesmorgentale@bol.com.br',NULL,'55991492869','1975-01-28',51,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1SYyJW49a5w9Re6a0s_pQp_cnWlVH5MnJ','Administração de empresas','Ensino Superior Completo','Anhanguera','2013-12-27','Sou formado','Empresa: Fertiplanta Coml Agric Ltda
Período: Maio/1993 a Março/1994
Cargo: Aux Escritório
Atividade Desenvolvida: Atendimento ao Público, Controle de Estoque, Telefonista, Contas a Pagar 

Empresa: Luiz Carlos Walczak & Cia Ltda
Período: Outubro/1994 a Fevereiro/1999
                Abril/2001 a Maio/2002
Cargo: Aux Administrativo
Atividade Desenvolvida: Atendimento ao Público, Emissão de Nota fiscal, Contas a Pagar, Fechamento de Caixa, Controle de Estoque, Lançamento de NFs, Pedido de Estoque.

Empresa: Mercovia S A
Período: Maio/1999 a Maio/2000
Cargo: Recepcionista
Atividade Desenvolvida: Atendimento ao Público, Digitação de Documentos de Cargas (manifesto) , Exportação de Cargas, Tirar Cópias (xerox), Guia Turistica

Empresa: Unirio Alberto Kober
Período: Setembro/2000 a Janeiro/2001
Cargo: Secretaria
Atividade Desenvolvida: Atendimento Público, Agendamento de Visitas, Fechamento de Caixa

Empresa: Posto São Mateus Ltda
Período: Maio/2002 a Fevereiro/2003
Cargo: Caixa
Atividade Desenvolvida: Atendimento ao Público, Repositora de Estoque, Fechamento de Caixa, Conferência de Estoque, Frentista

Empresa: Lojas Colombo S.A
Período: Maio/2003 a Novembro/2004
Cargo: Coordenadora Administrativo
Atividade Desenvolvida: Atendimento ao Público, Fechamento de Caixa, Apoio de Vendas, Fechamento de Malotes, Contas a Receber, Conferência de Recebimento de Estoque, Pedido de Estoque

Empresa: S.A Kunrath & Cia Ltda
Período: Maio/2005 a Agosto/2006
Cargo: Aux Administrativo
Atividade Desenvolvida: Atendimento ao Público, Controle de Estoque, Telefonista, Contas a Pagar, Contas a Receber, Lançamento de NFs, Emissão de Nota fiscal

Empresa: Cooperativa Agrícola Imembuy Ltda
Período: Agosto/2006 a Abril/2007
Cargo: Aux Administrativo
Atividade Desenvolvida: Atendimento ao Público, Emissão de Nota fiscal, Controle de Estoque, cobrança, Recebimento de Estoque, Conferência de Estoque, Recebimento de Estoque, Entregar Produtos, Emissão de Nota fiscal, Emissão de Receituário Agronômico

Empresa: Kombate Coml Agric Ltda
Período:Junho/2007 a Março/2015
Cargo: Gerente Operacional
Empresa: Kmasbo Coml Agric Ltda
Período: Março/2015 a Setembro/2016
Cargo: Gerente Operacional
Atividade Desenvolvida: Atendimento ao Público, Emissão de Nota fiscal, Vendas (insumos/fertilizantes), atividades administrativas.

Empresa: Alvorada Sistemas Agrícolas Ltda
Período: Março/2017 a Abril/2019
Cargo: Analista Administrativo
Atividade Desenvolvida: Atendimento pelo Skype, Lançamentos de contratos NCCs, Conferência de lançamento bancário, Faturamento, Emissão de Nota fiscal','Técnico de contabilidade',NULL,'Financeiro, Marketing',NULL,NULL,'Facebook',NULL,'Combinar','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-09T01:32:00.000Z'::timestamptz),
  ('Sérgio Leandro Damas Martins','sergio.martins@rede.ulbra.br',NULL,'51984340874','2024-12-21',1,'Casado(a)','3','Sim','Gravataí/rs','https://drive.google.com/uc?export=view&id=1GCfMATqMHuYi2WrPKFF4n_MmgcwBO9Ww',NULL,'Ensino Superior Incompleto','Ulbra Canoas','2024-12-21','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','-Coca cola/motorista de entregas -minato transporte/motorista-kilig transporte/motorista carreteiro-brasbresstransporte intermodal/motorista de entregas e coleta',NULL,NULL,'Administrativa, Arquitetura, Estágio, Engenharia',NULL,NULL,'Indicação',NULL,'Base da categoria','Sim',NULL,'Estágio Engenharia e/ou Arquitetura',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-09T01:44:00.000Z'::timestamptz),
  ('Cristiele Mulassani Quaresma','mulassanic@gmail.com',NULL,'55984134518','1993-04-17',32,'Solteiro(a)','1','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=15G6yZiQtBuZS_xZNXSJc8htxhJbexHSd','Pedagogia','Ensino Superior Incompleto','ANHANGUERA Educacional','2024-01-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Panvel farmácias
ASSISTENTE de atendimento 
Atendimento ao cliente vendas e caixa
01/10/2018 a 10/12/2019
Real center
Atendente
Vendas e reposição de loja
05/06/2017 a 08/01/2018','Atendimento ao cliente
Marketing
Atendente de farmácia',NULL,'Administrativa, Comercial','https://drive.google.com/open?id=1XyldwXNzcSzkiCUthSC9FeW8S9ibpXfW',NULL,'Facebook',NULL,'1.350.00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-10T14:11:00.000Z'::timestamptz),
  ('Ana Clara Pereira Da Silva','anacpereiradsilva@gmail.com',NULL,'55984558857','1994-11-01',31,'Casado(a)','1','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=11I9Xy8Z1nyz_wbNaa03c0z6yHzF_-2kO',NULL,'Ensino Superior Incompleto',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','-Metal Bus: confecção da parte elétrica dos ônibus, de 22/04/13 à  22/10/13
-Elite artigos militares: Caixa e Vendedora, de 17/03/21 até  o presente momento. Sou responsável pela loja, abertura e fechamento da loja assim como conferência de estoque e caixa.',NULL,NULL,'Administrativa, Marketing',NULL,NULL,'Instagram',NULL,'R$1.500,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-12T00:56:00.000Z'::timestamptz),
  ('Daniel Renan dos Santos','danielrenan@ymail.com',NULL,'51995092080','1998-06-24',27,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1E341VMKWVGOQyK_3JkPHOyhBR0C6-nhf','Administração de empresas','Ensino Superior Incompleto','FACCAT',NULL,'Não, no momento pausei/parei por um período.','Estágio no Banco Banrisul, agência Osório. Início em 2017, término em 2018. Atividades: atendimento ao público, auxílio em caixas eletrônico, atendimento no setor de Pessoa Jurídica, organização de arquivos, entre outras.

Atuo com administração de comércio familiar, desde 2018.',NULL,NULL,'Administrativa, Comercial, Estágio, Financeiro',NULL,NULL,'Instagram',NULL,'1.500','Sim',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-12T04:50:00.000Z'::timestamptz),
  ('Tauana Paz Pereira','pereira.tauana65@gmail.com',NULL,'55991779842','1996-08-05',29,'Solteiro(a)','0','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1Rzme4HxZbPnoHaAXEoUNEWVh1sb0Op15',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Coordenadoria Regional De Educação CRE 35 / secretaria (estagiaria) comecei trabalha no dia 8 de abril de 2016 e fiquei 7 mês ate o outubro quando fecho o contrato. Eu fazia ligação para os demais da empresas, anotava o que me pediam, passava ligação para outras pessoas.',NULL,NULL,'Administrativa, Comercial, Estágio, Financeiro',NULL,NULL,'Agência de Empregos',NULL,'1500','Sim','cordenadoria ( 3431- 0110)','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-13T11:46:00.000Z'::timestamptz),
  ('Gabrielli Rios Martins','gabriellimartins0710@gmail.com',NULL,'55996819603','2003-08-20',22,'Solteiro(a)','0','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1Kjkau8IpuOdy76u4r_yCXAfUE2cftQuF',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Procuro pela primeira experiência','Curso Gestão empresarial
Curso Marketing digital','Gestão empresarial e Marketing digital','Administrativa, Comercial, Novos Negócios, Engenharia','https://drive.google.com/open?id=1aS4B_x_6ECoOLfrAiZQzjOFkToOz4NNV',NULL,'Instagram',NULL,'entre 900 e 2000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou boa em comunicação, fiz diversos cursos, tenho curso de maquiagem, design de sobrancelhas e outros, gosto de trabalhar em equipe e tenho facilidade em aprender.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-13T13:39:00.000Z'::timestamptz),
  ('Laura de Fátima Pereira Machado','laura.louzada@hotmail.com',NULL,'55996932912','1977-03-10',48,'União Estável','2','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1yJopi_BWrhVie9WPdejdzjIw9BQI5OPJ','Serviço Social','Ensino Superior Completo','Universidade Anhanguera','2015-12-15','Sou formado','Elcana Colchões & Acessórios
Consultora de vendas externa 
Março de 2012/ Junho 2021
Venda de produtos ortopédicos e terapêuticos, organização de eventos e feiras para prospecção de novos clientes, também realizar pós venda dos produtos.

Net Serviços
Vendedora
Junho/2005 a Julho/2006
Realizar vendas externas de pacotes de tv a cabo. Também realizar a divulgação dos produtos através das rádios locais.

GBOEX PREVIDÊNCIA PRIVADA
Vendedora
Junho/2002 a Setembro/2003
Vendas de seguro de vida e realização de empréstimos pessoais',NULL,NULL,'Comercial','https://drive.google.com/open?id=1Yg2XAJ8_rwWEmEGOJVqy0SxnvaDuPUSx',NULL,'Facebook',NULL,'2.800,00','Sim','Eliana Colchões - Carlos Guilherme Rios 996856474','Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-13T19:25:00.000Z'::timestamptz),
  ('Rafaela Iankowski Piegas','rafapiegas@hotmail.com',NULL,'55999520495','1998-05-05',27,'Morando junto','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1onlMm3RJtkBJSKOi8PqFacNgYtyTrtFX',NULL,'Pós-graduação Incompleta',NULL,NULL,'Não, no momento pausei/parei por um período.','Renault são Borja 
Auxiliar administrativo e financeiro
Período de 2 anos e meio','Técnica em vendas 
Workshop atendimento ao cliente',NULL,'Administrativa, Comercial, Financeiro',NULL,NULL,'Instagram',NULL,'Salário mínimo','Sim','Carlos triadani (55) 99230-1144
Luciano loureiro (55) 3431-2675','Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-14T03:07:00.000Z'::timestamptz),
  ('Adriel Souza da Costa','adrielsouzadacosta@gmail.com',NULL,'51980356247','1999-02-11',27,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1hU05Gm6rTOkYdbBVgeytKMc-9J_dO3ej','Engenharia de Produção','Ensino Superior Incompleto','Estácio SÁ','2024-12-12','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Nunca trabalhei, mas não foi por falta de interesse muito pelo contrário. Como eu tenho uma deficiência não posso tá trabalhando em qualquer área, isso me prejudica para achar uma vaga','Fiz curso de informática e de designer gráfico, nenhum concluído por causa da pandemia.',NULL,'Administrativa, Estágio, Financeiro, Engenharia',NULL,NULL,'Agência de Empregos',NULL,'Como estagiário, uns R$800','Sim',NULL,'Estágio Financeiro','Primeiro tenho que informar que tenho uma deficiência física, mas só me atrapalha em serviço pesado,

Sou apaixonado por gestão de empresa, minha matéria favorita (mais fácil) era matemática, até chegar na faculdade, tá sendo um pesadelo haha,

Meu hobby é computação, tanto hardware como software. Sei Excel, Photoshop e muitos outros programas.

Espero muito conseguir uma vaga e assim poder fazer parte da equipe de vocês.

Obrigado.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-14T14:20:00.000Z'::timestamptz),
  ('Ândria Becker dos Santos','andria_becker@yahoo.com.br',NULL,'51981667479','1987-10-23',38,'Casado(a)','2','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1oy_OQ0cH5kbISZtGuc16QHwuWLcQP_XG','Ciências Contábeis','Ensino Superior Incompleto','Fael','2023-04-10','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Masal S/A Indústria e Comércio 
2) Auxiliar de Financeiro 
3)Agosto de 2011 a Setembro de 2013
4) Sólida atuação nas áreas de contas á pagar e receber.
Responsável pelos pagamentos e baixas escriturais, baixas do contas a receber e
contas a pagar, sistemas bancários e conciliações bancárias.
Responsável por transferências de remessas e retornos, conferencias de valores e
pagamentos de colaboradores.
Responsável pelo caixa contábil da empresa.
Produção de balancetes, relatórios contábeis e gerenciais e outros demonstrativos
de prestação de contas.
Auxiliar nos processos e atividades relacionados às finanças da empresa, como
controle de custos, contas a pagar e receber, fluxo de caixa, auditorias e impostos.','Técnico em Contabilidade',NULL,'Administrativa, Estágio, Financeiro','https://drive.google.com/open?id=12XV3DBNfd8gUL7t05ho7D8pjZU_SZXsE',NULL,'Agência de Empregos',NULL,'R$ 1.200 a 1.600','Não',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-14T17:11:00.000Z'::timestamptz),
  ('Gisele martina dos santos','giselemartinsdosantos37@gmail.com',NULL,'55984585396','1996-04-03',29,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1Xn9-vEtxnsaQ7XcGtvWzu5cEYqbwHS1O',NULL,'Ensino Médio Completo','E.E.F Arneldo matter','2015-10-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Ropel bebidas
2 meses
Caixa, e vendedora

Também fui vendedora autonoma por 5 anos.','Tenho auxiliar administrativo
Básico de informática
Frentista profissional
Atendimento em farmácia
Todos cursos com certificado',NULL,'Comercial','https://drive.google.com/open?id=1PVCK-IeAEeOPXglm686J0Kjoq851n2gz',NULL,'Facebook',NULL,'Um salário','Sim',NULL,'Vendedora','Oi estou disposta a dar o melhor de mim, pronta para qualquer atividade ,tem habilidade de lidar com público e fácil desempenho em grupo,  nada é dificultoso pra quem tem vontade de aprender.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-14T18:28:00.000Z'::timestamptz),
  ('Lucas Dreischarf','lucasldreischarf@gmail.com',NULL,'55991764919','1997-07-18',28,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1UKAL3A9XZVlUKJhfb_Dy0Bi3HCcff5A4','Auxiliar administrativo','Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Lojas gang 
Lojas becker','Senac - auxiliar administrativo 
Senac - informática básica 
Senac - jovem aprendiz 1 ano e um mês 3 cbos','Auxiliar administrativo, Vendas 3 cbos, informática básica.','Administrativa, Estágio',NULL,NULL,'Instagram',NULL,'R$1.200','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Trabalho na area da arte,faço telas e tambem estou tatuando por hobby. Tenho um amor pela arte e é algo que faz bem e é uma terapia.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-15T00:24:00.000Z'::timestamptz),
  ('Cristiele Mulassani Quaresma','mulassanic@gmail.com',NULL,'55984134518','1993-04-17',32,'Solteiro(a)','1','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1k8WvUhaEtJg4q-5AykBFj5A_Kc4vKcbo','Pedagogia','Ensino Superior Incompleto','ANHANGUERA Educacional','2024-02-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Panvel farmácias
ASSISTENTE de atendimento
01/10/2018 a 10/12/2019
Atendimento ao cliente, vendas, caixa e reposição de loja
Real center
Atendente
01/06/2017 a 26/01/2018','Atendimento ao cliente
Marketing
Atendente de farmácia
Informática básica',NULL,'Administrativa, Comercial','https://drive.google.com/open?id=1xr8v0ap4Pi6vfubPZdLe49_NbqsWfMng','https://drive.google.com/open?id=1YdaJS97ofCCmXnX43l_YcRtCjC8lVhKg','Facebook',NULL,'1,350,00','Não',NULL,'Vendedor','Não possuo muitas experiências,mas tenho muita vontade de aprender,tenho metas e me dedico ao máximo para alcançar,procuro uma oportunidade para concluir minha faculdade e ter uma vida financeira mais folgada. Acredito que quem possui metas tem muito mais vontade no que faz.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-15T01:27:00.000Z'::timestamptz),
  ('Davi Machado','davibass12@gmail.com',NULL,'51992379773','1991-03-15',34,'Casado(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Jzq9zQbEuhzxLX8Te0bc0Zmy-akAGplF','Administração de empresas','Ensino Superior Incompleto','Fael',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Green Route, Santo Antônio da Patrulha — Auxiliar Geral de
Conservação de Vias
JULHO DE 2020
Prestação de serviços para a CCR Via Sul, ( Fabricação de placas de trânsito).

Líder RH, Santo Antônio da Patrulha — Alimentador de Linha de
Produção
JULHO DE 2019 - MARÇO DE 2020
Operação de robôs de solda ponto e inspeção na montagem de peças automotivas.

Gabisul, Santo Antônio da Patrulha — Promotor de Vendas
JULHO DE 2018 - JUNHO DE 2019
Atendimento aos clientes em praça de vendas com divulgação da marca através da
exposição dos produtos, organização dos layouts, limpeza de gôndolas e
relacionamento com os clientes diretos e indiretos.

Mega Festas, Santo Antônio da Patrulha — Vendedor
JULHO DE 2017 - JUNHO DE 2018
Venda de artigos para festa, decoração, confeitaria, dentre outros…Atendimento ao
público no geral, operação de caixa, lançamento de notas eletrônicas, lançamento
de produtos no sistema, controle de estoque, intermédio entre escritório de
contabilidade e a matriz da empresa sobre espelho de ponto, contracheques e
cadastros individuais dos funcionários.

Cr Die Mentz, Santo Antônio da Patrulha — Vendedor
OUTUBRO DE 2015 - JUNHO DE 2017
Venda de produtos das linhas de eletrodomésticos, móveis, eletrônicos, telefonia,
bazar, ferramentas e confecções. Ofertas e vendas de serviços como diversos cursos
online, proteção financeira e consórcio.

M F Gomes, Santo Antônio da Patrulha — Repositor
SETEMBRO DE 2013 - OUTUBRO DE 2014
Atendimento ao público, exposição dos produtos, controle de validade, temperatura
e precificação das mercadorias.

Deltasul, Santo Antônio da Patrulha — Vendedor
JULHO DE 2012 - SETEMBRO DE 2013
Consultoria e venda de produtos da linha de móveis, eletrodomésticos, estofados,
bazar, ferramentas, informática, eletrônicos e telefonia. Realização de todo o
processo para o fechamento de vendas, entrega de produtos, pós venda e suporte
com assistência técnica.

Masal, Santo Antônio da Patrulha — Auxiliar de Produção
MARÇO DE 2010 - ABRIL DE 2012
Alimentador de linha de produção.','Brasil Mais Digital,
Fazer Networking —
(Curso)
13/04/2021
1 hora

Sebrae, Iniciando um
pequeno grande negócio
— (Curso)
20/06/2021
30 horas

Sebrae, Planejamento de
Marketing — (Curso)
02/10/2021
6 horas

IBM, Change Experience
2020/ Uma retrospectiva
da transformação digital
— (Evento Online)
18/11/2020
8 horas

Senai, Metrologia —
(Curso) 16/09/2011
40 horas

Senai, Desenho Técnico
— (Curso) 16/09/2011
40 horas

Styllus, Microsoft Office
(word, excel, power
point) — (Curso)
25/04/2006
88 horas

Styllus, Corel Draw X3,
Photoshop, HTML,
Flash MX e
Dreamweaver — (Curso)
13/06/2008
88 horas

Unialcance, Auxiliar
Administrativo —
(Curso) 20/11/2012
8 horas

Mundo Office, Access —
(Curso) 02/04/2009
15 horas',NULL,'Administrativa, Estágio, Financeiro, Marketing','https://drive.google.com/open?id=1YT2WmE2XDuQm0RIkEAbQvQM8NcDnrMf1',NULL,'Agência de Empregos',NULL,'1400','Sim',NULL,'Estágio Financeiro','Meu nome é Davi Machado, tenho 30 anos, sou casado.
Estou cursando administração na Fael , concluindo os últimos semestres e estou a procura de um estágio como meta pessoal, tanto para meu desenvolvimento profissional  como também para somar com a organização.
Amo contribuir para o bem estar das pessoas que me rodeiam, prezando por ambientes organizados e limpos.
Amo música e toco alguns instrumentos musicais. 
Nas horas vagas presto trabalho voluntário na minha comunidade de fé.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-15T02:28:00.000Z'::timestamptz),
  ('Laiana Maciazeki da Cunha','lalamaciazeki@gmail.com',NULL,'51995145233','2001-07-30',24,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1eH_SeF058YgJgP2_fbyCR7iCKqHJcxig','Fisioterapia/ técnico em administração','Ensino Superior Incompleto','Unicnec/Osório',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Fármacia Santa Rita: Atendente, 6 meses, inicio outubro de 2020 á março de 2021
Ags Hidráuliocos: recepcionista/auxiliar administrativo, 3 meses, contrato temporário, inicio abril de 2021 á julho de 2021.','Possuo formação  técnica em auxiliar administrativo e operador de computador',NULL,'Administrativa','https://drive.google.com/open?id=1fr-EEzI1z5FAIEs4gTeDYWVmKc63DshX','https://drive.google.com/open?id=1OVwz8l_J2IXyoc_FhCweJtNCZi16rvbe','Agência de Empregos',NULL,'1000','Não','Claudiomiro: diretor responsável pela contabilidade da Ags Hidráulicos. 999148605','Auxiliar Administrativo','Durante o período do meu ensino médio trabalhei como voluntário Luzia Catarina na nossa cidade, onde promoviamos encontros de forma que os fizessem ficar alegres.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-15T02:37:00.000Z'::timestamptz),
  ('Rodrigo da Silveira Ribeiro','rribeiro.sap@gmail.com',NULL,'51997173662','1990-10-28',35,'Casado(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1pj8BTzdzMgbmhaZy1LxMSYUpOHxb8JrD','Direito','Pós-graduação Completa','Faculdade Cenecista de Osório - FACOS','2014-08-02','Sou formado','RR SHOES. EXERCIA A FUNÇÃO DE ASSISTENTE JURÍDICO, POSTERIORMENTE PASSEI A EXERCER A FUNÇÃO DE ANALISTA JURÍDICO. TRABALHEI NO PERÍODO ENTRE 03/06/2019 ATÉ 10/07/2020. EXERCIA ATIVIDADES ADMINISTRATIVAS, BEM COMO REALIZAÇÃO DE AUDIÊNCIAS, E VISTORIAS EM EMPRESAS TERCEIRIZADAS.','Pós-graduação em Direito Civil e Prática Processual Civil',NULL,'Administrativa, Comercial, Financeiro','https://drive.google.com/open?id=19KVflRY1By4_A-5JIl6PHOMhgOhZIDhC',NULL,'Agência de Empregos',NULL,'A combinar','Sim',NULL,'Auxiliar administrativo',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-18T22:54:00.000Z'::timestamptz),
  ('Natália Rios Soares','natalia.riossoares18@gmail.com',NULL,'51995693894','1996-07-13',29,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1RIj88oMhS4Yf-mzX7OhtPttaBBd5ubkG','Administração de empresas','Ensino Superior Incompleto','Uniasselvi','2023-01-18','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Aldeias Infantis SOS Brasil. 2) Aux. Administrativo 3) 07/12/20 até o momento  4) Financeiro. Departamento Pessoal. RH.','Tec. Administração (IFsul)',NULL,'Administrativa, Comercial, Financeiro, Marketing','https://drive.google.com/open?id=1QxvgkR_fTfTVm6oSI0aWEHalLgwLlCgw',NULL,'Google',NULL,'R$1.700,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Olá, meu nome é Natalia e tenho 25 anos, estudante de Administração de empresas, tenho 4 anos de experiência em vendas e 1 com experiencia na area administrativa, gosto muito de aprender e estou em busca de novos desafios e oportunidades.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-19T00:27:00.000Z'::timestamptz),
  ('Débora Maria Schein','engdeboraschein@gmail.com',NULL,'55984522425','1998-08-05',27,'Solteiro(a)','0','Sim','Santa Maria/rs','https://drive.google.com/uc?export=view&id=1bu0JwwftayXIhHxDbwLS76nQ0ae4NOvn','Engenharia Civil','Pós-graduação Incompleta','URI Santo Angelo','2021-01-15','Sou formado','1- KURZAWA ENGENHARIA E CONSTRUÇÃO
-Cargo : Assistente de Engenharia
- Período : 17/10/2021 até o momento
-Implantação de duas PCHs : Construção de Barragem de Enrocamento com Núcleo de Argila; Circuito de Geração a Céu Aberto com 02 Unidades Geradoras
Subestação, Vertedouro, Tomada de Água e Conduto Forçado.
- Atividades desenvolvidas : Controle de produção;
• Direcionamento de atividades;
• Liderança e organização das frentes de serviço;
• Implementação dos processos de produção;
• Controle de qualidade – Aplicação e travamento de formas, vibração e cura do concreto,
limpeza e organização das frentes de serviço;
• Elaboração de Relatório Diário de Obras;
• Elaboração de relatórios de medição;
• Identificação de Empresas Terceirizadas;
• Elaboração de Contrato, Apropriação, Medição e Distrato de Empresas Terceirizadas;
• Controle da produtividade de campo;
• Controle de qualidade nos processos de liberação de concretagem;
• Elaboração de Relatórios para Medição Junto ao Cliente;
2- PLANENG ENGENHARIA E PLANEJAMENTO
- Cargo: Estágiaria - Fiscal de obras
- Período : 03/03/2021 até 16/10/2021
- Edifício Costa Bonini – Edifício residencial/comercial – 14 pavimentos, 63 apartamentos, piscina, academia, salas comerciais.
-Edifício Fratteli – Edifício residencial – 9 pavimentos – 18 apartamentos.
Construção residencial e reformas.
• Acompanhamento de obra;
• Realização de projetos hidrossanitário e elétrico;
• Elaboração do as built;
• Planejamento, gerenciamento, cronograma e orçamento da obra;
• Orçamento, negociação e compra de materiais de construção;
• Documentação para financiamento habitacional;','Pós graduação em andamento em Engenharia de Segurança do trabalho, curso de Revit, civil 3D',NULL,'Engenharia','https://drive.google.com/open?id=103DEGS_FxzdN5LviouMZp6lT__4dCrGH',NULL,'Indicação',NULL,'R$5.000,00','Sim','Rudiero Zalamena - 55 99620-6314 - Planeng Engenharia e Planejamento','Engenheiro Civil','Engenheira civil formada em janeiro de 2021 experiência na área de construção civil, predial e residencial e em construção pesada, gerenciamento de pessoas e materiais, perfil dinâmico e proativo.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-19T17:27:00.000Z'::timestamptz),
  ('Bianca da Silva Ferreira','bica.caraa@gmail.com',NULL,'51996888569','1997-11-01',28,'Solteiro(a)','0','Sim','Caraá/rs','https://drive.google.com/uc?export=view&id=1slPYO9aMrTp1ZpIQoq85FMzCsD_2azvQ','Arquitetura','Ensino Superior Incompleto','Universidade Federal do Rio Grande do Sul - UFRGS','2024-06-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Escola de Engenharia da UFRGS - setor de infraestrutura SINFRAEE; bolsista; 04/2019 - 10/2019; Apoio em levantamentos e projetos para os edifícios da Escola de Engenharia da UFRGS.
Faculdade de Arquitetura e Urbanismo UFRGS; bolsista de iniciação científica; Pesquisa sobre o padrão de localização urbana de novos campus universitários federais no sul do Brasil. Levantamento da legislação urbanística, secretarias de planejamentos e pesquisas bibliográficas.
Escritório BLOMS arquitetura e urbanismo; estagiária; Desenvolvimento de projetos 3D; interiores; detalhamentos; montagem de pranchas.
LM arquitetura; freelancer; detalhamento de escadas de incêndio.','Curso incompleto superior de licenciatura em ciências exatas na FURG em 2016-2017;
Curso de francês A1 no instituto Roche em 2019;
Bolsista de pesquisa de iniciação científica sobre planejamento urbano da FAURGS em 2019 - 2020;
Bolsista no setor de infraestrutura na SINFRAEE da UFRGS em 2019;
Estagiária no escritório BLOMS arquitetura e Design 2020-2021',NULL,'Arquitetura, Estágio, Engenharia','https://drive.google.com/open?id=1Enb1z7Nm9HPSevM1_ftiX3-0-OQFRZK3',NULL,'Indicação',NULL,'1000','Sim','Angela Rosa Guerreiro, arquitetura, 51 984661235','Estágio Engenharia e/ou Arquitetura','Cresci em uma cidade do interior, depois me mudei para Porto Alegre com 18 anos para cursar arquitetura, que sempre foi meu sonho. Não consegui entrar na UFRGS de primeira, então, antes de conseguir entrar na UFRGS, cursei um ano e meio licenciatura em ciências exatas na FURG. Com a Pandemia retornei para minha cidade natal, Caraá. Morei um tempo em Santo Antônio da patrulha, mas retornei, novamente, para o Caraá. Infelizmente, devida a pandemia, minha formatura ficou para mais tarde, o que seria em 2022, agora passou para 2024, já que muitas cadeiras eu precisei trancar. Além disso, consegui um estágio no escritório de arquitetura Blooms durante a pandemia. Consegui alguns freelancer com a arquitetura Lilian. E, além de todo conhecimentos que adquiri em Porto Alegre, como bolsista, aqui em Santo Antônio da Patrulha adquiri inúmeras experiência como estagiária. Uso muito softwares como Autocad, archicad, Lumion, sketchup, Revit, Illustrator, Microsoft office, Promob. E estou sempre à procura de novas experiências e conhecimentos, principalmente relacionada a minha aérea de profissionalização e atuação. 
Sobre hobbies, fazia natação até pouco tempo, adoro praticar esportes como jogar bola ou vôlei, mas com a pandemia essa parte da minha vida foi bruscamente ser reduzida kkk. 
Enfim, consegui tirar minha carteira de motorista ano passado. E agora busco por novas experiências. Adoro viajar, sair. Claro que as finanças reduzem um pouco esses hobbies, mas sempre que possível estou à procura de novas viagens. Adoro conhecer pessoas novas e lugares novos. 
E, por fim, fazer parte da seleção da young empreendimentos e compartilhar um pouquinho da minha vida já é uma grande oportunidade para mim.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-19T17:28:00.000Z'::timestamptz),
  ('Antonio Gabriel Sampaio dos Santos','gabrielsantos92@hotmail.com',NULL,'+5551996035223','1992-08-07',33,'Casado(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1bQ_CGXqGgjcnbn9X9sTvrt7TDMTifrzm','Engenharia Civil','Ensino Superior Incompleto','Centro universitário Leonardo Da Vinci','2025-08-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','2017-2021 ACR/INB/Vero Internet – Almoxarife responsável pelas rotinas de
estoque, recebimentos, entregas, organização, registros via sistema, entrada e
saída de ordens de serviço de clientes. Supervisor de Supply Chain
responsável pela equipe de estoque e distribuição de suprimentos para as
unidades da empresa, lançamento/emissão de nota fiscal, planejamento de
compras, gestão de equipe com 7 colaboradores.',NULL,'Téc em Qualidade','Arquitetura, Estágio, Engenharia','https://drive.google.com/open?id=1ujiJ89diRXDpwVb-Fe2uDNAi-qZIGXbZ',NULL,'Google',NULL,'2000','Não',NULL,'Estágio Engenharia e/ou Arquitetura',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-19T19:32:00.000Z'::timestamptz),
  ('Gabriel Souza Aguiar','gabriel.saguiar@hotmail.com',NULL,'19997782071','1998-06-14',27,'Solteiro(a)','0','Sim','São Paulo, Mas Com Possibilidade Fácil De Mudança','https://drive.google.com/uc?export=view&id=1jFrvFoUltTw7uEL0sPXpBMYrHKe-r4Df','Engenharia Civil','Ensino Superior Completo','Universidade Federal do Rio Grande - FURG','2021-06-25','Sou formado','Realizei todo o meu estágio na empresa 123Projetei, empresa de venda de projetos online. No meu período, que durou de Maio/2019 à Fevereiro/2020, as minhas principais atribuições eram a realização de projetos arquitetônicos residenciais térreos e até 3 pavimentos, contato direto com os clientes do Brasil inteiro, realização de imagens renderizadas das fachadas e a entrega do projeto legal, de acordo com as normas e planos diretores das cidades. Precisei sair da empresa pois estava no meu último ano de faculdade, e foquei inteiramente na mesma.','Sou formado em engenharia civil, e meu TCC foi a realização de projetos estrutural, elétrico e hidrossanitário, além do orçamento e cronograma de um edifício de 7 andares. Tenho amplo conhecimento nas ferramentas AutoCAD, Revit e Lumion, além do Pacote Office.',NULL,'Arquitetura, Engenharia','https://drive.google.com/open?id=1NYoGlt5baSaeCCwvHVZVG2N8-9xy3Kge','https://drive.google.com/open?id=10xWOgNFISKINZDoKCluprDyktUqnAwdu, https://drive.google.com/open?id=1647cZ7Riwpm-8LXohvjo2IxFZm9ZG0-d, https://drive.google.com/open?id=1B6YLZp95JemIWeoqP7u603pDlzTM8izj, https://drive.google.com/open?id=1abFPIAtsYfnssEgsp0e3duqa7J2dTFdH, https://drive.google.com/open?id=1cE7clkiLg37F0fLDJfTswiFhblgDInpa','Instagram',NULL,'R$3.500,00','Sim','Meu antigo gerente de projetos da 123Projetei, Matheus Almeida - (53)8468-7218','Assistente de Engenharia','Sou recém formado em engenharia civil, com o CREA ativo e uma grande busca por entrar no mercado de trabalho. Estou com muita aspiração para trabalhar, sou um profissional com uma grande facilidade de absorção de conhecimentos, um ótimo relacionamento interpessoal e adaptação. Como dito anteriormente, tenho amplo conhecimento em AutoCAD, Revit, Lumion e no Pacote Office. Já morei no Rio Grande do Sul aonde tenho uma enorme vontade de retornar. Meu foco é realmente em vagas aonde eu possa aprender bastante, como assistente, analista ou trainee, em que terei contato direto com profissionais mais experientes.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-19T20:14:00.000Z'::timestamptz),
  ('Caroline Ferreira Leite Trautmann','carolineflt13@gmail.com',NULL,'51995515564','1997-06-20',28,'Solteiro(a)','0','Sim','Glorinha/rs','https://drive.google.com/uc?export=view&id=1R-kSUIptGQb4JnmSohQx7FwytQdre42j','Arquitetura','Ensino Superior Incompleto','UNISINOS','1997-06-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1)Fernanda Lima Arquitetura - Escritório de Porto Alegre 2)Estagiária
3) Tempo de Estágio: 08/2017 à 05/2018 
4) Foco: Arquitetura de Interiores e Pequenas reformas. Funções: Ajudar na elaboração de projetos; Detalhamentos de móveis; Levantamento de 3Ds e colocação de blocos nos mesmos; Elaboração de plantas de medições; Medições dos ambientes a serem
projetados; Elaboração de cortes.

1) Orquestra Gestão de Projetos - Escritório de Porto Alegre 2) Estagiária
3) Tempo de Estágio: 05/2018 à 10/2018
4) Foco: Arquitetura Residencial com foco em compatibilização de projetos
Funções: Compatibilização entre projetos de um mesmo empreendimento; Elaboração de contratos, briefings, escopos e atas de reunião.

1) Reambientando do Seu Jeito - Escritório de Arquitetura em Porto Alegre 2) Estagiária
3)Tempo de Estágio: 10/2018 à 03/2020
4) Foco: Arquitetura residencial e comercial de pequeno e grande porte e arquitetura de interiores, maioria dos projetos feito à distância, para outros estados do Brasil.
Funções: Ajudar na elaboração de projetos; Detalhamento de móveis; Levantamento de 3Ds e colocação de blocos nos mesmos; Detalhamento executivo de projetos de grande e pequeno porte.

1) Bender Arquitetura - Escritório de Arquitetura em Gravataí 2) Estagiária
3) Tempo de Estágio: 02/2020 à 03/2020
4) Foco: Arquitetura residencial e comercial de pequeno porte e Arquitetura de 
interiores.
Funções: Ajudar na elaboração de projetos de interiores e paisagismo; 
Detalhamentos executivos; Levantamento de 3Ds e colocação de blocos 
nos mesmos.

1)Hub Arquitetura Integrada - Escritório de Arquitetura em Santo Antônio da Patrulha 
2) Projetista
3) Tempo de Estágio: 11/2020 à 10/2021
4) Foco: Arquitetura residencial e comercial de pequeno porte.
Funções: Ajudar na elaboração de projetos de interiores e arquitetônicos residenciais e comerciais; Ajudar na organização do escritório; Auxilio em reuniões e apresentações de projetos para clientes; Elaboração de projetos de interiores; Elaboração de projetos executivos e detalhamentos.','Cursos de archicad e photoshop',NULL,'Arquitetura, Novos Negócios, Engenharia','https://drive.google.com/open?id=13XNdVtlebDHBjVDNu7iBkQa63k4M02_N','https://drive.google.com/open?id=1ktcgD_DBNOJ0ey_NFg2x80g2-8MqHPIW','Agência de Empregos',NULL,'1.800,00','Sim','1) Fernanda, 5199737 8817, Fernanda Lima Arquitetura
2) Vivianne, 51 99217 7651, Bender Arquitetura
3) Jane, 51 98585 2465, Reambientando do seu Jeito','Estágio Engenharia e/ou Arquitetura','Olá!!! Então, sou estudante de arquitetura no final da graduação! Sou uma pessoa animada, radiante, amiga, dedicada, comprometida, pontual, séria quando necessário.... Gosto de trabalhar com várias pessoas, me sinto mais a vontade assim do que sozinha. Tenho habilidade em vários softwares, indicados no meu portfólio. Atualmente faço o TCC de Arquitetura, trabalhos freelancers de vez em quando para os escritórios que já trabalhei e faço academia!! Espero que gostem do meu perfil!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-20T13:29:00.000Z'::timestamptz),
  ('Luís Carlos Mello Luchese','lcmluchese@live.com',NULL,'55991939433','1991-01-12',35,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=14-rtH3HJF77P7yXW2I5vnodv5ro_tAS8','Engenharia Civil','Ensino Superior Completo','UNIJUÍ','2017-08-27','Sou formado','Atuando em escritório de engenharia e arquitetura desde setembro 2017, realizando projetos de varias disciplinas, avaliações, individualizações unidades, fracionamento de lotes, acompanhamento de obras com diferentes características de projetos e materiais','Durante a formação acadêmica procurei a me aperfeiçoar na área de estruturas, concreto armado e construção civil, métodos de processos, técnicas de construção, realizei cursos na área de dimensionamento de estruturas metálicas e concreto armado, e de avaliações de imóveis.',NULL,'Administrativa, Financeiro, Engenharia','https://drive.google.com/open?id=1Wsd1kuYW58oeFH41miuFYxP0vq8xQrdb',NULL,'Site da Empresa',NULL,'5000','Sim',NULL,'Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-20T13:58:00.000Z'::timestamptz),
  ('Mauri da Silva Ramos','mauri.silva07021995@gmail.com',NULL,'995393757','1995-02-07',31,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1zI39VZpia066_RsTREJZ_Q5_z3eaEQ02','Técnico em edificações','Ensino Médio Completo','Unipacs','2023-01-07','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Com muita vontade aprender',NULL,NULL,'Arquitetura, Engenharia',NULL,'https://drive.google.com/open?id=1iuP5mqfijUbE26YEOXIZJu_RwfRCipRT, https://drive.google.com/open?id=15yVgCWjK2MosgrTxNQpEJoUPr9ECJdQu','Instagram',NULL,'Sem expectativa','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-21T09:36:00.000Z'::timestamptz),
  ('Isadora Ribas Rosa','isadoraribasrosa@gmail.com',NULL,'51980483883','2001-11-28',24,'Moro com meu namorado','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=129uUOKkX6-8rtFL5WVn178wt1w_vzgbl',NULL,'Ensino Médio Completo','E.E.E.M Professora Gregoria de Medonça','2021-01-22','Não, no momento pausei/parei por um período.','1- Magna Cosma do Brasil 2- Auxiliar administrativo 3- 07/10/2019 a 21/10/2020 4- Administração, experiência com empresa grande, conhecimento em impressoras e computadores.. 1- Clínica Luz 2- Secretária 3- atualmente 4- Administração, recepção, financeiro da empresa, entre outros.','Iniciando Designer de Interiores',NULL,'Administrativa, Comercial, Financeiro, Novos Negócios',NULL,NULL,'Instagram',NULL,'+ Salário mínimo','Sim',NULL,'Vaga na área disponível','Gosto de conhecer tudo que o mundo me mostra, sou aberta a amizades novas, lugares novos, comidas novas, gosto de conversar de me expressar, sou um pessoa muito organizada. Moro com meu namorado e tenho 2 pets, mas se eu pudesse teria muitos mais hahaha.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-21T16:02:00.000Z'::timestamptz),
  ('Larissa Luzia Ferrugem Elias','lari.elias5@gmail.com',NULL,'51997318362','1999-09-02',26,'Solteiro(a)','0','Sim','Glorinha/rs','https://drive.google.com/uc?export=view&id=1BlhEljpD15Z7Mu69zbAjl3tpM1dyXNm4',NULL,'Ensino Médio Completo','Universidade Unimar','0202-12-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Prefeitura Municipal de Glorinha, cargo de estagiária de 2017 á 2018 
Função: Monitora de escolas.

Prefeitura Municipal de Glorinha, cargo de Assessor Administrativo de 2019 á 2021 
Função: cadastros físicos e on-line, controle de patrimônio, controle de documentos e arquivamentos e atendimento ao público.','Auxiliar Administrativo, Informática Básica',NULL,'Administrativa','https://drive.google.com/open?id=1wdB3ERJNH2ZvPj-ZMyWCTO3eFkt7I5wI',NULL,'Indicação',NULL,'1.500,00','Sim',NULL,'Administrativo','Bom estou aqui, procurando uma oportunidade no mercado de trabalho de clt assinada. Sou uma pessoa muito interessada e disposta a novas experiências, sou comunicativa e muito prestativa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-21T17:09:00.000Z'::timestamptz),
  ('Carolina Zalamena','carolzalamena.eng@outlook.com',NULL,'55999734919','1996-02-15',30,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1jeCy6k2Y9cSJzTOygxc36XLwlCkUgkXv','Engenharia Civil','Ensino Superior Completo','Universidade Regional do Noroeste do Estado do Rio Grande do Sul- Unijui','2020-03-07','Sou formado','Venho atuando como engenheira civil de maneira autônoma desde março de 2020, desde então fiz projetos arquitetônicos, complementares e execução de obras. Também paralelamente trabalho na empresa Luchese Serviços em Engenharia-LTDA, exercendo diferentes atividades dentro da empresa.','Realizei alguns cursos antes de entrar na graduação, (dicção, oratório e desinibição, Informatica), fiz curso de Autocad, dentre outros no decorrer da graduação, também cursei 2 semestres de Administração, fiz um curso de avaliações imobiliárias pela Tecys Engenharia.',NULL,'Arquitetura, Engenharia',NULL,NULL,'Site da Empresa',NULL,'5000','Sim',NULL,'Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-21T20:58:00.000Z'::timestamptz),
  ('EMILY DE FRAGA E SOUZA','emilydefragaesouza98@gmail.com',NULL,'51996173914','1998-08-01',27,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1HfIHLX0wm74zk6hMjvLbKm0xjM6Yfrro','Pedagogia','Ensino Superior Completo','UNIASSELVI','2020-07-07','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Já trabalhei de secretária, na prefeitura (CAEE) E no escritório Bier, Silveira e Costa Advogados Associados.',NULL,NULL,'Estágio',NULL,'https://drive.google.com/open?id=1w9hbW-_mCjStFaRugUQjy6P2Xd5t073Y','Indicação',NULL,'1200','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho conhecimento básico/intermediário de computação. Gosto de resolver as coisas com diálogo, gosto quando me dizem o que tenho que mudar conversando e sabendo melhor sobre meu compromisso com a empresa. 
Já trabalhei como secretária e isso necessita de comunicação com o público/agendamento/entrega de documentos importantes dentro e fora da empresa.
Possuo CNH desde 2017.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-25T12:41:00.000Z'::timestamptz),
  ('EDUARDO JARCZEWSKI DE OLIVEIRA','eduardojarczewski1@gmail.com',NULL,'55984312173','1994-04-22',31,'Casado(a)','1','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=17SCt6AVPcjvXPq46Tko4q6B47rh31xaP','Engenharia Civil','Ensino Superior Incompleto','Universidade Federal do Pampa','2022-10-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) BRACCINI FUHRMANN LTDA	
2) JOVEM APRENDIZ
3) 24/05/2010 A 03/03/2011
4) Arquivos, Controle de Produção

1) J. FUHRMANN E CIA LTDA	
2) AUXILIAR ADMINISTRATIVO
3) 04/03/2011 A 14/02/2012
4) Vendas, Controle de Produção, Financeiro

1) JMIX CONCRETO	
2) ESTAGIÁRIO DE ENGENHARIA
3) 16/12/2019 A 28/02/2020
4) Vendas, Financeiro, Controle de Qualidade do Concreto

1) PÓRTICO ENGENHARIA LTDA	
2) ESTAGIÁRIO DE ENGENHARIA
3) 01/12/2020 A 16/08/2021
4) Execução de Obra, Compra de materiais, controle do estoque, gestão de pessoal, gerenciamento de obra','Curso de AutoCad Avançado',NULL,'Administrativa, Estágio, Financeiro, Engenharia','https://drive.google.com/open?id=1VLtapjt85j2yryHouC17FXfRoK1Yyob_',NULL,'Google','Não','1200','Sim',NULL,'Engenheiro Civil','Falo fluentemente o espanhol, realizei um trabalho voluntario religioso durante dois anos no Uruguai, tenho bons conhecimentos nas ferramentas office. Estou próximo de me formar em Engenharia Civil e desejo muito atuar na área de execução de obras residenciais.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-26T20:32:00.000Z'::timestamptz),
  ('Alvimar Nascimento Ribeiro','alvimarribeiro@hotmail.com',NULL,'55999482338','1995-10-05',30,'Solteiro(a)','0','Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=198rouuGj6PFH54ORZAYcRtviYLPANXYX','Engenharia Civil','Ensino Superior Completo','Universidade Federal do Pampa','2021-12-03','Sou formado','1 - 
UNA - Arquitetura Engenharia
Estagiário de Engenharia Civil
15/03/2021 a 15/09/2021
Atribuições: Responsável pelo desenvolvimento de projetos de novas residências e de reformas, desde o projeto arquitetônico, projetos complementares e estrutural, também o acompanhamento da execução dos projetos em obra com visitas diárias. Na obra responsável pela fiscalização do trabalho, além de quantitativo do trabalho realizado pelos terceirizados.
Algumas atividades complementares foram um auxilio na organização do administrativo da empresa e o contato com o cliente. 

2 - 
Serra Ambiental SA
Estagiário de Edificações
03/10/2014 a 15/08/2015
Atribuições: Experiência divida em duas etapas. A primeira foi a realização de trabalho em campo com a fiscalização de residências, na segunda etapa foi em escritório com a emissão de ordem de trabalho e contato com o cliente e organização de planilhas.','Além da graduação sou Técnico em Edificações com curso em AutoCad.',NULL,'Administrativa, Arquitetura, Engenharia',NULL,NULL,'Instagram','Não','3000','Sim','Larissa Fontoura 
Engenheira responsável UNA - Arquitetura Engenharia
55 997049107','Engenheiro Civil','Softwares:
AutoCad
Revit
TQS
Pacote Office

Idiomas:
Inglês
Espanhol','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-27T16:09:00.000Z'::timestamptz),
  ('Douglas Moraes de Araujo','douglasm4760@gmail.com',NULL,'+5551995247614','1998-05-20',27,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1iJ7Uk4G1f1x36ByPDzVF8rSSBUE0xEIQ','Administração de empresas','Ensino Superior Incompleto','Uniasselvi','2023-12-23','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Formel D- Inspetor de Qualidade- (2018- 2019, 2020-2021) - No setor de 
Qualidade atuei como inspetor de qualidade no ramo automotivo auxiliando no 
desenvolvimento das operações e resoluções de problemas, prestando um serviço de 
atendimento ao cliente de ponta. Atuando também no setor logístico no abastecimento 
de linhas, na área de expedição e faturamento de cargas.
Magna Cosma -Operador de Produção automotiva-(2019- 2020) - Trabalhei como 
operador de produção automotivo, na área de produção de peças e componentes para 
veículos de diversas marcas','Curso de Administração de Empresas com foco principal na função de planejar, 
organizar e gerenciar o uso dos recursos pessoais e financeiros de uma organização.
Em andamento - Estou no 5 semestre.

Curso Técnico em Contabilidade- CPET e ST. PAUL’S UNIVERSITY 
Curso Técnico em Contabilidade com dupla certificação, tanto no Brasil como nos EUA. 
Curso reconhecido pela Instituto Americano de Contadores Públicos Certificados 
(AICPA) e da Associação Nacional de Conselhos de Contabilidade do Estado (NASBA).
No Brasil é reconhecido pela PORTARIA-SEI Nº 409, DE 02 DE DEZEMBRO DE 2019.

NR 11- CURSO DE EMPILHADEIRA- INSTITUTO DELTTA (2021)
Curso profissionalizante em NR 11 voltado ao setor logístico, empilhadeira. Estando 
apto a operar Empilhadeira a combustão, Empilhadeira Frontal elétrica, Transpaleteira 
e Paleteira elétrica. Habilitado no carregamento e descargas de materiais, voltado 
também ao suprimento de linhas tanto logísticas como de produção.
Curso dentro da validade.','Assistente de Controle de Qualidade- IFSul (160 hr) Logística- Uniasselvi (20 hr) Ciências Contábeis- Uniasselvi (20 hr) Assistente Administrativo- IF Sul (160 hr)','Administrativa, Comercial, Estágio, Financeiro','https://drive.google.com/open?id=1KsnUhZ7Fm4Z3akyTROYHJQQ1SjAGSgAw',NULL,'Agência de Empregos','Sim, Felipe Reis','1.100 reais','Sim','Felipe Reis- Analista de Crédito- Young (Santo Antônio da Patrulha)','Estágio Financeiro','O sábio nunca diz tudo o que pensa, mas pensa sempre tudo o que diz. Aristóteles','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-01T12:08:00.000Z'::timestamptz),
  ('Murilo da Silva Consul','murilosconsul94@gmail.com',NULL,'51981237456','1994-09-09',31,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1uZ5lahvfL5udIFRwaJNC_nkpa605mlWd','Administração de empresas','Ensino Médio Completo','FURG',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Auxiliar de Operações Rodoviárias 04/11/19 – 01/02/2020 Viação Ouro e Prata | Largo Vespasiano Júlio Veppo, Guichê 22, Centro, Porto Alegre RS Vendas de passagens. Atendimento aos clientes na sala de espera da empresa, esclarecendo dúvidas e informações. Auxiliar no embarque dos passageiros, solucionando divergências do ocorridas e fazendo o despacho das bagagens dos clientes. 

Cobrador de Passagens de linhas Intermunicipais 23/10/17 – 01/07/2019 Empresa Unesul de Transportes LTDA | Rua Dona Teodora, 435, Navegantes, Porto Alegre RS Cobrar passagens dos clientes, auxilia-los durante a viagem, cuidando da segurança e conforto, zelar pelas bagagens e pertences dos passageiros. 

Auxiliar de Estoque 01/09/15 – 31/03/17 INB Telecom | AV. Paulo Maciel de Moraes, 961, Centro, Sto. Antônio da Patrulha RS Receber materiais de uso geral da empresa, emitir notas fiscais, atender os colaboradores da empresa na entrega de materiais para utilização na rede tanto em campo quanto internamente, fazer compras, testar equipamentos que retornaram com provável defeito dos clientes. 

Técnico em Informática 09/07/13 – 29/04/15 Proner Comércio e Manutenção de Informática LTDA | Coronel Victor Villa Verde, 131, sala 202, Sto. Antônio da Patrulha RS Prestação de serviço na Prefeitura Municipal de Santo Antônio da Patrulha, tratando da manutenção de hardware e software de computadores e periféricos. Atender os servidores municipais que estavam com dificuldades ao computador.',NULL,'CNH Cat. AB','Administrativa, Comercial, Estágio, Financeiro',NULL,NULL,'Agência de Empregos','Não','R$1.400,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho Inglês e Espanhol, sou formado em comissário de vôo. Tenho muita facilidade em aprendizado e faço tudo com a maior excelência possível.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-01T15:18:00.000Z'::timestamptz),
  ('Esthefane da Silva dos Santos','Esthefane_santos12@hotmail.com',NULL,'51980592085','1996-12-15',29,'Solteiro(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1E3QKUxP1WKEYvYErRYmFBNIZ2yHClsUv',NULL,'Ensino Superior Incompleto','Unicesumar',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Masal- auxiliar administrativo- 2014/2015
Prefeitura Santo Antônio- auxiliar de professora- 2017/2019','Cursando Administração',NULL,'Administrativa',NULL,NULL,'Instagram','Nao','Remuneração compativel com a função','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-01T21:20:00.000Z'::timestamptz),
  ('Luan Rafael Bonetto da Silva','bonettoluan314@gmail.com',NULL,'051997606594','2002-11-20',23,'Solteiro(a)','0','Sim','Rolante/rs','https://drive.google.com/uc?export=view&id=1CGM80Rj1IQcescaCXA9vC1hdSuFsOwyG','Ciências Contábeis','Ensino Superior Incompleto','Anhanguera Educacional','2025-07-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','PG Calçados Ltda. - abastecedor de linha de produção - 05/07/2019 até 23/01/2020

DK esquadrias Ltda. - auxiliar de linha de produção - 27/01/2020 até o momento.','Possuo curso de Excel e Capacitação Comercial Administrativa',NULL,'Administrativa, Estágio, Financeiro, Marketing','https://drive.google.com/open?id=1HdicA86c5Z-Bi6L9DjziA24aU51ZElHA',NULL,'Instagram','Não','Remuneração justa às funções a mim dirigidas.','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-01T23:44:00.000Z'::timestamptz),
  ('Scheila oliveira plaudo maria','scheilaoliveiraoficial@gmail.com',NULL,'51992443101','1998-10-02',27,'Solteiro(a)','0','Não','Taquara/rs','https://drive.google.com/uc?export=view&id=12C6YFkOUsfz97e0Y_Na0T2bKacTxaRIv','Curso auxiliar administrativo','Ensino Médio Completo','Senac','2015-11-15','Não, no momento pausei/parei por um período.','Atendente comercial na empresa unidassul','Idiomas',NULL,'Administrativa, Comercial',NULL,NULL,'Facebook','Não','R$14.000,00','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-02T12:18:00.000Z'::timestamptz),
  ('Eliel Ramos Dias','elielramosdias@gmail.com',NULL,'51996315540','1999-02-11',27,'Casado(a)','0','Sim','Osório/RS','https://drive.google.com/uc?export=view&id=1jtXFqFyR1WarlFEJDjdUsUfIsBTB0usD','Engenharia Elétrica','Ensino Superior Incompleto','UniRitter','2025-08-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Estágio Curso Técnico- Empresa Barreiro Soluções Elétricas - 2017

Exército Brasileiro - Militar- 08/2018 - 08/2020 - ( experiência com eletricidade e atividades administrativas)

Gramoterra - Projetista - 10/2020 - Atualmente. ( Experiência com Projetos 3D e 2D; Orçamentos em Excel; Atendimentos; Renderização de projetos reais, contendo paisagismo e iluminação; Produção de vídeos e edição de vídeos para apresentação ao cliente...)','Técnico em Eletrotécnica
Inglês básico
Espanhol básico
Pacote Office
Ex militar do Exército Brasileiro','Eletrotécnico','Administrativa, Arquitetura, Comercial, Engenharia','https://drive.google.com/open?id=1DazNthwT76-tP0RUESv9oRxuw2RqRCiq',NULL,'Facebook','Não','3000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Experiência com Programas:
SketchUp, Autocad, Revit, Lumion, 3D Blender, Excel, Word, PowerPoint, Cantasia.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-10-29T23:44:00.000Z'::timestamptz),
  ('Emily de Fraga e Souza','emilydefragaesouza98@gmail.com',NULL,'51996173914','1998-08-01',27,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1HPT0MU522ckD9ClGL7fVuVqUe0fNG9Q5','Pedagogia','Ensino Superior Completo','UNIASSELVI','2020-07-28','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Secretária - PMSAP (CAEE) Centro de atendimento educacional especializado. (2017/2018)
Secretária - Bier, Silveira e Costa (César Bier) - Cobertura de férias da secretária (2 meses - 08/2016)
Recepcionista - Santo Peccato- 09/2015 até 12/2015','Psicopedagogia',NULL,'Administrativa, Estágio','https://drive.google.com/open?id=19n9216hBXKl21640S4pwtlkbKeUeUMR0',NULL,'Indicação','Caroline Freiberger (arquiteta)','1200','Não','Prefeitura Municipal de Santo Antônio da Patrulha (3662-8400)
Bier, Silveira e Costa (3662-1722)','Secretária/ ou outro','Já fiz curso de Windows, Word, Excel, Power point e internet (Nível usuário).
Tenho conhecimento básico/intermediário em computação.
Tenho CNH desde 2017.
Sei mexer nas redes sociais, criar publicações.
Gosto de ter diálogo aberto com colegas e profissionais, sempre conversando sobre como melhorar meu desempenho na empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-03T11:53:00.000Z'::timestamptz),
  ('Evlyn Kolling dos Santos','kollingevlyn@gmail.com',NULL,'51996735276','2002-06-24',23,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1zpodteTM3ofcDaQwzZcaTBXM4ON0VnTW','Administração de empresas','Ensino Médio Completo','Uniasselvi','2024-10-16','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Masal S/A
Auxiliar administrativo
Abril de 2021 (presente)
Apontamento e manutenção de ordens de produção, arquivamento de documentos no sistema.',NULL,NULL,'Administrativa, Comercial, Estágio, Financeiro','https://drive.google.com/open?id=1P54jQeikVDr1I9sBi5lt_A093a9uPDio',NULL,'Instagram','Não.','R$1.000,00','Sim',NULL,'Estágio Financeiro','Estou buscando uma oportunidade de crescer profissionalmente pois quero começar a adquirir minhas próprias coisas. Sou uma pessoa sociável e gosto bastante de conversar, espero que além de colegas eu possa ter amigos no local de trabalho também.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-03T15:19:00.000Z'::timestamptz),
  ('Pâmela Tais Fauth Alves','pa7457391@gmail.com',NULL,'51996500937','2001-08-09',24,'Ajuntada','0','Não','Taquara/rs','https://drive.google.com/uc?export=view&id=16VRIRdUOrT3ZL-TFC3gQVgwhAyXrxdyK','Ciencias contabeis','Ensino Superior Incompleto','Uniasselvi','2024-12-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Ai não exerci meus estudos....Mas tenho muita vontade de por em pratica e espero achar alguém que meu de essa chance em minha carreira.','Ja fiz vários cursos ....amplamente em árias contabeis ...E estou em aprofundando cada vez mais.','Tenho varios cursos...mas ainda nao pus em pratica','Administrativa, Comercial, Estágio, Financeiro','https://drive.google.com/open?id=12IbBQwXc2jpje9tkISrz8WPvAhDVpNCo',NULL,'Facebook','Nao','1.500','Sim',NULL,'Estágio Financeiro','Busco uma vaga no mercado de trabalho, numa empresa onde eu possa me desenvolver profissionalmente, demonstrar minhas competências e habilidades técnicas e emocionais e, em conjunto com os meus colegas e gestores, eu possa colaborar para o crescimento da organização e do grupo','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-03T16:08:00.000Z'::timestamptz),
  ('Ananda Silva de Lima','ananda_since97@hotmail.com',NULL,'51995241266','1997-11-25',28,'Solteiro(a)','0','Não','Osório/RS','https://drive.google.com/uc?export=view&id=18qauFTBTA51380a-_f9CuxORdSUSty4z','Gestão de recursos humanos','Ensino Superior Incompleto','Leonardo da Vinci - uniasselvi','2023-05-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Wobben windpower, estagiária assistente administrativa',NULL,NULL,'Administrativa','https://drive.google.com/open?id=126o6h61njPCWpMSLnDRvXTlWieQkdt0x',NULL,'Instagram','Não','1.400,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho 23 anos, sou natural de Tavares! Mas me mudei recentemente para osório-rs, sou estagiária assistente administrativa e gostaria de poder adquirir novas experiências no ramo de trabalho.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-03T21:37:00.000Z'::timestamptz),
  ('Eduarda Modesto Galarça','modestoeduarda@gmail.com',NULL,'055996923026','1991-12-01',34,'Casado(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1KJbPobM28llxQ0ZIUHR9HD2frH_QOWr4',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Ortoden, atendimento, caixa e gestão de negócios','Libras, Atendimento a Idoso',NULL,'Administrativa, Comercial, Financeiro, Marketing',NULL,NULL,'Carol Volpato','Não','Compativel ao cargo','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-04T12:18:00.000Z'::timestamptz),
  ('Gabrielli Veiga Carvalho','gabrielliveiga17@gmail.com',NULL,'55999962652','2003-12-03',22,'Solteiro(a)','0','Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1zNegJogFD0xDFHBxkjgohQDiOxxEDfOs',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Empresa CIEE - Auxiliar administrativa
Atendimento presencial e online 
Arquivo e digitação de documentos
Envio de boletos a empresas',NULL,NULL,'Administrativa, Comercial, Estágio, Marketing','https://drive.google.com/open?id=1uozBn6olGLEymvjGXTiaGH38cC0lQYCy',NULL,'Instagram','Carol Volpato','1100','Sim',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-04T12:22:00.000Z'::timestamptz),
  ('Jaiane Soares de Freitas','jai.freitas.12@gmail.com',NULL,'55992140962','1997-06-30',28,'Solteiro(a)','1','Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1QNnYoQuzsmul1MZUZaDwflfRsU7YDH0v','Direito','Ensino Superior Completo','URCAMP','2020-01-12','Sou formado','Agência da Receita Federal do Brasil, estagiária, 2015 à 2016, atendimento ao público, organização de documentos, parcelamentos PGFN,etc.
Casa A Brasileira, operadora de caixa, 2016 à 2019, atendimento ao público, abertura e fechamento de caixa, lançamento de NF, relatórios SPC E SERASA, administração das redes sociais da loja, etc.
Grupo Botoni (Barepub, Me Gusta Parrilla e Botoni 24h), auxiliar administrativa, janeiro de 2019 à julho de 2019, responsável pela contratação de atrações, abertura e fechamento de caixa, orçamentos e relatórios para insumos do restaurante, atendimento ao público, etc.','Pós graduanda em Direito Digital e gestão inovadora',NULL,'Administrativa, Novos Negócios, Engenharia',NULL,NULL,'Instagram','Carol Volpato','2.000,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho grande facilidade em aprender, por mais clichê que pareça! rs
Tenho boa comunicação e no meu último emprego passei por vários "cargos", consequentemente, adquiri experiência em várias áreas. Estou parada há mais de dois anos, por enquanto presto correspondência jurídica em parceria com um escritório e tenho um bebê (lindo) de 9 meses!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-04T12:52:00.000Z'::timestamptz),
  ('Julia Tristão Mattive','juliamattive99@gmail.com',NULL,'55996980736','1999-01-20',27,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=19jMuo8wsxyOCl1sWDn5jEg0pBvIkXm3E','Biologia','Ensino Superior Incompleto','Instituto Federal Farroupilha',NULL,'Não, no momento pausei/parei por um período.','J a Lima Cia Ltda 
Trabalhei no administrativo, abertura e fechamento de caixa, financeiro e atendimento ao público.
01/12/2020',NULL,NULL,'Administrativa, Comercial, Financeiro','https://drive.google.com/open?id=1fSBshk37LyvcVD4ksYKnOiMastsZ1hI6',NULL,'Instagram','Sim, Carol Volpato','1500','Não','3422-4450 referência Posto Texacão.','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-04T12:59:00.000Z'::timestamptz),
  ('Sabrina schimitz vieira','sabrina999737472@gmail.com',NULL,'55999054548','1988-01-31',38,'Casado(a)','0','Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1XJ1AQw0tH7NbqOX2B6i-rwUKYSUxJt34',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Casarão pizzaria,pizzaiola,08/04/2014 a 08/02/2015 a empresa foi vendida e segui com os novos donos de 09/02/2015 a 12/06/2019 ai a empresa fechou deu por falida e eu comecei em 02/01/2020 na empresa veneto pizzaria hoje atualmente é a santo antonio e veneto pizzaria.
Gostaria de uma oportunidade em novas áreas pra poder crescer futuramente e conhecer pessoas novas.',NULL,'Curso de pizzaiolo','Administrativa',NULL,NULL,'Instagram','Carol volpato','2000','Sim','bianca Brunet 996870774(casarão pizzaria) e Rejane Prosdocimo 996142922','Quero inscrever-me no banco de talentos da Young!','Bom meu nome é sabrina sou uma pessoa  alegre sincera de bem com a vida,gosto de novos desafios,amo animais tenho 1 gata a guitta e 2 cadelas a kena e a Pitt são minhas filhas, gosto de cozinhar,gosto de um bom chimarão,fazer novas amizades,sou feliz.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-04T13:13:00.000Z'::timestamptz),
  ('Franciele Zacarias de Paula','franzaca26@gmail.com',NULL,'55999110106','1991-03-03',34,'Casado(a)','2','Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1YtdPv05uWTCA25LBfg54mArdSU88qQtW','Educação Física','Ensino Superior Completo','URCAMP  Alegrete Universidade Da Região da campanha','2015-01-31','Sou formado','Ciacon internet . 10/5/2020 a 10/6/2020 entrega de panfletos e divulgação da empresa.
Supermercado Baklizi Alegrete . 27/8/2018 a 12/01/2020 operadora de caixa .
Spasso 20 . 13/4/2018 a 13/8/2018 Vendedora e atendimento ao cliente.',NULL,NULL,'Administrativa, Comercial, Financeiro, Engenharia',NULL,NULL,'Instagram','Carol Volpato através do Instagram','Valor referente ao da categoria','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou mãe , esposa , manicure . Quero uma oportunidade de emprego para voltar ao mercado de trabalho.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-04T13:23:00.000Z'::timestamptz),
  ('LUCIANA PINHEIRO DA COSTA','lupinheirocosta@hotmail.com',NULL,'51998072753','1982-06-04',43,'Casado(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1iTN5wHn3QYZQI7qujDpSaQmHH7QGhCog','Ciências Contábeis','Ensino Superior Incompleto','Ulbra',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Trabalho com administração de empresa e setor financeiro a mais de 12 anos, em diversos tipos de empresas.','Sou técnica contábil pela instituição Escola Cenecista Barão do Cahy. Estudo Arquitetura e Urbanismo na Ulbra, estou no 9° semestre.',NULL,'Administrativa, Arquitetura, Financeiro, Engenharia',NULL,NULL,'Indicação','Caroline Freiberger','4 salarios mininos','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-04T13:46:00.000Z'::timestamptz),
  ('Juliane Lima de Camargo','juuliane.lc@hotmail.com',NULL,'55996794936','1993-06-14',32,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1-tnfzwGN5Hd-ZLeyZxkuifTsl7jOT-B4','Administração de empresas','Ensino Superior Completo','Unopar','2020-12-19','Sou formado','Drogaria Mais Econômica - Cargo Operador de caixa - 05/03/2012 a 09/12/2014
Bellevitta Estética e Academia - Secretária - 01/06/2015 a 15/10/2015
Pilecco Nobre Alimentos Ltda - Recepcionista - 19/10/2015 a 02/07/2018
Pilecco Nobre Alimentos Ltda - Auxiliar de Escritório Sênior - 02/07/2018 a 11/06/2021','Cursando último semestre de Gestão em Recursos Humanos na Unopar.',NULL,'Administrativa, Financeiro','https://drive.google.com/open?id=12Cbd37vODT7EtWOGDCufyk4-66_YPysB',NULL,'Instagram','Carol Volpato','A partir de R$1.800,00','Não','Bruna França/Joziele Borba - 34219000 - RH Pilecco Nobre','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-04T13:47:00.000Z'::timestamptz),
  ('Ana Laura da Costa Terra','analauracosta2000@icloud.com',NULL,'51982142698','2000-04-25',25,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1jz6XCbZlqQEa7zRFlfdu8hgm06fa_xY0','Design Bacharel','Ensino Superior Incompleto','Universidade Luterana do Brasil- Canoas','2021-03-04','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Prefeitura Municipal de Santo Antônio da Patrulha, setor de planejamento urbano, 2) Estágio, 3) Março de 2017 a setembro de 2018, 4) Estágio baseado em funções de atendimento ao público, entregas de documentos e aprendizagem na área de urbanismo e planejamento.
1) Mania de loja, setor de marketing digital, 2) estágio temporário, 3) Dezembro de 2020 a Março de 2021, 4) Auxiliar de criação e administração de marketing digital para comércio online da loja.','Área de atuação anterior administrativa. Cursos de ensino complementar: Curso de informática, programação em web, e de design voltado a U.X.',NULL,'Estágio','https://drive.google.com/open?id=1aWs5c3caqzLrop8P4XHGsulQkO_6Z3EQ',NULL,'Indicação','Caroline Freiberger','R$1.200,00','Sim',NULL,'Comercial','Olá! Me chamo Ana Laura, estou espera de uma oportunidade de aprender e me moldar melhor no mercado de trabalho. Tenho experiência em softwares de edição como Photoshop, Illustrator, Corel Drawn e ainda com programação de web, como codificação, aprendo rápido e ainda tenho experiência com atendimento ao cliente. Agradeço desde já.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-04T13:57:00.000Z'::timestamptz),
  ('Juliana Pinto Severo','juliana88sp@yahoo.com',NULL,'54999151521','1988-06-28',37,'Casado(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1IHoT3xBYRito56mJ8zgTKwJqjq0r3ZKq','Recursos Humanos','Pós-graduação Completa','Cnec','2021-11-04','Sou formado','Dakota Calçados, cargo comprador, desenvolvimento de matéria prima para produção dos calçados, abastecimento da área produtiva, atendimento a fornecedores, negociação de custo dos materiais, envio de ordem de Compra. Iniciei em agosto de 2010, a fevereiro de 2019.
Coopershoes calçados ,cargo comprador,desenvolvimento de matéria prima, arte, pantones de cores, pois a empresa é uma cooperativa, e todo e qualquer procedimento, tem de ser aprovado pela comissão dos associados, e pela franquia a qual a marca do calçado pertence, o procedimento de compras é um pouco mais detalhado, e lento. Iniciei em setembro de 2020, a Janeiro de 2021. Pedi demissão em virtude de vir embora para Alegrete.','MBA Gestão Comercial 
MBA Gestão Coaching',NULL,'Administrativa, Comercial',NULL,NULL,'Carol Volpato','Carol Volpato','1.600','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa proativa, apaixonada pela vida, pela natureza, por viajar, conhecer novos lugares!
Meu hobby é pedalar, e uma boa leitura, participei durante 8 anos de uma ong em Nova Petrópolis, cidade onde morei 14 anos, a ONG Opa, que resgatam animais abandonados, em situação de vulnerabilidade.
Nas empresas a quais trabalhei, sempre fiz parte da comissão de organização dos eventos de final de ano, arrecadavamos 1km de alimento não perecível de cada colaborador, e entregavamos para famílias carentes na região metropolitana, ou em Caxias do Sul, que são municípios com maior índice de pobreza do que Nova Petrópolis.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-04T14:02:00.000Z'::timestamptz),
  ('Pamela Tais Roodes Pereira','pamelataisp@gmail.com',NULL,'55996746846','1994-12-25',31,'Casado(a)','2','Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1CvoODTFyiuxguPz0psUnvA1ZPj738yuk',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Autônomo',NULL,NULL,'Administrativa',NULL,NULL,'Instagram','Carol volpato','2000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-04T14:41:00.000Z'::timestamptz),
  ('Tiago de Souza Terra','tiagoterra9@gmail.com',NULL,'51999008435','1984-03-31',41,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Xc_egM4L6KjsOIzdjjhDbsK3C_wv084o','Administração de empresas','Ensino Superior Incompleto','FURG','2025-01-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1. Prefeitura Municipal de Santo Antônio Da Patrulha.
2. Motorista.
3. 01/04/2015 termino indefinido.
4. Tenho vivência com comércio familiar, trabalhando informal junto a empresas de parentes e pessoas amigas, experiência formal junto a prefeitura Municipal de Santo Antônio Da Patrulha, onde vivencio rotinas das secretárias de administração, Planejamento, Saúde e desenvolvimento social.','Curso técnico em contabilidade 
Curso técnico em agroindústria',NULL,'Administrativa, Comercial, Financeiro, Novos Negócios',NULL,NULL,'Indicação','Sim! Caroline Freiberger.','R$3.800,00','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-04T15:07:00.000Z'::timestamptz),
  ('Thainara Fernandes Pereira','thatafp92@gmail.com',NULL,'999202986','1992-03-02',33,'União estável','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1vWuoSKVhG0vRW5JUaGibuZm1BSl4-Hyi','Recursos humanos','Ensino Superior Completo','Unopar Alegrete','2019-03-30','Sou formado','Posto de Combustíveis ibirapuitã(posto takito), auxiliar administrativo, 2012-2016. JA Lima e Cia Ltda,auxiliar administrativo, 2016-2018. Em ambas empresas exerci rotinas administrativas, financeiras , atendimento ao público, escalas de turnos. Nicola veículos, 2018 até o momento. Central de atendimento, rotinas administrativas e atendimento ao público.','Curso de auxiliar administrativo , Senac Alegrete',NULL,'Administrativa, Comercial','https://drive.google.com/open?id=13B6bPZ6DxHj0SNYTlOTxs1_Vxl3xfUKG',NULL,'Por Carol Volpato','Não','Acima de R$2100,00','Não','Silvanio lima, empresário. Contato: 999741478  Igo Santana, gerente Nicola veículos e empresário. Contato; 051 981 642420','Quero inscrever-me no banco de talentos da Young!','Natural de Alegrete, pisciana, formada em Rh a dois anos, visando uma pós graduação. Administradora por amor. Líder por instinto.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-04T15:16:00.000Z'::timestamptz),
  ('Luciani Santana Jaques','lucianisantanaj2401@gmail.com',NULL,'55997247161','1997-01-24',29,'Casado(a)','1','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1DN1rL7w0besdUTB4AzyLrUA1QL1dBVqZ','Técnico em administração','Ensino Médio Completo','Colégio estadual Emílio Zuneda','2014-11-04','Não, no momento pausei/parei por um período.','Barraca medianeira/ setembro 2018 á dezembro de 2018/ faxineira

Santa Luzia/ março de 2020 á março de 2021/ Babá',NULL,NULL,'Administrativa, Comercial, Estágio',NULL,NULL,'Instagram','Carol volpato','Salário da categoria','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Meu nome é Luciani tenho 24 anos, um filho de 5 sou casada a seis anos. Trabalho cm vendas por comissão ( lingeries e semi jóias) faço doces, bolos pra fora. Sempre tive comprometimento e adoro desafios. Sou responsável e gosto de aprender coisas novas, gosto de críticas elas vem pra nós ajudar a crescer. Trabalho desde muito nova e gostaria de uma oportunidade de crescer proficionalmente.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-04T15:18:00.000Z'::timestamptz),
  ('Henrique Gonçalves Alves','henriquega25@gmail.com',NULL,'55991179401','1999-08-20',26,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1UO2Fta_0OQ36RfduexA3VIHkbj3u09Zk','Matemática','Ensino Superior Incompleto','IFFAR campus Alegrete','2025-12-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1-Expresso fronteira d''oeste
2-Cobrador 
3-04/01/2021 - 16/04/2021
4- A função do cobrador é recolher os vales transportes, realizar a prestação de contas diária para a gerente, auxiliar os cadeirantes e pessoas com deficiência a embarcar e desembarcar do veículo, realizar a manutenção preventiva nos veículos a fim de proporcionar um melhor funcionamento do mesmo.','Curso de técnicas em vendas
Manutenção em computadores
Habilitação AB
Photoshop
Segurança na internet
Auxiliar administrativo','Photoshop, auxiliar administrativo, fireworks, segurança na internet, montagem e manutenção de computadores,','Arquitetura, Comercial, Marketing, Engenharia','https://drive.google.com/open?id=1An38CJhwowKFCAmneuqo2R5a5D65GOBY',NULL,'Carol Volpato','Carol Volpato','R$1.100,00','Sim','I.C.T.P CENTRO DE TREINAMENTO PROFISSIONAL LTDA.
3421 8600','Quero inscrever-me no banco de talentos da Young!','Fui dois anos bombeiro mirim, tenho conhecimento intermediário em programação, tenho vontade de aprender sempre, estou constantemente me especializando, sou faixa azul de judo, sei um pouco de inglês, gosto muito de cozinhar nas horas vagas, faço academia, tenho muita vontade de adentrar no ramo imobiliário por achar esse ramo fantástico, de todas as atividades que acho interessante o imobiliário sempre me chamou muita atenção.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-04T15:39:00.000Z'::timestamptz),
  ('Gabriela Janisch','gabi.janisch@hotmail.com',NULL,'51997860426','2000-07-03',25,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1MbYFaxveWtiyR0Ibq1ZGFFf2FO0wSGdU','Fonoaudiologia','Ensino Superior Incompleto','UFCSPA',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Aprendiz na Cooperja de 2014 à 2016.',NULL,'Libras','Estágio',NULL,NULL,'Indicação','Duda Meregali','*','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-04T15:48:00.000Z'::timestamptz),
  ('Geane Ramos Rodrigues','geanny_r@hotmail.com',NULL,'55984536507','1987-03-16',38,'Companheiro','2','Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1Z4pJksc2ZPo6IJkqPF1FwFSF-9SdS1bQ','Administração de empresas','Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Assistente de vendas Wiz Soluções/Caixa seguradora, balcão de vendas agência Caixa Econômica Federal Alegrete,  de Junho 2013 à Setembro 2017;
 Assistente de vendas Facta Finaceira de Fevereiro 2019 até Setembro 2018;
Telefonista/recepcionista na Agência Caixa Econômica de Alegrete desde Novembro 2019 até o momento, Novembro 2021.','Técnico Administração de Empresas. Concluído em Dezembro/2010.',NULL,'Administrativa, Financeiro',NULL,NULL,'Carol Volpato.','Nao','R$2.000,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-04T16:03:00.000Z'::timestamptz),
  ('Maiara Gonçalves Fagundes','maiarafagundess@outlook.com',NULL,'55997115083','1993-12-19',32,'Solteiro(a)','1','Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1aJN_D8kNBSNtzhRvZx1aJdgGWupGwvG_',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Empresa: PMS Contabilidade 
Auxiliar de contabilidade - lançamentos contábeis, folha de pagamento, atendimento aos clientes, serviços de banco e prefeitura.
Período: 24/01/2016 - 31/01/2017.

Empresa: Max Cópias 
Balconista - atendimento ao público, digitação, Cópias, impressões, montagens e colagens de fotos, textos no Word, encadernações e edições. 
Período: 26/02/2018 - 19/03/2019.

Empresa: Bambino Gelateria
Atendente/Caixa - atendimento ao público, caixa, limpeza e conservação do local.
Período: 24/10/2019 - 09/03/2020.

Empresa: Supermercados Baklizi 
Op.de caixa - atendimento ao público, organização da frente de caixa, reposição de mercadorias em horário de pouco movimento.
Período: 09/09/2020 - 01/11/2021.',NULL,NULL,'Comercial',NULL,NULL,'Através Da Carol Volpato.','Não.','1.500,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-04T16:36:00.000Z'::timestamptz),
  ('Conceicao marilu valente pereira','luconceicaovp@gmail.com',NULL,'55984477473','1981-11-02',44,'Casado(a)','1','Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=17dhFwAJ1Vkhz-pgsDKCTkDWCdFVPSiJ_',NULL,'Ensino Superior Incompleto','Uniasselvi','2028-12-05','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Cna inglês..Banrisul','Técnico radiologia','Técnico radiologia','Administrativa','https://drive.google.com/open?id=1UMHm5t3xyWtICoHjzJ8upDh5s6kAoefC',NULL,'Instagram','Não','Conforme o cargo salário da empresa','Sim','Banrisul gerente (Jonathan +55 (55) 9902-7581)','Quero inscrever-me no banco de talentos da Young!','Ajudar nas ações do bairro','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-04T16:48:00.000Z'::timestamptz),
  ('Murilo da Silva Consul','murilosconsul94@gmail.com',NULL,'51981237456','1994-09-09',31,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1_H-Z0RTUOet7TKFqLfeU2PaiQWoUG7ul','Administração de empresas','Ensino Superior Incompleto','Universidade Federal do Rio Grande FURG',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Técnico em Informática 09/07/13 – 29/04/15 Proner Comércio e Manutenção de Informática LTDA | Coronel Victor Villa Verde, 131, sala 202, Sto. Antônio da Patrulha RS Prestação de serviço na Prefeitura Municipal de Santo Antônio da Patrulha, tratando da manutenção de hardware e software de computadores e periféricos. Atender os servidores municipais que estavam com dificuldades ao computador. 

Auxiliar de Estoque 01/09/15 – 31/03/17 INB Telecom | AV. Paulo Maciel de Moraes, 961, Centro, Sto. Antônio da Patrulha RS Receber materiais de uso geral da empresa, emitir notas fiscais, atender os colaboradores da empresa na entrega de materiais para utilização na rede tanto em campo quanto internamente, fazer compras, testar equipamentos que retornaram com provável defeito dos clientes. 

Cobrador de Passagens de linhas Intermunicipais 23/10/17 – 01/07/2019 Empresa Unesul de Transportes LTDA | Rua Dona Teodora, 435, Navegantes, Porto Alegre RS Cobrar passagens dos clientes, auxilia-los durante a viagem, cuidando da segurança e conforto, zelar pelas bagagens e pertences dos passageiros. 

Auxiliar de Operações Rodoviárias 04/11/19 – 01/02/2020 Viação Ouro e Prata | Largo Vespasiano Júlio Veppo, Guichê 22, Centro, Porto Alegre RS Vendas de passagens. Atendimento aos clientes na sala de espera da empresa, esclarecendo dúvidas e informações. Auxiliar no embarque dos passageiros, solucionando divergências do ocorridas e fazendo o despacho das bagagens dos clientes.',NULL,'Inglês avançado','Administrativa, Comercial, Estágio, Financeiro','https://drive.google.com/open?id=18-EN3wc88Aqxt3BmP0rnkUUvta30gGLS',NULL,'Agência de Empregos','Não','R$1.400,00','Não',NULL,'Estágio Financeiro','Tenho facilidade em me comunicar com o público. Possuo experiência na área da tecnologia, financeiro e comercial. Sou organizado e ágil nas tarefas a cumprir, cooperativo e me dedico plenamente nas funções exigidas. Tenho inglês e espanhol e formação em comissario de vôo.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-04T17:20:00.000Z'::timestamptz),
  ('Gabriella da Silva Holmer','gabriellaholmer@yahoo.com.br',NULL,'51993177764','1993-01-19',33,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1O80TcPdU01sQ5h2xt61ah1r67BmHtHd0',NULL,'Ensino Superior Incompleto','Uniritter','2021-12-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Holmer Móveis; auxiliar administrativo; 03/2010-11/2012. Prefeitura Municipal de Porto Alegre; estágio no setor de geoprocessamento; 05/2013-03/2014. Câmara Municipal de Vereadores de Porto Alegre; estágio no setor de infraestrutura; 07/2014-06/2015. Natural Soluções Ambientais; estágio no setor de consultoria ambiental; 09/2016-12/2016. AEL Sistemas; estágio no setor de infraestrutura; 06/2018-06-2019. Blooms Arquitetura e Design; estágio no setor de obras, projetos e administrativo; 03/2021 (estágio vigente','Graduação em Engenharia Civil quase concluída, cinco semestres cursados de Arquitetura e Urbanismo. Curso de AutoCad, Sketchup. Curso de inglês na escola Up Time e Imagine na Austrália. Pacote Office.',NULL,'Administrativa, Arquitetura, Comercial, Engenharia',NULL,NULL,'Instagram','Não','-','Sim',NULL,'Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-04T17:36:00.000Z'::timestamptz),
  ('Giovana Brasil Borba','giovanabborba@gmail.com',NULL,'999972460','2001-07-14',24,'Namorando','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1igVuURKOvV6tqcSo9F2OV-zFMtFks5bi','Administração de empresas','Ensino Superior Incompleto','Uniasselvi',NULL,'Não, no momento pausei/parei por um período.','Prefeitura municipal de santo Antônio da patrulha. Ocupei os cargos de recepcionista/telefonista, auxiliar adm nos setores de RH, almoxarifado e transportes. Entrei 10/01/19 e saí 31/12/2021',NULL,'Não possuo','Administrativa',NULL,NULL,'Prefeitura, Departamento De Engenharia','Maria Eduarda da Silva','R$1.200,00','Sim','Reni Borba, 999284851, atualmente ele trabalha no setor FAPS da prefeitura de SAP','Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa bastante sociável no campo de trabalho e muito respeitosa, tento fazer com perfeição minhas tarefas o máximo possível, tenho noções básicas de Excel e word, sou organizada e aprendo rápido, tento sempre manter um bom ambiente de trabalho e tenho fé que meu serviço é bom, queria muito de conquistar uma vaga na Young pois já conheço o pessoal daí e sei que são pessoas boas e de responsabilidade para com os seus, gostaria de fazer parte dessa empresa hihi','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-04T18:04:00.000Z'::timestamptz),
  ('Eduarda Silva dos Santos','eduardasilva71561@gmail.com',NULL,'51998810789','2003-01-17',23,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=111JcTCuOYEBo693NMyaJL4U6hmPZA-1j','Administração de empresas','Ensino Superior Incompleto','Uniasselvi','2024-01-24','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Magna Cosma - 01/10/2019 ate 30/08/2021 (Financeiro) 
Delegacia de Polícia Civil - 15/09/2021 até o momento (Secretaria)','Inglês- English Place
Ocupações administrativas- CIEE',NULL,'Administrativa, Comercial, Estágio, Financeiro',NULL,NULL,'Indicação','Antonio Alves','1000','Sim',NULL,'Estágio Financeiro','Olá! Sou Eduarda, tenho 18 anos e atualmente tenho experiência em auxiliar em administração, atendimento ao público e entre outras atividades semelhantes. Curso administração, pois desejo seguir no ramo empresarial. 
Caso estejam precisando de alguém, seria um prazer fazer parte do time Young.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-04T18:05:00.000Z'::timestamptz),
  ('CIBELE Bitencourt Porto','cibele_rb@yahoo.com.br',NULL,'+55999478980','1983-10-02',42,'Casado(a)','3','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1CUWzibIx0dhc9d_uQZhD4_etNkgJSfqw',NULL,'Ensino Superior Incompleto','Unopar',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Nicola Veículos- caixa- out/2017 a Set/2019. JM Extintores - caixa/secretária/vendedora 2017. Loja América- vendedora 2017. Cfc Alegrete - instrutora de trânsito 2011 à 2015',NULL,NULL,'Administrativa',NULL,NULL,'Indicação','Talissa da Rosa Bitencourt','1200','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-04T18:13:00.000Z'::timestamptz),
  ('Bianca da Costa Lima Marques','biancaclimamarques@gmail.com',NULL,'51997622863','1994-06-06',31,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1EMHsiTGu-m4jomZqptuJQl6bxQnsrc-C','Arquitetura','Ensino Superior Completo','ULBRA','2021-08-14','Sou formado','Reformatec Reformas e Construções, sócia/administrativo, 03/2015 até o momento. Acompanhamento de obras, execução de orçamentos, administrativo em geral.','Curso de Archicad básico, Illustrator',NULL,'Arquitetura, Engenharia',NULL,NULL,'Indicação','Sim, Arquiteta Caroline','3.500,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-04T18:22:00.000Z'::timestamptz),
  ('Paula Oliveira Buss','paulaobuss@gmail.com',NULL,'55997234474','1992-09-28',33,'Solteiro(a)','0','Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1MzkmVcHOYHkPBzoJtzbvEZ7dgPtDdfif','Arquitetura','Pós-graduação Completa','UFN','2017-02-27','Sou formado','Construtora Novo Tempo - arquiteta e urbanista - projetos para escolas adventistas rio grande e Santa Maria.','Graduação em arquitetura e urbanismo, pós graduação em interiores e MBA em design thinking.',NULL,'Administrativa, Arquitetura, Engenharia',NULL,'https://drive.google.com/open?id=1HRsj-XFATL9C9w5q5CfoiSZYUgKz7pW5','Indicação','Talissa Bittencourt - Alegrete','2500','Sim','Talissa Bittencourt - 55 99547979','Quero inscrever-me no banco de talentos da Young!','Paula Buss, 29 anos, solteira, moro em Alegrete, Arquiteta autônoma, pós graduada e acabando um MBA. Gostaria de trabalhar na minha área ou se possível conseguir alguma vaga aqui na cidade de Alegrete mesmo.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-04T18:33:00.000Z'::timestamptz),
  ('Juliane da Rosa Correa','julianecorreia2009@hotmail.com',NULL,'55996711347','2021-06-21',4,'Casado(a)','1','Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1Jw1TxKhJ5u-ZOvOi9z49N_-QeeyctVDB',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Atualmente trabalho como auxiliar de logística na empresa mercado livre
Faço parte a quatro meses .
Realizo o processo de separação de pacotes organização do service center até a entrega aos motoristas.
Já trabalhei como copeira no fórum de Alegrete,como caixa em alguns postos de gasolina na cidade de Florianópolis.',NULL,NULL,'Administrativa, Comercial, Novos Negócios, Engenharia',NULL,NULL,'Instagram','Não','1400','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Meu nome é Juliane tenho 29 anos cursei Direito durante um semestre tive que desistir mas ainda penso em voltar.
Cursei segurança do trabalho que é algo que gosto bastante porém não concluí quando troquei de cidade.
Gosto de fazer bolos também já fiz um curso .
Gosto de trabalhar em equipe aprender e passar meu conhecimento .','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-04T18:41:00.000Z'::timestamptz)
;

INSERT INTO young_talents.candidates (full_name, email, email_secondary, phone, birth_date, age, marital_status, children_count, has_license, city, photo_url, education, schooling_level, institution, graduation_date, is_studying, experience, courses, certifications, interest_areas, cv_url, portfolio_url, source, referral, salary_expectation, can_relocate, professional_references, type_of_app, free_field, status, tags, origin, created_by, original_timestamp)
VALUES
  ('Aline Toledo','aline.toledo29@gmail.com',NULL,'55997022782','1990-10-29',35,'Solteiro(a)','1','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1kGFzyR1rvLJaiEfM-omdvmjyM82xBKmN','Administração de empresas','Ensino Superior Incompleto','Urcamp',NULL,'Não, no momento pausei/parei por um período.','Fasttel Engenharia
Assistente Administrativo',NULL,NULL,'Administrativa','https://drive.google.com/open?id=1XGzSyqaTx52e6fsVyIeY7gDOUXvmYJ2C','https://drive.google.com/open?id=1kAqeFP_TIA4SgVcItqRrvKt9TAPnBeO7','Instagram','Não','1600','Não','MA Construções 
Assistente Administrativo','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-04T18:53:00.000Z'::timestamptz),
  ('Alexia Bitencourt C.','bitencourtalexia01@gmail.com',NULL,'55999613078','1999-06-16',26,'Solteiro(a)','1','Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1J2Xi1qkQezigKpFrZw4IrA6zPC0lml1X','Recursos humanos','Ensino Médio Completo','Escola Estadual Emílio Zuneda',NULL,'Não, no momento pausei/parei por um período.','Prefeitura de Alegrete - combate ao mosquito da Dengue.','Fiz Tec. De Administração',NULL,'Administrativa','https://drive.google.com/open?id=11kfv0Om2mTvRM5A36aKvyjJZmJl44xVq',NULL,'Talissa Me Indicou.','Sim, Talissa Bitencourt.','Salário mínimo','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-04T18:54:00.000Z'::timestamptz),
  ('Mirele Querche de Almeida','mirelea138@gmail.com',NULL,'55996158419','2001-08-05',24,'Solteiro(a)','0','Sim','Manoel Viana/rs','https://drive.google.com/uc?export=view&id=1HqZVlZod1CNv0BlSNsb4wuoJ0z9AWfnc','Ciências Contábeis','Ensino Superior Incompleto','Unopar','2025-08-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1)Lojas Quero Quero
2)Jovem Aprendiz
3)09 de 2019 a 09 de 2020
4)auxiliar de reposição, auxiliar de atendimento ao cliente e auxiliar de caixa.
1)8w8 Tecnologia
2)Atendente
3)01 de 2021 a 03 de 2021
4)Atendimento ao cliente e vendas
1)LC estética automotiva 
2)auxiliar de limpeza
3)03 de 2021 a 04 de 2021
4)Limpeza de carros em geral
1)Grafica Inovar
2)Auxiliar de cortes
3)05 de 2021 a 07 de 2021
4)Auxiliar de cortes em adesivos
1)Mercado Rede Super
2)caixa
3)ativa até o momento','Cursei secretariado administrativo, informática, analista financeiro, técnicas de vendas e atendimento ao cliente e Farmacia.','Sim. Secretariado administrativo, informática e Analista Financeiro','Comercial, Estágio, Financeiro, Engenharia','https://drive.google.com/open?id=1YxcGwmX4dIp9O3cvn7uFoNdtHGsj-T8d',NULL,'Carol Volpato','Nao','1,4','Sim',NULL,'Comercial','Sou uma pessoa que sempre vai atender um cliente sorrindo, sou de rápida memória, atenciosa, organizada e buscando cada vez mais conhecimento.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-04T19:26:00.000Z'::timestamptz),
  ('Isadora da Rosa Ferri','isadoradarosaferri@hotmail.com',NULL,'51999160750','2002-12-26',23,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=17C4vzTXELexxvWQUzhhVzVZNGdCojvoT',NULL,'Ensino Superior Incompleto','Uniritter',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Estou me candidatando para primeiro emprego.','Excel Básico- SENAR;
Informática  Básica- SENAR; 
Inglês Immediate Conversarion- Wizard.',NULL,'Administrativa, Estágio, Financeiro',NULL,NULL,'Indicação','Sim, pela Maria Eduarda Meregali','O valor que acharem adequado para o cargo.','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Fiz cursinho de inglês e informática e estou aberta para adquirir novos conhecimentos e experiências e poder colaborar com a empresa!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-04T19:43:00.000Z'::timestamptz),
  ('PALOMA APARECIDA LINO DA SILVA','paloma_lino@hotmail.com',NULL,'51996619786','1995-03-06',30,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=13HquQ7AqvTfwLE2exxApqIK1a8B6dun3','Ciências Contábeis','Ensino Superior Completo','UNIASSELVI','2021-03-13','Sou formado','PREVINA CORRETORA DE SEGUROS
Período: 06/05/2019 (emprego atual) Funções Atribuídas: Vendedora de seguros ramos elementares e automóveis
ASSOCIAÇÃO COMERCIAL INDUSTRIAL E DE SERVIÇOS DE SANTO ANTÔNIO DA PATRULHA- ACISAP
Período 24/07/2017 a 04/05/2019 Função Atribuída: Auxiliar de escritório.
LOJA ALGO MAIS Período 10/05/2014 a 19/11/2014 Funções Atribuídas: Vendedora
LOTÉRICA SANTO ANTÔNIO
Período 14/01/2015 a 05/05/2017 Funções Atribuídas: Operadora de caixa e vendedora de produtos lotéricos.
M.F. GOMES E CIA LTDA –
Período: 01/08/2011 a 14/01/2014
Funções Atribuídas: Empacotadora, repositora de mercadorias e operadora de caixa.','FORMAÇÃO TÉCNICA EM ADMINISTRAÇÃO PELA Unialcance Escola de Educação Profissional',NULL,'Administrativa, Comercial, Financeiro, Novos Negócios','https://drive.google.com/open?id=1Ltvahf1lzz4bQN-lN_W2xa4JnR87DlYS',NULL,'Instagram','NÃO','7.000,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Procuro novos desafios profissionais, tendo o desenvolvimento de minhas habilidades e a geração de resultados como objetivo, viabilizando um crescimento para a empresa, aprimorando minhas habilidades e alcançar os objetivos prepostos, conquistando um crescimento profissional.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-04T20:10:00.000Z'::timestamptz),
  ('Wellington Luis da Silva Santos','wellingtonsantos929@gmail.com',NULL,'51995315740','1996-05-08',29,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1lsmvUBkYw39LtMKnRwiU6Mf8pIyTieZr',NULL,'Ensino Superior Incompleto','Uniasselvi','2024-12-18','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Frigorífico Boa Esperança 2) Menor aprendiz 3) Out/2011- Jul/2012 4) Auxiliar administrativo. Ajudava na organização de documentos, etc...

1)Prefeitura Municipal de SAP 2) Estágio profissional 3) Nov/2012- Nov/2014 4) Recepcionista/Auxiliar administrativo/Office boy. Atendimento ao público, organização e entregas de documentos, etc... 

1) Mara Modas 2) Vendedor interno 3)Fev/2017- Nov/2017 4) Vendas, vitrines, etc...

1) General Motors 2) Operador de produção 3)Nov/2017- Até o momento 4) Montagem de carros',NULL,'Excel Básico- Senai','Administrativa, Estágio, Financeiro','https://drive.google.com/open?id=1DNvaKcKA0qBf7pwAVbGWn_3QMU_2_nVD',NULL,'Instagram','Não','1.100,00 a 1.300,00','Sim','Mara Modas tel: (51)39375014','Estágio Financeiro','Olá, me chamo Wellington Santos, alguns amigos me chamam pelo apelido de “Wewé”. Dancei 10 anos em CTG aqui na cidade, onde fiz muitas amizades que duram até hoje. Recentemente comecei um curso de inglês e pretendo fazer um de Excel avançado. Me considero uma pessoa tranquila e trabalho bem em equipe.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-04T20:43:00.000Z'::timestamptz),
  ('Mariele saldanha dos santos','marielerihanna@outlook.com',NULL,'55996197513','1993-01-18',33,'Solteiro(a)','2','Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1Mlo2xAZEt4z0_B8pThFDaaCHlJ1njzHK','Gestão de Recursos Humanos','Ensino Superior Completo','Uniasselvi','2020-08-10','Sou formado','Prefeitura Municipal de Alegrete 
Auxiliar administrativo 04/11/2017 a 05/05/2019

Escola Demétrio Ribeiro 
Supervisor Administrativo 12/08/2019 a 08/09/2021','Pisicologia Organizacional
Técnico em Microcomputador',NULL,'Administrativa, Comercial, Marketing, Novos Negócios',NULL,NULL,'Instagram','Carol volpato vi no instagran dela','1600','Sim','Gestora do Cadastro único Norma 999237654
 
José ulices vice Diretor Demétrio 997653421','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-04T23:39:00.000Z'::timestamptz),
  ('Guilherme Kayser','guilhermekayser.sap@hotmail.com',NULL,'51980140410','2002-09-01',23,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1o9e_fw7PiWswGUSBsCcT_APzK8kHowES',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Cooperja
Auxiliar administrativo/escritório
04/02/2019 - 04/02/2021
Atendimento ao público, telefone, email, lançamento de notas, arquivar documentos, fechamento de caixa, entregas de EPI, auxilar na balança.

Embtec
Auxiliar de produção
15/07 até o momento.','Curso Auxiliar Administrativo CIEE',NULL,'Administrativa, Comercial, Financeiro, Marketing','https://drive.google.com/open?id=1jBIb0IDV0sXd6xpBc5KxYEDAGndbzp35',NULL,'Instagram','Não','1.500,00','Não','Cooperja/falar com Sônia (RH)
3662-7273 / 3662-1313','Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa que está sempre pronta para aprender, sou dedicado, esforçado, organizado, comprometido, tenho facilidade em me adaptar e em aprender. Atualmente trabalho na embtec e dou aula de jiu-jitsu para crianças como renda extra.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-05T01:37:00.000Z'::timestamptz),
  ('Samira machado macedo','samiramachado766@gmail.com',NULL,'55997240585','2002-01-08',24,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1XOFfYqoSF5MzeMQosei3yRFcRzmS4W63','Administração de empresas','Ensino Médio Completo',NULL,'2026-11-05','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Empresa mecânica rondon/Auxiliar administrativo, principais atividades era pagamento de funcionários, nota fiscal, organização do espaço de trabalho, entre outros.',NULL,NULL,'Administrativa',NULL,NULL,'Instagram','Não','1300','Não','Robson 55999651404 - Banrisul','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-05T03:48:00.000Z'::timestamptz),
  ('Rafael Catelli da Silva','rcssf11@gmail.com',NULL,'51997113050','1998-11-03',27,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1m6kie4rbLEDqWeSW5Uby3zqQsVTOZEWn','Economia','Ensino Superior Incompleto','Uniasselvi (Centro Universitário Leonardo da Vinci)','2023-12-28','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','*Valepel papéis: auxiliar de produção (agosto de 2021 até novembro de 2021) - produção, formatação, recortes, selamento, preparação e empacotamento de papéis e embalagens;
*Funerária Santo Antônio: agente funerário (janeiro de 2019 até janeiro de 2021) - preparação funerária e de capelas, procedimentos funerários, operador e dirigente de cortejos funerários, plantonista noturno.','Administrativo profissionalizante, assistência social básico, CorelDraw profissionalizante',NULL,'Administrativa, Comercial, Estágio, Financeiro','https://drive.google.com/open?id=1zClwqyfGqmI4gN9n4gKpM2cEVY1Jqcw5',NULL,'Agência de Empregos','Nenhum','Até R$ 1300','Não',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-05T13:51:00.000Z'::timestamptz),
  ('BRUNA SILVEIRA SCOPEL','bruscopel@gmail.com',NULL,'51984005726','1987-04-18',38,'Casado(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1P-gUW7K1FWORAD-Mu8XexYEcEsXkH87h','Administração de empresas','Ensino Superior Completo','Anhanguera','2014-08-16','Sou formado','Calçados Beira Rio: Auxiliar de RH, de março de 2013 a novembro de 2013, atendimento ao público,
processos de admissão e demissão; realizava elaborações de pré-defesas e representava a empresa nas audiências (preposta).

S.M Lemos & Cia Ltda: Técnica em nutrição e auxiliar administrativo de novembro de 2013 a agosto de 2014, de fevereiro de 2015 a julho de 2015. Realizava o cadastro de notas fiscais, produtos, clientes e fornecedores; cadastro de contas à pagar / receber. E realizava a parte de RH da empresa.

Casa das Meias Ju: de agosto de 2015 a julho de 2017, empresa familiar, trabalhava com a parte de atendimento e vendas direto ao consumidor, gerava notas fiscais, cuidava da parte administrativa. 

Rafael Luz Portal: secretária, de agosto de 2018 até o momento; realizo a recepção e atendimento ao paciente, cuido de todo o agendamento das consultas e auxilio na parte do financeiro do consultório.',NULL,NULL,'Administrativa, Financeiro',NULL,NULL,'Instagram','Rodrigo Ribas','2500','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-05T18:41:00.000Z'::timestamptz),
  ('Bruna Vanessa da Silva Alves','brunavsalves@gmail.com',NULL,'55997036416','1993-11-10',32,'União estável','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1n2TNWjg_wQXOZ2xwhZ-fbm6mI5iyFZaz','Biologia','Pós-graduação Completa','Urcamp Alegrete/RS','2015-12-15','Sou formado','Construtora Sotrin: bióloga (consultora ambiental), trabalhei com prestação de serviços ambientais, como: licenciamentos, laudos, termos de acerto de conduta, CAR. Como sou profissional liberal quando solicitado o serviço geramos uma ART de prestação de serviço, essas ARTs variam de períodos de 1 ou 2 anos, realizo atividades com a empresa desde 2020.

Pilecco Nobre Alimentos Ltda: bióloga (consultora ambiental), elaboração de laudo, licenças de ampliação do empreendimento e projeto de compensação ambiental. ARTs com validade de 1 ano gerada no ano de 2021 e término previsto para maio de 2022.

Oficina Mecânica Cartech: bióloga (consultora ambiental), renovação de licença ambiental e PGRS (plano de gerenciamento de resíduos sólidos), ART gerada em 2021 com validade por 2 anos.

Fazenda Casa de Carnes: bióloga (consultora ambiental), elaboração de PGRS, ART gerada em 2021 com duração de 1 ano.

Realizei, também laudos para a Patram (Brigada Ambiental), sem retorno financeiro.','Sou graduada em Ciências Biológicas, licenciatura e bacharelado, fiz pós-graduação em Perícia e Auditória Ambiental. Realizei cursos de aperfeiçoamento em Educação Ambiental e gestão sustentável, biossegurança, avaliação de impactos ambientais, restauração ecológica no RS, entre outros de curta duração dentro da área ambiental.','Possuo registro no Conselho Regional de Biologia - CRBio 110948/03-D','Administrativa, Comercial, Licenciamentos, Engenharia','https://drive.google.com/open?id=1oUK8GAWEY4OFGLx4z-Ni-wF9WtrsGhVI',NULL,'Instagram','Carol Volpato','2.000,00','Sim','Construtora Sotrin: RH Jocemara (55) 99946 1905
Pilecco Nobre Alimentos: Fernando Marton (55) 99986 0540
Oficina Cartech: Guilherme Bonazza (55) 99924 5637
Fazenda Casa de Carnes: José Luiz (55) 99948 2434
Patram: Sgt Fortes (55) 99703 0665','Quero inscrever-me no banco de talentos da Young!','Sou Bruna, 27 anos, natural de Alegrete. Já trabalhei em escolas do Município e Estado como professora, atualmente dou aula particular e sou consultora ambiental. Busco estar sempre me atualizando na área ambiental, por isso busquei a especialização em perícia e auditoria ambiental. Desejo a possibilidade de poder mostrar para as empresas que as questões ambientais não são mais um problema burocrático, mas sim uma porta para novas oportunidades e visibilidade comercial. Atualmente, sou voluntária no Projeto da prefeitura "De Qorpo & Alma", onde promove-se encontros com mulheres de comunidades carentes e realiza-se diversas ações sociais.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-05T19:10:00.000Z'::timestamptz),
  ('Priscila Skarlet Flores de Souza','priscila.skarlet@gmail.com',NULL,'997464623','1992-10-10',33,'Solteiro(a)','0','Não','Estância Velha/rs','https://drive.google.com/uc?export=view&id=1gJVq25Mtmzd1DsubYJz5EfLU7ii-Jn98','Engenharia Ambiental e Sanitária','Ensino Superior Incompleto','ULBRA - Universidade Luterana do Brasil','2022-07-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Unimed VS
Estagiária Segurança do Trabalho
início: 05/2014 Fim: 10/2015
Atividades: Preenchimento de PPP, acompanhamento em visitas técnicas, coleta de informações para o PPRA e PCMSO. Auxilio na renovação do PPCI da empresa.

CEPPED (Ulbra)
Estágio obrigatório de Engenharia Ambiental
Início: 04/2021 Fim: 07/2021
Atividades: Auxilio na pesquisa e análise de um novo produto que estava sendo patenteado. O produto consistia em um adstringente que remove medicamentos de efluentes.','Técnico em Segurança do Trabalho',NULL,'Administrativa, Licenciamentos, Engenharia',NULL,NULL,'Indicação','Tauan Fraga','R$2.000,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sei que não possuo muita experiência, mas estou em busca de uma oportunidade. Sou muito dedicada em cada uma das minhas funções, sempre busco qualificações que me aprimorem e me auxiliem a fazer diferença na empresa onde estou inserida. Agradeço desde já por qualquer oportunidade que possa aparece.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-05T20:38:00.000Z'::timestamptz),
  ('Patrícia Sibele da silveira santos','ppaatyyster@gmail.com',NULL,'55999964256','1978-11-27',47,'Uniao estavel','2','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=19QzTiuFOQ_DXHmE6-EX1Nj-ejC9ApDTN','Administração de empresas','Ensino Superior Incompleto','Unopar',NULL,'Não, no momento pausei/parei por um período.','Baklize, Fiscal de loja, 16/03/2020 estou atualmente, desempenho a função de fiscalizar toda a estrutura da empresa, fiscalizar a entrada e saída de funcionários, fiscalizar clientes se não estão surrupiando produtos da loja sem fazer o pagamento, ver se nos setores está tudo funcionando em perfeitas condições, lido com vários tipos de planilhas de controle.','Vigilante, formada pelo GAT','Vigilânte','Comercial',NULL,NULL,'Instagram','Fui influenciada pela carol volpato','Comercial','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-05T22:21:00.000Z'::timestamptz),
  ('Fabricio Gabriel Heldt','fabricio.heldt@gmail.com',NULL,'51996224608','1995-03-25',30,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=13UHnHk03KFrIuW5KjqCZO1uV21okrJLE','Administração de empresas','Ensino Superior Incompleto','Faccat','2023-03-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Posto Marco zero 
Caixa ( Conveniência)',NULL,'Rotinas administrativas','Comercial',NULL,NULL,'Instagram','Não','1500','Sim',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-05T23:56:00.000Z'::timestamptz),
  ('Géverson Carvalho Luciano','geverson1980@gmail.com',NULL,'519999324783','1980-05-23',45,'Casado(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1wNqD0xaSM8Xo7AY9hB91AnTDhyrso_o8','Processos Gerencias','Ensino Superior Completo','Uninter','2012-08-18','Sou formado','Bianchin Ind. Arrozeira Ltda- coordenador comercial -  05/05/2021 atualidade - prospecção e atendimento a clientes.
J. Equipamentos e Montagens - auxiliar administrativo- 01/09/2020 30/04/2021 - faturamento, controles bancários, atendimento a clientes.
RR Shoes - auxiliar financeiro -  19/06/2017 03/08/2020 - negociações bancárias, antecipações de títulos,  negociações com clientes em atraso..',NULL,NULL,'Administrativa, Financeiro',NULL,NULL,'Indicação','Cássio','A combinar','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-07T10:54:00.000Z'::timestamptz),
  ('Mauri da Silva Ramos','mauri.silva17@hotmail.com',NULL,'995393757','1995-02-07',31,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1BCxlmbVsQW3ymI_0yJHWUHlBnUk8zCnV','Técnico edificações','Ensino Médio Completo','Unipacs','2023-01-13','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Sem experiência','Edificações, técnico de computador','Certificado de operação de computador','Arquitetura','https://drive.google.com/open?id=1uTjbEAx84iWkVqgdsoBzNXUqQUvk3z_O','https://drive.google.com/open?id=1DvSxv4g8D95f1VjUsz5kyYs02Uk9xunC, https://drive.google.com/open?id=1WZntStM2Er-Ow8y8HH0xyx6HKlEIwUfZ','Instagram','Não','Sem expectativa','Sim','Lh arquitetura','Quero inscrever-me no banco de talentos da Young!','Quero poder acrescentar na empresa buscar sempre o melhor para o crescimento da empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-07T15:46:00.000Z'::timestamptz),
  ('Angélica Machado da Cunha','angelicacunha166@gmail.com',NULL,'51991943662','1992-03-22',33,'União estável','2','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1WpmVXQtPeYw3xDG0CEnBZvBZdyOIK6NU',NULL,'Ensino Médio Completo',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Auxiliar administrativo',NULL,'Secretariado executivo.','Estágio','https://drive.google.com/open?id=1KIJboU6T89fXOmdSBkR9n460v37Ro_my',NULL,'Agência de Empregos','Nao','A negociar!','Sim','Zé Carlos, 999277127','Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-08T18:18:00.000Z'::timestamptz),
  ('André Chaves','andre_chaves_1@hotmail.com',NULL,'85996568487','1993-12-15',32,'Solteiro(a)','0','Sim','Tenho Possibilidade De Residir Em Qualquer Das Cidades Listadas','https://drive.google.com/uc?export=view&id=1aH75hslDzTaFS-xVMWIE-KyEkBh7T3z2','Engenharia Civil','Pós-graduação Incompleta','Universidade de Fortaleza','2019-12-23','Sou formado','Qualitas Estrutural - Projetista Estrutural - 07/2018 a 07/2020 - Auxílio na elaboração de projetos estruturais e laudos técnicos.

Pilotis Engenharia - Engenheiro Civil - 11/2020 a 07/2021 - Elaboração de projetos estruturais, laudos técnicos e consultorias.

Autônomo - 08/2021 ao presente momento - Elaboração de projetos estruturais, acompanhamento de obras, consultorias, etc.','Estou cursando pós-graduação em Engenharia diagnóstica e tenho experiência com projetos de estrutura.',NULL,'Financeiro, Licenciamentos, Engenharia','https://drive.google.com/open?id=1VtkmRoC4Hu5Uf-diAv9bZBAE3SPjMU5u',NULL,'Agência de Empregos','Não','7000','Sim','Qualitas Estrutural: 8530361566 (Falar com Mario Esmeraldo/Sócio diretor)

Pilotis Engenharia: 85997770525 (Falar com Bergson Matias/Sócio diretor)','Engenheiro Civil','Sou uma pessoa tranquila. Tenho interesses e aptidões com informática no geral. Gosto de música e cinema. E tenho fascinação por conhecer e viver coisas novas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-08T21:16:00.000Z'::timestamptz),
  ('Carlos de Paoli','carlosdepaoli@hotmail.com',NULL,'21999994283','1967-05-12',58,'Casado(a)','1','Sim','Rio De Janeiro/rj','https://drive.google.com/uc?export=view&id=1BbURhGJWXfAC7N-_Vv53GizHBBPKds01','Engenharia Civil','Pós-graduação Completa','Universidade Veiga de Almeida','1991-03-15','Sou formado','1) Jockey Club Brasileiro – agosto de 2012 a janeiro de 2021
Gerente do Departamento de Engenharia e Hipódromo

Responsável pelos setores de engenharia, manutenção e operação do Hipódromo da Gávea. Atuação no planejamento, execução e fiscalização das obras na planta do Hipódromo ou Sede Centro. Previsão orçamentária de obras e serviços, elaboração de Termo de Referência para contratação, cronograma físico e financeiro. Avaliação e aprovação no sistema (Volp) de comparativos de preços de materiais e serviços. Observância as atividades de manutenção preventiva: dimensionamento da equipe, logística, recursos de materiais, equipamentos e disponibilidade técnica. Supervisão da equipe de terceirizados garantindo a qualidade dos serviços prestados, a normalidade operacional e segurança do trabalhador. Confecção de relatórios gerenciais para prestação de contas à diretoria.

Principais Realizações: Reestruturação do Departamento de Engenharia; Implantação de processos e rotinas de manutenção; Acompanhamento da produção dos setores ligados a engenharia e operação; Modernização do processo de controle, acompanhamento e produção nos atendimentos de serviços com melhoria no planejamento e logística das obras.

2) Sinco Consórcio Técnico – dezembro de 2010 a agosto de 2012
Gerente da Obra do Ed. Venezuela

Responsável pela coordenação, gerenciamento, produção e alocação de recursos da obra de retrofit do Ed. Venezuela nº 43. Foco na produtividade, logística, segurança do trabalho, cumprimento dos prazos e gestão de contrato dos terceirizados, comandando uma equipe de 100 colaboradores dentro do canteiro de obras.
Observância as atividades executivas e de compras da obra em conformidade as exigências da certificadora, respeitando todos os quesitos ambientais, a fim da obra obter o “Selo Verde”.

Principais Realizações: Adequação de projetos e prazos decorrentes de surpresas no curso da obra (comuns em obras de retrofit) gerando menor impacto no cronograma e custo do projeto.

3) Jockey Club Brasileiro – abril de 2010 a dezembro de 2010
Gerente do Departamento de Engenharia e Hipódromo

Responsável pelos setores de engenharia, manutenção e operação do Hipódromo da Gávea. Gerenciamento de contratos de fornecedores e facilities. Planejamento de recursos e logística para desenvolvimento das manutenções preventivas e corretivas. Avaliação e aprovação das medições, recursos, atividades e cronograma de obras. Previsão orçamentária anual e gerenciamento de recursos. Garantia da segurança do trabalhador.

4) Aliança Fôrmas e Escoramentos – janreiro de 2007 a abril de 2012
Gerente de Obras e Contratos

Responsável pelo gerenciamento das obras, coordenando as frentes de trabalho e resultados produtivos e financeiros, qualidade, cumprimento de prazos, administração dos recursos, logística e segurança do trabalho, comandando uma equipe com mais de 900 funcionários.

Principais Realizações: Gestão de 1.774.094,00m2 de fôrmas, 109.254,00m3 de lançamento de concreto e 27.235,00m3 de escavação em diversas obras da empresa. Participação na implantação de metodologias operacionais, que geram maior velocidade executiva, receita e qualidade nas obras executadas. Elevação no número de obras da empresa e seu consequente crescimento.

5) Jockey Club Brasileiro – novembro de 1996 a janeiro de 2007
Gerente do Departamento de Engenharia e Hipódromo

Responsável pelos setores de engenharia, manutenção e operação do Hipódromo da Gávea. Gestão de contrato de facilities. Observância a segurança do trabalho de todos os colaboradores.

Principais Realizações: Implantação de metodologia de programação e controle dos serviços executados, organizando o organograma do Departamento de Engenharia e gerando maior produção e qualidade nos serviços. Implantação de procedimentos de segurança do trabalho, com elevação nos resultados de produção e maior interação entre as equipes de trabalho.


6) OUTRAS EXPERIÊNCIAS

Lps Consultoria e Engenharia - Engenheiro Residente. 1991 a 1996.
Engenheiro Civil - Autônomo.  1993 a 1994.
Diretriz Engenharia Ltda - Gerente de Engenharia. 1992 a 1993.','Engenharia de Segurança do Trabalho','Prêmio "Professor Antônio Alves Noronha", devido a 2ª colocação no Curso de Engenharia Civil - estruturas, da Universidade Veiga de Almeida','Engenharia','https://drive.google.com/open?id=1L42XIXkYLNfdIzLMIjc0wdDt0uIqzKDY',NULL,'Agência de Empregos','Não','R$12.000,00','Sim','Alberto de Oliveira Kling (Cel. 21 98202-1568) / Marco Aurélio da Fonseca (Cel. 21 99596-9297)','Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-08T22:21:00.000Z'::timestamptz),
  ('Aldo Werle dos Santos','aldowerlesantos@hotmail.com',NULL,'51995669187','1985-09-23',40,'Casado(a)','0','Sim','Santa Cruz Do Sul/rs','https://drive.google.com/uc?export=view&id=1yhim1819tXfzb7cXXA1y_nTLzbB0M1Yr','Engenharia Civil','Ensino Superior Completo','Universidade de Santa Cruz','2014-12-12','Sou formado','EMIBM Engenharia e Inovação • Porto Alegre/RS • 04/2021 – 09/2021
Empresa de engenharia 
Engenheiro Civil
●	Gestão e acompanhamento de obras retrofit e reformas
●	Gestão de contratos de terceiros e negociação com fornecedores de insumos e mão de obra
●	Atendimento e interação com stakeholders 
●	Liderança de equipes multidisciplinares
●	Medição dos serviços

Werle Engenharia • Santa Cruz do Sul/RS • 07/2018 – 12/2020
Empresa de engenharia 
Engenheiro Civil
●	Gestão e acompanhamento de obras hospitalares (bunker e ambulatórios) 
●	Gestão de contratos de terceiros e negociação com fornecedores de insumos e mão de obra
●	Atendimento e interação com stakeholders 
●	Liderança de equipes multidisciplinares
●	Elaboração de projetos estruturais e maquetes eletrônicas (Março de 2020 até Dezembro de 2020)

Autônomo • Santa Cruz do Sul/RS • 03/2017 – 06/2018 Autônomo atuando na área de projetos e execução de obras Engenheiro Civil
●	Execução de obras habitacionais
●	Elaboração de projetos estruturais e complementares
●	Elaboração de orçamentos, laudos e relatórios técnicos
●	Estudo de viabilidade de empreendimentos imobiliários

Construtora Sintra • Porto Alegre/RS • 09/2014 – 07/2016 Empresa de engenharia e pavimentação
Engenheiro Civil
●	Gestão e acompanhamento de obras de infraestrutura e terraplanagem (rede de água, rede adutora de água, rede de esgoto cloacal e pluvial, reservatório elevado tipo intze, ETA, ETE, pavimentação, etc)
●	Liderança de equipes em obras simultâneas
●	Elaboração de projetos (redes de esgoto cloacal e pluvial, fôrmas para reservatório tipo intze, escadaria hidráulica, abastecimento de água, entre outros)
●	Controle das documentações das obras e dos projetos as built
●	Medição dos serviços',NULL,NULL,'Engenharia','https://drive.google.com/open?id=1oiChT8Q6cBHfOFpOsFV2NtrqTm5P_kuJ','https://drive.google.com/open?id=1pAmiZUCgJdwfqaHjZTeOtY_hIlwhbMb4, https://drive.google.com/open?id=1IFe96Gd899Tr96EGHTfD95yYtI612QQR, https://drive.google.com/open?id=1uTuQbj71kYc-w6vhoBemNP7jsDwnhJlD, https://drive.google.com/open?id=1eX1-Ae3LGzXWDTP5oSO635ItmV5Snflx, https://drive.google.com/open?id=1t14cQmTKU3yPDyJLJWtoBn4gt4lL3OOX','Agência de Empregos','NÃO.','5500','Sim',NULL,'Engenheiro Civil','Tenho conhecimento das ferramentas: AutoCAD, Revit, Robot, TQS, CypeCAD, Augin, MS Project, Excel, Word, Sienge, entre outros.

Fiz trabalho voluntário de pesquisa, que segue: Auxilio na revisão bibliográfica. Estudo de procedimentos para definir e executar vãos de portas e janelas. Verificação técnicas para executar as instalações elétricas e hidráulicas nas paredes pré-fabricadas. Auxilio no projeto de pré-moldados para ser utilizados no interior das paredes para vergas, contravergas e coxins. Estudo de locais onde serão necessárias ferragens horizontais e verticais no interior das paredes. Verificação de formas de fixação e amarração de ferragens necessárias para amarração das paredes nos encontros entre elas. Técnicas para transporte das paredes do local de execução até depósito intermediário na fábrica. Contribuição no levantamento das dimensões das paredes, equipamentos e capacidade necessárias em função das dimensões das paredes. Apresentação do trabalho em congressos de iniciação cientifica.
https://online.unisc.br/acadnet/anais/index.php/semic/article/view/11568

Trabalhei também como Diretor de Eventos no diretório acadêmico da faculdade que estudei, e organizei a primeira Competição de Pontes de Espaguete.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-08T22:21:00.000Z'::timestamptz),
  ('Carlos Henrique Schmidt','carlos.schmidt.eng@gmail.com',NULL,'54996412768','1994-02-03',32,'Solteiro(a)','0','Sim','Caxias Do Sul/rs','https://drive.google.com/uc?export=view&id=1cz9n0uMJYD-CfZnkTGFFSj7enYK9Q39o','Engenharia Civil','Ensino Superior Completo','Universidade de Caxias do Sul','2020-12-20','Sou formado','Primeira:
1 - Cemar Legrand - Atual Gl Eletro eletrônicos
2 - Menor aprendiz
3 - 02/2010 - 12/2011
4 - Aprendiz no curso de eletricista de manutenção com ênfase em automação industrial, eleito aluno destaque da turma.

Segunda:
1 - Motiontech automação industrial
2 - Eletricista industrial
3 - 05/2012 - 01/2013
4 - Eletricista montador de quadros elétricos, manutenção de quadros elétricos, instalações industriais.

Terceira:
1 - Mattana e Fianco
2 - Eletricista
3 - 01/2013 - 09/2014
4 - Eletricista industrial, montagem de máquinas, manutenção de máquinas, projetos elétricos, atendimento ao cliente.

Quarta:
1 - Universidade de Caxias do Sul
2 - Técnico de laboratório de materiais de construção civil
3 - 09/2014 - 08/2019
4 - Controle tecnológico de materiais de construção civil, práticas de construção civil, atendimento ao aluno, orientação de acadêmicos, estruturação de laboratório

Quinta:

1 - Treviso arquitetura e construções
2 - Estagiário
3 - 02/2020 - 08/2020
4 - Estagiário de obra, medições de empreiteiros, supervisão de atividades, solicitação de materiais;

Atual:
1 - Serrana Comércio de Casas LTDA.ME.
2 - Fiscal de obras
3 - Desde agosto de 2020
4 - Fiscalização de obras, gerenciamento de equipes, solicitação de materiais, pós obra, medições, pagamento de terceiros, atendimento ao cliente.','Eletricista de manutenção com ênfase em automação industrial - 1600h
Inglês intermediário (pausado)',NULL,'Engenharia','https://drive.google.com/open?id=1E1NOQ-4-sUWl8VS7zBbqGsmIMRnucudz',NULL,'Agência de Empregos','Não','Acima de R$ 5000,00','Sim','Gelso Fianco - (54) 9 8404-0091 - Mattana e Fianco;

Lucas Sólio - (54) 9 9177-2174 Renato Sólio arquitetura/Treviso arquitetura e construções;

Vinício Cecconello - (54) 9 9633-7917 - Universidade de Caxias do Sul','Engenheiro Civil','Olá! Me chamo Carlos Schmidt, tenho 27 anos (quase 28), sou formado em Engenharia Civil pela Universidade de Caxias do Sul. Dentre as minhas habilidades que se destacam estão: Familiaridade com softwares diversos (AutoCAD, Revit, Eberick, Pacote office, SketchUp, SolidWorks, Inventor, ArchiCAD) e informática, sou uma pessoa comunicativa, resiliente e que gosta de aprender coisas novas. 
Recentemente tive que trancar o curso de inglês no qual eu estava matriculado, por motivos financeiros, mas é uma língua que me atrai e tento aprender nas horas vagas. No meu atual emprego estou em constante movimento, atualmente supervisionando obras nas cidades de Dom Pedrito, São Borja, Ivoti, Santa Maria e Caxias do Sul, devido a localização geográfica, costumo viajar bastante.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-08T22:58:00.000Z'::timestamptz),
  ('Daniel Cardoso Leite','arq.danielleite@hotmail.com',NULL,'51999929458','1977-05-14',48,'Solteiro(a)','0','Sim','Canoas/RS','https://drive.google.com/uc?export=view&id=1outryOvOTsHwrsOkm8iGNAMYbb3tB2R8','Arquitetura','Ensino Superior Completo','Ulbra/canoas','2006-01-21','Sou formado','Currículo em anexo no portfólio com informações.',NULL,NULL,'Arquitetura, Novos Negócios, Engenharia','https://drive.google.com/open?id=1oHj4VKM9QXcL0D4c6WEk56j7w91gSNWI','https://drive.google.com/open?id=1G13oiIQJRZT1kRlCnYKiyZdUAMRuMFXi','Agência de Empregos','Não','R$7.500,00','Sim',NULL,'Arquiteto e Urbanista',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-08T23:09:00.000Z'::timestamptz),
  ('Maria Angélica da Silva','mariaangelica2015@hotmail.com',NULL,'64992987721','1996-04-23',29,'Solteiro(a)','0','Sim','Corumbaíba/go','https://drive.google.com/uc?export=view&id=1DgfdSrTLqmD068K6KwIErXNbTLYW_3vh','Engenharia Civil','Ensino Superior Incompleto','UNA - CATALÃO','2021-12-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Tenho experiência apenas dos estágios',NULL,NULL,'Administrativa, Licenciamentos, Engenharia','https://drive.google.com/open?id=14_8-tjJKwph6tq_EWFC89JkwvPshfGjP',NULL,'Agência de Empregos','não','2.500,00','Sim',NULL,'Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-09T00:11:00.000Z'::timestamptz),
  ('Laura Ferraz da Luz','laura_ferraz-@hotmail.com',NULL,'51998705124','1998-05-02',27,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1lKN9rEjW3umWeliY3DvPTPQUXjAh7r1k','Jogos Digitais','Ensino Superior Incompleto','Centro Universitário Ritter dos Reis','2022-07-15','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1)Zezo Imóveis 2) Secretária 4) Gerenciei os atendimentos e fiquei responsável pelos demais afazeres da empresa.','Curso de inglês intermediário, Curso básico da Microsoft, Curso de Design Gráfico para Social Media.',NULL,'Administrativa, Estágio, Marketing',NULL,NULL,'Indicação','Maria Eduarda Meregali','1.500','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-09T00:29:00.000Z'::timestamptz),
  ('Flávia Braun Cardeal','fbrauncardeal@gmail.com',NULL,'51996583880','2001-10-07',24,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1poZR2gYBV1iK6Md1g7oHmkyLxS7GkN1t',NULL,'Ensino Médio Completo','Centro Universitário Leonardo da Vinci (UNIASSELVI)','2024-12-10','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Indústria de calçados RR Shoes/ Via Uno; Assistente de estilo; 01/10/2019 até 10/06/2020. Atendimento aos fornecedores, desenvolvimento de planilhas e cartelas, responsável pelo showroom da empresa, etc.
Lojas Pompeia; Vendedora; 03/11/2020 até 06/11/2021. Vendas diretas e indiretas, foco em metas e organização de Visual Merchandising no setor.','Além de estudar diretamente na área de Administração, também fiz um curso de inglês, no período de 1 ano na escola de línguas Be you do you Company.',NULL,'Administrativa, Comercial, Estágio, Financeiro','https://drive.google.com/open?id=1RI4ZMF0rFOse1coyVFWQzyJdhQAd4FVx',NULL,'Agência de Empregos','Maria Eduarda Meregali','R$1.500,00','Não',NULL,'Estágio Financeiro','Tenho bastante experiência com atendimento, então considero a boa comunicação como uma habilidade minha, assim como, experiência com Marketing visual, conhecimentos gerais na área administrativa e facilidade em me adaptar com funções diferentes.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-09T12:15:00.000Z'::timestamptz),
  ('Douglas Luis Carissimo Robaldo','douglas.robaldo@gmail.com',NULL,'54991928585','1991-11-01',34,'Casado(a)','1','Sim','Passo Fundo/rs','https://drive.google.com/uc?export=view&id=1sGWZzVQ2y4_ue68pV_N4PCeqHIHSMmiw','Engenharia Civil','Pós-graduação Incompleta','Faculdade Meridional - IMED','2018-08-04','Sou formado','1) Rede de Farmácias São João; 2)Analista de Engenharia III; 3) 01/10/2019 a 01/04/2020; 4) Acompanhamento de obras e reformas da rede, elaboração de orçamentos, contratação de prestadores de serviços, compra de materiais, comunicação do andamento das obras com a gerência através de relatórios e fotos diárias.','mestrado em engenharia civil, conhecimentos na área de orçamentos, cronogramas, contratação de prestadores de serviços, acompanhamento técnico de obras seja na parte civil ou geotécnica. Obras de estruturas em concreto armado, estrutura metálica e obras pré-moldadas',NULL,'Engenharia','https://drive.google.com/open?id=1EyirEY-goJv89N0ul6Qe_QYbevZq8fNY',NULL,'Agência de Empregos','Não','6.500,00','Sim','Eduardo Madeira Brum Engenheiro Civil (EMB Engenharia) - 54 99652-3628
Luiz Gustavo Laval - Engenheiro Civil (Laval Engenharia) - 54 99967-7036','Engenheiro Civil','Formado em engenharia civil, praticante de leituras diárias, domínio do software TQS, utilizado para dimensionamento de estruturas em concreto armado, conhecimento em dimensionamento de fundações.
Participei como voluntário do Movimento Escoteiro por mais 15 anos, ingressando ainda como jovem.
Praticante de esportes (futebol, corrida, bicicleta)','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-09T12:43:00.000Z'::timestamptz),
  ('Matheus Beserra Cavalcanti','matheus.cavalcanti7@gmail.com',NULL,'51983345049','1997-01-20',29,'Casado(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=11Qpa6RBw-rAe55qRh54ar_xYFXUNdOja','Engenharia Civil','Pós-graduação Incompleta','Universidade Federal de Pernambuco (UFPE)','2019-09-17','Sou formado','J CRUZ EIRELI – Porto Alegre/RS
Responsável técnico (autônomo) – desde ago. 2020. 

✓ Elaboração de orçamentos e acompanhamento de execução de serviços de manutenção de fachadas.

SAQUE E PAGUE REDE DE AUTOATENDIMENTO – Porto Alegre/RS
Analista de Gestão de Numerário – desde fev. 2021. 

✓ Gestão de numerário dos terminais de autoatendimento;
✓ Previsibilidade de numerário nos terminais, bem como programação de coleta e abastecimento dos mesmos;
✓ Análise de relatórios e dados disponibilizados pelas transportadoras.

LOJAS PERNAMBUCANAS – Canoas/RS
Líder de apoio - jun. 2019 a fev. 2020. 

✓ Gestão de diversas atividades administrativas da loja, tais como: acompanhamento dos índices de satisfação do cliente; atualização diária das metas de vendas de produtos financeiro e acompanhamento do desempenho dos colaboradores; gestão financeira e gestão de equipes de análise de propostas de créditos;
✓ Atingimento das metas de vendas de produtos financeiros; Índice de atendimento ao cliente superior a 90%; Funcionário do mês por 2 meses consecutivos.

INSTITUTO FEDERAL DE PERNAMBUCO – Belo Jardim/PE
Estagiário - jan.2018 a jun. 2018. 

✓ Acompanhamento dos serviços de terraplenagem e locação da obra; Acompanhamento das escavações; Acompanhamento da execução das fundações: concretagem de sapatas e vigas baldrame; Rastreamento e controle tecnológico do concreto;
✓ Etapa da obra executada dentro do prazo conforme orçamento e cronograma previsto na licitação. Qualidade do concreto certificada através de ensaio.

LABORATÓRIO DE GEOPROCESSAMENTO GEOLAB – Caruaru/PE
Estagiário - ago.2018 a jun. 2019. 

✓ Implementação da utilização de softwares para auxiliar no mapeamento e atualização do cadastro imobiliário de setores definidos como prioritários pela prefeitura de Caruaru. Feedback constante com os gestores visando aplicar os princípios da melhoria continua e auxilio no acompanhamento dos índices de produtividade dos demais estagiários.
✓ Resultados: Maior arrecadação de IPTU da história do município.','Atualmente faço Mestrado em Engenharia Civil na UFRGS.',NULL,'Administrativa, Licenciamentos, Engenharia','https://drive.google.com/open?id=1kVMHRBUVDj6r8E7ruAkYyEw-MAkLHnis',NULL,'Agência de Empregos','Não.','R$3.000,00','Sim',NULL,'Analista de Engenharia','Pacote Office avançado; AutoCAD avançado; Revit intermediário; MS Project intermediário.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-09T14:35:00.000Z'::timestamptz),
  ('Philipe Silva Barbosa','philipebarbosa18@gmail.com',NULL,'32988184653','1992-12-24',33,'Solteiro(a)','0','Não','Leopoldina/mg','https://drive.google.com/uc?export=view&id=1mBhHdKT6eCi3X7NzOSR7tX86T6qS_gSC','Engenharia Civil','Pós-graduação Incompleta','Rede de Ensino Doctum','2021-06-04','Sou formado','C R E - Engenharia
Gestor de Projetos desde Junho/2020 até a data atual 
Analise e Correção de projetos civis , acompanhamento de execução de obras , regularização de projetos e gerenciamento
de projetos totais','Pós Graduando em Estruturas em concreto armado e Gestão de projetos','Engenheiro Civil','Arquitetura, Financeiro, Engenharia','https://drive.google.com/open?id=18hvcNn59RgWHbvBpPCAYURwRcJvGU_az',NULL,'Agência de Empregos','não','R$3.500,00','Sim','CRE - Engenharia / Leopoldina MG / tel: (32) 3441-1387','Engenheiro Civil','Bem, descrever o desafio profissional sem dúvidas começa no momento de formatura, ainda perdido ainda sem entender o que acontecera na carreira o que vai ser daqui pra frente. Eu me deparei com a seguinte questão começar a minha própria empresa ou estudar e buscar o campo de uma empresa já consolidada no mercado e busca aprendizado dentro dela também ofertando com os conhecimentos que em tenho adquirido, então a minha opção foi estudar mais ainda trabalhar na empresa onde já tinha um vínculo e hoje me encontro com 5 meses de formação e com o meu CREA ativo no cargo de gestor de projetos de uma construtora da minha região e cursando meu MBA em estruturas de concreto armado. Mas eu creio que essa não seja o meu maior desafio ainda vivido e é exatamente isso o que eu busco uma oportunidade em uma grande empresa em um grande polo nacional para mostrar e adquirir mais conhecimento.
Me encontro pronto para surpreender a vocês com quem posso oferecer a empresa e com que a empresa pode me oferecer. 

Philipe Barbosa 
Engenheiro Civil','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-09T14:58:00.000Z'::timestamptz),
  ('Caio Peixoto Queiroz De Bustamante','caiopeixoto.eng@gmail.com',NULL,'53984644126','1996-02-04',30,'Solteiro(a)','0','Sim','Pelotas/rs','https://drive.google.com/uc?export=view&id=1eqAVHdwRr9HmbdMKOUcYBkb51f9prjmW','Engenharia Civil','Pós-graduação Completa','Universidade Católica de Pelotas','2018-07-28','Sou formado','CS Engenharia; Engenheiro Civil; 20/08/2018 (atualmente); Gerenciamento e execução de obras civis, além de reformas residenciais. Trabalhando como autônomo em canteiros de obras, planejando em controlando a construção.','MBA em Gerenciamento de Obras com foco na qualidade e no desemprenho da construção.',NULL,'Administrativa, Engenharia','https://drive.google.com/open?id=1QkDc4I_R69WpfBPf5NGIj99j3DjHPuGL',NULL,'Agência de Empregos','Não','R$4.000,00','Sim','Stephania: (53) 981370004','Engenheiro Civil','Estou em busco de oportunidades visando o crescimento pessoal e profissional. Busco, sempre, o conhecimento, então realizo diversos cursos online para evoluir diariamente. Fiz cursos de autoCAD e REVIT Architecture, além de Excel. Realizei um curso de inglês, completando-o e adquirindo um certificado da universidade de Cambridge.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-09T17:25:00.000Z'::timestamptz),
  ('Erica Lisboa Theodozio','ericalisboa.tcc@gmail.com',NULL,'55996851876','1993-10-07',32,'Solteiro(a)','1','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=18Ef2v_GWnP_tEcbxiufsk6vLBt34lqAe','Administração de empresas','Ensino Superior Completo','Unopar','2017-03-01','Sou formado','2012 a 2017 - Empresa TCC Saneacon - Aux de excritorio e financeiro.
2017 ate o momento - Empresa JS Maquinas Agricolas Limitada - Aux administrativa e financeiro',NULL,'Sim','Administrativa','https://drive.google.com/open?id=1kpBhS-1lONvdxjeVmEbxuE1M444UtvIo',NULL,'Instagram','Carol Volpato','1900','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-09T17:49:00.000Z'::timestamptz),
  ('Juliana Mattos Farias','julianamattos00@hotmail.com',NULL,'21964049296','1997-02-01',29,'Solteiro(a)','0','Sim','Rio De Janeiro/rj','https://drive.google.com/uc?export=view&id=1h8JR7ujUE4C87XPJyy1I9S39BH91ZLra','Engenharia Civil','Pós-graduação Completa','Universidade Estácio de Sá','2018-12-10','Sou formado','1) Braz e Lima Engenharia; 2) Estagiária de Engenharia Civil; 3) 2017 - 2018; 4) Realização de planilhas de medição de equipamentos e de funcionários; planejamento,
controle e acompanhamento de obra de infraestrutura e pavimentação (loteamento);
execução de projetos de loteamentos residenciais; orçamento de materiais, equipamentos e
serviços de canteiro de obras em contato direto com fornecedor.
1) Braz e Lima Engenharia; 2) Supervisora de Projetos; 3) 2019 - 2021; 4) Planejamento, controle e acompanhamento de obra de infraestrutura e pavimentação
(loteamento) e obras residenciais e comerciais; execução de projetos; orçamento de
materiais, equipamentos e serviços de canteiro de obra em contato direto com fornecedor;
acompanhamento de processo de licenciamento de obras, legalização de imóveis junto a
Prefeitura e usucapião com cartório; confecção de propostas comerciais com o cliente.
1) Engenheira Civil; 2) Autônoma; 3) 2021 - atual; 4) Supervisão de execução de obras residenciais; acompanhamento de processo de licença de obras na Prefeitura; responsabilidades técnicas referentes à execução de reparos e reformas residenciais; avaliação estrutural; confecção de projetos arquitetônicos e estruturais.','Pós-graduação stricto sensu: Mestrado em Engenharia Civil - área de concentração: Estruturas (andamento); Pós-graduação lato sensu: Especialização em Engenharia de Estruturas; Técnico: Desenho de Construção Civil; Cursos complementares: Procedimento de Legalização de Projetos/Obras – Prefeitura Municipal RJ; Reforço de Estruturas de Edificações em Concreto Armado com o Cypecad; Power BI com Ênfase em Geoprocessamento; SketchUp Pro – Básico e Avançado.','CREA-RJ','Licenciamentos, Engenharia','https://drive.google.com/open?id=1N1tajzDTSOdE1Mn6hx8hkkSUkfAygS-x',NULL,'Agência de Empregos','Não','R$7.000,00','Sim','Uelton Santos de Lima; 21 96436-1728; Braz e Lima Engenharia (atual Lima Engenharia)','Analista de Engenharia','Pacote Office; AutoCad 2D; Cypecad; Cype3D; Inglês Avançado.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-09T22:29:00.000Z'::timestamptz),
  ('Gabriel Fernandes Moura Silva','gabrielfernds29@hotmail.com',NULL,'95981293295','1997-09-29',28,'Solteiro(a)','1','Sim','Boa Vista/roraima','https://drive.google.com/uc?export=view&id=1SMAwfBBxGErsgRsqM1AhQQ7QREWJcNCv','Engenharia Civil','Ensino Superior Incompleto','Universidade Federal de Roraima - UFRR','2022-04-28','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) ENGETEC; 2) Estagiário de Engenharia Civil; 3) 12/04/2021 - 09/08/2021; 4) Realização de diários de obra e relatório fotográfico, Acompanhamento  de serviços com equipe de campo em atividades de terraplenagem, reaterro com compactação, estruturas metálicas, alvenarias, concretagem com concreto CRF, fundação, revestimentos, instalaç0ões hidráulicas e elétricas, pintura, auxílio no cumprimento das normas de segurança. 1) WSK EMPREENDIMENTOS E SERVIÇOS LTDA; 2) Estagiário de Engenharia Civil; 3) 15/08/2020 - 03/02/2021; 4) Realização de relatórios fotográficos, acompanhamento de equipes em campo na área de reformas de praças públicas, escolas da prefeituras e Unidades Básicas de Saúde (UBS). Possuo conhecimento em AutoCad, Revit, OrsaFascio, Excel (pacotes office como um todo), assim como conhecimento em SIENGE. Pela empresa WSK atuei ainda no setor de compras auxiliando na obtenção de materiais para as obras. Nesta empresa embora o contrato de estágio esteja com essas datas, atuei por cerca de 4 meses de forma voluntária afim de aprimorar meus conhecimentos adquiridos no curso.','Pesquisas com agregado reciclado para utilização em pavimentos de tráfego leve, pesquisa para desenvolvimento de artigo sobre comportamento de concreto asfáltico a quente (CAUC) utilizando brita basáltica do estado de Roraima; Projeto de iniciação científica na área de águas para avaliação do funcionamento hidráulico em tubulações dentro de um protótipo; Programas de monitoria durante o curso; realização de eventos científicos dentro da universidade; Participação em congressos nacionais, regionais e locais.',NULL,'Estágio, Marketing, Engenharia','https://drive.google.com/open?id=1YV3UzSQ66DLrhE-OUxbl8bbrM6fr59Cs',NULL,'Agência de Empregos','Não','1500','Sim','Luiz Henrique Oliveira de Souza, (95) 98129-1281 - WSK SERVIÇOS E EMPREENDIMENTOS LTDA; Ciro Lopes Stigliano, (11) 98558-3548 - ENGETEC','Estágio Engenharia e/ou Arquitetura','Tenho conhecimento intermediário em Inglês e consigo conversar fluentemente em Espanhol. Sou dedicado e atencioso e desde pequeno possuo contato com pessoas, o que dessa forma me fez ser uma pessoa comunicativa, proativa e gentil. Trabalho na feira do produtor com minha mãe (setor de banana) desde os 10 anos, o que me faz ter facilidade de comunicação com público em geral. Acredito que o sucesso de qualquer atividade não seja uma ação individual, mas sim a colaboração e atividade em equipe que leva ao sucesso. Sou curioso aos processos e possuo facilidade para aceitar feedbacks. Sou uma pessoa ativa com esporte, cultura e laser e nos meus tempos livres (quando tenho kkk) amo cozinhar para amigos e família.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-09T23:39:00.000Z'::timestamptz),
  ('Natascha Lourega Pawlowski','nataschalpawlowski@hotmail.com',NULL,'55999622766','1994-08-16',31,'Solteiro(a)','2','Sim','Santo Ângelo/rs','https://drive.google.com/uc?export=view&id=1adaYNw1fLDuaNmQ2o89U8X6Si15E6NmH','Engenharia Civil','Pós-graduação Incompleta','Universidade Regional e Integrada do Alto Uruguai e das Missões','2020-08-27','Sou formado','2018 – Bourscheid Engenharia e Meio Ambiente
Cargo: Estagiária de Engenharia Civil
Principais atividades: Elaboração de Relatórios de apoio técnico à Desapropriação. Avaliação e enquadramentos de benfeitorias. Relatório Fotográfico das áreas e imóveis indenizados. 
Auxílio no controle das notas de serviço de drenagem e terraplanagem. Bem como, 
acompanhamento junto à fiscalização da execução e implantação da ERS 165 – Cerro 
Largo/Cândido Godói.

2013 – Callegaro & Irmãos Ltda
Cargo: Auxiliar de Escritório – Menor Aprendiz
Principais atividades: Cadastro de produtores, organização de escala de abate diária, 
rendimento e custos diário-semanais. Emissão de NF. Executar atividades de escritório, tais 
como a separação e classificação de documentos, lançamentos, prestação de informações, controle administrativo, participação na organização de arquivos e fichários, seguindo processos e rotinas estabelecidas, para atender às necessidades da empresa.

2010 a 2012 – Caixa Econômica Federal – PAB Justiça Federal Santo Ângelo
Cargo: Estagiária
Principais atividades: Conhecer a unidade concedente de estagio; identificar principais 
procedimentos realizados na unidade concedente; auxiliar no atendimento; organização e arquivo de documentos; realizar cópias e conferir documentos. Atendimento ao 
público/clientes, secretariado, entre outros serviços solicitados.','Cursando Pós Graduação em Engenharia de Produção.
Cursos de AutoCAD 2D 2012, Proteção Contra Incêndios e Explosões, Construção Civil, Pacotes Office.
Conhecimentos em SketchUp, TQS.',NULL,'Licenciamentos, Engenharia','https://drive.google.com/open?id=1YKFJfSvOQmxnW-LflPsXBNrHreVJbMv6',NULL,'Instagram','Não','3-4 salários','Sim',NULL,'Engenheiro Civil','Me chamo Natascha, sou formada pela Uri Campus Santo Ângelo, atualmente estou finalizando especialização em Engenharia de Produção (Pós Graduação EAD).

Estou em busca de uma oportunidade de inserção ao mercado de trabalho, independente da área. Posso o registro de profissional no CREA ativo e apto para exercer a profissão.

Resido em Santo Ângelo, tenho total disponibilidade de horários e para viagens na região. Como também, possibilidade de mudança de cidade, conforme for necessário.

Me disponibilizo para entrevista, se assim for do interesse da empresa.

Agradeço desde já pela atenção!

Att.


Eng. Civil Natascha Pawlowski
CREA/RS 245911
(55) 9 9962-2766','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-10T00:48:00.000Z'::timestamptz),
  ('Robson Paradeda Corrêa','robsoncorrea1991@hotmail.com',NULL,'51991306778','1991-08-05',34,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1IpINk9zXduMBPv6jOXlKH8k-Wt4y33pD','Engenharia Civil','Pós-graduação Incompleta','Centro Universitário Ritter dos Reis','2018-12-10','Sou formado','Construtora Hera; Engenheiro Civil; 07/2019 a 01/2020; Orçamentos, planejamento e execução das obras, pedido e controle de materiais, medição de empreiteiros, contato com equipe de engenharia do cliente, fornecedores e empreiteiros e demais atividades ligadas a construção civil.

Consórcio Tratenge Engeform; Assistente de Engenharia II; 04/2015 a 12/2018; Análise crítica de projetos, conferência de armação das estacas tipo hélice continua, blocos, lajes, pilares e vigas para liberação de concretagem. Planejamento e supervisão das frentes de serviço de drywall, alvenaria, sistemas de impermeabilização, esquadrias, logística dos balancins e execução do acabamento da fachada predial.

Arquium Construções e Restauro; 12/2013 a 04/2015; Auxiliar de Engenharia; Acompanhamento de obra, relatórios, diário de obra, medição, serviços administrativos e controle do almoxarifado.','Pós-graduando em Manifestações Patológicas com previsão de conclusão em fevereiro de 2022. Possuo cursos certificados em Inspeção Predial e Orçamentos.',NULL,'Engenharia','https://drive.google.com/open?id=12E672NxBeIPyHgaG42aHuloOEOfXaM1y','https://drive.google.com/open?id=1M6q5cM0pBuQpIqweVSg6lVt3wVIKy4K6','Agência de Empregos','Não fui indicado.','4.000,00','Sim',NULL,'Analista de Engenharia',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-10T12:24:00.000Z'::timestamptz),
  ('Rafaela Bremm','rafa-bremm@hotmail.com',NULL,'55999496961','1998-01-14',28,'Solteiro(a)','0','Sim','Santo Ângelo/rs','https://drive.google.com/uc?export=view&id=1kXIL_inoYFRYxIzBD63mHkIWyhge-_iM','Engenharia Civil','Ensino Superior Completo','URI Santo Angelo','2021-01-09','Sou formado','Atualmente estou contratada como técnico orçamentista na WS Engenharia, em Santo Ângelo, comecei em dezembro, logo após o estágio obrigatório da faculdade, que fiz uma parte aqui. Sou responsável pelos projetos que estão sendo executados, aprovei 3 de minha autoria, além do projeto de prefeitura realizo também projetos executivos e estrutural em alvenaria, utilizando o Revit. Também sou responsável por parte do relacionamento com os clientes e quantitativos e materiais. Antes disso, fui estagiária de um professor, de agosto de 2019 até julho de 2020, onde eu acompanhava a aprovação de projetos e auxiliava em laudos. No estágio obrigatório da faculdade, além da experiência inicial na WS, acompanhei a execução das fundações de um prédio de alto padrão de 13 andares aqui de Santo Ângelo, pela empresa Estacasul, de agosto à outubro de 2020.',NULL,NULL,'Administrativa, Novos Negócios, Engenharia','https://drive.google.com/open?id=1VRiivEGxDcFyiCMKkKbSvEY9L7OL5jmg',NULL,'Agência de Empregos','Não','R$4.000,00','Sim',NULL,'Engenheiro Civil','Durante a escola fiz curso de inglês, mas aprendi mesmo mais tarde, me considero no nível intermediário. Durante a faculdade não tive muitos estágios, mas no ultimo ano evolui bastante, aprendi muito sobre Revit, tenho um pouco de conhecimento no TQS e nos softwares do AltoQi, também sei o básico de Qgis. Aprendo fácil, mas gosto de ser incentivada e sempre busco coisas novas quando tenho retorno sobre o que faço, reconhecimento me move, e por isso também desanimo quando dou meu melhor e não tenho retorno nenhum. Sou tímida, estou aprendendo a lidar com o público, mas não tenho medo de desafios e por isso busco novas oportunidades.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-10T14:05:00.000Z'::timestamptz),
  ('Nayra Consentino Fontoura','nayrafontoura@gmail.com',NULL,'55984473983','1994-08-17',31,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1UGHOUpK0v__-YtJmD_f0EHw-4i6lBQNi','Engenharia Civil','Pós-graduação Incompleta','Universidade Federal do Pampa- Campus Alegrete','2021-07-02','Sou formado','-Construtora SOTRIN Ltda. Estagiária de engenharia civil | Março 2021 - Abril 2021
 Estágio obrigatório de final de curso.
Principais atividades:
 *laboração de projetos complementares;
 *Elaboração de documentos e memoriais;
 *Acompanhamento e fiscalização da fase de execução de obras residenciais unifamiliares/multifamiliares e comerciais;
 *Elaboração de quantitativos de materiais de construção civil.
 
-Departamento de Obras da região da Fronteira – CORSAN DEOB-FRO. Estagiária de engenharia civil | Julho 2019 - Dezembro2020
Principais atividades: 
 *Auxiliar na elaboração e atualização de projetos;
 *Elaboração de documentos e memoriais;
 *Acompanhamento e fiscalização da fase de execução de obras de expansão de saneamento nas cidades Alegrete, São Borja e Quaraí;
 *Acompanhamento de medições;
 *Elaboração planilhas orçamentárias de medições;
 *Rotinas administrativas referentes a obras e licitações.

-Construtora CONSTRUART. Estagiária de engenharia civil | Março 2018 - Janeiro 2019
Principais atividades:
 *Elaboração de projetos complementares;
 *Elaboração de projetos arquitetônicos e de regularização;
 *Elaboração de quantitativos de materiais de construção civil.','Durante a graduação fui estagiária pela Corsan durante 1 ano e meio no DEOB-FRO, além de estágios de aperfeiçoamento de curta duração em empresas como Construart e Sotrin. 
Possuo experiência na elaboração de projetos complementares residenciais, além de possuir conhecimento em softwares como AutoCAD, Revit, Sketchup e em sistema TQS de cálculo estrutural, tema de meu trabalho de conclusão de curso. Atualmente realizo uma especialização em Gerenciamento de obras de construção civil.','Certificado em projetos estruturais no TQS: https://engenhabim.com/certificado/008997   Modelagem arquitetônica SKETCHUP PRÓ','Estágio, Engenharia','https://drive.google.com/open?id=1k26Gl8AJvNk61tOqPXgrzJ7z6wc0vYvG',NULL,'Agência de Empregos','Não','RS2000,00','Sim',NULL,'Engenheiro Civil','Sou uma pessoa proativa gosto de trabalhar em equipes. Tenho conhecimento avançado no pacote office e nos sistemas  AutoCad e Revit.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-10T22:20:00.000Z'::timestamptz),
  ('João Daniel Moreno Costa','joaodaniel_mc@hotmail.com',NULL,'45998005352','1993-08-04',32,'Solteiro(a)','0','Sim','Toledo/pr','https://drive.google.com/uc?export=view&id=10DidY1gVphT_Dt17E-eNlxATk1nHWwzJ','Engenharia Civil','Pós-graduação Incompleta','Universidade Tecnológica Federal do Paraná (UTFPR)','2017-12-22','Sou formado','C.VALE - COOPERATIVA AGROINDUSTRIAL, Palotina-PR (Estagiário no Setor de Engenharia)
01-2016 - 03-2016: Acompanhamento de obras de pequeno, médio e grande porte, através de visitas técnicas pela empresa.
TETRIS CONSTRUTORA, Toledo-PR (Estagiário no Setor de Compras)
02-2017 - 02-2018: Realização de cotações e compras de materiais para as obras da empresa, negociação de preços com fornecedores, organização do depósito de materiais, bem como visitas nas obras para verificar o andamento e a necessidade de insumos.
DALLAGO CONSTRUTORA, Toledo-PR (Engenheiro Civil)
05-2018 - 05-2021:
2018-2019– Funções similares às desenvolvidas na empresa Tetris Construtora. Entretanto, com atuação na gerência do Setor de Compras da companhia.
2019-2021 - Atuação no Departamento de Engenharia, focada principalmente na execução de obras industriais e comerciais. Realizava visitas nas obras para orientar em assuntos técnicos, verificar o andamento e a necessidade de materiais, realização de medições, bem como cobrar o cumprimento de cronogramas visando maior agilidade na execução acompanhada de uma ótima qualidade.
Algumas das obras as quais acompanhei a execução:
- Construção de muro de arrimo (Vaccinar)
- Reforma de lagoas e construção de emissário pluvial (C.Vale)
- Reformas de unidades do Sicredi em Toledo e região
- Recuperação de base de silo (Coamo)
- Manutenção em câmara fria (C.Vale)
- Construção de bases de moega e caldeira (GT Foods)
- Construção de centro de distribuição (Bello Alimentos)','Curso de Segurança para Trabalho em Altura – NR35
Realizado no dia 27/11/2019 pela JDM Treinamentos e Assessoria em Segurança do Trabalho.
Curso de Designado para a CIPA - NR05
Realizado nos dias 23, 24 e 25/04/2021 pela JDM Treinamentos e Assessoria em Segurança do Trabalho.
Curso de Proficiência em Língua Inglesa
Com carga horária de 174 horas e concluído no dia 17/05/2021. Realizado pela TopWay English School.
Curso Estratégias do Engenheiro
Com carga horária de 40 horas e concluído no dia 19/05/2021. Realizado pela Avance Engenharia - Cursos e Treinamentos.
Semana da Engenharia de Silos
Com carga horária de 4 horas e realizada nos dias 02, 04 e 06/08/2021 pela FSC Treinamentos em Engenharia Civil.
Minicurso Avaliações e Perícias de Imóveis Urbanos
Com carga horária de 10 horas e realizado entre os dias 23 a 27/08/2021 pela Upgrade Treinamentos e Consultoria.',NULL,'Engenharia','https://drive.google.com/open?id=1Qxh7JRp0VpeUJ5uGI6Zp0fo1NnjjljSx',NULL,'Agência de Empregos','Não','R$4.000,00','Sim','Gustavo Savaris - Contato: (45) 9 9941-6579
Professor Doutor em Engenharia Civil, Universidade Tecnológica Federal do Paraná (UTFPR)
Diego Thomazini Dallago - Contato: (45) 9 9917-0587
Engenheiro Civil e Proprietário, Dallago Construtora','Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-11T17:28:00.000Z'::timestamptz),
  ('Eduarda da Silva Messagi','dudamessagi26@gmail.com',NULL,'97028589','2000-11-26',25,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1UwrsE9p9TPLMUL1FhwFwlMpuGo4QPlrS','Educação Física','Ensino Superior Incompleto','Instituição Universidade de Brasília UnB','2024-11-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Em comércio, como vendedora, loja de calçados.
Marketing Imobiliária.','Curso de Administração e Informática',NULL,'Administrativa, Comercial, Estágio, Marketing','https://drive.google.com/open?id=1FGERmh9oE8RPskLbo1dMva63n-2ao4Qb',NULL,'Indicação','Não','1.200','Não',NULL,'Qualquer vaga','Responsável, ágil e comprometida! Aberta para novos conhecimentos e novas experiências!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-12T16:30:00.000Z'::timestamptz),
  ('Eduardo Uecker Chitolina','eduardo_uech@yahoo.com',NULL,'55999007856','1993-04-22',32,'Casado(a)','0','Sim','Três De Maio/rs','https://drive.google.com/uc?export=view&id=1jLP5fwi0XJ0qHxXvsqenDScmiruRNF4A','Engenharia Civil','Ensino Superior Completo','Unijuí - Santa Rosa - RS','2017-08-11','Sou formado','Kapper Materiais de Construção LTDA - Tuparendi - RS. Atuando como desenhista e auxiliar de Engenheiro Civil utilizando os programas AutoCAD, Revit e Google SketchUp 3D; Auxiliar de topógrafo e em atividades internas da parte administrativa e de vendas. Janeiro de 2013 até dezembro de 2017.
Engenheiro Civil Autonômo - Três de Maio - RS. Atuando com Projetos Arquitetônicos, Projetos Elétricos de pequeno porte, Projetos Hidrossanitários, Projetos Estruturais e Execução de Obras. Janeiro de 2018  até a presente data.','Pós-graduação em Engenharia de Avaliações e Perícias - Unijuí',NULL,'Engenharia','https://drive.google.com/open?id=18Nb6AZTBEYcNw6L7OSJFPTIFRlFe0C5j',NULL,'Facebook','não','4.000,00 a 5.000,00','Sim',NULL,'Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-12T17:15:00.000Z'::timestamptz),
  ('Kevin Jhoneor Rebolledo La Torre','kevinrlt23.krlt@gmail.com',NULL,'55991533316','1994-12-23',31,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1lP1B_WFS_1yYVmk1wLBSjMI5A0HNZ382','Engenharia Civil','Pós-graduação Incompleta','Universidad Nacional de Piura','2017-02-13','Sou formado','Estou me candidatando ao meu primeiro emprego fora do meu país de nascimento.','Formado em engenharia civil na Universidad Nacional de Piura (Peru) e atualmente finalizando mestrado em tecnologia dos materiais do programa de pós-graduação em engenharia da Unipampa.',NULL,'Arquitetura, Estágio, Engenharia','https://drive.google.com/open?id=1lWPnoApYlTCyQLl_rJR-oPTXOqUg08ZQ','https://drive.google.com/open?id=1pvXAgp39jo4YcuOhfgoDHfdm3X1LaB28','Instagram','Não','3000 reais','Sim','Luis Eduardo Kosteski
55 991 512559
Fundação Universidade Federal do Pampa (Unipampa)','Engenheiro Civil','Tenho conhecimento de alguns softwares utilizados em engenharia comp AutoCad, Matias, Eberick, Sketchup, Sap2000, Etabs, etc. Falo espanhol e português fluentes e me interessa bastante os avanços na tecnologia de concreto e materiais de construção.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-13T00:11:00.000Z'::timestamptz),
  ('Gustavo Koltermann Battisti','eng.gkbattisti@gmail.com',NULL,'55996967218','1996-08-30',29,'Solteiro(a)','0','Sim','Ijuí/rs','https://drive.google.com/uc?export=view&id=1PszMCjrPISDy45vct4Vhnw61cLUxWgAz','Engenharia Civil','Ensino Superior Completo','Universidade Regional do Noroeste do Estado do Rio Grande do Sul - UNIJUÍ','2019-12-26','Sou formado','Strutturali Engenharia. Engenheiro Civil. 01/2020 - atualmente. 

- Acompanhamento e vivência em obras;
- Atendimento ao cliente;
- Elaboração de projetos;
- Elaboração de planilhas quantitativas e orçamentárias; 
- Elaboração de propostas comerciais;
- Gestão de obras;
- Legalização de projetos;
- Relatórios semanais das obras; 
- Visitas técnicas;

Município de Ijuí - Poder Executivo. Estagiário. 05/2017 - 05/2019.

- Acompanhamento e fiscalização de obras públicas;
- Análise de projetos;
- Elaboração de projetos;
- Elaboração de planilhas orçamentarias;
- Elaboração de cronograma físico-financeiro para obras públicas; 
- Estimativa de custos;
- Legalização de projetos;
- Participação de todo processo licitatório para obras públicas;
- Relatórios semanais das obras;

Rolim Engenharia. Estagiário. 07/2017 - 07/2019.

- Elaboração de projetos e orçamentos;
- Acompanhamento das obras;
- Legalização de projetos;
- Visitas técnicas;','Possuo alguns cursos, como: Construction Scheduling, Construction Project Management e Master em Silos. Busco me especializar em planejamento e gestão de projetos na construção, contribuindo ainda mais com a empresa, gerando assim mais valor agregado para a empresa.',NULL,'Engenharia','https://drive.google.com/open?id=1P9wprZImR3BP23C8A7SDjfu90Q-uDLXZ',NULL,'Agência de Empregos','Não.','R$4.500,00','Sim',NULL,'Engenheiro Civil','Sempre acreditei que possuir um bom currículo não bastava, era necessário aperfeiçoasse minhas softs skills, hoje sou extremamente comunicativo e colaborativo. Além de possuir conhecimento em vários softwares, possuo interesse em BIM e Lean Construction como aliadas á construção, aumentando a produtividade e buscando eliminar desperdícios.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-15T13:21:00.000Z'::timestamptz),
  ('Henrique dos Santos Kramer','henriiquekramer.95@gmail.com',NULL,'55992025467','1995-11-19',30,'Solteiro(a)','0','Sim','Santa Maria/rs','https://drive.google.com/uc?export=view&id=1p5wMuAsnBn7iItDV7IK6xZnQYJaYcx5M','Engenharia Civil','Pós-graduação Incompleta','UFSM','2020-01-24','Sou formado','Estagiário de engenharia
Sustembio Serviços Ambientais
jul de 2019 - jan de 2020 
Realização de projetos residenciais (estrutural, instalações e arquitetura), loteamentos e de drenagem urbana. Além de acompanhamento de obras e orçamentação.


Estagiário de engenharia 
Caixa Econômica Federal
nov de 2016 - nov de 2018 
Realização de análise de projetos e orçamentos de obras financiadas pelo Governo Federal, além de realizar acompanhamento dos processos licitatórios e da execução das obras.

Estagiário eletrotécnico
Estruturar Engenharia
ago de 2013 - jan de 2014
Estágio obrigatório para obtenção do grau em eletrotécnica. Realizava execução de instalações elétricas.','Estou terminando o Mestrado em Construção civil',NULL,'Novos Negócios, Engenharia','https://drive.google.com/open?id=1B2DnrbmZOVDYqYxl8IhlCCn81jwnESGT',NULL,'Agência de Empregos','Não','3500','Sim','Markus Johannes Stumpp
Engenheiro Civil - GIGOV Caixa Econômica Federal
markus.stumpp@caixa.gov.br','Engenheiro Civil','Sou eletrotécnico formado pela Escola Técnica Estadual 25 de Julho (Ijuí);
Possuo experiência com os softwares AutoCAD, Excel (VBA), Revit e MSProject;
Possuo Inglês avançado;
Fui por 2 anos professor voluntário de física em um curso pré-ENEM popular, que tem o intuito de facilitar o acesso à universidade para pessoas de baixa renda.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-15T18:26:00.000Z'::timestamptz),
  ('Luiz Henrique Ribeiro dos Santos','lhrsribeiro@gmail.com',NULL,'51998074005','1957-09-17',68,'Casado(a)','2','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1WKWQWzYseWi__6wc2ip_Gee1hAre0iDc','Engenharia Civil','Ensino Superior Completo','PUC/RS','1993-06-30','Sou formado','NOME DA EMPRESA: SPO Engenharia de orçamentos - Porto Alegre, RS- Edificações – microempresa
ENGENHEIRO ORÇAMENTISTA: Orçamentação e planejamento de obras novas e reformas, montagem de licitações,para sites de varejo, hipermercados, universidades, escolas e indústrias.
1-Visita técnica; para avaliação dos serviços necessários para realização da obra.
2-Leitura dos projetos e ou levantamento in loco.
3-Levantamentos dos serviços e seus quantitativos.
4-Cotação, dos insumos junto aos fornecedores de materiais e serviços.
5-Montagem das composições de preços unitários, próprias ou de base Sinapi, Pleo Franarin, Orce, conforme solicitação do cliente.
6-Cronograma físico financeiro.
7-Planejamento da obra.
8-Orçamentação dos serviços de obras civis, terraplenagem, pavimentação, instalações elétricas, hidrossanitárias, ar condicionado, etc.

04/15–08/17 NOME DA EMPRESA:UNIÃO SUL BRASILEIRA DE EDUCAÇÃO ENSINO - Porto Alegre, RS Rede de escolas Maristas
Grande Porte.
ANALISTA DE OBRAS:Atendimento aos clientes internosem todo estado do RS, por meio de visitas técnicas, verificando as necessidades de execução das obras e projetos na edificação de escolas, ginásios de esporte, coberturas metálicas e telhados, campos de futebol, quadras poliesportivas, redes de esgoto, drenagem, terraplenagem.
1-Desenvolvimento e discussão do plano de necessidades dos projetos novos e reformas,junto ao cliente.
2-Orçamentação dos projetos novos e reformas, realizando as vistorias técnicas no local para determinação dos serviços necessários para obra.
3-Cotação e negociação de materiais para compra, a fim de viabilizar o orçamento do projeto novo ou reforma.
4-Prospecção e avaliação de novos fornecedores de material e mão de obra, através de vistoria nas empresas e obras executadas.
5-Contratação, avaliação dos empreiteiros de mão de obra.
6-Compras dos insumos para obra.
7-Acompanhamento da execução das obras, administrando e distribuindo as tarefas para as equipes,composta por profissionais da construção civil das categorias de pedreiros, carpinteiro, ceramistas, serventes instaladores elétrico e instalador hidráulico.
8-Fiscalização dos contratos de empreiteiros de: obras civis, instalações elétricas e hidráulicas, para autorização e liberação dos pagamentos periódicos dos serviços executados.

Realizações:
Implantação de rotinas de orçamento de obras.
Seleção de novos fornecedores.
Economia após realinhamento de preços praticados.
Economia após visita no local da obra redefinindo processos e projetos, sugerindo nova técnica de execução e materiais aplicados.
Novas relações com bons profissionais em diversas áreas

11/11– 01/14       NOME DA EMPRESA: Engenhosul Engenharia Ltda. Porto Alegre, RS- Edificações – Grande Porte
ENGENHEIRO ORÇAMENTISTA:Orçamentação /planejamento, compras, revisão de projetos, de obras novas, e reformas das licitações na área de hipermercados, universidades, indústrias.
1-Visita técnica para determinação e avaliação dos serviços necessários para realização da obra.
2-Apoio ao engenheiro residente na equalização do projeto e na negociação das modificações, junto ao cliente nos aspectos estruturais ena determinação dos custos.
3-Apoio a diretoria na contratação e cotação de insumos e compras dos materiais de grandes fornecedores com valores importantes na obra.
4-Orçamentação das licitações dos projetos novos e reformas, realizando as vistorias técnicas no local para determinação dos serviços necessários para obra.
5-Cotação e negociação de valores junto aos fornecedores de materiais e serviços, a fim de viabilizar suas propostas e formar parcerias para obtenção do êxito nas licitações.
6-Prospecção e avaliação de novos fornecedores de material e mão de obra, através de vistoria nas empresas e obras executadas.

Realizações:
Apresentação ao grupo de práticas para levantamentos de quantidades dos serviços que deram agilidade a esta etapa do trabalho.
Vencer a licitação e acompanhar uma obra de cliente um coreano, conviver dois anos com outra cultura, desafio grade, mas plenamente conquistados e ratificados com o agradecimento do cliente.

09/10– 10/11NOME DA EMPRESA: SESC-RS Porto Alegre, RS Edificações – Grande Porte
ENGENHEIRO CIVIL:Atendimento aos clientes interno de todo estado, na execução das obras e projetos das unidades administrativas, parques de esporte, escolas, ginásios de esporte, coberturas metálicas e telhados, campos de futebol, quadras poliesportivas, redes de esgoto, drenagem, terraplenagem.
                           1-Elaboração das respostas aos esclarecimentos dos licitantes.
                           2-Revisão e julgamento das propostas de serviços apresentadas pelos licitantes ao departamento de licitações, 
Através da equalização das mesmas e determinando o vencedor.
3-Elaboração do plano de necessidades do empreendimento de acordo com as diretrizes da diretoria e conselheiros.
4-Contratação de empreiteiros e fornecedores de material e mão de obra.
5Visita técnica para determinação e avaliação dos serviços necessários para realização da obra.
6-Orçamentação e cronograma dos projetos e serviços demandados, a fim de determinar o preço oficial (PO) e prazo, que será adotado como base para a avaliação das propostas recebidas nas licitações.
7-Acompanhamento da execução das obras (cronograma físico- financeiro, solicitação de matérias, execução da obra).
8-Fiscalização dos contratos de empreiteiros de: obras civis, instalações elétricas e hidráulicas, para autorização do pagamento dos serviços executados.


04/01– 08/09NOME DA EMPRESA:  PETROBRÁS DISTRIBUIDORA S/A.-ENGEBANC ENGENHARIA LTDA - Porto Alegre 
Combustíveis  Grade Porte
ENGENHEIRO CIVIL:Acompanhamento da execução dos projetos novos, das reformas e adaptações na
                          Construção de postos de combustíveis Área de atuação as regiões da Serra e Sul do estado e Grande Porto             
                          Alegre dos postos próprios e de terceiros

1-Elaboração do plano de necessidades do empreendimento junto ao cliente e assessor comercial.
2-Visita técnica para determinação e avaliação dos serviços necessários para realização da obra.
3-Orçamentação e cronograma das obras, a fim de determinar o preço oficial (PO) e prazo, adotado como base para a avaliação das propostas recebidas nas licitações.
4-Montagem do processo de licitação das obras civis próprias.
5-Acompanhamento do cronograma físico-financeiro e pagamentos dos empreiteiros.
6-Fiscalização dos contratos de obras civis, eletromecânicas e de imagem, para autorização do pagamento dos serviços executados.
7-Auditoria comportamental da mão de obra envolvida dos contratos, para cumprimento de programa de SMS implantado pela Petrobrás.

Realizações:

Elaboração de procedimento técnico descrevendo as etapas de execução de cada etapa do serviço informando as ferramentas à técnica e os cuidados para a instalação dos sumps de tanques e bombas, com o objetivo de evitar os vazamentos nesta peça e, protegendo o meio ambiente. O procedimento foi adotado em todo o Brasil


06/93– 03/01       NOME DA EMPRESA:  Capitel Engenharia Ltda.  Porto Alegre RS Pequeno Porte
                           Proprietário: Orçamentação, de obras públicas e privadas nas áreas de infraestrutura rodoviária,
                          Abastecimento de água, da captação à distribuição, redes de esgoto e bacias de tratamento de esgoto, edificações   
                          Comerciais, residências e industriais.
1-Orçamentação de obras.
2-Montagem da licitação.
3-Elaboração do cronograma físico-financeiro.
4-Montagem d EAP da planilha orçamentária
5-Execução de CPU (composições de preços unitários) para serviços de obras civis, terraplenagem, montagem eletromecânicas, instalações elétricas e hidráulicas.
6-Execução de obras novas e reformas.


10/89– 03/93NOME DA EMPRESA:  ECOBRAS EMPRESA CONSTRUTORA BRASILEIRA LTDA  Porto Alegre RS Grande Porte
                           ORÇAMENTISTA PLENO: Orçamentação, de obras públicas e privadas nas áreas de infraestrutura rodoviária,
Abastecimento de água, da captação à distribuição, redes de esgoto e bacias de tratamento de esgoto.
1-Orçamentação de obras de infraestrutura.
2-Montagem da licitação.
3-Elaboração do cronograma físico-financeiro.
4-Montagem d EAP da planilha orçamentária
5-Execução de CPU (composições de preços unitários) para serviços de obras civis, terraplenagem, montagem eletromecânicas,instalações elétricas e hidráulicas.
6-Visitas para vistoria técnica preliminar antes da elaboração da proposta em várias cidades e capitais do Brasil.

Realizações: Ter vistoriado e conhecido a floresta Amazônica na região do estado de Roraima, durante 15 dias para elaboração de relatório técnico de montagem de licitação de obras de revitalização de 500km de estradas vicinais (escoamento da produção agrícola)da região.','Pós-Graduação: Engenharia de custos UFF/RJ ano de 2004',NULL,'Engenharia','https://drive.google.com/open?id=1_LIMune_Ja3f8_Hir4EaB3ShntmijBXe',NULL,'Agência de Empregos','NÃO','R$7.000,00','Sim',NULL,'Engenheiro Civil','Olá! Eu estudo música,com o instrumento trompet/cornet e gosto de cantar, sou faixa vermelha em hapkido arte marcial , gosto muito de cozinhar e receber os amigos para aquela !! conversa boa e risadas soltas!!!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-15T22:54:00.000Z'::timestamptz),
  ('Alison Lucas Orth','aliorth@yahoo.com.br',NULL,'54999249456','1982-08-25',43,'Casado(a)','2','Sim','Erechim/rs','https://drive.google.com/uc?export=view&id=1IAufat640uBLYnk9MZKWKIo04WOjPGg0','Engenharia Civil','Ensino Superior Completo','UPF','2005-01-21','Sou formado','www.linkedin.com/in/alisonlucasorth',NULL,'ES  Negociação, Vendas e Resultados FIA ONLINE. 2021.  Certificação em Liderança, Capacidade de Aprender e Resiliência.PUCRS - Pontifícia  Universidade Católica do Rio Grande do Sul. 2021.  Líder M4. EAG - Empresa Autogerenciável. 2020.  Próximo Passo com Max Gehringer. Max Gehringer. 2020.  Curso de Revestimentos para Piso. Laticrete Solepoxy. 2020.  Negociação Total. Dale Carnegie Training. Passo Fundo/RS, 2017.  Orçamento de Obras de Construção Civil. Academia de Engenharia e Arquitetura. Porto  Alegre/RS, 2012.','Comercial, Novos Negócios, Engenharia','https://drive.google.com/open?id=1ZzuWBOgXFo5LM9rCaMeLotYsIMNftfC4','https://drive.google.com/open?id=1L7V8e524WXdkiGSjmHrw4EcSRM9_tMiT','Agência de Empregos','Não','R$15.000','Sim','Eliane Comin / (54)3341-1025 / Zorzin
Victor Grando / (54)3383-1299 / Format
Darlei Trentin / (54)3520-2000 / Viero','Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-16T00:04:00.000Z'::timestamptz),
  ('Cristiano Hencke','thehencke@hotmail.com',NULL,'51999951333','1985-07-17',40,'Solteiro(a)','0','Sim','Três Coroas/rs','https://drive.google.com/uc?export=view&id=1rbpBbUm3pXOisisTrxEWmXoWuT_vq3QN','Engenharia Civil','Ensino Superior Completo','Universidade FEEVALE','2020-12-20','Sou formado','1) Construtora Cabo
2) Engenheiro Civil
3) 02/21 - 04/21
4) Controlar a qualidade dos serviços realizados;
Receber e buscar junto a equipe da empresa tomadora dos serviços, as necessidades e prioridades na execução das atividades;
Elaborar o relatório diário de obra;
Verificar a necessidade e solicitar insumos e equipamentos.

1) Imperbrás Impermeabilizações
2) Supervisor de Obras
3) 11/20 - 01/21
4)Controlar a qualidade dos serviços realizados na execução de impermeabilizações em lajes e piscinas;
Identificar pontos de melhoria e evitar dificuldades na execução dos serviços

1) LAM Gesso
2) Supervisor de Obras
3) 03/19 - 04/20
4)Controlar a qualidade dos serviços realizados na execução de paredes e forros em gesso acartonado, conforme as normas vigentes;
Orientar os montadores quanto a correta execução das instalações, de acordo com o disposto nos projetos disponibilizados;
Controlar o efetivo e gerenciar as equipes.

1) Móveis Bartzen
2) Auxiliar de Engenharia de Produto
3) 04/18 - 01/19
4)Realizar desenhos de móveis especiais em 2D e 3D, com uso do software AutoCAD, conforme solicitações de clientes;
Analisar e adaptar projetos de móveis com uso do software Promob; Elaborar planilhas de custo e orçamentos.

1) Prefeitura Municipal de São Francisco de Paula
2) Fiscal de Obras
3) 01/17 - 04/18
4) Fiscalizar as atividades de construção civil realizadas no município; Orientar os interessados sobre a legislação pertinente;
Realizar vistorias, e fornecer a Carta de Habite-se.','Participei do programa ciência sem fronteiras, realizando intercâmbio de 18 meses na Alemanha.',NULL,'Arquitetura, Licenciamentos, Engenharia','https://drive.google.com/open?id=12J1NPWDZHBx7GhWRY4J8mdKnuPrPqBZj',NULL,'Agência de Empregos','Não','R$4.500,00','Sim',NULL,'Engenheiro Civil','Gosto de consertar coisas, imaginar soluções, tornar tudo melhor. Sou prestativo, organizado e costumo fazer sempre o melhor que posso. Busco um projeto em que eu acredite, de preferência que integre tecnologia, sustentabilidade e funcionalidade.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-16T00:12:00.000Z'::timestamptz),
  ('PAULO GUSTAVO PEREIRA COUTO','paulo.gustavop96@gmail.com',NULL,'61999014314','1996-11-11',29,'Solteiro(a)','0','Sim','Brasília/df','https://drive.google.com/uc?export=view&id=1_jHFl9YA6LnOpUgi3-7UODT3DcfkSeNl','Engenharia Civil','Ensino Superior Completo','Universidade Católica de Brasília','2021-07-08','Sou formado','1) Apex Engenharia 
2) Assistente de Engenharia
3) Fevereiro/2020 – Atualmente
4) Obra: Residêncial Stilo Flex Samambaia e Stilo 101: Total de quatro edifícios de nove pavimentos cada, com metodologia construtiva mista, fundação profunda tipo estaca, térreo em alvenaria convencional, pavimentos tipo em alvenaria estrutural e lajes pré-moldadas.

Principais Responsabilidades:
Acompanhar e verificar as frentes de serviços executados, mapeamento de todos os processos de controle tecnológico, encarregado do controle de produção dos pré-moldados, treinamento dos colaboradores para que os serviços sigam o padrão de qualidade da empresa, suporte nas medições feitas, suporte no planejamento e cronograma da obra e encarregado da implantação da plataforma Construpoint no sistema de qualidade das obras.

Ferramentas organizacionais utilizadas nos processos: AutoCad, pacote office, Revit, Msproject, Construpoint e PlanGrid.

1) Trinity Engenharia (Agosto/2019 à Janeiro de 2020)
2) Estagiário
3) Agosto/2019 à Janeiro de 2020
4) Principais Responsabilidades:

Leitura e execução de projetos, levantamento de quantitativos de materiais, acompanhamento e verificação de serviços de reformas.

Ferramentas organizacionais utilizadas nos processos: AutoCad e pacote office.

1) Arquiteto Danilo Garcia (Janeiro/2015 à Julho de 2015)
2) Estagiário.
3) Janeiro/2015 à Julho de 2015
4) Principais Responsabilidades:

Elaboração de projetos arquitetônicos e luminotécnicos em 2D e 3D.
Ferramentas organizacionais utilizadas nos processos: AutoCad e SketchUP.

1) Prefeitura Municipal de Formosa Goiás 
2) Estagiário
3) Janeiro/2014 à dezembro de 2014
4) Principais Responsabilidades:

Elaboração de projetos arquitetônicos e acompanhamento nas execuções de obras públicas, garantindo o controle dos processos a serem executados, minimizado assim possíveis erros.
Ferramentas organizacionais utilizadas nos processos: AutoCad e pacote office.','- Técnico em Edificações - Instituto Federal de Educação, Ciência e Tecnologia de Goiás – Câmpus Formosa (IFG) - Concluído em Dezembro/2015

Cursos:

- BIM - Conceitos, Tecnologia E Processos, promovido pela Render Cursos Ltda, 20 horas, ano de 2020.

- REVIT ARCHITECTURE 2017, promovido pela Render Cursos Ltda, 40 horas, ano de 2020.

- Gestor de Obra, promovido pelo Engenheiro Felipe Soares da AZ Construções, 60 horas, ano de 2021.

- Orçamento de Obras, promovido pelo Engenheiro Alex Lima Wetler da Avance Engenharia, 25 horas, ano de 2021.',NULL,'Administrativa, Engenharia','https://drive.google.com/open?id=1PDW7NV4cN14wJrX805tIVMRUdAgSn_5x',NULL,'Agência de Empregos','Não','4.000,00','Sim',NULL,'Engenheiro Civil','- Idiomas:

• Inglês: Básico.

- Informática:

• Pacote Office
• AutoCad
• SketchUP
• Revit
• MsProject
• Navisworks
• Sistema UAU

- Conhecimentos: 

• Lean Construction
• Quadro Scrum
• Kanban
• DashBoard
• Controle e Monitoramento
• Relatórios mensais de medições','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-16T18:27:00.000Z'::timestamptz),
  ('Marcus Vinicius Cardoso Serra','marcus.serra1@outlook.com',NULL,'92984080870','1992-02-09',34,'Solteiro(a)','0','Sim','Manaus/am','https://drive.google.com/uc?export=view&id=1lnjjVM7V6b25piZT-7E4J_jPuvEv32h-','Engenharia Civil','Pós-graduação Completa','Faculdade Metropolitana de Manaus','2018-04-04','Sou formado','1) Smart Consultoria e Governança
2) Engenheiro Civil
3) 22/03/2021 - 07/09/2021
4)
•	Fiscalizava e Gerenciava operários, empreiteiros e subempreiteiros em processos executivos.
•	Elaborei relatórios diários de Status de Andamento de Obra.
•	Participava de reuniões semanais de alinhamento de assuntos pertinentes a orçamento, compras e cronograma de obra.
•	Acompanhava andamento de Obra em Plataforma MsProject.
•	Elaborava Planilhas de Medição.','Especializado em Auditoria, Avaliação e Perícia de Engenharia e Mestrando em Engenharia de Ciências e Materiais','Certified Associate in Project Management – CAPM','Engenharia','https://drive.google.com/open?id=1wOO09xzIawBT7S-FcHARI-rmnakk4Ckg',NULL,'Agência de Empregos','Não.','4000','Sim',NULL,'Analista de Engenharia','Formado em Engenharia Civil, com especialização em Auditoria, Avaliação e Perícia e Mestrando em Engenharia de Ciências e Materiais. Certificado em CAPM (Certificado para gestão de projetos), certificado este emitido pelo Project Management Institute - PMI. Possuo cursos de Cadista para Engenharia e Leitura de projetos arquitetônicos. Possuo conhecimento avançado em MsProject. Possuo curso pre-advanced em Inglês.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-16T21:54:00.000Z'::timestamptz),
  ('Matheus Lorenzo Manhabosco','matheusmanhabosco@gmail.com',NULL,'51982349044','1994-11-22',31,'Solteiro(a)','0','Sim','Torres/RS','https://drive.google.com/uc?export=view&id=1b7mMvaqsj4WojF122FvExdgqmfTxo8p7','Engenharia Civil','Pós-graduação Completa','Escola Superior de Criciúma','2017-12-09','Sou formado','Grupo CCR
Supervisor de conservação
julho de 2020 - atualmente 
gestão de equipes terceirizadas em campo','Pós graduado em "Gestão de pequenas empresas", e cursando pós graduação em "Avaliações e Perícias de imóveis urbanos".','cursos da área de engenharia','Arquitetura, Engenharia','https://drive.google.com/open?id=1GdKCSq1Ub6rmsrTfwYFL7WWPElYL2Ulc','https://drive.google.com/open?id=1ISKeH73Ack8dDuzDKncmd33_iqTvzul3','Agência de Empregos','não','6000','Sim',NULL,'Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-17T02:45:00.000Z'::timestamptz),
  ('Thiago Durante','thi.durante@gmail.com',NULL,'11988787581','1986-04-24',39,'Casado(a)','2','Sim','Embu-guaçu/sp.','https://drive.google.com/uc?export=view&id=1DnbqU6aOA_q4ckx7vfzkzTbSr-UfOV05','Engenharia Civil','Pós-graduação Completa','Universidade Nove de Julho','2014-12-15','Sou formado','* Engenheiro Civil - Alpincorp Incorporações. ( 08/2017 - 07/2020) 
- Estudo de viabilidade construtiva, consultando parâmetros dos
órgãos competentes e executando analise de região.
- Concepção de projetos preliminares e preenchimento de
formulários técnicos do Programa Minha Casa Minha Vida.
- Elaboração de orçamento com base na tabela SINAPI,
cronograma executivo, curva ABC e dashboard.
- Reuniões técnicas na Caixa Econômica Federal, COHAB, CDHU,
CETESB, SABESP e ENEL.
- Tratativa com stakeholders.
- Gerenciamento da equipe técnica.

*******

* Assistente Técnico - Provence Construtora LTDA. ( 08/2007 - 07/2015)
- Execução de levantamentos quantitativos e elaboração de
orçamentos com base nas tabelas FDE e EDIF.
- Acompanhamento da execução em obra, solicitação de materiais
e contratação de empreiteiros.
- Conferência dos serviços executados e elaboração de medições.','Master Internacional BIM Management na Zigurat Global Institute of Technology, composto por Gestão em BIM, BIM para Projeto, BIM para Construção, BIM para gerenciamento de ativos, Implementação de BIM.',NULL,'Licenciamentos, Novos Negócios, Engenharia','https://drive.google.com/open?id=1U0kOVcaGRZktegP82CSVXTQrO2Y1phCf',NULL,'Agência de Empregos','Não.','R$7.000,00','Sim','Suely, diretora comercial da Alpincorp: 11 981831712','Engenheiro Civil','Engenheiro Civil com grande vivência nas etapas executivas da construção civil. Atuo no ramo da construção civil há mais de 15 anos.
Nos últimos anos atuei no planejamento de custos, supervisão de projetos, estudos de viabilidade técnica e legislativa.
Atualmente estou cursando MBA em BIM, por acreditar na eficácia da aplicação dessa metodologia e por entender que sua disseminação é inevitável.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-17T13:04:00.000Z'::timestamptz),
  ('Arthur Augusto Voelz','voelzarthur@gmail.com',NULL,'51995133585','1994-10-20',31,'Solteiro(a)','0','Sim','Santa Cruz Do Sul/rs','https://drive.google.com/uc?export=view&id=1j0QlY2JeZGehE8el96xQ6ei7-5gAcBwF','Engenharia Civil','Ensino Superior Completo','Universidade de Santa Cruz do Sul','2020-01-17','Sou formado','Trabalho na Biblioteca da Universidade de Santa Cruz do Sul (UNISC) desde 2014 e atuo como Auxiliar Administrativo. Trabalhei de julho de 2013 até julho de 2014 na Dupont Distribuidora Nestlé, atuando como Auxiliar de Depósito. Meu primeiro emprego foi na Viação União Santa Cruz, onde fui menor aprendiz pelo Senac-RS e atuei como Auxiliar de Almoxarifado, do período de março de 2011 até dezembro de 2011.','Tenho conhecimentos avançados em AutoCAD, Pacote Office. E conhecimentos básicos em Revit e SketchUp.',NULL,'Engenharia','https://drive.google.com/open?id=1lzf4wcOYwGzCYDtS-IWglJtuoOTrNb8F',NULL,'Indicação','Não fui indicado por nenhum colaborador da Young.','Atualmente recebo um salário que gira em torno de R$ 1800,00 mais vale alimentação de R$160,00. Receber algo em torno disso, já me é satisfatório.','Sim',NULL,'Estágio Engenharia e/ou Arquitetura','Sou formado em Engenharia Civil desde 2019/2. Gostaria muito de atuar na minha área de formação.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-17T14:43:00.000Z'::timestamptz),
  ('João Victor Crispim Gomes','joaovictorcrispim@gmail.com',NULL,'85989615593','1996-11-23',29,'Solteiro(a)','0','Sim','Fortaleza/ce','https://drive.google.com/uc?export=view&id=1gDEuLfs79DluXVDuizpsxrRyPWJfW5xV','Engenharia Civil','Ensino Superior Completo','Uninassau','2021-06-30','Sou formado','1)Grupo Marquise - 2)Estagiário Engenharia Civil - 3)Junho/2020 – Julho/2021
4)Atuando junto à equipe operacional no gerenciamento, fiscalização e planejamento de obras e reformas, e supervisionando à manutenção preventiva, corretiva e predial.
Atividades Desenvolvidas: Desenvolvimento de projetos, programação e controle das obras, relatório de custos, revisão de orçamentos, diário de obra, medições e levantamentos em campo, alterações no as built, auditorias, indicadores de obra, controle de suprimentos, verificação do sistema de combate a incêndio, análise e execução de propostas técnicas, planejamento e programação das manutenções prediais, acompanhamento e recebimento das manutenções preventivas e corretivas das equipes terceirizadas e orgânicas, verificação das estruturas, elaboração de planilhas para controle empresarial, continuidade do desenvolvimento dos diagramas unifilares, acompanhamento dos sistemas hidráulicos e elétricos.

1)Impacto Protensão - 2)Estagiário Voluntário Engenharia Civil - 3)Outubro/2019 – Dezembro/2019
4)Atuando na sala técnica.
Atividades Desenvolvidas: Leitura e interpretação de projetos, análise de custos, levantamento de materiais por projeto, auxílio no envio de materiais para as obras, acompanhamento das obras, visitas técnicas, verificação do uso dos materiais, melhorias nos processos da empresa, estudo dos materiais, pesquisa, desenvolvimento e inovação para melhoria e agilidade nos processos construtivos.','Noções de Orçamento e Planejamento de Obras – GINEAD – 40 horas.
Interpretação dos Requisitos da ISO 9001:2015 – RW Consultoria – 37 aulas.
Gestão e Gerenciamento de Obras – GINEAD – 35 horas.
Programação e Controle de Obras – GINEAD – 80 horas.
Noções de Alvenaria Estrutural – GINEAD – 50 horas.
Especialista em AutoCad – Udemy – 44 horas.
Capacitação em Estruturas de Concreto Protendido – CCP – 24 horas.
SketchUp e VRay – Cepep – 36 horas.
Excel Avançado – UNINASSAU – 20 horas.',NULL,'Engenharia','https://drive.google.com/open?id=1kRa6xtE_1CzllzqvX5OnDyZ4GaIplACj',NULL,'Agência de Empregos','Não','4.200','Sim','Lidia Landim - supervisora de obras - Grupo Marquise - (85)989028235','Analista/Assistente','Engenheiro Civil, com experiência na construção civil e manutenção preventiva, corretiva e predial; no desenvolvimento e leitura de projetos; gerenciamento, fiscalização e planejamento de obras e reformas; auditorias; tendo atuado em construções verticais e horizontais, pavimentação, equipe operacional, sala técnica e PD&I (Pesquisa, desenvolvimento e inovação). Conhecimento nos sistemas construtivos: Paredes de Concreto, Alvenaria Estrutural e Concreto Protendido; e ferramentas como: MS Project, AutoCad, SAP, Power BI, SketchUp e Excel avançado. Experiência em supervisão de equipes de produção e manutenção; controle de metas, prazos e custos; medições e levantamentos em campo; indicadores de obra; acompanhamento de cronograma físico e financeiro; relatório de custos; analise e execução de propostas técnicas; controle de suprimentos da obra; planejamento das atividades anuais, mensais e diárias; controle e acompanhamento de contratos junto a fornecedores; auxilio na negociação e contratos de terceirizados.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-17T15:56:00.000Z'::timestamptz),
  ('Lerry Rieffel','lerry.rieffel@gmail.com',NULL,'55997154500','1992-04-26',33,'Solteiro(a)','0','Sim','Sant''Ana do Livramento/RS','https://drive.google.com/uc?export=view&id=1xAuIqdLspmsquoSwo3ZN5iZtmKXXjcvT','Engenharia Civil','Pós-graduação Completa','Urcamp','2017-12-17','Sou formado','Prefeitura municipal de Santana do Livramento, Engenheiro Civil, desde Abril de 2021 realizando projetos de pavimentação e Análises de projetos de infraestrutura urbana','Engenheiro civil com pós graduação em MBA-infraestruturas de transporte e rodovias',NULL,'Engenharia','https://drive.google.com/open?id=1hUQjebY1UpOyaS-RzJHKU6Dx6lUxKCFh',NULL,'Facebook','Não fui','A partir de 4 salários mínimos','Sim',NULL,'Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-17T16:05:00.000Z'::timestamptz),
  ('Raquel Lopes Ens','raquelopesens@gmail.com',NULL,'51991044138','1996-03-28',29,'Solteiro(a)','0','Sim','Osório/RS','https://drive.google.com/uc?export=view&id=12x_sgb2sagI2t_n3AXEcVkf3HqBJZn5F','Engenharia Agroindustrial','Ensino Superior Completo','Universidade Federal do Rio Grande - FURG','2020-03-15','Sou formado','Elysios Agricultura Inteligente; analista de negócios; 09/2021 - atual; Acompanhar a experiência de produtores, packing house e produtores comerciantes com o software, com o objetivo de fidelizar clientes, dar suporte em relação ao software, propor melhorias e adaptações do software e, junto com o time comercial, realizar upsell e prospectar novos clientes. Além disso, criação de conteúdos de valor para produtores e agroindústrias. 
Emater RS; Assistente voluntária; 07/2021 - 09/2021; Suporte no desenvolvimento e implementação de Manual de BPF nas agroindústrias, orientação e melhorias dos procedimentos operacionais e assistência no gerenciamento de fichas técnicas, rotulagem e demais documentações.
Imap - Indústria e Comércio; auxiliar de qualidade; 03/2020 - 07/2021; Desenvolvimento de fornecedores junto com setor de Compras e Engenharia de Produto, com elaboração de escopos de fornecimento, desenvolvimento de uma rotina de inspeção no recebimento, treinamento de fornecedores, gerenciamento de não conformidades e indicadores de desempenho; atuação junto a Processos, com elaboração de instruções de trabalho, procedimentos e otimização de processos, aplicando PDCA; atuação em frentes da Gestão da Qualidade para implantação da ISO 9001:2015, como realização de auditorias internas, participação do programa 5S, 8D e demais atividades.
Imap - Indústria e Comércio; estagiária de qualidade; 09/2019 - 03/2020; Realização de inspeção final de equipamentos, gerenciamento de não conformidades, elaboração de instruções de trabalho e planos de controle.','Curso Auditora Interna ISO 9001:2015; Curso Excel','Auditoria ISO 9001:2015','Novos Negócios, Engenharia','https://drive.google.com/open?id=1e-mZ7Yy9n0XRVpeHQ-qgAF6fJSM59tR8',NULL,'Indicação','Indicação Rodrigo Ribas','2000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa que prioriza o equilíbrio entre o trabalho e a vida pessoal, então sempre que posso, gosto de passar um tempo com as pessoas que são importantes na minha vida, caminhar, andar de bike, assistir uma série, etc. Desenvolvi e continuo desenvolvendo minhas soft skills e considero minhas potencialidades a proatividade, visão sistêmica e comprometimento. Atuei em vários projetos de extensão durante a graduação, mas um dos trabalhos que tenho mais orgulho foi de coordenadora e professora voluntária do cursinho popular pré enem, que oferece um curso preparatório para o enem e vestibular para jovens em vulneralibidade. Nesse projeto, percebi várias realidades diferentes da minha, tive que praticar minha criatividade e empatia para engajar e entender as dificuldades dos jovens e, ao mesmo tempo, provocar um desenvolvimento de didática e trabalho do educadores, ao longo da jornada do projeto, promovendo programas e trazendo parceiros para isso. Um projeto enriquecedor que gerou posteriormente um mini curso na Mostra Acadêmica do IFRS.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-17T18:00:00.000Z'::timestamptz),
  ('Felipe Monteiro da Rosa','eng.felipemonteiro@hotmail.com',NULL,'51995920092','1992-09-20',33,'Solteiro(a)','0','Sim','Cachoeirinha/rs','https://drive.google.com/uc?export=view&id=195Qd4i8ISZM3l8_ORkTLEITYpXosDabz','Engenharia Civil','Pós-graduação Completa','Unisinos','2019-01-01','Sou formado','De estagiário a analista de engenharia na empresa MRV Engenharia. De 2017 a 2021. Experiência desde terraplanagem à entrega de bloco ao cliente. Gestao de equipes e aliviados pertinentes ao responsável da obra.','MBA Gerenciamento de obras. IPOG.',NULL,'Engenharia','https://drive.google.com/open?id=1Wwvr2xbr4QqlrjXeZB6gH3FaNWMBRltZ',NULL,'Agência de Empregos','.','R$7.000,00','Sim',NULL,'Engenheiro Civil','.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-17T18:24:00.000Z'::timestamptz),
  ('Mayara Vasconcelos Oikawa','mayarac.vasconcelos@gmail.com',NULL,'51992038910','1989-05-26',36,'Casado(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1xOFdGUtkrvseGTRqcS8h63g9LCKakLtu','Engenharia Civil','Pós-graduação Incompleta','Universidade La Salle','2020-07-20','Sou formado','AUTÔNOMA - Julho/2020 até o presente momento
Engenheira Civil
● Realizar visitas nas obras para colher informações técnicas e/ou comerciais para elaboração das propostas;
● Elaboração orçamento das obras e serviços, abrangendo o levantamento de quantidades, cotação de
materiais, mão de obra e serviços;
● Elaborar e revisar escopos de contratação dos serviços;
● Efetuar assistência, assessoria e consultoria técnica para construtoras parceiras;
● Coordenação e controle das atividades de padronização e controle de qualidade dos suprimentos e
serviços comprados e executados;
● Orçamento, execução e fiscalização de obras e serviços técnicos para construtoras parceiras;
● Coordenação, orientação e controle dos processos das equipes de instalação, montagem, operação,
reparo ou manutenção;
● Elaboração de projetos e detalhamentos (Autocad, Sketchup e Archicad), assessorando e supervisionando
a sua realização;
● Controle, acompanhamento e fiscalização de obras e reformas;
● Elaboração de manual do empreendimento;
● Vistoria e recebimento de apartamentos;

CIA ZAFFARI - Junho/2021 até o presente momento
Analista de Engenharia
● Estudo de viabilidade técnica para implantação das instalações nas salas de uso comerciais
(SUC’s);
● Elaboração do escopo dos retrofit’s e TAP;
● Validar plantas e fichas técnicas dos empreendimentos;
● Análise e aprovação dos projetos complementares dos lojistas;
● Realizar reuniões de início de obras;
● Fiscalizar as obras/reformas das Lojas;
● Efetuar vistorias preliminares e finais, com os coordenadores das obras;
● Efetuar relatório e ficha técnica sobre a SUC após a desocupação do lojista;

AEGEA SANEAMENTO E PARTICIPAÇÕES SA - Janeiro/2021 até junho/2021
Técnico em Edificações
● Fiscalizar mão de obra terceirizada e a qualidade dos serviços executados;
● Planejar construção e montagem;
● Conduzir inspeções e testes de campo;
● Monitorar e tratar não conformidades;
● Elaborar relatórios diários de obra;
● Elaborar gráfico semanal com avanço físico e fiscalizar os controles tecnológicos da obra;
● Efetuar levantamento de quantidades para elaboração das medições de subempreiteiros;
● Realizar medições, fiscalizar e atualizar os cronogramas de serviços e execução, assim como estimativa de
custos.

CONSTRUTORA LOTTICI - Setembro/2019 à Dezembro/2019
Estagiária de Engenharia Civil – Estágio Obrigatório
● Controle, acompanhamento e fiscalização da obra Residencial Vivace – centro;
● Acompanhamento do planejamento de curto prazo e da execução dos serviços realizados;
● Controle de qualidade da obra;
● Check List das unidades;

MAIOJAMA - Junho/2018 à Dezembro/2018
Estagiária de Engenharia Civil
● Contratada para a parte final do empreendimento residencial - Parador 2447;
● Controle, acompanhamento e fiscalização da obra, em sua parte final;
● Realizar Check List nas unidades;
● Entrar em contato com fornecedores e realização de medições dos parceiros;
● Acompanhar visitas dos clientes nas unidades;

MELNICK EVEN - Maio/2015 à Outubro/2017
Assistente Técnico de Engenharia
● Controle, acompanhamento e fiscalização de obras comerciais e residenciais;
● Responsável pela análise quanto aos processos de execução e sua qualidade;
● Acompanhamento da produção e avanços da obra;
● Auxiliar o encarregado sobre as atividades a serem executadas, conforme previsto em cronograma;
● Efetuar quantitativo da obra para orçamento;
● Realizar atendimento aos clientes durante a Assistência Técnica;
● Efetuar requisições de materiais e serviços no programa SAP;
● Entrar em contato com parceiros para atendimentos de garantias;
● Realizar compra de matérias para atendimento das unidades;
● Analisar e efetuar o pagamento das medições dos parceiros;
● Acompanhamento do planejamento de curto prazo e da execução dos serviços realizados;
Estagiária de Engenharia Civil
● Realizar Check List nas unidades a serem entregues;
● Acompanhamento de obra em sua parte final, entrar em contato com empreiteira e parceiros;
● Realizar as Entregas Técnicas dos empreendimentos aos clientes;
● Obras comerciais e residenciais atendidas: Arte Bela Vista, Nine Ipiranga, Eucaliptos, Edifício Carlos Trein,
DOC e Quartier Cabral;

STE - Maio/2014 à Maio/2015
Estagiária de Engenharia Civil
● Elaboração de projetos rodoviários em AutoCad;
● Auxiliar nos projetos de sinalização do BRLegal;
● Efetuar as medições e em elaboração de planilhas no excel;
● Auxílio na tomada de decisões dos projetos;

CONTE CORNETET - Jan/2014 à Maio/2014
Estagiária de Engenharia Civil
● Responsável por auxiliar nos detalhamentos e análise de projetos para o Banco do Brasil;
● Acompanhar análise de projetos para o Banco do Brasil;
● Auxiliar na execução e ajuste dos projetos;
● Auxiliar na identificação dos procedimentos realizados pela empresa;','Sou engenheira civil e técnica em edificações. No momento, estou finalizando minha pós em gestão de obras, qualidade e desempenho das construções. Trabalho no ramo há sete anos. 
Ferramentas: AutoCad; Sketchup; ArchiCAD; MS Project; TQS; REVIT; SAP; Sienge; Pacote Microsoft Office;
Organização;
Execução e Fiscalização de Obras;
Controle de Qualidade;
Atendimento ao cliente;
Coordenação de equipes;
Resolução de problemas;',NULL,'Licenciamentos, Engenharia','https://drive.google.com/open?id=1FK__v5eoD1IrwQhaLQpARfAzVkk8ICQq',NULL,'Agência de Empregos','não','R$5.000,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Publicação: Manifestações patológicas nas edificações durante a pós-ocupação: estudo de caso – análise das ocorrências registradas no setor de assistência técnica. Revista CIPPUS, Canoas, v. 8 n. 1, p. 45-58, 2020. ISSN 2238-9032.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-17T20:11:00.000Z'::timestamptz),
  ('Mirele Querche de Almeida','mirelea138@gmail.com',NULL,'55996158419','2001-08-05',24,'Solteiro(a)','0','Sim','Manoel Viana/rs','https://drive.google.com/uc?export=view&id=1n8vjRfNL9lRaEuJXMfmikdP1HvsJyby1','Ciências Contábeis','Ensino Superior Incompleto','Unopar','2024-08-22','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Lojas Quero Quero 
Jovem Aprendiz 
09/2019 a 09/2020
Mercado Rede Super
Caixa
08/2021 a 11/2021','Ciências Contábeis, terceiro semestre, 100% online','Curso em Informática (word, Excel, Powerpoint, Windows, paint)','Administrativa, Estágio, Novos Negócios','https://drive.google.com/open?id=1qQqxGAHLzXXePgLlxCf1dV4zSrY_ZHdB',NULL,'Carol Volpato','Não','1500','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','20 anos, graduanda em Contabilidade, iniciei mas tranquei a faculdade de Corretor de Imóveis, mas pretendo continuar, possuo CNH B, pretendo me mudar de cidade um dia! Organizada e um bom raciocínio com regras, atenciosa e sempre com muita força de vontade em aprender.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-18T03:38:00.000Z'::timestamptz),
  ('Guilherme Jordão Cardoso','guilhermejordao20@gmail.com',NULL,'54991155952','1992-07-20',33,'Solteiro(a)','0','Sim','Passo Fundo/rs','https://drive.google.com/uc?export=view&id=1Ni9zTRAUozr_I_5Aes7_BOwcL6Wkh_93','Engenharia Civil','Pós-graduação Completa','Faculdade de Rondônia - FARO','2016-02-26','Sou formado','Secretária de Estado do Desenvolvimento Ambiental – SEDAM – RO
Cidade: Porto Velho – RO
Assessor Especial de Gestão de Recursos Hídricos.
De 02/05/2014 a 22/08/2018.
Atividades desenvolvidas: Estudo do balanço hídrico das séries históricas de
vazão das estações de monitoramento do estado, marco zero para o estado de
Rondônia, estudo e analise de eventos críticos para prevenção de enchentes e
sistema de alerta para previsão. Operação de equipamentos de monitoramento
hidrometeorológico da rede nacional e estadual. Membro do Grupo de Trabalho
para acompanhamento, recebimento e validação dos serviços de Elaboração do
Plano Estadual de Recursos Hídricos do Estado de Rondônia, conforme
PORTARIA nº 306 /11/2016 - GAB/SEDAM Porto Velho, 11 de novembro de 2016.
Responsável operacional pelo monitoramento da qualidade das águas do estado,
do projeto QUALIÁGUA, realizando medições nos 26 pontos com a sonda YSI
EXO 01 e o medidor acústico de vazão SonTek M9. Elaboração do manual de
outorgas do estado.
Serviço Geológico do Brasil – CPRM – RO
Cidade: Porto Velho – RO
Estagiário. De 03/02/2014 a 02/02/2016.
Atividades desenvolvidas: Análise de dados hidrológicos, estatística e consistência
dos dados, organização e verificação das medições realizadas em campo. Estudo
de Bacias Hidrográficas em macro e micro dimensões, criação de base de sistema
de informação geográfica para análise e estudo de pontos de interesse,
elaboração de banco de dados unificado através do sistema HIDRO da ANA,
modelagem hidrológica para a bacia do Madeira e do Acre através do modelo de
grandes bacias MGB – IPH, desenvolvimento de estrutura organizacional para
recebimento e aferições das medições realizadas e suas devidas correções.
CENSIPAM – Centro Regional de Porto Velho
Cidade: Porto Velho – RO
Estagiário. De 16/07/2012 a 28/02/2014.
Atividades desenvolvidas: Treinamento em geoprocessamento, criação e edição
de mapas através de ArcGIS e Quantum GIS. Composição de imagens e analise
para identificação e avaliação de vegetação, solo e, umidade e diferentes dados a
serem georreferenciados. Elaboração e apresentação do relatório anual de focos
de calor, atendimento de demandas órgãos parceiros, conhecimento sobre banco
de dados geográfico, participação em projetos com o CNPQ.
TSC ENGENHARIA
Cidade: Porto Velho – RO
Estagiário. De 18/11/2010 a 31/07/2012.
Atividades desenvolvidas: Supervisão do empreendimento de 1.442,34m², sendo
um prédio residencial de 7 pavimentos. Controle das tarefas executadas
(alvenaria, armação, carpintaria, concretagem, hidráulica e elétrica), levantamento
de materiais, acompanhamento da execução dos pré-moldados, monitoramento
da produção de massas e concreto, requisitos das normas de segurança do
trabalho e criação de tabelas quantitativas para materiais em geral.
.','Mestrado em Engenharia Civil e Ambiental pela UPF, Pós graduação em Engenharia e Segurança do Trabalho pela UNIRON','AutoCAD, Office, Excel avançado, AutoCAD, ArcGIS, QGIS, Medidores acusticos de vazão, Sonda de qualidade da água, Curso Internacional de Medição de Descarga Liquida em Grandes Rios.','Engenharia','https://drive.google.com/open?id=1olmaW3cwqz7LCaoK_BwPnjvxVW0ZqfMs',NULL,'Agência de Empregos','Não','R$8.000,00','Sim',NULL,'Engenheiro Civil','• Possuo Graduação em Engenharia Civil, pós-graduação em Engenharia e Segurança do Trabalho, e sou mestrando em Engenharia Civil e Ambiental;
• Fui Assessor de Gestão de Recursos Hídricos na Secretaria de Estado do Desenvolvimento Ambiental;
• Auxiliei o estado nos programas QUALIÁGUA e PROGESTÃO da Agência Nacional de Águas;
• Fui responsável pelo monitoramento hidrometeorológico, divulgação de dados e cumprimento de metas dos programas;
• Analise e vistoria de empreendimentos e solicitações de outorga de direito de uso de recursos hídricos, e cadastro de processos no CNARH;
• Elaborei o manual técnico de outorgas do estado de Rondônia;
• Integrei o Grupo Técnico de avaliação dos produtos do Plano Estadual de Recursos Hídricos de Rondônia;
• Engenheiro Hidrólogo da sala de situação;
• Atuei como interprete técnico para pesquisadores da Universidade de Michigan e Nova York em visita as Hidrelétricas de Santo Antônio e Jirau pela Universidade de Rondônia;
• Usuário com conhecimento nos Softwares: AutoCAD, Civil 3D, ArGIS, QGIS, Excel, Pacote Office, Google Earth e plataforma Google;
• Ministrei curso de práticas para monitoramento hidrometeorológico;
• Palestra sobre Geoprocessamento aplicado a arquitetura;
• Disponibilidade imediata para viagens e mudanças de cidade e estado.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-18T07:01:00.000Z'::timestamptz),
  ('Cleyton da Silva Rodrigues','cleytonroder@hotmail.com',NULL,'+553399793723','1990-09-14',35,'Casado(a)','0','Sim','Caratinga/mg','https://drive.google.com/uc?export=view&id=1yutUnTbFtEe8xSBss0oLE5kvisrYTUwU','Engenharia Civil','Ensino Superior Completo','Centro Universitário de Caratinga UNEC - UNEC','2019-12-19','Sou formado','TRABALHEI EM UMA OBRA MINHA CASA MINHA VIDA, COM SUPERVISÃO DIRETA DE EXECUÇÃO, E GERENCIAMENTO DE SUPRIMENTOS, E AUXÍLIO DO ENGENHEIRO RESPONSAVEL, AO TODO 400 APARTAMENTOS DA FUNDAÇÃO AO ACABAMENTO.',NULL,NULL,'Engenharia','https://drive.google.com/open?id=1lt4UhG-6yPS7igreQXb_MQffJcQFt9Yq',NULL,'Agência de Empregos','NAO','6000','Sim',NULL,'Engenheiro Civil','TENHO CONHECIMENTO E MUITO INTERESSE PELA TECNOLOGIA BIM, ESTOU DESENVOLVENDO UM METODO DE GERENCIAMENTO ATRAVES DA PLATAFORMA BIM...','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-18T12:48:00.000Z'::timestamptz),
  ('Luis Fenando Carvalho','carvalholuis.eng@gmail.com',NULL,'55996330720','1991-10-24',34,'Solteiro(a)','0','Sim','Frederico Westphalen/rs','https://drive.google.com/uc?export=view&id=13JUrAiGUZBuVEdEPXLL1eEdUzpYqsGKZ','Engenharia Civil','Pós-graduação Incompleta','Uri Campus de FW','2021-09-18','Sou formado','ASMS Engenharia- Estagiário
Criare Moveis - Vendedor projetista de moveis planejados, trabalhei em torno de 3 anos
Finger Moveis Planejados- Vendedor projetista de moveis planejados, trabalhei 1 ano
Imperatriz projetos - Vendedor projetista de moveis planejados, trabalhei somente no período de experiência','MBA em Projeto, Desempenho e Construção de Estruturas e Fundações',NULL,'Arquitetura, Engenharia','https://drive.google.com/open?id=1L96ljDguvx0y2hjTJ5QYqdDaoI9s13hQ',NULL,'Agência de Empregos','nao','Ainda sem ideia salarial','Sim',NULL,'Engenheiro Civil','Sou formado em Engenharia Civil pela URI Campus de Frederico Westphalen.

Atualmente (2021) faço MBA em Projeto, Desempenho e Construção de Estruturas e Fundações.

Meu foco de estudo é na metodologia BIM, na qual fiz meu trabalho de conclusão sobre Implementação da Metodologia BIM nos cursos de Engenharia Civil e Arquitetura e Urbanismo. Ainda, apaixonado pela área de estruturas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-18T13:19:00.000Z'::timestamptz),
  ('Tatiane da Silveira Marques Reck','dasilveiramarquestatiane@gmail.com',NULL,'55999434940','1985-08-28',40,'Casado(a)','1','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=144EDIotkoi2sh0OEZV95Icr24dAv5jlQ','Tecnico de Radiologia','Ensino Médio Completo','SOS Realeza2007','2007-12-12','Não, no momento pausei/parei por um período.','Santa Casa de caridade de Alegrete como técnica de radiologia 2008/ 2020',NULL,NULL,'Administrativa',NULL,NULL,'Instagram','Sim, Carol Volpato','De acordo com o cargo','Não',NULL,'Admnistrativa','Me formei em técnico de radiologia e sempre trabalhei na área da saúde .','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-19T15:44:00.000Z'::timestamptz),
  ('Patricia Fantinel','patriciafantinel2021@gmail.com',NULL,'55991946197','1981-04-30',44,'Solteiro(a)','2','Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=11fJFbiY8z2ZTjJAJjzNMcYRVf0L25mmX',NULL,'Ensino Médio Completo',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Magazine Medianeira_ Cacequi RS
Vendedora/ Balconista 
02/082010 à 03/11/2020
Vendia,organizava,separava e marcava as mercadorias.
Era uma loja com 9 funcionários ao todo','Cursando Técnico Enfermagem',NULL,'Administrativa',NULL,NULL,'Instagram','Caroll Volpato','Comercial','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-19T17:39:00.000Z'::timestamptz),
  ('Gabriel Romário Flores Roggia','gabrielroggia21@gmail.com',NULL,'55996097656','1998-08-11',27,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1I66vV_vvhkQvWztFblB3i5nsX2qNHLRl',NULL,'Ensino Superior Incompleto',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Área administrativa no 6° RCB, Jovem aprendiz na CAAL, área de informática.','Cursando Ciências Econômicas (economia) na Unopar, Iniciando curso técnico em Administração, certificado informática avançada, certificado contabilidade empresarial.','Contabilidade Empresarial, Matemática Avançada com pacote Office.','Administrativa, Estágio, Financeiro, Novos Negócios','https://drive.google.com/open?id=1-GwWpSxpxMz7SJ1u5AkMW9uj6gwAQPQL',NULL,'Instagram','Carol Volpato','Procuro uma vaga para que eu possa aprimorar meus conhecimento, que tenha um salário justo da vaga a concorrer. Aceitaria trabalhar um determinado tempo somente por aprendizagem.','Não',NULL,'Estágio Financeiro','Busco sempre me aprimorar ao máximo e dedicar completamente ao trabalho proposto, caso não entenda algum conteúdo, pesquiso e estudo até entender, gosto de ser simpático sempre, administração ou informática são minha área.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-19T18:10:00.000Z'::timestamptz),
  ('Vinícios Petry','petryvini@gmail.com',NULL,'51980475552','1995-02-09',31,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1xleKG-vhJvBzVUXH84aLVLpudFh8wRcw','Engenharia Civil','Ensino Superior Completo','Universidade FEEVALE','2019-08-09','Sou formado','Engenheiro Civil - Profissional Liberal.
Atividades: Consultorias, orçamentos, laudos técnicos, projetos arquitetônicos e complementares, regularizações e vistorias. 
Período: De 10/2019 – atual.

Analista de Engenharia - CIW Engenharia.
Atividades: Soluções e auxílio em projetos estruturais, complementares e fiscalização de obras. Foco em detalhamentos estruturais em casas de alto padrão e projetos elétricos. 
Período: De 05/2021 – 11/2021.

Técnico em Geomática Júnior - ENGEFOTO - Engenharia e Aerolevantamentos S.A.
Atividades: Controle de qualidade do material produzido em campo. Programação das atividades da equipe externa e acompanhamento do cronograma, assim como dos resultados entregues. Integração de indicadores de desempenho entre os softwares ArcGIS e Microsoft Excel. Elaboração de relatórios para regularização fundiária e execução de outras atividades administrativas correlatas.
Período: De 06/2019 – 08/2019.

Cadastrador Júnior - ENGEFOTO - Engenharia e Aerolevantamentos S.A.
Atividades: Atualização do cadastro municipal de Novo Hamburgo, utilizando aerofotogrametria, levantamentos referentes ao cadastro de imóveis, medições, elaboração de croquis e contato direto com o público.
Período: De 07/2018 – 06/2019.

Assistente de Engenharia - ESI Comércio e Construções LTDA -EPP.
Atividades: Acompanhamento de obra e atividades técnicas, medições e auxílio nas rotinas administrativas da obra, gerenciamento de equipe e atendimento aos fornecedores.
Período: De 03/2018 - 05/2018.

Auxiliar Administrativo - Prefeitura Municipal de Campo Bom.
Atividades: Conferência e arquivamento de projetos arquitetônicos e alvarás de licença encaminhados no setor de protocolo, auxílio e atendimento ao público referente ao ISS e ISSQN no setor de fiscalização.
Período: De 10/2013 - 10/2015.',NULL,NULL,'Engenharia','https://drive.google.com/open?id=12thlRhzbphrQdn6iJoj8dC7Tk_ql9qas',NULL,'Instagram','Não','R$4.000,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-19T20:12:00.000Z'::timestamptz),
  ('amanda gabriela de paula dantas','amandagpdantas@outlook.com',NULL,'34996549572','1997-08-12',28,'Solteiro(a)','0','Sim','Ituiutaba','https://drive.google.com/uc?export=view&id=1gJgFCg5BaNH2XIb3gtkCFcvVkoL8cUOe','engenharia eletrica','Pós-graduação Incompleta','UEMG','2021-03-31','Sou formado','1) MBA 
2) assitente de engenharia 
3) 06/2021 - 09/2021
4) Realizar o orçamento das instalações de sistemas fotovoltaicos residenciais, comerciais e industriais.

1)SAE
2) Estágio 
3) 02/2020 - 12/2020
4) Responsável por apoiar na manutenção predial, painéis, motores e bombas. Auxiliei na manutenção de válvulas automáticas e nas verificações periódicas e preventivas de equipamentos elétricos','engenharia de segurança do trabalho','Autocad; Gestão de projetos','Engenharia','https://drive.google.com/open?id=1kOP8uFwcXb3sTlbfTNLuku4_0L-P_UIh',NULL,'Agência de Empregos','nao','3000','Sim','william.moura@enel.com','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-19T21:55:00.000Z'::timestamptz),
  ('Cintia Lopes Dorneles','cintiadorneles2020@gmail.com',NULL,'999212347','1975-09-26',50,'Casado(a)','2','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1vyMkjpge8n7xeg7Lh664_ziZnGx6zbXi','Gestão de Recursos humanos','Ensino Superior Completo','Unopar','2013-08-24','Sou formado','Ernani Suslik vendas 01/11/93  a 2/03/94
Caal supermercado Vendas
Câmara de Vereadores 1 ano',NULL,NULL,'Administrativa','https://drive.google.com/open?id=1rRTYNUfCsm4CQxleI5fc9nUG8k5JjC1C',NULL,'Instagram','Carol Volpato','Compatível com o cargo','Não','Jairo Lopes Carvalho  +55 55 9990-2331
Escritório de advogacia','Quero inscrever-me no banco de talentos da Young!','Sou voluntária no Portal Vida e atos','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-21T01:58:00.000Z'::timestamptz),
  ('Amanda Ferraz Freitas','amandaferrazf1998@gmail.com',NULL,'55999171669','1998-08-10',27,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1Ul8uqOqek1ozTA-wPJWVi2RWkwot63JZ','Administração de empresas','Ensino Superior Completo','Unopar Alegrete','2020-12-22','Sou formado','Empresa Walmart Supermercados, trabalhei como caixa operadora por 4 anos, data de admissão 24/08/2016 e data da rescisão 24/08/2020 - Empresa Planeje Empréstimos, trabalhei durante 1 ano, entrei como assistente administrativo e depois fui supervisora de loja, data de admissão 17/09/2020 e data de rescisão 30/09/2021','No momento estou cursando uma pós-graduação também - MBA em Estratégias de Vendas',NULL,'Administrativa','https://drive.google.com/open?id=1NFiX7FzjX5Y85S_30mFRaeNK5r-k7Tvk',NULL,'Indicação','Não','2100','Não','Valentina Perez - 55 99905-0337 - Empresa Planeje Empréstimos','Quero inscrever-me no banco de talentos da Young!','Bom sou uma pessoa que gosta muito de aprender coisas novas, tenho facilidade em trabalhar em equipe e sou bem comunicativa e dedicada. Um dos meus objetivos é aprender outro idioma, assim que possível quero fazer um curso de inglês. No tempo livre gosto de me dedicar as coisas que me fazem bem, como ler um livro, sair com os amigos e também tenho uma grande paixão por atividades físicas, no momento eu treino musculação e também Muay Thai, que é um exemplo de muita superação pessoal pra mim, ter começado uma arte marcial e ter evoluído bastante tanto fisicamente como mentalmente.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-22T14:09:00.000Z'::timestamptz),
  ('Darlene de Almeida Brandolt','darlenebrandolt@gmail.com',NULL,'55999179977','1999-11-07',26,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1hJdjpEjM6bmGtaZj8vMfAWlBw8e8VTMQ',NULL,'Ensino Superior Incompleto','Instituto Federal Farroupilha- Campos Alegrete','2023-12-24','Não, no momento pausei/parei por um período.','Primeiro Emprego','Auxiliar administrativo
Operador de Caixa
Atendimento ao cliente
Cursos feito pelo Programa Jovem Empreendedor',NULL,'Administrativa, Estágio, Financeiro, Engenharia',NULL,NULL,'Instagram','Carol Volpato','1.300','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Estou disposta a aprender novas coisas. Sou comprometida, interessada, humilde, dedicada.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-22T15:50:00.000Z'::timestamptz),
  ('Lucas Liscano Dreischarf','lucasldreischarf@gmail.com',NULL,'55991764919','1997-07-18',28,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1xbimtMUXVHRiu9ZOxRhFF9r2b-aDZ__d',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Trabalhei na área de vendas,na empresa Lojas Becker e na Lojas Gang,ambos de diferentes lugares e diferentes produtos,aprendi muito em ambas as empresas.','Auxiliar Administrativo 
Vendas 3 CBOS ( cobrar spc/serasa )
Curso de Venda relógios Cassio
Informática básica','Senac - RS','Administrativa',NULL,NULL,'Instagram','Nao','Salário mínimo + comissão.','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Trabalho em áreas de vendas a algum tempo,mas tenho talentos por fora dessa área,atuo como tatuador nas horas vagas,crio artes em parede,papel,telas,retratos... sigo muito a area fa arte,pretendo também em fazer o técnico em design de interior.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-23T04:08:00.000Z'::timestamptz),
  ('Carolina Luiza Trierveiler','ctridir@outlook.com',NULL,'55991790126','1994-10-19',31,'Solteiro(a)','1','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1Sca2O45EpAcPG4ZFBLU-5ipgJyxwwVXI','Direito','Ensino Superior Completo','Uri Santo Ângelo','2018-08-28','Sou formado','Secretaria de Desenvolvimento Social, Diretora do depto de Habitação, 10/2020 a 09/2021. Atender ao público, elaborar projetos para conter déficit habitacional municpal, atas, ofícios, distribuição de materiais de construção e doações. 
Claudinho Autodemolidora, atendente/ estoquista, 2010/2013. Atender ao público, emitir notas fiscais de saída e entrada, colocar peças no sistema, etiquetar, nas plataformas digitais licenciadas pelo DETRAN/RS. 
Advocacia Flavio Loureiro, estagiária , 2019. Elaborar peças processuais, atender ao público e protocolar os processos.','Pós graduação em direito trabalhista','Curso de Marketing, Departamento Pessoal e Pacote Office','Administrativa, Comercial, Marketing','https://drive.google.com/open?id=1jpKkVaDdvI1PXD6v6IUC15uQ2hpZRgmE',NULL,'Instagram','Não','28000','Sim','Sandro Heleno ( 55) 991829230 - Claudinho Autodemolidora
Flavio Loureiro -  ( 55) 996586622 - Flavio Loureiro Advocacia','Quero inscrever-me no banco de talentos da Young!','Olá, tenho 27 anos, mãe de primeira viagem, ponto forte organização, ponto fraco imparcialidade. Bem humorada, apaixonada por animais.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-23T16:42:00.000Z'::timestamptz),
  ('Aureo Gabriel Dutra','gabrielsullivan269@gmail.com',NULL,'54984481982','1999-08-24',26,'Solteiro(a)','0','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=10CV8ZnhHC5kJdJaXw-ztRRSFTeH6eZq-','Superior em Tecnologia','Ensino Superior Incompleto','Unopar','2022-12-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Empresa:Prefeitura municipal de Capão Bonito do Sul
Cargo: Estágio Auxiliar Administrativo
Emissão/Demissão: 28/08/2017 a 27/02/2018
Principais atividades: Conhecer a unidade de estágio; auxiliar na identificação dos procedimentos realizados na unidade concedente de estágio; auxiliar na conferência e distribuição de documentos; auxiliar na digitação de documentos; prestar informações ao público.',NULL,NULL,'Administrativa, Comercial, Marketing',NULL,NULL,'Facebook','Não','1.200','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Eu terminei a escola , depois de 3 anos comecei a fazer minha faculdade e estou atualmente cursando , estou terminando o segundo semestre, tenho alguns cursos feitos que a universidade ofereceu possuo os certificados também. Me considero uma pessoa alegre e comunicativa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-25T13:56:00.000Z'::timestamptz),
  ('Aysha Ramos Maruf','aysharamosmaruf@gmail.com',NULL,'55991884796','1999-02-14',27,'União estável','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=128w8ROuoUd2F64iImFTIh2snc_DYJBT1','Gestão de Recursos Humanos','Ensino Superior Completo','Unopar','2020-08-18','Sou formado','Mini mercado do primo - Atendente - 2013 a 2018 - Atendimento ao público, reposição de produtos - controle de notas fiscais e boletos.

Prefeitura Municipal de Alegrete - 2019 a 2020 - Setor de Protocolo (Atendente) - Atendimento ao público, recebimento, classificação, registro de documentos em geral.

Aeronat- Aviação Agrícola - De maio ( Meu emprego atualmente)- Auxiliar administrativa - Rotinas administrativas e-mail, telefone, conferência de material do estoque, controle dos documentos das aeronaves agrícolas. Compras na cidades.',NULL,NULL,'Administrativa, Comercial','https://drive.google.com/open?id=1H3ej9S_n5ZrstqoEQtrOY7Wqj6j1hxJy',NULL,'Instagram','Não','R$1.800,00','Sim','Nei Adelar  - 999715385- Aeronat','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-25T15:30:00.000Z'::timestamptz),
  ('Carina Fontani Morteu','carifmorteu95@gmail.com',NULL,'55997001380','1995-07-02',30,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1O2wpAL3wjZ1zzprSy9uuDeMG9FHkS6lK','Auxiliar administrativo; informática comercial; cursandk técnico em enfermagem','Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Experiências vasta no comércio, principalmente ao atendimento ao público.',NULL,NULL,'Comercial',NULL,'https://drive.google.com/open?id=18O65HT8fYWh6_r2uRimy6mQQl68iy_9Q','Instagram','Não','1100','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-25T16:32:00.000Z'::timestamptz),
  ('Sandi Raquel Machado Roos','smachadoroos@gmail.com',NULL,'55999060899','2001-06-06',24,'Solteiro(a)','0','Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1oVnN46l78xUNLsOPejJXmt3Q2x5yK7DY',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Candidata ao primeiro emprego',NULL,NULL,'Comercial, Financeiro, Novos Negócios',NULL,NULL,'Instagram','Não','1,100, 00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-25T18:31:00.000Z'::timestamptz),
  ('Carolina Dias Dorneles','Carolinaddcastro@gmail.com',NULL,'55991884387','2000-10-31',25,'Solteiro(a)','0','Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=15IGZ4Nts-15fNQLY5Z-wkXcN67b1pUHK',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Santana Promotora – Vendedora inicio 06/21  - Saída 08/2021 (motivo: fechou a empresa)

Instituto mix – Orientadora Educacional (Vendedora) Inicio 08/11 / Saída 11/2021
(Bati minha meta nos dois meses, no ultimo mes agora nao deu, faltou 4 para conseguir e nós trabalhavamos por metas)','Industria e comercio - Interneith Alegrete RS.  Gestão em vendas – Instituto mix Alegrete RS.
Comércio e Vendas - Interneith Alegrete RS.
Pedagogia Empresarial: Uniasselvi (Em curso).',NULL,'Comercial','https://drive.google.com/open?id=1O1w0Rde_xrqXZA24QXtivZ2P_dY6hO8E',NULL,'Indicação','Caroline','1.300','Sim','Referencia – Alyne gerente mix 55 99606-9816','Quero inscrever-me no banco de talentos da Young!','Tenho flexibilidade para aprender outras atividades, facilidade com crianção de imagens, gosto da área de vendas e atendimento!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-11-30T14:42:00.000Z'::timestamptz),
  ('Danrley Douglas Ledesma de Matos','douglasledesma95@gmail.com',NULL,'55999138009','1995-05-12',30,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1YPSA12eMPNM4L_oBYv4q7RljXKLgPC63','Educação Física','Ensino Superior Completo','Anhanguera','2022-01-01','Sou formado','Em busca do primeiro emprego.',NULL,NULL,'Administrativa',NULL,NULL,'Facebook','Não','1500','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-01T07:20:00.000Z'::timestamptz),
  ('Gisele martins dos santos','giselemartinsdossantos37@gmail.com',NULL,'55984585396','1996-04-03',29,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1kgs6WfwHQnnJGiltqzwAchqQ69qE9UcY',NULL,'Ensino Médio Completo','I.E Arneldo matter','2021-11-26','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Trabelhei como operador de caixa na empresa Ropel bebidas,( vendedora, e serviços gerais também)
E autônoma como vendedora.','Básico de informática 
Básico auxiliar administrativo
Atendente de farmácia
Frentista 
Tcn.enfermagem','Auxiliar administrativo tenho certificado, frentista tenho certificado,atendente de farmácia tenho certificado.','Comercial, Estágio','https://drive.google.com/open?id=1rTYt9MN52YaqSvyjgqCbFRRzGXeWR5oC',NULL,'Facebook','Não','Só mínimo um salário','Sim',NULL,'vendedora','Estou em busca de uma oportunidade, 
Pra poder desenvolver mimhas habilidades, e poder contribuir com a empresa e ter oportunidade de me aperfeiçoar mais.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-01T12:32:00.000Z'::timestamptz),
  ('Bruna Brittes Ferreira','brittesbrunna3@gmail.com',NULL,'55996936821','1996-10-01',29,'Solteiro(a)','0','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1FBpB1zpNj0c67_Zj_Jq8SA9mHPRRhzVT','Serviço Social','Ensino Superior Completo','Universidade Federal do Pampa','2021-11-26','Sou formado','Estou me candidatando ao primeiro emprego','Auxiliar administrativo - SENAI (2013)',NULL,'Administrativa, Arquitetura, Financeiro, Engenharia','https://drive.google.com/open?id=1tGGD8QENnlPn23Hdtru4mR3QriWu2V74',NULL,'Agência de Empregos','Não','1.800,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Estou a procura do meu primeiro emprego, mas acredito no meu desempenho profissional, responsabilidade, pontualidade e organização, os principais pontos positivos do meu perfil.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-02T02:13:00.000Z'::timestamptz),
  ('Zaida marques D''avila neta','marqueszaida20@gmail.com',NULL,'55984144953','1997-01-25',29,'Morando junto','2','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1ge3Z08YKiNTbZx7zU5h5gvuRfVlPPIeL','Vou fazer técnico em contabilidade ano que vem','Ensino Médio Completo','Escola Tricentenário','2015-12-02','Não, no momento pausei/parei por um período.','Cia do sul financiamentos *auxiliar administrativo','Tenho um curso de vendedora',NULL,'Administrativa, Comercial, Financeiro','https://drive.google.com/open?id=1zU5Ksc5mH52uJhH-GIxfr3ViEo1_GKtf',NULL,'Facebook','Não','1400','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Então sou uma menina cheia de planos, vejo um futuro brilhante para mim, é um pouco difícil informar que tenho apenas um curso de vendedora. 
Mas tenho esperiencia como promotora de vendas, telemarketing, auxiliar administrativo. 
Sou uma pessoa muito muito esforçada. E sei que qualquer coisa que me derem para mim fazer. Irei colocar meu tudo para melhor eu fazer. 
Muito obrigado 
Até mais!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-02T15:48:00.000Z'::timestamptz),
  ('Vitor Estéfano Luz Bomfim','vitorbomfim87@yahoo.com',NULL,'51980550169','1999-12-03',26,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=18chVsEcfjiE-0BWyM-Ghdb_Hg-eeATlQ',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','1) Magazine luiza
2) Vendedor
3) Início 02/02/2019. Término 13/09/2021
4) Trabalhava vendendo todos os produtos da loja e site, consórcios, seguros residenciais e extensão de garantias dos produtos, 1 mês em treinamento de vendas e palestras em São Paulo e Porto alegre direto com os diretores da empresa (luiza helena trajano, frederico trajano e sua equipe)','Não estou cursando no momento',NULL,'Comercial, Financeiro, Novos Negócios',NULL,NULL,'Indicação','Sim, Duda meregali','3 mil reais','Sim','Cristiano Galski 
(Meu gerente durante o período de trabalho)
+55 51 9401-5626
Magazine luiza','Comercial','Me considero uma pessoa muito comunicativa, expressiva e animada, sempre procuro manter o ambiente em que estou alegre e prosperando como um todo, tenho facilidade com a língua inglesa e consigo trabalhar muito bem em equipe, arranho um pouco na arte da cozinha então algumas jantas da empresa poderão ser feitas por mim.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-02T16:20:00.000Z'::timestamptz)
;

INSERT INTO young_talents.candidates (full_name, email, email_secondary, phone, birth_date, age, marital_status, children_count, has_license, city, photo_url, education, schooling_level, institution, graduation_date, is_studying, experience, courses, certifications, interest_areas, cv_url, portfolio_url, source, referral, salary_expectation, can_relocate, professional_references, type_of_app, free_field, status, tags, origin, created_by, original_timestamp)
VALUES
  ('Jocinei da Silveira Muniz','jocineisilveira733@gmail.com',NULL,'51998956543','2004-01-11',22,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1w7FoyPLqYNy7K5SrcB_dunad5WpJeDWs',NULL,'Ensino Médio Completo',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Cooperativa Agroindustrial Cooperja: Auxiliar de escritório - data de inicio: 03/2020, data final: 03/2022. Atuei em diversas áreas da empresa, no setor de RH, financeiro e Recepção; realizava atendimento ao público e entre outros.

Prefeitura Municipal de Santo Antônio da Patrulha: Estágiario- data de inicio: 02/21 data final: 01/2021. Autuava na Secretária da Cultura, Turismo e esportes... Onde auxiliava e participava em diversos projetos culturais, turísticos e esportivos da secretária e também por conta própria.','Polo Universitário Santo Antônio - Curso de Robótica- Concluído.
Curso de Informática - Concluído.
Curso de Políticas Públicas - Escola do Governo - Concluído.
Curso de Elaboração de Projetos e Captação de Recursos - Concluído.
Curso de Turismo Cultural - Online - Concluído.
Curso de Inglês nível médio - Online - Concluído.

Atuei também em diversas escolas do município, levando até os adolescentes o teatro e a desenvoltura do ramo artístico;
tanto como na prefeitura de Santo Antônio da Patrulha onde realizei e participei de projetos culturais.',NULL,'Administrativa, Comercial, Financeiro','https://drive.google.com/open?id=1j4j0bFYzEF3ZbAeRm3HXTt4Mua07gqsO',NULL,'Indicação','Não','1.800,00','Não','Cooperja- 51 998857400 - Cenira Soares
Prefeitura - 51 999698899 - Bruno Barcelos','Quero inscrever-me no banco de talentos da Young!','Bom sou bem extrovertido e objetivo, e por isso procuro sempre ficar alegre e fazer aquilo que gosto... E umas das coisas é atuar e cantar, desde pequeno isso já é presente em minha vida e hoje em dia posso dizer que está cada vez mais presente.
Procuro sempre estar atento em novas oportunidades de aprendizagem, cursos de outras linguas e entre outros, brinco as vezes que tenho uma anteninha, porque toda vez que surge uma oportunidade eu estou lá.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-02T19:08:00.000Z'::timestamptz),
  ('Luana Carolina Pinto Bittencourt','luanabittencourt2596@gmail.com',NULL,'51980537008','2003-04-09',22,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1wXwe9hzX6AKU1Q7aI3YQwQGEN-PnLNQJ',NULL,'Ensino Médio Completo','Uniasselvi','2024-01-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1)BT - telecomunicação; 2) Estágio no setor de marketing; 3) Lidar com metas e ofertar o melhor aos clientes. 1) Imap Indústria e Comércio; 2) Auxiliar de compras; 3) Auxiliar no fluxo de compras e no contato com o fornecedor.',NULL,NULL,'Administrativa, Comercial, Marketing',NULL,NULL,'Indicação','Sim, Eduarda Silva','R$1.600,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Atualmente sou auxiliar de compras na Imap, mas sigo disponível para novas experiências e aprendizados. Gosto muito de lidar com planilhas e planos de ação. Me dou muito bem na comunicação e quero poder sempre dar o meu melhor onde eu mais me identificar.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-03T02:34:00.000Z'::timestamptz),
  ('Tariane Trindade','tarytrindade29@gmail.com',NULL,'55996240414','2021-12-06',4,'Separada','2','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1hMWF9lrmeRe79RYE31_WEa3O56Uqc2-p',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Padaria S e M : desempenhava a função de caixa e atendente 
Mercado do porto: desempenhava a função do serviços gerais , caixa, loja, estoque
Farmácias Panvel: desempenhava a função de Balconista','Curso de informática
Curso de atendimento ao cliente
Palestras de boa comunicação',NULL,'Comercial','https://drive.google.com/open?id=1dvAW_0DcK_8i_qC9h6GO7HHQGNlewLgO',NULL,'Facebook','Não','Compatível com a função desempenhadas','Sim',NULL,'Comercial','Sou bastante comunicativa, gosto de trabalhar em equipe , sou bastante curiosa gosto de aprender novas funções,  sou bastante prestativa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-03T11:48:00.000Z'::timestamptz),
  ('Arthur do Amaral Pereira','arthuramaral.engenheiro@gmail.com',NULL,'83996066420','1995-12-14',30,'Solteiro(a)','0','Sim','Pombal/pb','https://drive.google.com/uc?export=view&id=1j3taL410wyrw7SjRJTck-DEQVxC8TFFl','Engenharia Civil','Ensino Superior Completo','Universidade Federal de Campina Grande','2021-06-25','Sou formado','1- Prefeitura Municipal de Pombal. 2- assistente de engenharia/engenheiro civil. 3- 01/12/2019 - atual. 4- Projetos complementares, projetos de pavimentação, projeto de terraplenagem, orçamento de obras, fiscalização de obras, execução de obras de infraestrutura urbana e reforma de prédios públicos, topografia com drones, regularização de loteamento, projeto de iluminação pública.',NULL,NULL,'Engenharia','https://drive.google.com/open?id=12QR0rtpClQkUcwZFHWkVIQmdMmyf2BvT',NULL,'Agência de Empregos','Não','R$4.900,00','Sim',NULL,'Engenheiro Civil','Sou um profissional recém formado porém com grande facilidade de aprendizado para desempenhar novas funções e comprometido com minhas obrigações.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-03T13:07:00.000Z'::timestamptz),
  ('Adriéli Caroline da Silva Caetano','davimigueleterno@gmail.com',NULL,'55984312078','1995-08-09',30,'Solteiro(a)','2','Sim','Santa Rosa/rs','https://drive.google.com/uc?export=view&id=1ZTjs1n6ETnDlcqAWhtFto_i9PoBEVP5z','RH','Ensino Superior Incompleto','Uninter,Sr',NULL,'Não, no momento pausei/parei por um período.','Sistema De ensino Gaúcho ,SEG- consultora de Vendas',NULL,NULL,'Comercial',NULL,NULL,'Facebook','Não','1.600,00$','Sim',NULL,'Comercial','Alta performance em Negociação e parcerias , atendimento ao cliente e conhecimento em viagens e trabalhos externos!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-03T15:12:00.000Z'::timestamptz),
  ('Anna Larissa Góes de Oliveira','anna.larissagm@hotmail.com',NULL,'85998389862','1995-11-29',30,'Solteiro(a)','0','Sim','Maracanau/ce','https://drive.google.com/uc?export=view&id=1ewk2ibSniIUh20CrbZ2ecbS5sNGosSx0','Engenharia Civil','Ensino Superior Completo','Faculdade Farias Brito','2018-12-28','Sou formado','ENGEAR ENGENHARIA DE AQUECIMENTO E REFRIGERAÇÃO LTDA, Obras de Estação de Transferência de Custódia - CEGÁS 
Cargo: Engenheira Civil
Período: ago/20 á Nov/21
Atividades realizadas: Acompanhamento e execução das obras civis, elaboração de cronogramas e planejamento de obras. Emissão de relatórios de controle de qualidade; Relatórios Diários de Obras; Realização de interface entre as áreas de planejamento e execução da obras; Elaboração de Boletins de Medição de obras e serviços. Organização e levantamento de quantitativos de materiais. Liderança e gestão de equipe de obras civis.





TECMASTER Engenharia e Construções LTDA, Obras CEGÁS Cargo: Assistente de Planejamento
Período: jul/19 á ago/20
Atividades realizadas: Elaboração de cronogramas, histogramas e demais documentos de planejamento; Atualização e acompanhamento de cronogramas, histogramas e demais documentos de planejamento para empreendimentos; Realização de análise crítica de previsto x realizado, sob o ponto de vista de avanço físico e financeiro; Emissão de relatórios de controle de toda a equipe de execução; Relatórios Diários de Obras; Realização de interface entre as áreas de planejamento e execução da obras; Elaboração de Boletins de Medição de obras e serviços.

TECMASTER Engenharia e Construções LTDA, Obras CEGÁS Cargo: Técnica de Documentação
Período: jan/19 á jun/19
 Atividades realizadas: Organização, análise e cadastro de documentos em sistema digitalizado para arquivamento, Elaboração e organização de relatórios da qualidade.

MRV Engenharia, Obra Parque Fluence Cargo: Auxiliar de Engenharia
Período: abr/18 á jul/18
Atividades realizadas: Controle de execução de serviços em campo, atualizações de documentos da qualidade PBQP-H, atividades de organização de canteiro de obras e gerenciamento de resíduos sólidos, levantamento de quantitativo de materiais, liberação e conferência de serviços executados em campo, acompanhamento de execução de serviços, acompanhamento de concretagens e preenchimento de rastreabilidades de concreto, leitura e interpretação e projetos, preenchimento de documentos da qualidade, realização de treinamento de funcionários de atividades realizadas em campo, pedidos de matérias.

MRV Engenharia, Obra Parque Fluence
Cargo: Estagiária de Qualidade e Meio Ambiene Período: dez/17 á mar/18
Atividades realizadas: Controle de execução de serviços em campo, atualizações de documentos da qualidade PBQP-H, atividades de organização de canteiro de obras e gerenciamento de resíduos sólidos.',NULL,NULL,'Engenharia','https://drive.google.com/open?id=1dK7xEh3JemgR1siuhX0YNAooGj4NrBbO',NULL,'Agência de Empregos','Não','8000','Sim','Fabio Mesquita
TECMASTER
+55 81 9451-8153

Olavio Pontes
Engear
+55 83 8856-8910','Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-03T16:06:00.000Z'::timestamptz),
  ('André Luiz Spricigo','andreluizspricigo@gmail.com',NULL,'41996874784','1986-11-27',39,'Solteiro(a)','0','Sim','Curitiba/pr','https://drive.google.com/uc?export=view&id=1rJdXN8HpRWywf4PuEzgHqqISB24b0MPe','Engenharia Civil','Pós-graduação Incompleta','PUC-PR','2016-12-12','Sou formado','• Autônomo (2019 ao momento)
- Avaliação de Imóveis Urbanos;
- Renovatória de Locação;
- Atualização Patrimonial;
- Inspeção Predial
- Vistoria Cautelar de Vizinhança;
- Regularização de imóveis - (construção, reforma, averbação, desdobro, unificação);
- Execução e gerenciamento de obras.

• Grupo Madero (2019 a 2019)
- Engenheiro Residente;
- Obras em Containers;
- Estrutura Metálica;
- Quantitativo de material – Projeto;
- Orçamento de material;
- Relatório semanal de obra;
- Fiscalização de execução do projeto em campo;
- As built das alterações de projeto em campo;
- (drenagem, hidráulica, elétrica, pavimentação, paisagismo, climatização).

• Termsul Engenharia e Serviços LTDA (2018 a 2019)
- Engenheiro Residente;
- Obra: obra do Tribunal de Justiça, Construção Prédio da Comarca de Júlio de Castilhos / RS;
- Quantitativo de material – Projeto;
- Orçamentos de material;
- Medição de execução de empreitada - Mão de obra;
- Cronograma físico e financeiro;
- Relatórios mensal de obra;
- Fiscalização de execução do projeto em campo;
- As built das alterações de projeto em campo;
- (drenagem, hidráulica, elétrica, pavimentação, paisagismo, climatização).

• JMalucelli Construtora- (2012 a 2015)
- Atuação na obra do Viaduto Estaiado de Curitiba;
- Gerenciamento de equipe - (Colaboradores);
- Relatórios de obra (RDO);
- Acompanhamento: solda, SPDA, obras de artes especiais, terraplenagem, pavimentação,
rede de elétrica, remanejamento de água, esgoto e drenagem;
- Realização de orçamentos, quantitativos de materiais e mão de obra.

• Paysage condomínios diferenciados (2010 a 2012)
- Participação em projetos de condomínios horizontais;
- Gerenciamento de equipe - (Colaboradores);
- Quantitativo de material – Projeto;
- Orçamentos de material;
- Recebimento e conferência de materiais, controle de estoque;
- (terraplenagem, pavimentação, rede de elétrica e lógica, água, esgoto drenagem, e obras
civis).','Pós-graduando em Avaliações, Perícias, Engenharia Diagnóstica e Patologia das
Construções – BSSP','• Básico em assistente administrativo – Diapar; • Inspetor de Qualidade Industrial – TQI; • Eletrônica básica -Delta Energy Systems; • Auto-Cad 2D – SENAI; • Revit - (BIM) 2016 – Construir; • Segurança para trabalho em altura e noção de resgate – Prevenção; • Segurança para trabalho em espaço confinado – Prevenção; • Operador de Plataforma aérea modelo ZX-135/70 – Mills Rental; • Treinamento Técnico de montagem, desmontagem e utilização do sistema RECUB para escoramento de lajes nervuradas – Ulma; • Familiarização em segurança da aviação civil – Infraero; • Avaliação de Imóveis Urbanos – Laudo Master; • Laudo de Vistoria Cautelar de Vizinhança - Tutorial Cursos. • Regularização de Imóveis Residenciais - Leila Brito Treinamento e Inovação • Avaliação de Imóveis por Inferência estatística – REGRESSION Engenharia de Avaliações LTDA. • Fórmula da Perícia Judicial – Camila Silva Soares • Vistoria de Entrega e Recebimento de Obra – Estude AE • Perícia Judicial com Especialização em Avaliação Imobiliária – Academia do Perito • Trâmites Jurídicos e Petições Para Peritos - Academia do Perito • Formação de Assistente Técnicos Judiciais - Academia do Perito','Licenciamentos, Novos Negócios, Engenharia','https://drive.google.com/open?id=1OB0tiu3PT4NkeF7gzXxP-tGGRikAg1TM',NULL,'Agência de Empregos','Não','7500','Sim',NULL,'Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-03T18:41:00.000Z'::timestamptz),
  ('HERNANDES SALES GUERRA JUNIOR','hernandesjr@gmail.com',NULL,'68992365474','1982-04-02',43,'Casado(a)','1','Sim','Rio Branco, Acre','https://drive.google.com/uc?export=view&id=1avG0nVLUJ4WqHHnbLsDDSoqFO6JyOVn-','Engenharia Civil','Pós-graduação Completa','Universidade Federal do Acre','2011-02-09','Sou formado','Secretaria de Estado de Infraestrutura e Obras Públicas  -  SEOP (Engenheiro Civil) Janeiro  de  2011  -  Fevereiro  de  2011 Supervisão,  Consultoria  e  Elaboração  de  Orçamentos  para  a  Secretaria De  Estado  De  Infraestrutura  E  Obras Públicas  –  SEOP  –  Rio  Branco-AC   Tellus Consultoria SS LTDA  (Engenheiro Civil) Fevereiro  de  2011  -  Julho  de  2011 Supervisão,  Consultoria  e  Elaboração  de  Orçamentos  para  a  Secretaria De  Estado  De  Infraestrutura  E  Obras Públicas  –  SEOP  –  Rio  Branco-AC   Projectus Consultoria LTDA  (Engenheiro Civil) Setembro  de  2011  -  Novembro  de  2011 Supervisão,  Consultoria  e  Elaboração  de  Orçamentos  para  a  Secretaria De  Estado  De  Infraestrutura  E  Obras Públicas  –  SEOP  –  Rio  Branco-AC   Inovare Serviços e Projetos LTDA  (Engenheiro Civil) Dezembro  de  2011  -  Novembro  de  2013 Supervisão,  Consultoria  e  Elaboração  de  Orçamentos  para  o Departamento  Estadual  de  Pavimentação  e  Saneamento  –  DEPASA  – Rio  Branco/Feijó/Tarauacá-AC Empresa Municipal de Urbanização de Rio Branco  -  EMURB  (Engenheiro Civil) Janeiro  de  2014 Junho  de  2015',NULL,NULL,'Administrativa, Engenharia','https://drive.google.com/open?id=1aP5JpmHdF9oECjpkAkHbr91xs0f76ac4',NULL,'Agência de Empregos','Não','6000','Sim',NULL,'Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-03T20:24:00.000Z'::timestamptz),
  ('Luca Corbellini Berardi','lucacberardi@hotmail.com',NULL,'51998528897','1994-07-19',31,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=11Ic6y0leQfykxPEHFIIgm04ap0MgPkdi','Engenharia Civil','Ensino Superior Completo','PUCRS','2019-08-21','Sou formado','Engenheiro civil, 26 anos, formado pela Pontifícia Universidade Católica do Rio Grande do Sul. Sólida experiência no planejamento, controle/gestão e execução de obras e projetos. Atualmente atuo na área de saneamento, executando serviços como escavação, redes de água, pavimentação e complementares. Tendo também atuado na construção civil,  reformas e construções de médio a grande porte. Experiência desenvolvida na área de construção/engenharia civil como auxiliar de produção, estagiário, analista de engenharia civil, engenheiro civil e um intercâmbio de um ano na Austrália (Sydney e Brisbane). Possuo conhecimento em inglês, Pacote Office, Sistema SERVER, HOLMES - Sistema de Gestão de Processo e AutoCAD.

1ª Portonovo Emprendimento & Construção | Setembro de 2014 - Maio de 2015
Estagiário de Engenharia Civil - Construção civil 
- Acompanhamento das etapas construtivas da reforma do HPS - Hospital de Pronto Socorro de Porto Alegre, RS.

2ª Home Engenharia LTDA | Janeiro de 2019 - Agosto de 2019
Estagiário de Engenhairia Civil - Construção civil 
- Atuação dentro do canteiro de obra e no escritório de Engenharia, na execução do novo prédio do Campus da Faculdade de Saúde da UFRGS - Instituto de Ciências Básicas.

3ª Home Engenharia LTDA | Agosto de 2019 - Outubro de 2020
Auxiliar de Engenheiro Civil - Construção civil 
- Orçamento de serviço de mão de obra e materiais de construção civil.
- Auxilio na medição de serviços mensais executados por empreitada.
- Diários de obra.
- Auxílio no cronograma físico e financeiro de obra.
- Execução de projetos e as built.
- Gestão de pessoas e equipes.

4ª MGM Serviços Técnicos LTDA | Outubro de 2020 - presente
Engenheiro Civil - Gestão de obras
- Supervisão/gestão de logística de equipe de construção e
 operações diárias.
- Medições dos serviços mensais executados.
- Relatórios técnicos de controle, planejamento e gestão de obra.
- Cronograma físico e financeiro.
- Elaboração de aditivos.
- Gestão e execução de projetos.
- Contratação de todos os membros da equipe.',NULL,NULL,'Engenharia','https://drive.google.com/open?id=1ZGDJPs2Y0sHglmBeJG8N04sqJ3H6WE2a','https://drive.google.com/open?id=1BCdfuuqVoZC9Bz_wny4JYjyV3FI2skio','Agência de Empregos','Não','R$10.000,00','Sim',NULL,'Engenheiro Civil','Intercâmbio 1 ano na Austrália onde morei em Sidnei, Brisbane e conheci a Ásia. Nesse meio tempo trabalhei como servente dentro do canteiro de obra.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-03T21:47:00.000Z'::timestamptz),
  ('David Henrique de Azevedo Alves','alvesdavid133@gmail.com',NULL,'62993944661','1993-03-13',32,'Casado(a)','0','Sim','Goiânia/go','https://drive.google.com/uc?export=view&id=15wOqCB-u3Ip0rcclFdm-mh2BuPtgJ12-','Engenharia Civil','Ensino Superior Completo','Pontifícia Universidade Católica de Goiás','2016-09-30','Sou formado','Out/19 – Atual 
Secretaria de Estado de Educação, Cultura e Esporte – Goiás, Brasil
Engenheiro Civil
• Acompanhamento e fiscalização de obras de infraestrutura;
• Levantamento de requisitos e implantação de otimização e automação de processos para
projetos de infraestrutura;
• Especificação e modelagem de processos de infraestrutura;
• Gestão de relacionamentos entre as equipes de arquitetura e orçamento;
• Desenvolvimento de uma aplicação em VBA para elaboração de aditivos, a qual é hoje
utilizada como padrão pelo departamento de orçamentos;
• Otimização de processos de levantamento quantitativo para a equipe de projetos e orçamentos.

Jul/18 – Set/19 Construtora Terra Santa – Goiânia, Brasil
Engenheiro Civil
• Elaboração de documentos para empreendimentos MCMV, tais como planilhas de
levantamentos de serviço, ficha resumo do empreendimento, orçamentos e cronograma;
• Gestão e planejamento de atividades de construção e incorporação de unidades habitacionais,
em edificações horizontais e verticais, bem como infraestrutura (terraplanagem, pavimentação,
meio fio, rede de água e esgoto, rede de captação pluvial, rede elétrica);
• Elaboração, adaptação e correção de projetos;
• Negociação com investidores;
• Prospecção de áreas e elaboração de estudos de viabilidade técnica e econômica de
empreendimentos imobiliários;
• Gestão e planejamento de atividades de construção e incorporação de unidades habitacionais;
• Gestão de relacionamento com concessionárias de água, esgoto, energia e órgãos financeiros.

Abr/17 – Jul/18 Sherwin Willians do Brasil – Goiânia, Brasil
Sales Management Trainee
• Desenvolvimento de plano de negócios para abertura de novas lojas;
• Controles internos de finanças, estoque, gestão de equipe, transferências interestaduais e
trabalho com impostos para emissão e entrada de NF;
• Formatação de campanhas de marketing e vendas;
• Negociação com clientes de varejo e atacado;
• Otimização e automação de processos.

Jun/16 – Mar/17 Brasil Center Comunicações – Goiânia, Brasil
Intérprete de Inglês
• Tradução simultânea inglês-português de transações comerciais, técnicas e financeiras.

Jan/15 – Jul/15 Central de Desempenho Treinamentos e Consultoria – Goiânia, Brasil
Estagiário
• Desenvolvimento de sistemas de controle de qualidade;
• Preparação de material técnico para eventos e treinamentos

Ago/13 – Fev/14 MASI Engenharia – Goiânia, Brasil
Estagiário
• Planejamento, supervisão e correção de serviços tais como: terraplanagem, fundações,
estrutura metálica e pré-moldada, alvenaria, reboco, revestimentos, cobertura, instalações
elétricas e hidráulicas, acabamentos e entrega da obra edifício comercial. Estimativa diária de
materiais para rotinas de obra, entre outras atividades.',NULL,NULL,'Licenciamentos, Novos Negócios, Engenharia','https://drive.google.com/open?id=142Ep7NsFWlbEKunWkUfziOYWokZnpUKs',NULL,'Agência de Empregos','Não.','R$7.500,00','Sim','Thiago Rodrigues - SEDUC - (62) 994521892','Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-03T22:28:00.000Z'::timestamptz),
  ('Henrique José Strieder','strieder@hotmail.com',NULL,'53999051017','1993-11-16',32,'Solteiro(a)','0','Sim','Rio Grande/rs','https://drive.google.com/uc?export=view&id=17NpXTu5EAH3iu4PO0sro_51Q-ug2fRcE','Engenharia Civil','Pós-graduação Incompleta','Universidade Federal do Rio Grande','2021-06-25','Sou formado','1) Monitor de um estudante com deficiência visual durante 5 meses - 10/13 - 03/14 
2) Monitor de Topografia, auxiliava o professor em aulas práticas, 3 anos - 04/15 - 12/17
3) Voluntário, fui voluntário num projeto de restauração de um edifício tombado no qual fizemos o levantamento cadastral do prédio, 2 anos 04/19 - 03/21
4) Estagiário na Porto5 Empreendimentos, fiz estágio obrigatório na obra do Acqua Parque Portugal, fazia conferências de projeto e acompanhamento de obras, 3 meses - 03/21 - 05/21.','Atualmente estou fazendo 3 pós graduações, Eng. Segurança do Trabalho, Eng. Software e Especialização técnica em Eficiência Energética',NULL,'Arquitetura, Engenharia','https://drive.google.com/open?id=1iqHtQKB7GtO4dfsSyIVYkRWEbWXAK0ZV',NULL,'Agência de Empregos','Não','3500','Sim',NULL,'Engenheiro Civil','Bom eu estou a procura de oportunidades para crescer, recém me formei, apesar da pouca experiência eu consigo compensar com muita determinação e engenhosidade quando deparado com desafios, atualmente eu trabalho como engenheiro autônomo fazendo tudo que é tipo de projetos, recentemente eu fiz um Hidrossanitário para um cliente que queria fazer a individualização da conta de água. Também estou fazendo outros cursos além das pós graduações, são de Revit avançado e MS Project.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-03T23:35:00.000Z'::timestamptz),
  ('Marcio Fritsch','marciofritsch@gmail.com',NULL,'53999213937','1969-10-30',56,'Casado(a)','2','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=19jXoxx-IaisbiMg5PTfNY5bV_Un-O3x4','Engenharia Civil','Pós-graduação Completa','UFRGS','1994-01-10','Sou formado','Ver curriculo encaminhado','MBA Engenharia de Segurança do Trabalho','Auditor Lead Assessor, Consultor Programa PBQP, MBA Engenharia Segurança no Trabalho H','Engenharia','https://drive.google.com/open?id=1KGJCq_BIjHx3UmkYrbDiakCh6D4ggsXo','https://drive.google.com/open?id=1VRia2J9u6-rJOJkH4ZPQ-cXdEYjcv9UM','Agência de Empregos','Nao','20000','Sim','Ver currículo encaminhado','Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-04T00:46:00.000Z'::timestamptz),
  ('Lucas Rafael Ferreira','lucasrafael2209@gmail.com',NULL,'55981772201','1994-09-22',31,'Solteiro(a)','0','Sim','São Paulo','https://drive.google.com/uc?export=view&id=1PHUgX1iccgLwCWzFYpMr4QeeLNaOs7ZN','Engenharia Civil','Pós-graduação Completa','Universidade do Estado de Mato Grosso','2018-07-23','Sou formado','1) UNIVERSIDADE FEDERAL DE SANTA MARIA - Pesquisador bolsista de pós-graduação- 03/2020 a 02/2021- coleta de dados, tratamento de dados, análises estatísticas, simulações computacionais e produção de artigos e capítulos de livros;
2) CAIXA ECONÔMICA FEDERAL- Estagiário da Gerência Executiva do departamento de engenharia - 01/2016 a 05/2017 - visitas técnicas, compatibilização de projetos, análise orçamentária, estudo de viabilidade técnica e ambiental, licitações, confecção de documentação e serviços administrativos;
3) JR Engenharia - Estagiário Voluntário - 08/2014 a 12/2015 - confecção de projetos e orçamento.','Sou formado em engenharia civil pela Universidade do Estado de Mato Grosso (UNEMAT), possuo pós-graduação em Gestão em engenharia de tráfego (ALFAMÉRICA), sou mestre em engenharia civil pela Universidade Federal de Santa Maria (UFSM) e atualmente doutorando na Universidade de São Paulo (USP).',NULL,'Administrativa, Estágio, Engenharia','https://drive.google.com/open?id=12gXN6lUjpjVM6aUuH_5Z4qDy4Z9JV9Zh',NULL,'Agência de Empregos','Não','3130','Sim','Daniel Corrêa- (65) 3363-7360 - Caixa Econômica Federal GIGOV/CB','Engenheiro Civil','Sou uma pessoa muito motivada e que gosta de sempre estar inovando. Realizei um intercâmbio no Egito e por um breve período trabalhei em um escritório de engenharia, possuo competência para mexer no autoCAD, domino a língua inglesa. Sou uma pessoa que ama viajar e manter contato com a natureza!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-04T09:50:00.000Z'::timestamptz),
  ('Robson Paradeda Corrêa','robsoncorrea1991@hotmail.com',NULL,'51991306778','1991-08-05',34,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1cAK3CQ2RnxSFVMWzvf7-WVgcV3C9wnP9','Engenharia Civil','Pós-graduação Incompleta','Uniritter','2018-12-20','Sou formado','Construtora Hera - Engenheiro Civil - Supermercados Dia e Farmácias São João - 
 07/2019 a 01/2020 - Orçamentos, planejamento e execução das obras, pedido e controle de materiais, medição de empreiteiros, contato com equipe de engenharia do cliente, fornecedores e empreiteiros e demais atividades ligadas a construção civil.

Consórcio Tratenge Engeform - Ampliação do Hospital de Clinicas - Assistente de Engenharia II - 04/2015 a 12/2018 - Análise crítica de projetos, conferência de armação das estacas tipo hélice continua, blocos, lajes, pilares e vigas para liberação de concretagem. Planejamento e supervisão das frentes de serviço de drywall, alvenaria, sistemas de impermeabilização, esquadrias, logística dos balancins e execução do acabamento da fachada predial.

Arquium Construções e Restauro Ltda - Restauração do Mercado Publico de Porto Alegre - Auxiliar de Engenharia - 12/2013 a 04/2015 - Acompanhamento de obra, relatórios, diário de obra, medição, serviços administrativos e controle do almoxarifado.','Pós-graduação em Patologias com previsão de conclusão em fevereiro de 2022;
Curso de Orçamentos;
Curso de Inspeção Predial.',NULL,'Engenharia','https://drive.google.com/open?id=1-SQOxo-mLq4xmXsy-imesDL7pIBQm66p',NULL,'Agência de Empregos','Não fui indicado.','R$5.000,00','Sim','Marcelo Angst - Engenheiro Engeform - 51 97543232','Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-04T20:35:00.000Z'::timestamptz),
  ('Paola Barbieri','pbarbieri09@hotmail.com',NULL,'55999621538','1993-01-01',33,'Solteiro(a)','0','Sim','Santa Cruz Do Sul/rs','https://drive.google.com/uc?export=view&id=1h2lAwr6vA8gw90QtZKQsLJga6TCozc2b','Engenharia Civil','Pós-graduação Completa','UNISC','2016-08-20','Sou formado','MUNICÍPIO DE VALE DO SOL 
Janeiro/2021 – Outubro/2021 - Engenheira Civil do Município
- Administração e fiscalização de construção de edifícios públicos e obras complementares; 
- Realização de perícias, laudos e avaliações de imóveis;
- Verificação de projetos e vistorias de construção; 
- Fiscalização de obra de infraestrutura, terraplenagem, drenagem, pavimentação asfáltica e de blocos intertravados de concreto;
- Análise e aprovação de projetos em conformidade com código de obras, plano diretor e legislações vigentes; vistorias e realização de habite-se.
PROFISSIONAL AUTÔNOMA 
Março/2020 – Atual – Engenheira Civil 
- Projeto e homologação de sistemas de microgeração de energia solar (On-Grid);
- Projetos de entrada de energia subterrânea;
- Projetos arquitetônicos, complementares e documentações técnicas; 
- Projeto e Execução de obra - Residencial, alto padrão Santa Cruz do Sul (área: 227,86 m²) – Particular;
- Execução de reforma - Comercial – (área: 147,29 m²) – Owntec Soluções em Engenharia – Santa Cruz do Sul;
- Projeto e Execução de obra - Residencial, alto padrão Vera Cruz (área: 155,80 m²) – Particular;
- Elaboração da documentação técnica, para encaminhamento de financiamentos habitacionais;
- Supervisão da execução de obras. 

INSTALA JÁ SOLUÇÕES EM ENERGIA
Fevereiro/2019 – Março/2020 - Vinculo: Engenheira de projetos
- Projetos e homologação de sistemas de microgeração de energia solar (On-Grid);
- Validação dos projetos nas concessionárias e cooperativas de energia:
-	RGE Sul – 61 projetos homologados – 631,61 kWp;
-	CEEE – 8 projetos homologados – 60,48 kWp;
-	CERTAJA – 1 projeto homologado – 3,35 kWp;
-	Coprel - 1 projeto homologado – 9,52 kWp;
-	Creluz - 1 projeto homologado – 89,1 kWp;
-	Celesc - 1 projeto homologado – 19,72 kWp;
-	CELETRO – 65 projetos homologados - 528,23 kWp;
-	Eletrocar – 25 projetos homologados – 299,67 kWp.
-	Treinamento de representantes comerciais; 
-	 Pós-venda ao cliente.
APRIORI TRADE 
Abril/2018 – Fevereiro/2019 - Vinculo: Engenheira de projetos
- Realização de orçamentos de energia fotovoltaica; 
- Projeto de sistemas de microgeração de energia (On-Grid):
- Acompanhamento da execução de sistemas fotovoltaicos;
- Validação dos projetos na concessionária de energia:
-	RGE Sul – 22 projetos homologados – 263,01 kWp.
- Configuração dos inversores, configuração de monitoramento on-line da geração de energia e assuntos afins;
- Pós-venda ao cliente.

OWNTEC SOLUÇÕES EM ENGENHARIA 
Abril/2017 à Abril/2018 – Vinculo: Assistente administrativa/produção
- Organização e controle financeiro;
- Atualização dos dados da gestão orçamentária;
- Pesquisa e identificação dos editais de licitações;
- Participação de pregões eletrônicos conforme diretriz da empresa;
-Controle documental para licitação;
- Contato e solicitação orçamentários de matérias primas, serviços etc.
- Conferencia materiais, realização da distribuição interna e controle de estoque;
- Elaboração e envio de campanhas publicitárias de e-mail marketing;
- Realização e manutenção do site;
- Revisão dos manuais de especificação técnica dos produtos;
- Auxilio na montagem dos equipamentos.

TRIDUM ENGENHARIA 
Outubro/2016 à Abril/2017 – Vinculo: Assistente de projetos
- Elaboração de projetos arquitetônico e projetos complementares;
- Projeto 3D externo.
ROHLFES ENGENHARIA 
Maio/2014 – Abril/2016 – Vinculo: Estagiária
- Elaboração de projetos arquitetônicos e projetos complementares;
- Projeto PPCI;
- Projeto de Regularização e desmembramento de terrenos;
- Memoriais descritivos;
- Documentação técnica para encaminhamento junto a Prefeitura.','Pós graduação completa em Sistemas Estruturais e Construtivos, e em andamento de Gestão de Obras na Construção Civil.',NULL,'Engenharia','https://drive.google.com/open?id=11DQEKu64DS4gSIatq3Wl9SURBHVbglVZ',NULL,'Agência de Empregos','Não','6.000,00','Sim',NULL,'Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-06T11:03:00.000Z'::timestamptz),
  ('Cristiano Hencke','eng.cristianohencke@gmail.com',NULL,'51999951333','1985-07-17',40,'Solteiro(a)','0','Sim','Três Coroas/rs','https://drive.google.com/uc?export=view&id=19hDN_zDG-wi5lPI_6ZUkoqistJuM5cje','Engenharia Civil','Ensino Superior Completo','Universidade FEEVALE','2020-12-20','Sou formado','1)Construtora Cabo, Gramado, 
2)Engenheiro Civil
3)02/21 - 04/21
4)Atividades: Controlar a qualidade dos serviços realizados; Receber e buscar junto a equipe da empresa tomadora dos serviços, as necessidades e prioridades na execução das atividades; Elaborar o relatório diário de obra; Verificar a necessidade e solicitar insumos e equipamentos

1)Imperbrás Impermeabilizações, Gramado 
2)Supervisor de Obras
3)11/20 - 01/21
4)Atividades:
Controlar a qualidade dos serviços realizados na execução de impermeabilizações em lajes e piscinas; Identificar pontos de melhoria e evitar dificuldades na execução dos serviços.

1)LAM Gesso, Gramado 
2)Supervisor de Obras
3)03/19 - 04/20
4)Atividades:
Controlar a qualidade dos serviços realizados na execução de paredes e forros em gesso acartonado, conforme as normas vigentes; Orientar os montadores quanto a correta execução das instalações, de acordo com o disposto nos projetos disponibilizados; Controlar o efetivo e gerenciar as equipes.

1)Móveis Bartzen, Bom Princípio 
2)Auxiliar de Engenharia de Produto
3)04/18 - 01/19
4)Atividades:
Realizar desenhos de móveis especiais em 2D e 3D, com uso do software AutoCAD, conforme solicitações de clientes; Analisar e adaptar projetos de móveis com uso do software Promob; Elaborar planilhas de custo e orçamentos.

1)Prefeitura Municipal de São Francisco de Paula 
2)Fiscal de Obras
3)01/17 - 04/18
4)Atividades:
Fiscalizar as atividades de construção civil realizadas no município; Orientar os interessados sobre a legislação pertinente; Realizar vistorias, e fornecer a Carta de Habite-se.',NULL,NULL,'Arquitetura, Novos Negócios, Engenharia','https://drive.google.com/open?id=1z6XIoDTOqFq8SNXGBnJGheCU-WpqO-Pq',NULL,'Agência de Empregos','Nao','R$4.500,00','Sim',NULL,'Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-06T12:22:00.000Z'::timestamptz),
  ('Elistiele Mendes da Silva','elistieli16@gmail.com',NULL,'051997625255','1992-03-16',33,'Solteiro(a)','2','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1ZjiiNMmuNS9JSS0QSNzGhV1Hd9s_B3rs','Administração','Ensino Médio Completo','Unimar Gravatai',NULL,'Não, no momento pausei/parei por um período.','1 Girardi e Lima, 2 Vendas e Administrativo, 3 10/08/2019 a 11/05/2021, trabalhei 1 ano no financeiro da escola e o restante do tempo nas vendas.',NULL,'Curso ax administrativo concluido','Administrativa, Comercial, Financeiro',NULL,NULL,'Facebook','Não','Sempre quero superar meus ultimos salarios entao sempre estou me cobrando para melhorar e atingir cada vez mais minhas metas.','Não','Possuo facilidade com vendas e facilidade de trabalhar na área administrativa e financeira por experiência na última empresa, possuo facilidade com aprender, estou sempre disposta a novos desafios.','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-06T12:36:00.000Z'::timestamptz),
  ('Vinicius Liba Caetano de Souza','vinilibadesouza@gmail.com',NULL,'45988012831','1996-02-21',30,'Solteiro(a)','0','Sim','Cascavel/pr','https://drive.google.com/uc?export=view&id=1SrnEJ-zeFE6C2_Cz9iRF2OYJrWMLKqhs','Engenharia Civil','Pós-graduação Incompleta','Universidade Paranaense - UNIPAR','2018-12-20','Sou formado','1) Departamento de Estradas de Rodagem do Paraná – DER/PR
2) Estágio no setor de Engenharia 
 3)(2014-2015)
4) Trabalhei em conjunto com engenheiros auxiliando na elaboração de planilhas, desapropriação de faixas de domínio, controle de acidentes nas rodovias e controles de processos.

1)Dalcon Engenharia consultoria para o Departamento de Estradas de Rodagem do Paraná – DER/PR
2)Auxiliar Técnico em Engenharia Civil 
3) (2016-2017)
4)Excelente trabalho em equipe e habilidades de colaboração demonstradas pela realização de controle de anomalias nas rodovias, relatórios mensais de fiscalização das rodovias concessionadas, relatórios mensais de acidentes ocasionados nas rodovias. Controle de andamento de obras, fiscalização de serviços da concessionária e elaboração de croquis.

1) Engeved Engenharia
2) Engenheiro Civil Pleno
 3) (2019 - atualmente)
4) Grande dinamismo e eficiência demonstrados pelos trabalhos desenvolvidos atualmente, sendo eles: Realização de diversos tipos de projetos, incluindo projetos de pavimentação, drenagem, sinalização horizontal e vertical, paisagismo, iluminação de acessos e arquitetônicos.
Levantamentos topográficos, prestação de serviços para pavimentação e drenagem, estudos de tráfego e estudos hidrológicos.
 Participação em licitações, com isso execução e gerenciamento de obras civis e públicas.
 Os conhecimentos e experiências resultaram em mais de 50 projetos desenvolvidos, com destaque ao projeto da ciclovia entre Cascavel - PR e Espigão Azul - PR com extensão de 13km e diversos projetos de acessos comerciais e particulares.
Revitalização do Parque Ambiental Nelson Tutte Thomazinho, em Vera Cruz do Oeste – PR e Reforma do CMEI Elizia Carraro em Toledo - PR.','Engenheiro Civil, Pós-Graduando em BIM com experiência na elaboração, desenvolvimento, análise e compatibilização de projetos tanto de obras civis quanto de infraestrutura rodoviária. Vastos conhecimentos nos softwares AutoCAD, Civil 3D, Topograph e Pacote Office. Podendo analisar levantamentos topográficos de futuras instalações, projetos e gerenciamento de obras.',NULL,'Engenharia','https://drive.google.com/open?id=1TA9NiJ8X9DUtKKMuXRSov-zb66oj3Zol',NULL,'Agência de Empregos','Não','7.000,00','Sim','Granvia Engenharia – André Podolak, Milton Podolak (45) 99117-2425 / (45) 99105-3927 Construtora Consid – Fabian Sidor (45) 99800-5510','Engenheiro Civil','Engenheiro Civil, Pós-Graduando em BIM com experiência na elaboração, desenvolvimento, análise e compatibilização de projetos tanto de obras civis quanto de infraestrutura rodoviária. Execução e manutenção de obras desde o planejamento até entrega final incluindo processos de legalização. Possuo experiência também na condução de processos licitatórios, análises, elaborações de planilhas orçamentarias e cronogramas físicos e financeiros.
Vastos conhecimentos nos softwares AutoCAD, Civil 3D, Topograph e Pacote Office. Podendo analisar levantamentos topográficos de futuras instalações, projetos e gerenciamento de obras. Sou orientado para resultados, consigo coordenar e liderar equipes multidisciplinares, adaptável e cuidadoso.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-06T13:53:00.000Z'::timestamptz),
  ('Rafael Silva de Souza','n.rafaelsilva@hotmail.com',NULL,'51998921029','1991-08-24',34,'Solteiro(a)','0','Sim','São Leopoldo/rs','https://drive.google.com/uc?export=view&id=1T2U4gzFL5cL7a2Oj8Q7-ASIVOjCbXZxN','Engenharia Civil','Pós-graduação Incompleta','Unisinos','2019-08-10','Sou formado','MRV Engenharia Analista de Engenharia','Auditoria, avaliação de imóveis e perícia em engenharia','Não','Engenharia','https://drive.google.com/open?id=1-tPEYiRZY-OYZd06fT3KlG7FPC45nMg1','https://drive.google.com/open?id=1KzaQVeu9OaRp7w9sBlgqVIPIBIKfTyVQ','Agência de Empregos','Não','4000','Sim','Gustavo Sperotto 51 9335-5003','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-06T14:43:00.000Z'::timestamptz),
  ('Márcio Lacerda Andrade','marciolacerdajf@gmail.com',NULL,'67984376088','1965-11-10',60,'Divorciado','3','Sim','Campinas/sp','https://drive.google.com/uc?export=view&id=1cu4OPDecUlHSxQcbpODcmt0ZKUs_CtLi','Engenharia Civil','Pós-graduação Completa','UNIVERSIDADE FEDERAL DE JUIZ  DE FORA','1990-01-03','Sou formado','Atuei no gerenciamento de grandes obras da construção civil pesada, tais como: unidades de tratamento de minério de ferro, contenções de cavas de minas de minério, infraestrutura de pilha de estéril, barragens de água e rejeito, descaracterização de barragens, terminais portuários, usinas hidrelétricas, termelétricas e fotovoltaicas. Grande experiência em obras de concreto armado, terraplenagem, contenção de encostas e taludes, infraestrutura, pavimentação e urbanização. Acervo de obras residenciais e comerciais. Atuação com gerente de contrato, coordenador de projetos e administração contratual, consultor, ATO (apoio técnico a obra), engenheiro civil master, sênior, pleno. Atuação junto a grandes empresas: Gerdau Mineração, Fundação Renova, Samarco Mineração, Prumo Logística, Mineração Taboca, Usiminas. Disponibilidade para início imediato, mudança de cidade e região. Aceito viajar pela empresa. Posso atuar como PJ.',NULL,NULL,'Engenharia','https://drive.google.com/open?id=1GAUCt41ClL3eIaGXsUoN-v3V96_LeFE6','https://drive.google.com/open?id=1HR8GyBJz5-nRu__hGtMmB_ZGdwm8wetr','Agência de Empregos','Não','14000','Sim',NULL,'Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-06T16:09:00.000Z'::timestamptz),
  ('Marcos Charles Sá de Almeida','marcoscsdealmeida@gmail.com',NULL,'55981088490','1966-08-27',59,'União Estável','2','Sim','Santa Rosa/rs','https://drive.google.com/uc?export=view&id=1uXfu9HZ0Uy_03w-nW79HgioNvRA7lwof','Administração de empresas','Ensino Superior Incompleto','Unijui',NULL,'Não, no momento pausei/parei por um período.','Orbital comercial de Ferramentas eireli- Diretor Proprietário - 16/08/2013 - 23/12/2018
Souza Cruz SA
Vendedor 
10/02/1995 à 13/07/2009',NULL,NULL,'Administrativa, Comercial, Marketing','https://drive.google.com/open?id=1k4O79us28Oxx2pbxpfvnKAFsd-eQvDQx',NULL,'Facebook','Não','4000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-06T16:42:00.000Z'::timestamptz),
  ('Gabriel de Lima e Pires','gabriellima63@hotmail.com',NULL,'17981073855','1999-03-31',26,'Solteiro(a)','0','Sim','Santa Fe Do Sul - Sp','https://drive.google.com/uc?export=view&id=1x0HhTFvPc1u3kwKzdehX6eoAcXClkp7p','Engenharia Civil','Ensino Superior Incompleto','UniFunec','2021-12-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Solida Engenharia LTDA (2019) - Acompanhamento de obras fiscalizadas pelo FDE, contratação de mão de obra especializada, levantamento de custos e medições realizadas.

Saturno serviços administrativos (2020 - 2021) - Responsável pela gestão do almoxarifado, enviando mantimentos e materiais para obra. Nos finais de semana quando não havia expediente, eu acompanhava o engenheiro na obra, fiscalizando e acompanhando os processos construtivas, como: terraplanagem, execução de galerias, assentamento de tubos de drenagens, compactação de sub-leito, base e sub-base, salgamento, imprimação e aplicação da base.

Engeper Engenharia e Perfurações Ltda (atualmente) - Responsável pela segurança da obra, instruindo os funcionários a utilizar os EPI’s corretamente, além de estar passando as informações diárias da obra a central de engenharia localizada em outro município.','Revit 2020
Excel 
Ms Project
Trabalhei durante 1 ano com o sistema Sienge.',NULL,'Engenharia',NULL,NULL,'Agência de Empregos','Nao','3000','Sim','Patricia Baungarten (Engeper): 17 99702-2312
Deodato Neto Santos ( Saturno): 17 99114-1314','Engenheiro Civil','Além das experiências profissionais comentadas anteriormente, eu estou prestes a me formar, atualmente estou como estagiário na empresa Engeper Engenharia e Perfurações Ltda, realizei dois anos e seis meses de curso de ingles na escola de idiomas Wizzard, fui pros Estados Unidos realizar uma imersão linguística no ano de 2018 até 2019, ficando um mês no país, aprendendo cultura.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-06T17:13:00.000Z'::timestamptz),
  ('alexandre','ale_puerta@hotmail.com',NULL,'11944584585','1977-11-23',48,'Solteiro(a)','1','Sim','São Paulo','https://drive.google.com/uc?export=view&id=1h80lYyTsC0wJ2GJ-BTqpmJDIfu0V08-m','Engenharia Civil','Ensino Superior Completo','Universidade Nove de Julho','2016-07-01','Sou formado','Agosto de 2020 – atual Am Engenharia
Cargo: Engenheiro Civil - Pleno
Principais Atividades:
- Análise de projetos de arquitetura e executivo;
- Compatibilização de projetos em suas disciplinas,
- Desenvolvi projetos de regularização cadastral de imóvel 
- Realizei reformas residenciais e comerciais 
- Levantamento de materiais obra.
- Contratação de mão de obra.




•	Engenheiro Perito, Assistente Técnico  
Principais Atividades:
- Elaboração de laudos e Pareceres Técnicos judiciais ou extrajudiciais;
- Avaliações e Consultorias mercadológicas envolvendo imóveis urbanos e rurais;


•	julho de 2015- junho 2018 Spalla Engenharia Eireli
Cargo: Engenheiro Civil 
Principais Atividades:
- Análise de projetos de arquitetura e executivo;
- Compatibilização de projetos em suas disciplinas,
- Planejamento e execução de obra em estrutura pré-moldada com área de 3.800 m², com execução de terraplanagem 35.000 m³ de solo.
- Construção de um Ginásio Poliesportivo em Santos com cobertura em alumínio espacial 
- Revitalização de praça;
- Construção de centro comercial;
- Executei reuniões com fiscais e secretários municipais para definições de escopos e aditamentos contratuais.
- Elaboração de Relatório de Avanço das Obras
- Gestão de contratos
- Auxiliei nos treinamentos de 5 estagiários. 
- Elaborando aditamentos com prefeituras;
- Aprovação de medições de serviços executados junto da fiscalização; 
- Elaboração de planilhas de orçamento a partir de projetos executivos; 
- Execução de laudos e Pareceres Técnicos;









•	Fevereiro de 2014- julho 2015 JL Engenharia e Construção Eireli
Cargo: Técnico de planejamento
Principais Atividades:
- Análise de projetos de arquitetura e executivo;
- Gestão de contratos;
- Composição de preços e serviços;
- Elaboração e controle de proposta para licitações;
- Elaboração e levantamento de documentação técnica para processo licitatório;
- Medições de contratos com elaboração de memória de cálculo;
- Elaboração de laudos e Pareceres Técnicos;
- Criação de banco de dados para o sistema Sienge utilizando tabelas CPOS, FDE e SINAPI;
- Gestão e controle de serviços e insumos no Sistema Sienge;
- Controle e gestão financeira de obras;



•	Setembro 2012 – janeiro 2014 Lacon Engenharia Ltda
Cargo: Assistente técnico de engenharia
Principais Atividades: 
- Realização de orçamentos a partir de levantamento realizado in loco 
- Medição e aditamento de contratos;
- Gestão de contratos;
- Leitura e interpretação de projetos, componentes do FDE, critérios de medição e composição de preços.
- Execução e compatibilização de projetos executivos e suas disciplinas;
- Execução de projetos, de contenção e fundação;
- Execução de projetos de terraplanagem;
- Elaboração de laudos e Pareceres Técnicos;



•	Abril de 2008 – agosto de 2012 (4 anos 5 meses) – Paraguaçu Paes e doces ltda
Cargo: Gerente De Departamento Financeiro / Compras
Principais Atividades:
- Planejamento e execução de obra com reforço estrutural,
 -Cotação e compra de matéria prima e produtos industrializados;
- Contas a pagar e a receber; 
- Controle do fluxo de caixa; 
- Execução da folha de pagamento;
- Consolidação do balanço mensal;

•	Agosto de 2005– março de 2008 – Distribuidora de malhas Santa Catarina
Cargo: Supervisor de contratos e Reformas
Principais Atividades:
- Gestão de contratos;
- Elaboração de projetos arquitetônicos e executivos;
- Gestão e execução de obras; 
- Controle e gestão financeira de obras;
- Implantação de sistema integrado de lojas;
- Elaboração de banco de dados de produtos varejistas;
- Medições de contratos com elaboração;
- Composição de preços e serviços;
- Controle e gestão financeira de obras;
•	Outubro de 2002 – agosto de 2005 – APMU Comercio Ltda
Cargo: Gestor de Expansão - Socio
Principais Atividades:
- Gestão de contratos;
- Elaboração de projetos arquitetônicos e executivos;
- Gestão e execução de obras; 
- Controle e gestão financeira de obras;
- Medições de contratos com elaboração;
- Composição de preços e serviços;
- Controle e gestão financeira de obras;',NULL,NULL,'Engenharia','https://drive.google.com/open?id=1QLncaakfBBp7D3p4j_AV_lHKovLGCwwx',NULL,'Agência de Empregos','não','8000','Sim',NULL,'Engenheiro Civil','•	Pericias Judiciais – IBAPE-SP
•	Avaliações de Imoveis Urbanos IBAPE - SP 
•	Pacote Office
•	Excel - Avançado  
•	Auto Cad 2D
•	Bim
•	Ms Project','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-06T17:28:00.000Z'::timestamptz),
  ('Thiago José Pereira Matos','thiagojmatos@hotmail.com',NULL,'98981434820','1992-10-15',33,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=13UBIkH5TpFvtG7tjQzxepsQVa7el__RH','Engenharia Civil','Pós-graduação Incompleta','UNDB','2021-07-01','Sou formado','GRUPO ELDO CAR
◾ Comprador | Assuntos Externos
Período do emprego abr. de 2019 – o momento
Duração 2 anos 9 meses
Localida de Pinheiro, Maranhão
◾ Empresa familiar com flexibilidade de horário p/desenvolver atividades no ramo automobilístico.
◾ Compras de peças, auxiliar em vendas e supervisão de estoque, realização de contratos com empresas para prestação de serviços.

JAEL Engenharia
◾ Auxiliar de Engenharia
Período do emprego jun. de 2021 – nov. de 2021
Duração 6 meses
Localidade São Luís e Região
◾ Auxílio em obras de reformas e manutenção no Hospital UDI - Rede Dor São Luíz.
◾ Comprador de insumos.
◾ Gestão de Qualidade.
LUA NOVA Construtora

◾ Auxiliar de Engenharia
Nome da empresa LUA NOVA Construtora Temporário
Período do emprego dez. de 2020 – fev. de 2021
Duração 3 meses
Localidade São Luís, Maranhão, Brasil
◾ Obra: Residencial Mato Grosso / São Luís/MA – 2090 casas populares
◾ Levantamento de Materiais nas casas concluídas e não entregues, medição de materiais a serem aproveitados e futuras frentes de trabalho até a entrega. Reparos em Superestrutura - Infraestrutura - Esgotamento – Paisagismo.

GDR CONSTRUÇÕES
◾ Estagiário em Engenharia Civil | Obras
Período do emprego dez. de 2019 – mai. de 2020
Duração 6 meses
Localidade São Luís e Região, Brasil
◾ Obra: Cond. Bianca - Paço do Lumiar/MA – 408 casas populares
◾ Fiscalização das atividades de acordo com o PQO (Plano de Qualidade da Obra);
◾ Realizar treinamentos de funcionários conforme o PES (Procedimento de execução de Serviço) da construtora;
◾ Vistoriar o andamento da construção das casas - Fundação - Concretagem - Instalações - Cobertura - Revestimento – Qualidade.

Monteplan Engenharia
◾ Estagiário em Engenharia Civil | Obras

Período do emprego dez. de 2017 – dez. de 2019
Duração 2 anos 1 mês
Localidade São Luís e Região, Brasil
◾ Obra: Ed. Imperial Premium - São Luís/MA – 1 torre – 12 andares
◾ Auxilio em todos os trâmites operacionais e administrativos.','MBA em gestão em obras',NULL,'Administrativa, Novos Negócios, Engenharia','https://drive.google.com/open?id=1vnNL_7LqEahqLUPjAugUd8pPYCA-AOK9',NULL,'Agência de Empregos','Não.','3000','Sim',NULL,'Engenheiro Civil','◾ Profissional graduado em Engenharia Civil.
◾ Atuando no ramo da construção civil, com experiências no setor de compras e em obras do padrão MCMV, prédios residenciais de médio e alto padrão, obras de reformas, manutenções prediais, levantamentos de materiais / serviços, controle de qualidade, leitura de projetos, além de conhecimento em todos os trâmites operacionais e administrativos;
◾ Habilidade com Gestão de pessoas, coordenação e liderança de equipes multidisciplinares, treinamentos de funcionários conforme o PES - Procedimento de execução de Serviço;
◾ Idioma Inglês com nível intermediário;
◾ Domínio nos softwares: AutoCAD 2D - Pacote Office do Windows – Excel *Orçamentos de Obras - Power BI;
◾ Entre minhas habilidades pessoais destaco: Planejamento - Forte comunicação e habilidades interpessoais - Rápido aprendizado - Trabalho em equipe - Esforçado - Motivado e dedicado;
◾ Disponibilidade para viagens e mudança de cidade/estado.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-06T18:24:00.000Z'::timestamptz),
  ('Anibal Nunes Freitas Andrade Bichuette','nibalbh@gmail.com',NULL,'31996434242','1985-09-19',40,'Solteiro(a)','0','Sim','Belo Horizonte/mg','https://drive.google.com/uc?export=view&id=1ITL5b9w-AOicFdw0zYQTfT7vNgDIDIDo','Engenharia Civil','Ensino Superior Completo','FUMEC','2010-12-01','Sou formado','Engenheiro responsável pelo planejamento e orçamento de diversas obras.
Participação efetiva de todas rotinas da construtora(Visitas técnicas, gestão
administrativa, etc..) 06/2019 a 11/2021 – RIO GRANDE ENGENHARIA
• Gerente de Contrato e RT -Obra: Construção de ponte sobre o Rio Paraíba do Sul e
implantação dos acessos definitivos às estruturas da UHE de Simplício e de Anta a
partir da BR-393. Dimensão da ponte: 200,0m x 6,80. Ponte em concreto
protendido e vigas pré-moldadas lançadas com auxilio de guindaste de 550ton.
Fundação direta em rocha utilizando-se chumbadores cravados em rocha e
chumbados na sapata.
Demais serviços relevantes: Terraplenagem e pavimentação 4,5 km. Drenagens rasa e
profunda. Demolições em rocha a frio. Construção de cercas e alambrados. Sinalização
vertical e horizontal entre outros. 08/2017 a 05/2019 – RIO GRANDE ENGENHARIA
● Gerente de Contrato e RT- Execução de obras e serviços do projeto da orla fluvial Parque
dos Ipês. Prefeitura de Pirapora – MG . Obras civis e infraestrutura. Edificações,
Urbanização (Passeios, Meio fios, drenagens etc..) 03/2016 a 05/2017 – RIO GRANDE
ENGENHARIA
● Engenheiro responsável pelo planejamento e orçamento de diversas obras. Participação
efetiva de todas rotinas da construtora(Visitas técnicas, gestão administrativa, etc..) 01/2015
a 01/2016 – RIO GRANDE ENGENHARIA
● Gerente de contrato e RT -Rio Grande Engenharia/ Integral Engenharia - ENTR°
MG/190 - ZELÂNDIA(USINA SANTA JULIANA) (PONTE SOBRE O RIO
ARAGUARI)( 130,0 X 12,2M) DER-MG – BUNGE – Ponte em concreto armado.Fundações em tubulões em ar comprimido. 25 Vigas pré moldadas. Lançamento de vigas
em treliça lançadeira. Altura de pilares de até 12,0m. Período 01/2014 a 12/2014
●Gerente de contrato e RT -Rio Grande Engenharia: PORTO FIRME - PIRANGA
(PONTE SOBRE O RIO PIRAPETINGA, INCLUSIVE O ENCABEÇAMENTO) (49,0X
9,0) .DER-MG. Ponte em concreto armado. Fundações em tubulões a céu aberto e tubulões
em ar comprimido. Toda infra-meso e super estrutura moldada in loco. Período -07/2013 a
05/2014 .
● Engenheiro de Produção - Reta Engenharia / Integral Engenharia – 01/2013 a 06/2013 -
Serviços de Manutenção das Estradas de Acesso ao Site da Anglo American - Conceição do
Mato Dentro / Alvorada de Minas / D. Joaquim / Serro
●Engenheiro de Planejamento e Medição – Reta Engenharia - 1) Obra de terraplenagem e
obras civis para construção da Estação de Bombeamento EB1 e da Captação de Água
Nova, nos municípios de Conceição do Mato Dentro, Alvorada de Minas e Dom Joaquim.
Serviços notáveis: movimento de terra 1.187.000 m3 / concreto 12.000 m3. Período
02/2011 a 12/2012
●Estagiário no setor de Engenharia no Colegio de Ingenieros de Caminos Canales y
Puertos, demarcación de Madrid. Local: Madrid, Espanha. (www.ciccp.es)
Período: 06/2010 a 08/2010','Planejamento de obras, Orçamento de obras, Elaboração de pleitos e admnistração de contratos',NULL,'Novos Negócios, Engenharia','https://drive.google.com/open?id=14JhRJirGHi618oxizqQAbR2xSpPJLScV',NULL,'Agência de Empregos','Nao','9000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-06T19:28:00.000Z'::timestamptz),
  ('Gabriel Silva Gimenez','gabriel.s.gimenez@gmail.com',NULL,'42998586827','1991-12-13',34,'Solteiro(a)','0','Sim','Castro/pr','https://drive.google.com/uc?export=view&id=1zQfuUWTiKAGjBtK__HgcOcwURCdsHzQR','Engenharia Civil','Ensino Superior Completo','UNIP - Universidade Paulista','2016-12-01','Sou formado','1) GAISSLER MOREIRA ENGENHARIA CIVIL
2) Engenheiro Civil
3) 04/2020 - atual
4) Planejamento, coordenação e execução de obras de terraplenagem, implantação, pavimentação e conservação de ruas e rodovias. Elaboração de medições, memórias de cálculo, relatórios, cálculos de reajustes e reequilíbrios econômico financeiros. Elaboração de orçamentos para participação de licitações.

1) SEMAE – SERVIÇO MUNICIPAL AUTÔNOMO DE ÁGUA E ESGOTO DE SÃO JOSÉ DO RIO PRETO
2) Técnico em edificações 
3) ADMISSÃO: OUT. 2015 | SAÍDA: ABRIL.2020 |
3) Função: Agente de Saneamento Técnico em Edificações/Fiscal de Manutenção em redes de água
Direção técnica e fiscalização na manutenção, reparo e extensões de redes de água pública da cidade.

1) DETALMEC PROJETOS
2) Projetista
3) ADMISSÃO: FEV. 2014 | SAÍDA: FEV.2015 
4) Função: Projetista/Desenhista/Coordenador de Equipe/Implantação do software Implantação e ensino do software Tekla Structures, projetos e detalhamento de estruturas metálicas dentro da norma AISC, utilizando os softwares Tekla Structures e AutoCAD.

1) AVANTIS ENGENHARIA
2) Projetista
3) ADMISSÃO: DEZ. 2009 | SAÍDA: JAN. 2014
4) Função: Projetista/Desenhista/Coordenador de Equipe
Projetos e detalhamento de estruturas metálicas dentro da norma AISC, utilizando os softwares Tekla Structures e AutoCAD.',NULL,NULL,'Engenharia','https://drive.google.com/open?id=1eLrRu-kragwQkuQ6KXhKuJFe8oyoAeD6',NULL,'Agência de Empregos','Não','8000','Sim',NULL,'Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-06T23:02:00.000Z'::timestamptz),
  ('CHARLES ALEXANDRE ANDERSON LUCIANO','profcharlesluciano@gmail.com',NULL,'+5549991067150','1974-10-15',51,'Casado(a)','3','Sim','Itapiranga/sc','https://drive.google.com/uc?export=view&id=1WXUAGe69vydiMas1hOtdzTnbfTsdfoHc','Engenharia Civil','Pós-graduação Completa','CIS CICIUMA','1995-12-01','Sou formado','Implantação e Pavimentação BR-448 Rodovia do Parque (RS), Restauração BR-285 (RS), Duplicação BR101
e Construção Túnel Morro Agudo (SC), Implantação e Pavimentação BR470 (RS), Implantação e
Pavimentação RST 377 (RS), Desapropriação, Projeto e Execução Gasoduto Bolívia-Brasil (SC e RS);
Hidroelétrica Itá (SC), Elaboração de Projetos e Execução de Obras Industriais (RS); Execução de Fundações
e Montagem Industrial Pré-Fabricada (RS), Terraplenagem e Projetos e Execução Obras de Menor Porte (RS
SC), Projeto de Lavras, Execução Estruturas Britagem, e Planejamento de Mineração (RS, SC, MG e GO).','Técnico em Edificação, Engenharia Civil, Administração, Direito (cursando) - Pós em Gestão Pública, Perícias de Engenharia e Perícias Criminais',NULL,'Engenharia','https://drive.google.com/open?id=1S-uqfPji47KdHEPIyE3zHUVnb7G9x2F2','https://drive.google.com/open?id=1V2v4Ebxy5VwFeZSHPgtJjgPtvNGQQ92A','Agência de Empregos','Não','10000 PJ','Sim',NULL,'Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-06T23:47:00.000Z'::timestamptz),
  ('FERNANDO RAFAEL CASTALDELLI SANTANA','fernandocastaldelli@hotmail.com',NULL,'+5569992473158','1993-03-16',32,'Solteiro(a)','0','Sim','Santo Antônio Das Missões/rs','https://drive.google.com/uc?export=view&id=1GaytEEeI9S4y6BzsE7TxzOVo1W-NjPUN','Engenharia Civil','Pós-graduação Incompleta','Estacio Unijipa','2020-08-20','Sou formado','B2B Engenharia,  Engenheiro Civil, 01 de setembro a 30 de novembro, responsável pela gestão, execução, controle de qualidade e logística de material, gerente de obras','Ciências contábeis graduado em 2014','Crea 17096 D/RO','Engenharia','https://drive.google.com/open?id=1oN3dvuB-WWK5bmy93mhgPu945q-u0NdK','https://drive.google.com/open?id=1oUEN2Z2CvMEXomW_ZoVCfpOtePvbaTS6','Agência de Empregos','Não','5000','Sim','Alessandro, gerente do banco do Brasil de Santo Antônio Das Missões-RS (55)99657-7511','Engenheiro Civil','Revit, office, autocad, MS Project, sou comunicador de rádio nas horas vagas, e ciclistw amador por hobby','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-07T00:16:00.000Z'::timestamptz),
  ('Pablo Ramalho do Nascimento de Siqueira','pabloramalho@outlook.com',NULL,'21996885849','2021-11-10',4,'Casado(a)','0','Sim','Rio De Janeiro/rj','https://drive.google.com/uc?export=view&id=1oYdMtnR518tmfo9Lzhgvs3Swp-hOyoNR','Engenharia Civil','Pós-graduação Completa','Uva','2018-08-01','Sou formado','S',NULL,NULL,'Novos Negócios, Engenharia','https://drive.google.com/open?id=10g4Dz_nEc0oQX_zBI476uXkR54nCagl6',NULL,'Agência de Empregos','Não','8500','Sim',NULL,'Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-07T01:01:00.000Z'::timestamptz),
  ('Fauston Luiz Teixeira Chaves','engfauston@gmail.com',NULL,'11940202705','1982-05-07',43,'Solteiro(a)','0','Sim','São Paulo/sp','https://drive.google.com/uc?export=view&id=1d-RGEQtOS3irqunidtz-q7c3XypGRIwV','Engenharia Civil','Pós-graduação Completa','Universidade cidade de São Paulo','2017-08-07','Sou formado','Assertiva comercio e serviços
Engenheiro civil - Gestão e planejamento de obra, coordenação de suprimentos, rotinas administrativas, elaboração e execução de projetos, cronogramas, relatórios.
Início 16/11/2020 - atualmente

NATUS VINCERE
Engenheiro civil - Responsável pela gestão e planejamento de obras.','MBA- GESTÃO EMPRESARIAL
PÓS GRADUAÇÃO- Gestão de obras e Qualidade
Pós graduação-Eng segurança do trabalho
Ms Project
AutoCAD','Ms Project','Administrativa, Novos Negócios, Engenharia',NULL,'https://drive.google.com/open?id=1BK30WR4L6AMMxFqWDsSgIAbWYENttAv2','Agência de Empregos','Não','R$5.000,00','Sim','Wildson Martins11 947828126 (Assertiva)','Quero inscrever-me no banco de talentos da Young!','Olá, nesse período de pandemia aprendi novas habilidades, iniciei um curso de inglês, entrei no mercado financeiro, finalizei uma pós graduação, montei uma loja esotérica para minha mãe, sendo que eu mesmo construí os móveis da mesma.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-07T01:29:00.000Z'::timestamptz),
  ('Helenylson Jesus Pereira','helenylson_jesus@hotmail.com',NULL,'86999045471','1995-03-11',30,'Solteiro(a)','0','Sim','Teresina/pi','https://drive.google.com/uc?export=view&id=1ZQic43MUpjK6RDkNgMHAboT7q0ogJauO','Engenharia Civil','Pós-graduação Completa','UNINOVAFAPI','2020-01-28','Sou formado','Na Eflow Engenharia fui estagiário de maio de 2018 a dezembro de 2019, onde auxiliei na elaboração de projetos, desenhos e relatórios de sistemas de drenagem urbana, além de participar de reuniões com clientes. Após o fim da graduação atuei em parceria com a Eflow e em seguida comecei a empreender, seguindo a carreira de profissional liberal na área de projetos.','Sou engenheiro civil com atuação no setor de saneamento, mais especificamente com drenagem urbana. Além disso possuo especialização em arquitetura, urbanismo e engenharia civil pela UNICAMP (2021).',NULL,'Engenharia','https://drive.google.com/open?id=1YkDqG4xttJNYA7A04OLvrwU1xHf1mhtm','https://drive.google.com/open?id=1cz2ynA9EDdtNxnd8oG7ZPIGvy7agssCr','Agência de Empregos','Não','8000','Sim','Victor Manoel Pavanelli lira, Diretor da Eflow Engenharia, fone: +447830370183.','Engenheiro Civil','Sou uma pessoa movida a desafios, que busca sempre aprender cada vez mais. Tenho habilidade com Ms. Office, Autocad, revit, AltoQi, detre outros. Além disso aprendo a utilizar a maioria dos softwares com facilidade. Tenho buscado aprender inglês e espanhol, porém ainda estou em um nível iniciante, porém tenho como objetivo evoluir.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-07T03:25:00.000Z'::timestamptz),
  ('Graziela lezina','grazielalezina@gmail.com',NULL,'55999582453','1980-09-04',45,'Solteiro(a)','1','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1yLISY_9PQrDW1zgzc1HcAyIvfI2OgElh',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Nicola veículos /Nicola imobiliária/donini corretora de seguros',NULL,'Creci','Comercial','https://drive.google.com/open?id=1nf6mgccnBYKQ1nlWS2V5iX5N2Cn19Wqw',NULL,'Facebook','Nao','2500','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-07T05:01:00.000Z'::timestamptz),
  ('Carlos Edgard de Souza Barros','edgardsouzabarros@gmail.com',NULL,'15988041164','1988-04-21',37,'Solteiro(a)','1','Sim','Sorocaba/sp','https://drive.google.com/uc?export=view&id=1Tg0ZRUx4QP6stsdQlXdIkFyC12LqE5Cz','Engenharia Civil','Ensino Superior Completo','Universidade Paulista','2020-11-20','Sou formado','Prezado

Me chamo Edgard Barros e atuou na área da Construção Civil 9 anos , com foco na gestão de  segurança do trabalho e do meio ambiente, Estou em inicio de transição de carreira para área de engenharia civil tenho 2 anos de experiência em controle de qualidade e acompanhamento de execução de projeto de estruturas metálicas,fundação,alvenaria,obras de saneamento e acabamento. Vistoria das áreas dos canteiros de obra regularmente, acompanhamento com responsável, com o objetivo de avaliar o cumprimento das normas e procedimentos; utilizando FVS (ficha de verificação de serviço), checklist de verificação; registrar, controlar e analisar as ocorrências das vistorias. Busco uma oportunidade de trabalho tenho total disponibilidade para viagens e horário. Aceito trabalhar como CLT, Contrato Intermitente, Temporário. Tenho disponibilidade para abrir MEI ou PJ .','Técnico em Segurança do Trabalho','Crea','Engenharia','https://drive.google.com/open?id=1hgj7NXHx-Jlc_7z01Nc5NITXPJ28AGDO',NULL,'Agência de Empregos','Não','5.000,00','Sim',NULL,'Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-07T10:27:00.000Z'::timestamptz),
  ('Leonardo Francisco Eugenio','leo23416@hotmail.com',NULL,'24999372129','1992-08-24',33,'Solteiro(a)','0','Sim','Volta Redonda','https://drive.google.com/uc?export=view&id=1Y3INQiyj4Z9C9Xvr18zNlY27IhrQMxKI','Engenharia Civil','Ensino Superior Incompleto','UGB','2015-12-22','Sou formado','Engenheiro Civil-Autônomo, Prestador de Serviço – 01/2016/ Atual
Execução e aprovação de projetos junto a órgãos regulamentadores, paginação de projetos arquitetônicos, cálculos estruturais, planejamento e acompanhamento de obras.
R D CONSTRUÇÕES & PARTICIPAÇÕES – Estagiário – 11/2014 a 05/2015.
Medições de obra, liderança e coordenação de equipe, relatórios de andamento de projeto para superiores, supervisão e analise de execução de serviço e marcação de gabarito.
METALÚRGICA BARRA DO PIRAI S.A
Desenhista Pleno – 07/2018/ Atual
Desenhista Junior – 07/2015 a 04/2018
Projeção e coberturas com telhas metálicas e lajes em STEEL DECK, levantamento de orçamentos, responsável pela ordem de serviço para criação de telhas, supervisão e auxilio a equipe de projetos, visitas técnicas para averiguação da montagem e coordenação de obra.','Cálculo de estruturas metálicas',NULL,'Engenharia','https://drive.google.com/open?id=1It6AQnSdXQTHP5B6w241EyJjOiEjCmRB','https://drive.google.com/open?id=1iQZAhBjLVEcrjKqqOZBOotK2tpMGbZGH','Agência de Empregos','Não','Estou aberto a propostas.','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-07T11:15:00.000Z'::timestamptz),
  ('Felipe Silva Santos','ssantos_felipe@hotmail.com',NULL,'7399085498','1992-05-29',33,'Solteiro(a)','0','Sim','Jequié/ba','https://drive.google.com/uc?export=view&id=1nLW3QQ08VkhNWfvA57eqD5I_y6RpC3u4','Engenharia Civil','Pós-graduação Incompleta','FTC','2020-02-08','Sou formado','Cargo: Estagiário               Período: 02/2019 até 05/2019
Atividades: Desenvolvimento e execução de projetos de acordo com as orientações do responsável técnico, cadastramento residenciais ou comerciais, elaboração de orçamentos financeiros e elaboração de relatórios de vistoria técnica.

Cargo: Estagiário               Período: 09/2019 até 12/2019
Atividades: Acompanhamentos dos serviços que compõe as fases da obra do loteamento residencial Moradas do Vale, tais como: escavação, perfis metálicos, estaca hélice, fundação, estrutura, alvenaria e acabamento , através de fichas de verificação. Elaboração de relatórios referentes ao desenvolvimento da obra, acompanhamento do cronograma e avaliação da empresas participantes.

Cargo: Auxiliar administrativo               Período: 08/2014 até 05/2020
Atividades: Atendimento a cliente, confecção de planilha de pedido, elaboração de relatórios, serviços bancários, envio e recebimento de correspondências entre outras atividades atribuídas ao cargo.',NULL,NULL,'Administrativa, Arquitetura, Engenharia','https://drive.google.com/open?id=1mk0ftfhcGd7uTM_oTlcNB_PQfDiBR8Bj','https://drive.google.com/open?id=1QvqZIXkC-wbiXzTgzO3GugUTEZKSIB3y','Agência de Empregos','nÃO','5000','Sim',NULL,'Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-07T12:08:00.000Z'::timestamptz),
  ('Renata Beche','renatabeche@hotmail.com',NULL,'55996001248','1995-01-03',31,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1BFEYDyjw2V0vUIg5MGOC5OkkuD61QtA7','Engenharia Civil','Ensino Superior Completo','UNIPAMPA','2021-12-03','Sou formado','Construtora Sotrin LTDA
Estagiária de 15/06/2021 - 20/09/2021
Estágio obrigatório de final de curso. Elaboração de projetos complementares, documentos e memoriais descritivos, elaboração de quantitativo de materiais de construção civil e acompanhamento e fiscalização da fase de execução de obras residências unifamiliares e multifamiliares e comerciais

TKNK Técnica e Engenharia
Estagiária de 20/06/2020 - 02/04/2021
Atuação em gerenciamento e planejamento de obras de grande e médio porte, preparação de quantitativo, planilhas orçamentária e projetos complementares e arquitetônico.','Sou engenheira civil, formada pela UNIPAMPA, onde durante a graduação sempre busquei me dedicar a elaboração de projetos em BIM ( Building Information Modeling) tanto hidrossanitário, elétrico e estrutural onde realizei cursos para me capacitar cada vez melhor. Também realizei estágios na área de gerenciamento e planejamento de obras e na elaboração de orçamentos.',NULL,'Arquitetura, Engenharia','https://drive.google.com/open?id=1TtOom1H2mT8hXG12QGaBuDbolWSPu3-S',NULL,'Instagram','Não','R$:2500,00','Sim','Felipe Monteiro - (55)999046499 - Engenheiro Civil','Engenheiro Civil','Tenho conhecimento em BIM ( Revit), no pacote office ( Word, Excel, PowerPoint), em software de autocad, SketchUp, Revit e  em software de compatibilização de projetos Navisworks e em software de estruturas como o TQS e EBERICK, tenho facilidade de trabalhar em equipe, e falo espanhol intermediário.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-07T13:57:00.000Z'::timestamptz),
  ('MATEUS PIERDONÁ BUENO','pierdonabuenomateus@gmail.com',NULL,'51989488324','1991-11-04',34,'Solteiro(a)','0','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1-8i8pnvSIAFUhh9MGuBWbPc9mVShSnY1','Engenharia Civil','Pós-graduação Completa','PUCRS','2017-08-17','Sou formado','• 04/2019 – até o momento – COSATEL CONSTRUÇÕES, SANEAMENTO E ENERGIA LTDA.
 Empresa no ramo de construção e saneamento
 
Cargo: Auxiliar Técnico. 
Principais atividades:
•	Gerenciamento da gestão de contrato da ETE (Estação de Tratamento de Esgoto) – Cachoeirinha/RS. 
•	Gerenciamento da gestão de contrato da S.E.S (Sistema de Esgotamento Sanitário) – Guaíba/RS – Bacias 0,11 e 12.
•	Elaboração do Diário de Obras para um controle mais aprofundado do dia a dia na obra.
•	Controle e conferência na execução da terraplanagem, estaqueamento, ferragem, concretagem, bem como execução de tubulações em PEAD.
•	Elaboração de orçamentos, contratação de mão de obra e serviços.
•	Execução de medições.
•	Marcação de cotas das estruturas com o nível ótico e cotas do terreno para execução da terraplanagem.
•	Leitura, planilhamento de dados e controle de Piezômetro e Inclinômetro.
•	Controle de insumos.
•	Planejamento da obra.
•	Controle, conferência e arquivamento dos ensaios de compactação e densidade dos solos e ensaios de resistência à compressão do concreto, com isso, tendo uma excelência nos resultados almejados.
•	Acompanhamento e controle do concreto armado, desde o recebimento das betoneiras até a hora da descarga, garantindo assim uma qualidade superior ao concreto das estruturas.



• 07/2016 – 11/2017 – ISEV – INSTITUTO DE SAÚDE E EDUCAÇÃO VIDA.
Empresa no ramo de gestão hospitalar

Cargo: Assistente Administrativo.
Principais atividades: 
•	Controle de patrimônio dos hospitais.
•	Compra de gases medicinais e auxílio na manutenção. 
•	Emissão de relatórios e realização de fluxogramas organizacionais tanto nas unidades como na matriz.
•	Auxílio na elaboração de POPs da empresa e dos hospitais.
 
• 07/2012 – 08/2012 – GRUPO PRADO VALLADARES.
Empresa no ramo de empreendimentos imobiliários

 
Cargo: Estágio na área de Engenharia Civil
Principais atividades:
•	Auxílio ao Gestor Engenheiro responsável pela obra de aproximadamente 42.000 m² construídos em Luanda/Angola onde se destacam os seguintes empreendimentos: Mix Center residencial, comercial e Complexos Espaços Avenida residencial, comercial (dentre os empreendimentos está a Maior Rede de hiper mercados de Angola-Grupo Kero-Portugal);
•	Acompanhamento junto com o engenheiro na construção de 5.679,135 m² no período de 42 dias, obra na qual obteve como resultado uma economia de 67% para a organização;
•	Na execução, implantação e organização do canteiro de obras, marcações, conferências, ferragem, controle do concreto (slump, tempo, vibração, acabamento, cura), alvenarias, revestimentos;','Pós Graduação em Engenharia Clínica','NR35, NR18, NR06','Financeiro, Licenciamentos, Engenharia','https://drive.google.com/open?id=12d13qjx9ho_0233rSsKbvRH4FviqpKT1',NULL,'Agência de Empregos','Não.','R$7.000,00','Sim','Eng. Canrobert 51-989488324','Engenheiro Civil','Profissional com mais de 3 anos de experiência no mercado, atuando nas áreas de Saneamento Básico e Gestão de Obras. Busco  desenvolver atividades como engenheiro civil focado no desenvolvimento do negócio e alcance de resultados em Alta Performance. Busco atuar em uma empresa onde eu possa me desenvolver e aperfeiçoar profissionalmente gerenciando e executando obras, buscando aperfeiçoar a produção e otimizar os processos, a fim de suprir as necessidades da empresa, acompanhando o desenvolvimento e fiscalizando a execução dos serviços, planejando e elaborando os fluxos financeiros, planilhas de controle da produção, cronogramas, organogramas e medições de empreiteiros','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-07T14:00:00.000Z'::timestamptz),
  ('Nathália Menegazzo Linassi','nathimenegazzo@hotmail.com',NULL,'55996632256','1993-12-27',32,'Solteiro(a)','0','Sim','Lajeado/rs','https://drive.google.com/uc?export=view&id=1sTYfUzSjMLqs1CNywDFDPZpMvQ17ctIe','Engenharia Civil','Pós-graduação Completa','Universidade Regional e Integrada do Alto Uruguai e das Missões','2018-02-02','Sou formado','Eurovias Rodovias - Analista de Medição - Emprego atual, 07/2021: Encarregada da topografia, responsável pelas medições em sala técnica e por toda demanda necessária em AutoCad e Topograph, incluindo obras de arte, terraplenagem, drenagem, assistência à topografia, estudos da obra. Duplicação da BR386 aliada à CCRViasul.

Autonôma - 2018 a 2021 - Engenheira Civil - Trabalhava com supervisão de obras, ppci, orçamentos, projetos na área de Construção Civil.

Quatrin Construtora - 2016 e 2017 - Estagiária - Dois estágios separados, no primeiro acompanhava 03 obras, sendo uma escola, casas financiadas pela Caixa e um edifício de 10 pavimentos. No segundo estágio de conclusão do curso de Engenharia acompanhava edifício de 16 pavimentos.

URI - 2015 a 2016 e 2017 - Auxiliar de Laboratório, Monitora da Disciplina de Estradas, Bolsista de pesquisa - Realizava ensaios de Solos e pavimentação para pesquisas e para empresas, fui monitora da disciplina de Estradas onde auxiliava os alunos nos projetos de rodovias, fui bolsista de pesquisa na área de Solos e pavimentação.

FredExtintores - 2016 - Cadista - Realizava projetos de PPCI','Pós-graduação completa em Avaliações e Perícias de Engenharia, cursando MBA em Engenharia Rodoviária, cursos de terraplenagem e geotecnia, supervisão de obras rodoviárias, laboratório de Solos e pavimentação, AutoCad, Civil3D, Topograph, Excel, Iso 9001, PBQPH, PPCI, Segurança do Trabalho.','Pós-graduação, curso de terraplenagem, supervisão de obras rodoviárias, AutoCad, ISO 9001','Engenharia','https://drive.google.com/open?id=1YkGlDnKlVxFKvLhNByLwKd1lNnf-fPVw',NULL,'Agência de Empregos','Não','Acima de R$6.000,00','Sim','Vanessa Leite Jardim - (51) 9998-1832 - Eurovias

Henrique Caovilla - (55) 3744- 1701 - Quatrin Construtora','Engenheiro Civil','Sou muito comunicativa e responsável, gosto de adquirir e compartilhar conhecimentos, estou sempre aberta para opiniões e discussões para encontrarmos as melhores soluções, gosto de produzir e trabalhar em locais com comunicação aberta. Estou sempre buscando me atualizar e meu foco hoje é na área de infraestrutura.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-07T14:50:00.000Z'::timestamptz),
  ('caio machado borela','caio_borela@hotmail.com',NULL,'21988653343','1992-06-25',33,'Solteiro(a)','0','Sim','Rio De Janeiro/rj','https://drive.google.com/uc?export=view&id=11wUHNQ1AMhtLrSFTFgH3qIzdj52zWkq7','Engenharia Civil','Ensino Superior Completo','PUC rio','2019-06-12','Sou formado','Trimetal engenharia - Engenheiro civil - 01/06/2021 - Atual 
Trampo - Gerente de Projetos - 01/01/2019 - 01/06/2021
Vertigo engenharia - Gestor de obras - 01/03/2018 - 01/01/2019
Green coast construções e incorporações - gestor de obras - 01/06/2012 - 01/03/2018',NULL,'Crea - nr 35 - nr10 - nr 18','Engenharia','https://drive.google.com/open?id=1_O55GO253-ved6zmM-Uk7tNB-BiV0L3q',NULL,'Agência de Empregos','não','8300','Sim','Lucas luz - Trampo  -  21 99313 0002
Helena Rodrigues - Green coast - 21 97156 0769','Engenheiro Civil','sap - pacote office - autocad - fluente em ingles, espanhol e frances','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-07T14:53:00.000Z'::timestamptz),
  ('Douglas Vítor Sousa Faleiro','faleiro.douglas@gmail.com',NULL,'31995601991','1991-02-02',35,'Solteiro(a)','0','Sim','Belo Horizonte/mg','https://drive.google.com/uc?export=view&id=12zsZunjacu_U1BuI_tZ2y4a2xW4OdtCD','Engenharia Civil','Ensino Superior Completo','Centro Federal de Educação Tecnológica de Minas Gerais - CEFET-MG','2020-10-08','Sou formado','EXXATA TECNOLOGIA E ENGENHARIA DE CONTRATOS
Analista de Contratos - Junho de 2020 a Data Atual
Atuação na área de engenharia civil em acompanhamentos e apoio a administração contratual, elaboração e análise de pleitos, auditoria técnica de contratos e obras, verificação de medições, elaboração e análise de cronograma físico-financeiros e orçado x realizado, verificação e resposta de diários de obra, perícias e assistência técnica em processos judicias e arbitragens.

QUARTZO INCORPORADORA
Estagiário de Engenharia Civil - Maio de 2018 a Maio de 2020
Gerenciamento dos processos de assistência técnica pós obra, acompanhamento de evolução de obra, verificação de orçado x realizado, medições, interface com a engenharia da obra sobre qualidade e evolução, controle de contratos de subempreiteiros, suporte ao gerenciamento de projetos.

KTM ADMINISTRAÇÃO E ENGENHARIA
Estagiário de Engenharia Civil - Janeiro de 2017 a Abril de 2018
Realização de medições e controle de obras. Levantamento de valores a serem pagos a empreiteiros subcontratados. Acompanhamento de evolução de obra, projetos As Built, auxílio ao sistema de qualidade da obra.

BB TECNOLOGIA E SERVIÇOS
Técnico de Operações - Outubro de 2010 a Fevereiro de 2014
Manutenção corretiva e preventiva de equipamentos de automação bancária, em especial: ATM''s, portas giratórias, nobreaks, sistema de CFTV, impressoras e micros. Suporte interno e externo. Atuação em campo e em laboratório de manutenção de peças.

PROJELET
Estagiário Técnico - Junho de 2009 a Junho de 2010
Elaboração de projetos prediais elétricos, telecomunicações e SPDA.',NULL,NULL,'Engenharia','https://drive.google.com/open?id=1-g95-2HaOpeWpYixTVPwax-zR8xlB-aE',NULL,'Agência de Empregos','Não','R$4.000,00','Sim','Vitor Melo
(31) 985438258
CEO da Exxata.','Quero inscrever-me no banco de talentos da Young!','Conhecimento em Autocad, Inglês avançado e Alemão intermediário, faixa azul de taekwondo.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-07T18:34:00.000Z'::timestamptz),
  ('Daniel da Silva Rempto','drempto@hotmail.com',NULL,'24981804730','1991-10-21',34,'Solteiro(a)','0','Sim','Petópolis/rj','https://drive.google.com/uc?export=view&id=1KA9CVEoo5QkrXxRCYWgD_ycZyVgnPLjN','Engenharia Civil','Pós-graduação Incompleta','Universidade Federal Fluminense','2014-12-11','Sou formado','Cargo: Auxiliar Técnico – 11/2018 - Atual
SOLA Construtora– Petrópolis/RJ
Principais responsabilidades: dar auxílio no comando da obra juntamente ao engenheiro responsável na área técnica bem como na área de qualidade. Atividades: acompanhamento do cronograma físico-financeiro, elaboração e revisão de metas de produção, auxílio no controle tecnológico do concreto, elaboração de medições de serviços de empreiteiros e medição da CEF, diário de obras, preenchimento de FVS’s (ficha de verificação de serviços), conferência dos serviços executados e acompanhamento da produção da obra. Tempo dividido entre canteiro de obras e escritório.

Cargo: Professor de Inglês - 06/2016 – 12/2019
NYC Private Classes – Petrópolis/RJ
A empresa disponibiliza aulas particulares de inglês principalmente para alunos que residem fora do Brasil e não têm o domínio do idioma. As aulas são ministradas via skype e variam de acordo com a demanda do cliente (conversação, gramática, etc.).

Cargo: Engenheiro Civil Junior – 01/2015 – 10/2015
Technip Engenharia S/A – Rio de Janeiro/RJ
Principais responsabilidades: execução de análises estruturais através de softwares de engenharia dos módulos do Topside da Plataforma PFSO P76 da Petrobrás e elaboração de memórias de cálculo das análises feitas. Coordenação das análises com os projetistas e com os setores envolvidos com a estrutura analisada. Softwares utilizados: SACS e Genie.

Cargo: Trainee– 03/2014 – 12/2014
Technip Engenharia S/A– Rio de Janeiro/RJ
Principais responsabilidades: participante do Programa Futuro Engenheiro 2014, tendo atuado na disciplina de Estruturas Metálicas e dado apoio à elaboração de memórias de cálculo e à realização de análises estruturais.

Cargo: Estagiário – 01/2014 – 02/2014
Construtora Norberto Odebrecht– Rio de Janeiro/RJ
Participante do programa de Estágio de Férias sendo designado para a obra do Porto Maravilha e feito uma rotação entre algumas frentes de obra, que incluem Urbanismo, Museu do Amanhã e túneis rodoviários.

Cargo: Estagiário – 04/2013 – 08/2013
PCE – Projetos e Consultoria de Engenharia Ltda– Rio de Janeiro/RJ
Principais responsabilidades: atuante na área de projetos no setor de estruturas da empresa tendo contato com os projetos da casa de força da UHE Belo Monte (Sítio Pimental) e UHE Teles Pires. Elaboração de memórias de cálculo e análise estrutural.

Cargo: Estagiário – 02/2012 – 08/2012
Fetranspor– Rio de Janeiro/RJ
Principais atividades: atuante no setor de Mobilidade Urbana no auxílio na elaboração de itinerários de ônibus, organização de projetos e atualização de banco de dados.','Cursando Mestrado Profissional na Escola Politécnica da UFRJ, concluindo em 2022. Mestrado na área de Estruturas com foco em Concreto Armado.',NULL,'Engenharia','https://drive.google.com/open?id=1tp_XCdbX9GuftyXSIzVVmj6ouktvjSig',NULL,'Agência de Empregos','Não','R$5.000,00','Sim',NULL,'Engenheiro Civil','Eu sou o Daniel, um Engenheiro Civil de 30 anos. Não tenho uma vasta experiência profissional mas deixo uma marca por onde passo. Sei que tenho uma capacidade incrível para desempenhar um excelente trabalho mas ultimamente me faltam oportunidades boas, logo estou abrindo meus horizontes para trabalhar em outros Estados e até outros países.
Sou fluente em inglês, tenho facilidade com softwares, autodidata, proativo e muito curioso.  
Gosto de música, arranho um violão e bateria, me relaciono bem com 99% das pessoas e tenho facilidade de comunicação. Agradeço muito a oportunidade desde já!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-07T22:57:00.000Z'::timestamptz),
  ('Luciene Coêlho Bornéo','lborneo2006@gmail.com',NULL,'51981408445','1979-06-20',46,'Solteiro(a)','1','Sim','Porto Alegre/RS','https://drive.google.com/uc?export=view&id=1hrj8UednOpdspKXrhduBoFjKj8bK0o8E','Engenharia Civil','Pós-graduação Completa','PUC-RS','2003-07-25','Sou formado','Trabalhei no Exército Brasileiro por 8 anos, sendo 4 anos no 6° BEC desenvolvendo planos de trabalhos, laudos, pareceres técnicos,  análise de projetoa, orçamentista e executando obras de pavimentação e recuperação de área degradada. Os outros 4 anos na CRO/3 ,desenvolvendo orçamentos, fiscalizando obras de edificação, rampas de lavagem, pavilhão garagem e estação de tratamento de esgoto, além de pareceres, análises e laudos técnicos. Trabalhei na empresa Souza Neto Engenharia como engenheiro Orçamentista, além de fiscal de obras.','Especialista em Engenharia e Segurança do Trabalho; Avaliador de Imóveis',NULL,'Arquitetura, Engenharia','https://drive.google.com/open?id=1XHY6_YtIwlp3J2JLj-EPjD_TRXg21D3P',NULL,'Agência de Empregos','Não','7.500,00','Sim',NULL,'Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-08T01:36:00.000Z'::timestamptz),
  ('Valter da Silva Gattass Filho','gattassfilho@gmail.com',NULL,'65992255130','1988-10-15',37,'Solteiro(a)','0','Sim','Cuiabá/mt','https://drive.google.com/uc?export=view&id=1u4OqG5R4g1--oqmBNz81g_2kHqtR_v4N','Engenharia Civil','Pós-graduação Completa','Instituto Unificado de Ensino Superior Obejetio','2018-01-31','Sou formado','Cargo: Encarregado de qualidade
Empresa: Terra Santa Construções e Serviços
Período: setembro/2012 á maio/2013.

Cargo: Técnico em segurança do trabalho
Empresa: Oliveira Melo Construtora
Período: Agosto/2013 á Agosto/2014.

Cargo: Estagiário em engenharia civil
Empresa: Oliveira Melo Construtora
Período: setembro/ 2014 á janeiro/2016

Cargo: Estagiário em engenharia civil
Empresa: Innovar Construtora
Período: abril/2016 à outubro/2016

Cargo: Estagiário em engenharia civil
Empresa: SECIMA – Secretaria de Estado de Meio Ambiente, Recursos Hídricos, Infraestrutura, Cidades e Assuntos Metropolitanos
Período: Dezembro/2016 à Novembro/2017

Cargo: Técnico em segurança do trabalho
Empresa: Encomind engenharia LTDA
Período: Junho/2019 à agosto/2020.

Cargo: Técnico em segurança do trabalho
Empresa: Construteq construções, terraplenagens e comercio de equipamentos EIRELI
Período: Outubro/2020 à Dezembro/2020.

Cargo: Técnico em segurança do trabalho
Empresa: Salinas Gold / filial Santa Clara mineração
Período: Janeiro 2021 à Setembro 2021 .','Técnico em segurança do trabalho, instrutor e multiplicador Nr 33 e 35 engenharia de segurança do trabalho e MBA em gestão de projetos em andamento',NULL,'Engenharia','https://drive.google.com/open?id=1HuAO5DyCm-RHwnmNLtcqKbCyjIGAagm4',NULL,'Agência de Empregos','Não.','R$5.000,00','Sim',NULL,'Engenheiro Civil','Em busca de uma colocação no mercado como engenheiro civil, disponibilidade para mudança, treino jiu jitsu.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-08T13:47:00.000Z'::timestamptz),
  ('Hugo de Araújo Pereira','hugo_wj80@hotmail.com',NULL,'64981247500','1980-08-15',45,'Casado(a)','2','Sim','Catalão/go','https://drive.google.com/uc?export=view&id=1_bdkiUjHIfa4Co-0CcGE6HGa7zH_8sVK','Engenharia Ambiental','Pós-graduação Completa','UFT','2007-12-08','Sou formado','Empresa: SAE TOWERS BRASIL
Função: Engenheiro Segurança do Trabalho Pleno
Período: 04/2021 a 09/2021
Atividades Exercidas: Plano de Segurança, PPRA, PCMAT, Plano
de Controle Auditivo, Plano de Ação aos Desvios, CIPA, Plano de
Combate a Incêndio, Procedimento de Segurança, Análise criticas
de simulados, Relatórios, PAE (plano de ação emergencial),
reporte de treinamento em QSMS. Linha Transmissão e
Subestação. Cliente Neoenergia/Coelba
Empresa: TEBRA-TECHINT
Função: Coordenador CMASS I
Período de: 11/2020 a 03/2021 ( retomada)
Atividades Exercidas: Controle Budget/ Forecast, atendimento
aos requisitos legais via software, gestão de contratos dos
subcontratados, gestão CMASS via SAP/SACP, controle NCs,
acompanhamento das inspeções de campo, Elaboração de ITs
das atividades operacionais, controle de KPI, elaboração das
apresentações das reuniões das lideranças. Cliente Ternium BR
Empresa: TEBRA-TECHINT
Função: Engenheiro Segurança do Trabalho
Período de: 10/2019 a 04/2020
Atividades Exercidas: Elaboração de Procedimento de Segurança
e Inventário de Perigos e Avaliação dos Riscos nas atividades
operacionais; CIPA-SIPAT, Lista de Inspeções dos equipamentos
de trabalho em altura; Inspeção de Segurança PIPESHOP,
Montagens Estruturas, Caldeiraria e Içamento de Carga;
Manifesto de Resíduos, Reuniões com a Liderança,
Treinamentos, DDS, Gerenciamento dos requisitos legais e
Atendimento a Política da Ternium Siderurgia. Cliente Ternium
Empresa: JR – MINERAÇÃO NIOBRAS – Grupo CMOC
Função: Engenheiro de Segurança do Trabalho Pleno
Período de: 03/2018 a 05/2019
Atividades Exercidas: Responsável pela revisão dos procedimentos internos, acompanhamento das áreas operacionais,
reunião para gestão de mudanças, (controle SE Suíte dos requisitos legais), Auditorias Internas e Externas, DDS, DSS, execução
de treinamentos, inspeções de segurança, relatórios de inspeções, PPP, revisão PGR. Atuação no acompanhamento das
paradas para manutenção, monitoramento dos aspectos de perigos e riscos críticos, análise técnica de novos prestadores de
serviço e planos de ação, revisão de Análise de Risco, Realizei análise e Investigação de acidentes e incidentes, Metodologias
TASK, HAZOP, Modos de Falha e entre outras, revalidação do CERCON Niobras junto ao Corpo de Bombeiros Militar de Goiás.
Empresa: TABOCAS PARTICIPAÇÕES LTDA
Função: Engenheiro de Segurança do Trabalho Pleno
Período de: 07/2017 a 03/2018
Atividades Exercidas: Responsável pela implantação do e-Social, laudo da carga dos equipamentos e acessórios para
içamento de carga e altura. Realização dos laudos ambientais de ruído, controle das atividades, elaboração de procedimentos
e relatórios gerenciais de controle do SGI). Atuação na identificação, controle e monitoramento dos aspectos, impactos,
perigos e riscos das operações. Responsável pela implantação do PPRA, elaboração do PCMAT, PPR, PCA, CIPA, planos de
emergência, treinamentos NR33 e 35, DDS, permissão para trabalho em espaços confinados. Projeto: Linha de Transmissão –
Cliente STATE GRID.
Empresa: AFAPLAN PLANEJAMENTO E GESTÃO DE PROJETOS
Função: Engenheiro Coordenador de Segurança e Meio Ambiente
Período de: 08/2016 a 04/2017
Atividades Exercidas: Responsável pela análise e acompanhamento dos projetos para atendimento às normas
regulamentadoras e políticas internas da empresa. Atuação na análise e efetuação das validações técnicas mediante plano de
segurança e saúde. Realização da apresentação dos planos de emergência, segurança, meio ambiente, permissões de
trabalho, APRs e procedimentos de segurança das atividades. Responsável pelo suporte na elaboração dos processos
documentais de segurança (PSS), Levantei dados em campo e em documentos relativos às condições ambientais e de trabalho
em processos de licenciamentos/Condicionantes LI/LO e fiscalizações, comunicação prévia para abertura da obra e
informativo ao MTE, implementação do sistema de gestão da segurança, meio ambiente e saúde no trabalho. Realização da
gestão documental das empresas, equipamentos e funcionários, inspeções em campo, execução de treinamentos, palestras e
DDSs, assim como, controle dos indicadores de desvios SSMA, gestão dos resíduos do complexo fotovoltaico, controlando
destinação final e proposição de medidas para redução da geração, controle dos relatórios NC, semanais e mensais.
Atuação na implantação do Complexo Fotovoltaico Pirapora I, subestação coletora, linha de transmissão e Bay de conexão –
Cliente: EDF EN/CANADIAN SOLAR
Empresa: EMPRESA GLOBAL DE PROJETOS
Função: Engenheiro de Segurança e Meio Ambiente
Período de: 04/2015 a 04/2016
Atividades Exercidas: Responsável pela elaboração e execução do planejamento anual do SESMT em conjunto com a Gestão
SESMT. Atuação na coordenação de equipe com 35 colaboradores, implantação do plano de segurança, análise preliminar de
risco por atividade, implantação do PPRA, PCMAT, identificação, monitoramento dos aspectos, impactos, perigos e riscos por
função. Responsável pela CIPA/SIPAT, elaboração do plano de controle auditivo PCA, planos de proteção respiratório PPR,
controle dos vencimentos das normativas e treinamentos NR’s. Orientei tecnicamente a aplicação de ferramentas e controles
de sistema de gestão ambiental junto ás áreas envolvidas. Realização do desenvolvimento de palestras em segurança do
trabalho e meio ambiente, assim como, plano de resposta a emergência PRE, criação de formulários de desvios de segurança
– monitoramento de atividades em campo, gerenciamento das detonações de pedreira, documentação dos
subcontratados,Gerenciamento das Detonações Pedreira, Plano de fogo, Controlei a Documentação Solitária dos
Subcontratados. Projeto: Ampliação e Capacidade de Melhorias da BR 050 – Cliente MGO Rodovias.',NULL,NULL,'Engenharia','https://drive.google.com/open?id=1ufQzjIMCtJVbqj31E2W2Lt1cWjsngrqZ',NULL,'Agência de Empregos','Não','10000','Sim',NULL,'Engenheiro Segurança do Trabalho',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-09T01:26:00.000Z'::timestamptz),
  ('Daniel Dantas Araújo de Andrade','Daniel_dantas@me.com',NULL,'11984479252','1980-02-13',46,'Casado(a)','1','Sim','São Paulo','https://drive.google.com/uc?export=view&id=1qVugMWKVbWe9M3rZvFvFxbn3axeEw5oA','Engenharia Civil','Pós-graduação Completa','Universidade Anhembi Morumbi','2014-06-01','Sou formado','Responsável Produção Junior. 
Reporte ao Gerente de Engenharia. 
•	Responsável pela execução de acabamento das Estações Brooklin Paulista e Congonhas, contemplando os acessos, corpo da estação, Edifício Técnico Operacional (ETO) e o túnel de interligação e acesso ao aeroporto de Congonhas;
•	Responsável pela execução de transporte, carregamento e içamento das vigas trilhos do Monotrilho, peças em concreto armado protendido, com peso médio de 90 toneladas cada uma, sendo 140 vigas ao todo.
•	Responsável pela consolidação das vigas guias;
•	Execução das Lajes do track switch, sendo um volume de 2600 m³ aproximadamente e 250 toneladas de aço.
 
 
Engenheiro Civil. 
Engenheiro autônomo, responsável em execução de obras, reformas e elaboração de laudos de engenharia e construção.
•	Reforma de quadra poliesportiva de 160m² do Conjunto Habitacional em Interlagos, com budget de R$ 45K;
•		Substituição de 7 reservatórios da reserva de incêndio em fibra de 10m³ por reservatórios em aço galvanizado, no Conjunto Habitacional de Taboão da Serra, sendo 7 torres com 7 pavimentos cada, adequação e troca da tubulação de PVC para aço galvanizado para atendimento das normas dos Bombeiros, trazendo redução de custos ao cliente e eliminação da paralisação de seus serviços, com budget de R$40K; 
•		Reforma de conjunto comercial de aproximadamente 400 m² na região da Paulista, gerenciando um budget de R$40K;
•	Reforma residencial de edificação assobradada, incluindo obras civil, hidráulica, elétrica e acabamentos, na faixa de R$ 130K;
•		Execução de ampliação de lixeira e criação de área para guarita no portão de veículos nos condomínios residenciais: Vila Nova Sabará - Praça Alvorada e Vila Nova Sabará - Praça Alvorada, gerenciando aproximadamente R$ 90K;
•		Reforço estrutural em muro de divisa da área de lazer e campo de futebol do Condomínio Residencial no Jardim Alpino com budget de R$ 21K;
•		Recuo de muro e adequações geométricas em imóvel na Casa Verde com budget de R$ 7.5k;


 
Engenheiro Civil (Produção)
Reporte ao Gerente de Engenharia. Equipe multidisciplinar de 40 funcionários.
•	Engenheiro responsável pela definição e implantação do canteiro de obras da Subestação Primária de Energia Bandeirantes da Linha 17 Ouro.
•	Definição de layout e local de construção do canteiro de obras (refeitório, salas administrativas, almoxarifado e vestiários), metodologia construtiva, planejamento de compras de materiais e locação de equipamentos;
•	Realização de visitas técnicas nas estações em construção (Chucri Zaidan, Vila Cordeiro, Campo Belo, Vereador José Diniz, Brooklin Paulista, Jardim Aeroporto e Congonhas e Pátio de Manobras), realizando a fiscalização do trabalho das equipes, uso dos equipamentos de segurança e do cumprimento das normas de qualidade, com emissão de diário de obras;
•	Negociação com clientes e fornecedores e gerenciamento de atividades extra escopo.

      
•	Professor de diversas disciplinas no Instituto da Construção (formação de profissionais da Construção  https://www.institutodaconstrucao.com.br/);
Engenheiro Civil
Reporte ao Gerente de Contrato / Gerente de Produção. Equipe multidisciplinar de 350 funcionários.
•	Coordenação da execução de obras de infra e superestrutura das estações em construção (Chucri Zaidan, Vila Cordeiro, Campo Belo, Vereador José Diniz, Brooklin Paulista, Jardim Aeroporto e Congonhas), gerenciando R$ 260MM de budget nas obras da Linha 17 Ouro do Metrô, discutindo e alinhando etapas e cronograma físico e financeiro das obras, junto às equipes de Planejamento, Compras, Custos, Medições e Gerência de Contratos;
•		Condução de todo o processo de fabricação e lançamento de 4 vigas pré-moldadas de 90T (cada) na estação Vereador José Diniz e Brooklin Paulista;
•		Condução de todo o processo para a transposição de adutora de 600mm de diâmetro da Sabesp, na estação Brooklin Paulista, sendo responsável por todo o contato e alinhamento dos trabalhos junto a Sabesp, incluindo planejamento, execução, contenção, escavação, inspeção técnica e planejamento da manobra da adutora com interrupção do fornecimento de água de toda a região do Brooklin Paulista incluindo o Aeroporto de Congonhas;
•		Execução de obras de contenção com cravação de perfis metálicos, escavação, execução de paredes de diafragma, cortina atirantada, estação e estaca raiz, ensaios de PIT, galeria pluvial, pavimentação, escavação invertida, Tunnel Liner e banco de dutos, edifício técnico com 4 e 8 pavimentos;
•		Realização de reuniões periódicas com o cliente Metrô e/ou Projetista para apresentação e discussão das atividades e avanço das obras, e acompanhamento em vistorias nos imóveis lindeiros as obras.
•	Identificação e busca de solução dos desvios em medições realizadas por fornecedores, trazendo economia em torno de 10 a 15%, melhoria nos serviços executados;
•		Identificação e busca de solução para as falhas de concretagem, conduzindo conversas para escuta e orientação da equipe, que trouxeram entendimento, melhoria nos serviços de concretagem e redução de custos de retrabalho e um aumento de 25% na produtividade do projeto;

Engenheiro Civil
Reporte ao Gerente de Contrato/Gerente de Engenharia.
•	Responsável pela medição cliente, elaboração de memorial de cálculo, croquis;
•	Responsável pela criação de novo padrão de relatório de memórias de cálculos, que trouxe satisfação do cliente e adoção do modelo.
•	Gestão de projetos, controle e distribuição, elaboração de croquis, análise crítica e controle de revisões;
•	Fiscalização das obras da cortina atirantada sob a Rodovia Presidente Dutra BR116, no Trevo do Bonsucesso em Guarulhos/SP;


Auxiliar de Engenharia – 2013 a 2014
Reporte ao Gerente de Engenharia.
•	Responsável em fiscalizar obras civis de infra e superestrutura da Estação de Tratamento de esgoto e da Elevatória de Esgoto Bruto da Várzea do Palácio em Guarulhos/SP, com acompanhamento das atividades em campo e do cronograma físico e financeiro, elaboração de memórias de cálculos, croquis, medição cliente e subempreiteiro, vistoria das estruturas físicas com discussão dos projetos e orçamento junto aos stakeholders;
•	Gestor de informações econômico/financeiro, analisando informações de campo e emitindo relatórios de evolução obras, para análise dos gestores;
•	Participante na elaboração de aditivos contratuais e na definição de novos preços.
•	Gestão de projetos efetuando a análise crítica, controle e distribuição em todas as disciplinas, elaboração/validação de memoriais e layout''s.
•	Gestão e verificação de documentação de subempreiteiros, acompanhamento de parte diária de mão de obra e equipamentos;
Coordenador de TI – 2012 a 2013','Pos graduado em Engenharia Ferroviária',NULL,'Engenharia','https://drive.google.com/open?id=1bSKKOYg45HZ0LXLeyZjyXpG3UmiExRpK',NULL,'Agência de Empregos','Não','R$12.000,00','Sim','Claudio Soriano +5511976547997','Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-09T03:16:00.000Z'::timestamptz),
  ('Luiz Rosa da Silva Júnior','engenheiroluizrosa@gmail.com',NULL,'+5591984218211','1966-06-13',59,'Casado(a)','1','Sim','Belém/pa','https://drive.google.com/uc?export=view&id=1bzrRHpidhVXFw40XCz_iA97fYpGxO2Fv','Engenharia Civil','Pós-graduação Incompleta','Unama/PA','1991-02-15','Sou formado','Engenheiro Civil com 30 anos de experiência em obras','Pós Graduação em Engenharia Clínica e Hospitalar',NULL,'Engenharia','https://drive.google.com/open?id=1j1n8d3QigrB8SYmucj4PZDWVnDeToicy','https://drive.google.com/open?id=13Ab28iMm_DohbfUbE4AANfJ47iBMPAzM','Agência de Empregos','Não','13.000,00','Sim','Grupo MB Capital, Quanta Engenharia, Leal Moreira, Cristal Engenharia, Engeco, Reai Engenharia, Encol.','Engenheiro Civil','Possuo uma bela família e vivemos em harmonia  e adoramos cozinhar.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-09T08:51:00.000Z'::timestamptz),
  ('Eduardo Marques Cezarini','eduardo_cezarini@hotmail.com',NULL,'19992065429','1995-04-21',30,'Solteiro(a)','0','Sim','Campinas/sp','https://drive.google.com/uc?export=view&id=1ahTAURY2uvlOcB8yTuX2sDxmviBdWi8A','Engenharia Civil','Ensino Superior Completo','PUC-Campinas','2021-12-15','Sou formado','GRUPO ESTRUTURAL (Há mais de 28 anos no mercado, atua em diversos setores,
principalmente no ramo de infraestrutura urbana, aeroportos, saneamento e obras
de infraestrutura industrial)
Estagiário
Dez/17 – Abr/19 (1 ano e 4 meses)
• Elaboração de orçamentos analíticos de obras de construção civil de grande
porte;
• Levantamento de quantitativos das obras;
• Elaboração de compositores de custos unitários e de serviços,
• Elaboração, atualização e acompanhamento de cronograma prévio para
licitações;
• Criação de esboço de projetos para orçamentos.
SRC Terraplenagem e Pavimentação (A SRC foi construída em 2007 e atua nas
áreas de terraplanagem, drenagem, rede de água e esgoto, pavimentação, locação
de equipamentos e obras de contenção geotécnica.)
Estagiário / Assistente
Jun/19 – Jan/21 (1 ano e 8 meses)
• Elaboração de orçamentos analíticos de obras de construção civil de grande
porte;
• Levantamento de quantitativos das obras;
• Visitas a clientes para orçamentos;
• Compras;
• Atualização e acompanhamento de cronogramas de obras;
• Acompanhamento de obras;
• Liderança de equipes de serviços;
• Fechamento de obras;
Fundação FEAC (Missão: a promoção humana, a assistência e o bem-estar social,
com prioridade à criança e ao adolescente..)
Estagiário patrimonial
Jan/21 – Dez/21 (1 ano)
• Auxilio em projetos de infraestrutura urbana;
• Fiscalização e acompanhamento de obras;
• Auxilio em manutenção patrimonial;',NULL,NULL,'Novos Negócios, Engenharia','https://drive.google.com/open?id=16RVm-CV7ba_CkNiAr9HmYE2rAgy3bzFq','https://drive.google.com/open?id=1xsKJpPiiK1dz909rYyrzzDnnvIRVs1Pz','Agência de Empregos','Não','R$6.000,00','Sim',NULL,'Engenheiro Civil','Prezados, bom dia.
Venho a partir desse e-mail apresentar meu curriculum.
Sou o Eduardo Cezarini, recém formado em engenharia civil pela PUC-Campinas. Tenho experiência em orçamentos e licitações de estradas e obras de grande porte, que adquiri na Construtora Estrutural LTDA.  
Tenho também experiência de campo em obras de infraestrutura, sendo elas de loteamentos, galpões de ​depósitos, barramentos e rodovias que adquiri na SRC Terraplenagem e Pavimentação.
Tenho bons conhecimentos com softwares como Excel e AutoCAD.
Possuo liberdade geográfica e disponibilidade para viagens.

Agradeço a atenção e sigo à disposição.
Atenciosamente.
Eduardo Cezarini.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-09T12:25:00.000Z'::timestamptz),
  ('João Rafael Batista Galvão da Silva','rf.galvao1@hotmail.com',NULL,'21991999978','1994-05-02',31,'Solteiro(a)','0','Sim','Duque De Caxias/rj','https://drive.google.com/uc?export=view&id=1_rPSgL9RWZf_woXCWywWS8z-OmwcNvnk','Engenharia Civil','Pós-graduação Completa','UNIVERSIDADE DO GRANDE RIO','2017-07-17','Sou formado','ENGENHEIRO CIVIL
TRIO ARQUITETURA E ENGENHARIA
Empresa nacional de segmento de obras de alto padrão corporativa
CARGO:
Coordenador de obras do Rio de Janeiro
PERÍODO:
Agosto de 2021 – Atualmente
ATRIBUIÇÕES:
• Responsável por gerenciar equipe de Engenharia.
• Coordenação de obras corporativas.
• Responsável por gerenciar contratados.
• Responsável pela coordenação de mais de 3000m² de obra até o momento no Estado do Rio de Janeiro
RESULTADOS:
3 projetos corporativos de alto padrão na Região Central e da Zona Sul do Rio de Janeiro;
2 projetos corporativos na área da saúde no Estado do Rio de Janeiro;
Todas as obras foram executadas no prazo, respeitando o custo orçado.
ACOMPANHAMENTO EM:
https://www.trioarquitetura.com.br/projetos
ENGENHEIRO CIVIL
SUM ENGENHARIA
Empresa nacional de segmento de obras de alto padrão residencial e corporativa
CARGO:
Gestor de obras de alto padrão residencial e corporativa
PERÍODO:
Junho de 2019 – Junho de 2021
ATRIBUIÇÕES:
• Responsável por gerenciar equipes e subcontratadas.
• Gestor de obra e contratos de construção civil.
• Responsável pela entrega de relatórios, apresentação de resultados junto a diretoria, tomada de decisões.
• Responsável pelo Orçamento da Obra.
• Responsável residente por uma residência de alto padrão em Teresópolis/RJ e por construções corporativas de alto padrão.
RESULTADOS:
A Casa de Campo de Teresópolis é o maior projeto residencial da SUM Engenharia e conta com um total de aprox. 700m² de construção.
Obra corporativa de alto padrão no centro do Rio de Janeiro, aproximadamente 800m² de construção.
Todas as obras foram executadas no prazo, respeitando o custo orçado.
ACOMPANHAMENTO EM:
https://sumengenharia.com.br/project/casa-de-campo/
ENGENHEIRO CIVIL
FANCOLD SERVICE
Empresa nacional de segmento manutenção predial.
CARGO:
Supervisor técnico de obras (PJ)
PERÍODO:
Fevereiro de 2019 – Junho de 2019
ATRIBUIÇÕES:
• Responsável por gerenciar equipes e subcontratadas.
• Gestor de obra e contratos de construção civil.
• Principal responsável por novas obras do Rio de Janeiro.
RESULTADOS:
Pequenas obras e contratos de manutenção predial em todo o Rio de Janeiro, aumentando o portfólio da empresa no Estado
ENGENHEIRO CIVIL
AUTÔNOMO
Autônomo
CARGO:
Gestor de obras
PERÍODO:
Fevereiro de 2018 – Janeiro de 2019
ATRIBUIÇÕES:
• Responsável por legalizar obras nas cidades de Duque de Caxias e do Rio de Janeiro
• Gestor de obra e projetos na cidade de Duque de Caxias, no ramo residencial.
RESULTADOS:
Aprovação de obras respeitando as legislações das cidades do Rio de Janeiro e Duque de Caxias, entrega de duas obras residenciais nas chaves (aproximadamente 350m² total de obra).
ASSISTENTE TÉCNICO DE ENGENHARIA
ODEBRECHT REALIZAÇÕES IMOBILIÁRIAS
Empresa multinacional de grande porte no segmento de construção civil imobiliária
CARGO:
Assistente técnico de engenharia
PERÍODO:
Julho de 2017 – Junho de 2018
ATRIBUIÇÕES:
• Responsável pela entrega de unidade aos clientes, criando check-list e controlando os serviços à serem feitos.
• Apoio na assistência técnica dos produtos entregues pela construtora, atuando como analisador do problema e liderança de equipe
• Gestor de orçamento e contratos de terceirizados para execução de serviços não executados na época da construção.
RESULTADOS:
Melhor relacionamento pessoal e interpessoal entre Cliente e Empresa.
Aumento das unidades entregues no prazo em 12%.
Diminuição significativa das “pendências” de obra nos check-list dos condomínios.
Diminuição no tempo de resposta Empresa/Cliente.
ACOMPANHAMENTO EM:
https://www.orealizacoes.com.br/residenciais/wind/
https://www.orealizacoes.com.br/residenciais/essence/
https://www.orealizacoes.com.br/comerciais/porto-atlantico/','Especiialização em gerenciamento de projetos e obras públicas','Engenheiro Civil, Técnico em edificações.','Arquitetura, Licenciamentos, Engenharia','https://drive.google.com/open?id=1NBEWP5ZaWOcLaUObCGb-mrIH1LfUR3t2',NULL,'Agência de Empregos','não','7500','Sim','Pedro Corte Real, 21981432864, SUM ENGENHARIA,','Engenheiro Civil','Boa noite.
Primeiramente, gostaria de agradecer a atenção que me foi concedida.

Também, gostaria de apresentar-lhe meu currículo para a vaga de Engenheiro Civil - Supervisor de obras.



Além de ser formado em Engenharia Civil, sou também técnico em edificações. 

Atuei por 1 ano e 9 meses numa Multinacional com funções e responsabilidades de Engenheiro sendo muito bem avaliado e logo após efetivado para Assistente de Engenharia. Onde fui responsável pela assistência técnica em três empreendimentos, dois residenciais e um corporativo, lidando com clientes e diretoria externa.

Além disso, atuei como Coordenador Técnico de Manutenção de um edifício corporativo completamente ocupado, liderando equipe de manutenção, limpeza e segurança.

Atuei também como Gestor de Obras em um modelo de contrato "PJ", na liderança de uma residência de alto padrão no Rio de Janeiro e de obras corporativas, também de alto padrão.

Hoje atuo na coordenação de obras corporativas de alto padrão na região do Rio de Janeiro.

Possuo mobilidade para atuar em todo o território nacional e internacional. 

Em meu currículo, apresento o resultado de cada experiência.

Possuo carta de recomendação e perfil avaliado, caso ajude em alguma etapa do processo seletivo.

Fico à disposição para esclarecer dúvidas e acrescentar mais informações.




Atenciosamente,



Eng. Rafael Galvão','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-09T14:21:00.000Z'::timestamptz),
  ('Renan Fracaro dos Santos','engfracaro@gmail.com',NULL,'55984094743','1987-02-19',39,'Solteiro(a)','0','Sim','Ijuí/rs','https://drive.google.com/uc?export=view&id=11u71Xc1wPoEcXZ_OZML4DGioYjDAY3Vm','Engenharia Civil','Pós-graduação Incompleta','UNIJUI - Universidade Regional do Noroeste do Estado do Rio Grande do Sul','2018-09-01','Sou formado','- APAG Engenharia, atuando como Desenhista projetista, de 01/2013 a 08/2016, responsável pelas seguintes funções:
◦	Desenho da planta baixa de ediﬁcações as built;
◦	Desenvolvimento do Projeto Arquitetônico em software (Autocad 2D);
◦	Desenvolvimento do Plano de Prevenção e Proteção Contra Incêndio - PPCI;
◦	Atendimento aos clientes;','- Intercâmbio realizado no Politécnico de Leira, em Leiria/PT;
- Desenvolvendo Pós Graduação em Engenharia em Segurança do Trabalho;
- Atualmente atuo em:
◦	Projetos residenciais, comerciais e industriais;
◦	Projetos e regularizações junto ao Departamento Nacional de Infraestrutura de Transportes - DNIT;
◦	Regularizações junto a Prefeitura Municipal, Corpo de Bombeiros (Projetos de Segurança), Fundação Estadual de Proteção Ambiental - FEPAM;',NULL,'Arquitetura, Licenciamentos, Engenharia',NULL,'https://drive.google.com/open?id=1-dPqNfvjXJgmQ-C8Y7DfRJ6kuiHNNSqJ','Agência de Empregos','Não','5.000,00','Sim',NULL,'Engenheiro Civil','No caso de interesse e para qualquer dúvida que houver, por favor contate. Terei o maior prazer em atende-los!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-09T19:46:00.000Z'::timestamptz),
  ('Francisco Wickert Weber','engenheirofranciscoweber@gmail.com',NULL,'+5555981003230','1978-10-10',47,'Casado(a)','2','Sim','Santo Ângelo/rs','https://drive.google.com/uc?export=view&id=1VENwc7j98RPTV4eLfZHPClLXM5q29yjj','Engenharia Civil','Pós-graduação Completa','URI','2001-12-22','Sou formado','Empresa: Weber Engenharia
Período: de 01/12/2019 -  01/10/2021
Atividades realizadas:. Engenheiro de segurança do trabalho – realização de treinamentos (NR 5/10/11/12/18/33/35/36), realização de laudos técnicos (LTCAT) PPRA/PGR, PCMAT, PCMSO para Empresas terceirizadas. 

Empresa: ENGELMIG – Batayporã, Campo Grande e Dourados/MS
Período: de 11/03/2019 -  15/11/2019 – Saída por término da Obra de LT.
Atividades realizadas: Engenheiro de Segurança do Trabalho – responsável por treinamentos (Integração, Guindauto, NR-10, NR-12, NR-18, NR-20 e NR-35, Direção defensiva ), DDS, Inspeções/adequações dos alojamentos/refeitório/canteiro de obra e frentes de serviço, controle da documentação de segurança/meio ambiente da Empresa e de terceirizadas, fiscalização de prestadores de serviço (terceirizados), atendimento/adequações às legislações via sistema SENIOR/WA, implantação/acompanhamento das atividades da CIPA, brigadista voluntário, investigações de incidentes/acidentes. Coordenação de 3 Técnicos de segurança do trabalho, 3 técnicos de enfermagem do trabalho, motoristas socorristas. Compra de EPI’s. Adequações aos programas de segurança – PPRA, PCMAT, PCMSO, LTCAT. 

Empresa: FUNDIMISA – Fundição e Usinagem Ltda. – Santo Ângelo/RS
Período: de 01/05/2017 -  29/08/2018
Atividades realizadas: Engenheiro de Segurança do Trabalho – responsável pela elaboração do PPRA e registro do SESMT, acompanhamento das atividades da CIPA/SIPAT, adequações ao PCMSO,  elaboração e implantação dos programas: PPR – Programa de proteção respiratória, PCA – Programa de controle auditivo, PROERGO – Programa de Ergonomia e PPCIs - Programa de Prevenção e Combate de Incêndios, inspeções/controle de EPI’s/EPC’s/processos produtivos/máquinas-equipamentos, controle de documentação de segurança e meio ambiente da Empresa e de terceirizadas, fiscalização de prestadores de serviço (terceirizados), vistorias e criação de  laudos técnicos de máquinas/equipamentos/operações, atendimento/adequações às legislações via sistema SENIOR/SISLEG e treinamento/instrutor interno (NR-5/10/11/12/20/33/35).


Empresa: SEPCO One – UTE Pampa Sul – Candiota/RS
Período: de 01/02/2017 -  01/05/2017 – contrato temporário para treinamento de profissionais do exterior.
Atividades realizadas: Engenheiro de Segurança do trabalho – Treinamento de profissionais do Exterior (Chineses) nas normas de segurança: NR-10 Básico – Serviços em eletricidade, NR-18 – Construção civil, NR-33- Trabalho em espaços confinados, NR-35 – trabalho em altura e Integrações de SSMA. Responsável pela elaboração do PPRA/PCMAT, adequações ao PCMSO. Fiscalização e conferência de documentação de Empresas subcontratadas (Niplan, Irrigaray, Darcy Pacheco e Profab). Orientação/adequação dos alojamentos/refeitório e canteiro de obra, seleção/controle/distribuição/inspeção de EPI’s/ EPC’s, checagem e implantação de documentação de segurança, vistoria de equipamentos/veículos e instalações em geral.

Empresa: Santa Rita – LT 530 Kv – 21 km - UTE Pampa Sul – Candiota/RS 
Período: de 02/10/2016 -  05/01/2017 – Saída por término da Obra de LT.
Atividades realizadas: Engenheiro de Segurança do Trabalho – Fiscalização de trechos da Linha de transmissão, torres,  canteiro e alojamentos, elaboração de PPRA, registro do SESMT, CIPA, adequações ao PCMSO e procedimentos para Controle da Segurança em linhas de transmissão, inspeção de EPI’s/EPC’s, controle de documentação de segurança, vistoria de equipamentos e veículos, implantação de procedimentos para controle de serviços gerais (concretagem das fundações, montagem de estruturas) e organização/dimensionamento do canteiro/alojamentos, atendimento de exigência documentais da contratante. 

Empresa: Construtora EGEL 
Período: 02/2015 à 10/2016 
Atividades realizadas: Engenheiro civil e de segurança do trabalho (PJ)  – treinamentos/palestras em segurança do trabalho, realização de projetos de construção civil/industrial – residências, prédios de estrutura de concreto/metálica, orçamentos, acompanhamento, medições de obras, laudos de vistoria/avaliação e projetos de regularização de imóveis. 
Também atuando como autônomo na realização de PPRA/LTCAT/PPCI para Empresas terceirizadas, perito técnico nas áreas trabalhista e construção civil. 

Empresa: IFFar – Instituto Federal Farroupilha – Campus de Santa Rosa/RS 
Período: de 02/10/2013 à 06/03/2015
Atividades realizadas: Professor (30 h) - Curso técnico em Edificações  (Disciplinas:  Máquinas, equipamentos, ferramentas e Segurança do trabalho;  Patologias das Construções; Estabilidade de solos e taludes; Construção civil 1)

Empresa: Stercycle/STVN Coleta e Transporte de Resíduos Industriais Ltda.
Período: de 05/12/2012 à  21/09/2013 
Atividades realizadas: Gerente Operacional - Unidade de Santo Ângelo/RS - contratação de pessoal, contato/negociação direta com clientes (Clínicas médicas/veterinárias/odontológicas e hospitais), controle de fluxo de caixa, orçamentos, laudos técnicos, controle de documentação técnica/licenças ambientais junto à FEPAM, DEMAM, SEMA e Prefeitura Municipal, controle das operações da usina de incineração, controle logístico e programação de roteiros de coleta de resíduos industriais, emissão de documentação para viagens - notas fiscais/manifestos de transporte de resíduos, responsável técnico pelo PPRA - Programa de Prevenção de riscos ambientais e PPCI - Programa de Prevenção e Combate de Incêndios.

Empresa: Prefeitura Municipal de Porto Xavier/RS
Período: de 01/07/2011 à 01/12/2012
Atividades realizadas: Engenheiro civil e licenciador ambiental do Município (Contrato Comissionado) – Fiscalização de Obras público-particulares, análise de projetos, controle de documentação técnica do setor de Planejamento e Obras, emissão de ART’s, orçamentos, laudos técnicos. Também atuando como Eng. Civil e Eng. Segurança do trabalho particular – realizando projetos (residenciais/comerciais), medições, desmembramentos, orçamentos de Obras para terceiros, execução de obras e elaborando programas de segurança (PPRA) para Empresas locais.  

Empresa: ABENGOA BRASIL Construções Elétricas Ltda. - LT 230 kV Dona Francisca/Santa Maria - RS
Período: de 13/08/2010 à 13/06/2011 Saída: término da Obra.
Atividades realizadas: Engenheiro de Segurança do Trabalho – Fiscalização de trechos da Linha de transmissão, torres e de canteiros de obra, elaboração de PPRA, PCMAT, SESMT, CIPA, adequações ao PCMSO e procedimentos para Controle da Segurança em linhas de transmissão, inspeção/controle de EPI’s e EPC’s, emissão de CAT’s, controle de documentação de segurança, vistoria de equipamentos e veículos, implantação de procedimentos para controle de serviços gerais (escavações, concretagem das fundações, montagem de estruturas, lançamento de cabos condutores e para-raios). 

Empresa: Grupo Empresarial JORGE ZANATTA – Canguru Embalagens, Descartáveis ZANATTA e ZAPACK em Criciúma/SC, Chapecó/SC, Pelotas/RS e Três Corações/MG. Chefiando 10 técnicos de segurança do trabalho. 
Período: 03/07/2009 a 03/08/2010 - Contrato para implantação da OHSAS 18001
Atividades realizadas: Engenheiro de Segurança do Trabalho e Meio Ambiente coorporativo – Fiscalização/Vistoria das Unidades fabris, CIPA, PCMSO, PCA, PPRPS, PPR, vistorias, criação e aplicação de procedimentos para controle da Segurança (OHSAS 18001 e procedimentos internos), auditor interno (ISO 9001, ISSO 14001 e OHSAS 18001), adequação as notificações (Sindicato das Indústrias Plásticas, SRT, CEREST, Corpo de Bombeiros), inspeção/controle/orientação para compra de EPI’s e EPC’s, controle de CAT’s e documentação do SESMT.

Empresa: Indústria Carbonífera Rio Deserto – Mina Barro Branco – Lauro Müller/SC, Mina Novo Horizonte – Criciúma/SC, Mina Cruz de Malta – Treviso/SC e Mina 101 – Içara/SC. Chefiando 9 técnicos de segurança do trabalho e cerca de 880 colaboradores. 
Período: 14/10/2007 a 20/06/2009
Atividades realizadas: Engenheiro de Segurança do Trabalho – Fiscalização/Vistoria em Subsolo e Superfície, PGR, CIPAMIN, adequação do PCMSO, vistorias, aplicação dos procedimentos para controle da Segurança (OHSAS 18001 e procedimentos internos), auditor interno (ISO 9001, ISO 14001, OHSAS 18001), adequação as notificações (Órgãos fiscalizadores: Sindicato dos Mineiros, DRT, DNPM, CEREST, Corpo de Bombeiros), inspeção/controle de EPI’s e EPC’s, emissão/controle de CAT’s, vistoria de equipamentos e veículos, controle documentação SESMT, Formação de multiplicadores (Train-the-trainer): CIPAMIN, NR-10, treinamentos de segurança do trabalho, DDS - diálogos diários de segurança. 

Empresa: AMPER - Construções Elétricas Ltda. - LT 500KV Marabá/PA – Colinas/TO
Período: de 01/03/2007 a 03/09/2007 - Marabá/PA, Piçarra/PA, Nova Olinda/TO e Santa Fé do Araguaia/TO. 
Saída: término da Obra.
Atividades realizadas: Eng. de Segurança do Trabalho – Fiscalização de trechos da Linha de transmissão, torres e de canteiros (centrais e de apoio), elaboração de PPRA, PCMAT, SESMT, CIPA, adequações ao PCMSO e procedimentos para Controle da Segurança em linhas de transmissão, inspeção/controle de EPI’s/EPC’s, emissão de CAT’s, controle de documentação de segurança, vistoria de equipamentos e veículos, implantação de procedimentos para controle de serviços gerais (concretagem das fundações, montagem de estruturas, lançamento de cabos condutores e para-raios) organização/dimensionamento dos canteiros, Formação de multiplicadores (Train-the-trainer): NR-10, capacitação de motos serristas, ofidismo, treinamentos admissionais de segurança do trabalho, DDS - diálogos diários de segurança.','MBA em Administração e Gestão Empresarial pela UNISC - Universidade de Santa Cruz do Sul/RS. 
Especialização em Eng. de Segurança do Trabalho pela UNISC - Universidade de Santa Cruz do Sul/RS.
Mestrado em Tecnologia Ambiental pela UNISC - Universidade de Santa Cruz do Sul/RS.
Pós-graduação em Higiene Ocupacional – Faculdade FAVENI.
Pós-graduação em Gestão de Riscos e Emergências ambientais - Faculdade UNYLEYA (Cursando EAD)',NULL,'Administrativa, Novos Negócios, Engenharia','https://drive.google.com/open?id=15nkB5dmcWAwgZ1B8IKDzO1KZm5_-dL82',NULL,'Agência de Empregos','Não se aplica.','11000','Sim','Léo de Jesus - RH Engelmig  - 21 980612947','Engenheiro de segurança do trabalho',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-09T19:59:00.000Z'::timestamptz),
  ('Rozenilda Buchhorn','eng.rozenildabuchhorn@gmail.com',NULL,'43996430515','1980-11-17',45,'Solteiro(a)','1','Sim','Apucarana/pr','https://drive.google.com/uc?export=view&id=1FLxTPYR5jhIEwVdCA5eXiGlCXo0vYMMy','Engenharia Civil','Pós-graduação Incompleta','FEITEP- Faculdade de Engenharias e Arquitetura','2019-07-25','Sou formado','ENGENHEIRO CIVIL – VITORINO Terraplanagem e Pavimentação
Cidade: Apucarana/Demais Cidades - PR
Cargo: Engenheiro Civil Residente
Tarefas/Atribuições: Execução, Organização, Planejamento, Fiscalização, Acompanhamento e orientação de serviços para a equipes de Terraplanagem Drenagem e Pavimentação Asfálticas comprometimento com tarefas operacionais diários.
FISCAL – PROJEL Engenharia Especializada Ltda
Cidade: Mauá da Serra/Ortigueira - PR Cargo: Fiscalização e Controle Tecnológico
        
Tarefas/Atribuições: Fiscalização, Acompanhamento e orientação de serviços e ensaios “in loco” de Terraplanagem e Pavimentação Asfálticas, emitindo relatórios operacionais diários, executar tarefas específicas, determinadas pelo Superior imediato.
CONSTRUTORA VENTURA Engenharia Especializada Ltda
Cidade: Jandaia do Sul - PR
Cargo: Engenheiro Civil / Autônoma
Tarefas/Atribuições: Projetos, Orçamentos, Contratação e Pagamentos De Colaboradores, Fiscalização, Acompanhamento E Orientação, Liderança De Equipe.
Responsável por projetos e cronogramas de trabalho e entrega final, monitorando resultados, intermediando conflitos, entre outras situações.
ESTAGIÁRIA / DER - Departamento De Estradas E Rodagem - Pr
Cidade: Apucarana – PR
Cargo: Estagiária
Tarefas/Atribuições: Participação em levantamentos de custos e processos licitatórios, montagem de projeto, lançamentos de serviços terceirizados (medição), acompanhamento em vistoria dos trechos, verificação e escrituração de notificações, memorandos para fins processuais.
ESTAGIÁRIA / Prefeitura Do Município De Jandaia Do Sul Pr
Cidade: JANDAIA DO SUL – PR
Cargo: Estagiária
Tarefas/Atribuições: Atuando contribuindo com suporte a processos licitatórios, montagem de licitações, verificação de assinaturas pertinentes para o setor.','Pós graduação em Infraestrutura de Rodovias, Ms Project, Auto Cad, Excel, Gestão e Liderança etc…',NULL,'Engenharia','https://drive.google.com/open?id=1c82nKwHondN2mXzhR8fGNZmmSWbflwZG',NULL,'Agência de Empregos','Não..','R$5.500,00','Sim','Vagner Vitorino - 43 999754410.  
José de Castro 27 995076979','Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-13T12:40:00.000Z'::timestamptz),
  ('Ândrei Nunes dos Santos','andreinunessantos@hotmail.com',NULL,'51995545512','2004-05-27',21,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1aSki2Fx8lkz9vUuLL1D0Jb5i2GB6a_QL',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Sem experiência',NULL,NULL,'Arquitetura, Estágio, Marketing','https://drive.google.com/open?id=1gVy0c7mj384vVHklI9ovaVvvuc2qCqcr',NULL,'Indicação','Não','Salário mínimo','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Eu sou Ândrei Nunes dos Santos, recém formado no Ensino Médio, tenho conhecimentos em softwares de design como Adobe Photoshop e Illustrator, tive vários trabalhos voluntários na minha antiga escola como: caixa de restaurante, fiz parte de uma equipe de Marketing onde tirei fotos de eventos com uma câmera profissional, secretário de uma pastoral, ajudante de uma professora de Ensino Fundamental na parte da tarde. Meu objetivo é me formar em Design Gráfico e/ou Arquitetura e Urbanismo mas no momento quero expandir meu conhecimento e obter experiência.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-13T16:02:00.000Z'::timestamptz),
  ('Rafaela Munhoz vieira','rafaelamunhozvieira@gmail.com',NULL,'55999183340','1982-02-03',44,'Solteiro(a)','2','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=107BiKgEMSJ86r0kUhParmMQWuTo8g05V','Gestão em Agronegócio','Ensino Superior Incompleto','Uniasselvi','2022-12-10','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','-Prefeitura de São Borja: Secretária da saúde/ Vigilância sanitária Jan/2009 a Março/2012
-Veterinária Companhia dos Bichos: Secretária Recepcionista Jan/2020 a Dez/2020
- Gally Malharia e Confecções: Vendas Internas e externas e caixa/ recibentos de pagamento Fev/2019 a dez/2019
- Petcenter Clínica Veterinária: Auxiliar Veterinária
- Autônoma: Tele- entregas
- Conhecimentos em venda e compras de implementos Agrícolas, imóveis rurais, venda de gado, ovinos e cavalos',NULL,'Curso Informática- windows- internet, Word e outros, Curso informática Office e Mobile(Senac) Workshop em Vendas( Senae), Curso Atendente de Farmácia e Drogaria( Instituto Mix),Cursando Técnico em Transações Imobiliária( Senac)','Novos Negócios','https://drive.google.com/open?id=1vuKW6Zsf-VlkUvyka0mfwbylj64b66f7',NULL,'Agência de Empregos','Não','1,500 a 2,000 +-','Sim',NULL,'Vaga de consultor de vendas para cidade de São Borja','Sou uma pessoa dinâmica, muito responsável em cumprir horários, comunicativa aberta a novas experiencias, já trabalhei em varias áreas e gosto muito de aprender coisas novas, gosto muito desse ramo imobiliário sempre trabalhei e acompanhei meu pai  com vendas rurais gostaria de fazer parte dessa equipe e ter novas experiencias e mais  conhecimento no ramo imobiliário urbano e rural  com muito gosto e dedicação a empresa. Tenho disponibilidade de horários e também para viagens caso seja necessário.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-29T13:27:00.000Z'::timestamptz),
  ('Jader Costa Carvalho','jader.carvalho10@bol.com.br',NULL,'55999398113','1983-03-11',42,'Casado(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1s9a-q9GS4voYEBHUsOFKPB6WVyZynQiQ',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Industria e distribuidora de freios Barao
Vendedor externo de setembro/2020 ate setembro de 2021, vendas manutenção e prospecção de clientes nem SC e PR',NULL,NULL,'Comercial','https://drive.google.com/open?id=1b5rpuj-espjE6g4Zbg5xTh9Z59X32B9a',NULL,'Agência de Empregos','Sine','3000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Estou em busca de uma oportunidade, sempre oferecendo o meu melhor e contribuir sempre para o crescimento coletivo.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2021-12-29T14:12:00.000Z'::timestamptz),
  ('Sabrina Cruz','martiinssabrina@gmail.com',NULL,'55996655493','1995-02-07',31,'Casado(a)','2','Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1VyFl47HsnuETJ6CaDPbNPtzsyJw3iBFw',NULL,'Ensino Superior Incompleto',NULL,'2024-08-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Tropicália Calçados Rústicos - CEO-  20/08/2016 - 03/01/2022
Clinica Karen Londero- Atendente de consultório odontologico  22/10/16 - 25/12/2018
TRACK&FIELD – Vendedora - 23/05/2016 á 24/08/2016',NULL,NULL,'Comercial, Financeiro, Marketing','https://drive.google.com/open?id=1hMSK_m4gRgUEROKAGJfuItjbk4nV_AK-',NULL,'Instagram','Não','1.200','Sim','Dr Karen Londero - 34224931','Quero inscrever-me no banco de talentos da Young!','Trabalho desde os 16 anos, carrego diversas experiências com o público tanto presencialmente como online, minha maior experiência foi empreender por 5 anos. Hoje busco uma nova oportunidade visando estabilidade e ampliar ainda mais conhecimento.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-01-04T14:17:00.000Z'::timestamptz),
  ('BRUNA REY MELLO DORNELLES NUNES','brunamello.brm21@gmail.com',NULL,'55999553653','2000-09-13',25,'Casado(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1yJQmTFMMgWdzymtPddK3W_3O-WgxZyQx',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Clínica veterinária cães e gatos, auxiliar de pet shop 5 janeiro até 8 setembro',NULL,'Curso de auxiliar veterinário e pet shop','Administrativa, Estágio','https://drive.google.com/open?id=1lyzsJcShB95mjJNDo6JmxTdFh993y11q',NULL,'Instagram','Não','1200','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Irei começar o técnico em administração, sou pontual, sempre busco aprender, gostaria de ter mais oportunidades de emprego..','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-01-05T00:42:00.000Z'::timestamptz),
  ('Áurea Selena machado roos','aureamachadoroos@gmail.com',NULL,'55991156392','1998-04-14',27,'Solteiro(a)','1','Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=11tqYoWY0DQ-wF_IESb8GpDLQr_snVp-f',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Trabalhei na bomboniere casulo como vendedora, no período de 20/08/2020 a 13/12/2021, atendia as pessoas e executava as demais tarefas exigidas.','Fiz curso de secretariado contábil',NULL,'Administrativa, Comercial, Novos Negócios',NULL,NULL,'Instagram','Vi no Instagram da Carol volpato','1500','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-01-07T15:27:00.000Z'::timestamptz),
  ('Suelen da Silveira Silveira','ges.rhsuelencs@gmail.com',NULL,'55984278868','1989-08-05',36,'Casado(a)','2','Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1YzN422zNa4MxGqcoVMH2RRCdzC8uzk8E','Gestão em Recursos Humanos','Ensino Superior Completo','Unopar','2019-03-31','Sou formado','Livraria e Revistaria Empório das Letras, Alegrete/RS
Período: 2016- 2019
Funções: Subgerente. Responsável pela loja, como venda, caixa, atendimento, elaboração de conteúdos físicos e digitais para propagandas, contato com fornecedores, ligações para os clientes, conferir estoque e outras advindas situações do cotidiano da empresa. Empresa de caráter familiar;
Clínica Odontológica Golden System, Alegrete/RS
Período: 2014- 2015
Funções: Responsável pela clínica, atendimento, recebimento de pagamentos, agendamento, ligações para os clientes;
Mais Econômica Farmácias, Santa Maria/RS
Período: 2012
Função: Caixa;
Shopping Centro de Compras Farroupilha/RS- Loja Tribo Nativa
Período: 2011
Funções: Responsável pela loja, vendedora e caixa;

CAAL- Cooperativa Agroindustrial de Alegrete/RS
Período: 2009
Funções: Auxiliar de Departamento Pessoal e Auxiliar de Recursos Humanos. Auxiliava o/a Psicólogo (a) nos testes de entrevistas, informativos, atendimento aos clientes e interessados, arquivava os currículos e auxiliava o setor de Departamento Pessoal com a folha de ponto, folha de pagamento, vale transporte, benefícios, administração de pessoal, quando solicitada ajudava em apontamentos de cálculos, organizava os arquivos.','Administrativo
Pro Jovem Trabalhador
Duração: 300 h Ano: 2011;
Serviços Administrativos
Aprendizagem Comercial- SENAC
Duração: 800 h Ano: 2009;
Técnicas em Vendas e Negociação, Marketing Pessoal, e Dicção e Oratória.
Interneith 
Duração: 60 h Ano: 2008;
Curso- Informática
Systen’s & Star’s Informática
Duração: 77 h Ano: 2005.',NULL,'Administrativa, Comercial','https://drive.google.com/open?id=1x0dLY__-vrrFTZ7AQUv6QXklZv_b-H7V',NULL,'Agência de Empregos','Não.','1.700,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Estou buscando me conectar novamente em servir, crescer em conhecimento e nas práticas. Fico a disposição para eventual conversa de forma clara, cordial e afim de tirar quaisquer dúvidas sobre meu currículo. Agradeço a atenção e a oportunidade. Tenho como habilidades a flexibilidade; boa comunicação e escrita; criatividade e Inovação; capacidade de análise; proatividade; trabalho em equipe. Até breve.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-01-18T15:08:00.000Z'::timestamptz),
  ('Cristiane Fonseca Brum','cristianebrumf@gmail.com',NULL,'55996966843','1993-09-06',32,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1KcBP1DxivoK_h6A4A38Hj1a0TIvrQpnJ','Turismo','Ensino Superior Completo','Instituto Federal Farroupilha','2017-11-05','Sou formado','Elevor Softwares
Franqueada
Agosto de 2021 / Atualmente
Atribuições: Comercialização de softwares de gestão, implantação e treinamento a novos clientes. Desenvolvimento de estratégias comerciais para captação de novos parceiros e expansão da marca.

Mobilità Carros
Gerente Administrativo Financeiro
(Também atuei como Gerente Comercial)
Setembro de 2016 / Agosto de 2021
Atribuições: Participação na administração direta. Controle e planejamento financeiro,
contábil, administrativo e departamento pessoal das 4 empresas do grupo. Gestão e desenvolvimento de pessoas, projetos e marketing. 
(Quando estive no setor comercial intermediava e auxiliava nas negociações, fechava acordos com fornecedores, prospectava novos negócios e desenvolvia estratégias.) 

Loja UP (Underground Pass)
Gerente
Fevereiro de 2013 / Fevereiro de 2016
Atribuições: Gestão de equipe e metas. Fechamento financeiro diário, semanal e
mensal. Desenvolvimento de estratégias de vendas e marketing.','Sou experiente em gestão comercial, financeira e de pessoas. MBA em Finanças, Auditoria e Controladoria em andamento, nunca trabalhei na minha área de formação (Turismo), pois desde mais jovem trabalho com gestão. Sempre gostei e participei de cursos, treinamentos e seminários. Alguns deles são: Gestão de Desenvolvimento Humano, Mapeamento de Processos, Desenvolvimento de Habilidades Gerenciais, Simulador de Empreendedorismo (este fiz no México, em uma bolsa que ganhei), Comunicação Empresarial, entre outros.','Desenvolvedora de Negócios pelo Instituto Tecnológico de Monterrey (México)','Administrativa, Comercial, Financeiro, Novos Negócios','https://drive.google.com/open?id=1xxa54ou7x7S3ToJmZT6Id0hHVjns1tq1',NULL,'Instagram','Não','A combinar.','Sim','Angela Mari Siqueira 
Contato: (55) 99932-0914
Grupo Santa Clara (Loja UP)','Quero inscrever-me no banco de talentos da Young!','Olá, Young!
Cheguei até aqui por ter me identificado muito com vocês (visitei o site e o instagram). Me atraem os trabalhos dinâmicos, desafiadores e que geram experiências inovadoras, tanto para os clientes quanto para os colaboradores. 
Aprecio contribuir com a realização dos sonhos de outras pessoas! Por isso, gostei muito do propósito da empresa.
Nestes anos, desde que iniciei minha jornada de trabalho, aprendi muito com outras pessoas, por isso gosto desta troca de conhecimentos. O intercâmbio que fiz há 3 anos atrás expandiu minha visão de mundo e hoje vejo o mercado como algo dinâmico e flexível, que vive em constante atualização e, por isso, precisamos ser abertos e acompanhar. 
Gosto de desenvolvimento de projetos, metas, análises de indicadores, fazer negócios, ensinar e desenvolver pessoas.
Estou aberta a novos desafios!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-01-22T22:06:00.000Z'::timestamptz),
  ('Francine Mattos','francinemattos.sts@gmail.com',NULL,'51994250162','1993-08-18',32,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1tRxLn_K-DQluXBdrQH5ujRWLgD-8IKNI','Biomedicina','Ensino Superior Incompleto','Unisinos','2025-07-10','Não, no momento pausei/parei por um período.','SX Imóveis - Estagiária Corretora de Imóveis. Julho/2021 - Dezembro/2021. Acompanhamento de todas as atividades pertinentes ao corretor.','Curso Técnico em Transações Imobiliárias, Dezembro 2021.','TTI - Ibrep','Comercial','https://drive.google.com/open?id=1ILjHlXkyztQFAkYPMIpoCunsLDEeHv6p',NULL,'Em Contato Com Eduardo','Não','R$2.000,00','Não','C.S. Maravilhosa Alimentos /3409-1028','Comercial','Atualmente estou cursando curso de Inglês. Durante minhas férias fiz curso: Como alcançar objetivos profissionais e metas, PUC.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-01-26T19:01:00.000Z'::timestamptz),
  ('Jackelline Santos Ferreira','jackellineferreira23@gmail.com',NULL,'51991772546','2002-06-23',23,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1yjnu58G_7w5HID3oDUg47UEHdDOp0AwV','Ciências Contábeis','Ensino Superior Incompleto','Uniasselvi','2024-12-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Supermercado nacional- jovem aprendiz- auxiliar administrativo 2018-2020
Xis do Pc- chapista 2018- 2021
Ateliê Correia- passadeira de cola 2020 até atualmente.','Curso de informática, curso de inglês',NULL,'Administrativa, Estágio, Financeiro, Novos Negócios',NULL,NULL,'Indicação','Flávia Braun Cardeal','1.500','Não',NULL,'Estágio administrativo, estágio de novos negócios',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-01-29T12:24:00.000Z'::timestamptz),
  ('MAYANI PEREIRA DOS SANTOS PORTAL','mayaniportal@hotmail.com',NULL,'51998536503','1994-03-11',31,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1eHZQ7LktHkJH1KCPAYPTAFtltbxuZp0Y','Administração de empresas','Ensino Superior Incompleto','Uniasselvi',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','SABRINA PACHECO PODOLOGIA
Cargo: Manicure/Pedicure
Data de início e final: 07/2021 a ATUALMENTE
Principais atividades:
•	Manicure e pedicure;
•	Realização de atendimento a clientes;
•	Realização de atendimento telefônico;
•	Abertura e fechamento do consultório;
•	Abertura e fechamento de caixa;
•	Organização e logística dos materiais;

LOJAS POMPÉIA 
Cargo: Vendedora
Data de início e final: 11/2018 a 03/2021
Principais atividades:
•	Realização de vendas internas e externas;
•	Abertura e fechamento de loja;
•	Organização e logística dos materiais.

BELEZA BRASILEIRA
Cargo: Manicure/Pedicure
Data de início e final: 04/2018 a 11/2018
Principais atividades:

•	Manicure e pedicure;
•	Realização de atendimento a clientes;
•	Compra de materiais e organização dos mesmos;
•	Organização de produtos.

ESTRELA RARA
Cargo: Vendedora 
Data de início e final: 11/2016 a 11/2018
Principais atividades:
•	Realização de vendas internas;
•	Abertura e fechamento de loja;
•	Organização e logística dos materiais;

BELEZA BRASILEIRA 
Cargo: Manicure/Pedicure
Data de início e final: 06/2015 a 11/2016
Principais atividades: 
•	Manicure e pedicure;
•	Realização de atendimento a clientes;
•	Organização de produtos;

WIZARD - ESCOLA DE IDIOMAS
Cargo: Recepcionista / Cobrança de alunos inadimplentes 
Data de início e final: 03/2014 a 05/2015
Principais atividades:
•	Atendimento telefônico e ao público e apoio a área de vendas;
•	Abertura e fechamento da empresa;
•	Realização de cobranças de clientes inadimplentes.','Eu estudo Administração, pois é uma das áreas  mais abrangentes, tem um mercado de trabalho amplo, onde oportuniza o administrador a trabalhar em vários segmentos, proporcionando uma rápida inclusão, além de servir para utilização pessoal.',NULL,'Administrativa, Estágio',NULL,NULL,'Indicação','Flávia Braun Cardeal','R$ 1500,00 a R$ 2000,00','Não','Carine Elguy - (51) 981548648 - ESTRELA RARA','Estágio de Novos Negócios e Estágio Administrativo','Tenho curso de informática básico, possuo habilidades em Excel.
Quero colaborar com as minhas experiências, habilidades e conhecimentos, fazendo tudo com muita dedicação para que a empresa continue crescendo e obtendo sempre grandes resultados. Minha intenção é crescer tanto profissionalmente como pessoalmente junto com a empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-01-29T13:48:00.000Z'::timestamptz),
  ('Jonatas Oliveira Andrada','jonatasandrada@gmail.com',NULL,'51996266054','1999-03-21',26,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1A3LRcXd8QNsJZMgbtMg8cM283Fo7qeMY','Administração','Ensino Superior Incompleto','Uniasselvi','2025-04-25','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','RR Shoes industria e Via Uno
Cargo: conferente de logística 
Data de início 02/03/2017 até 17/01/2022
Das atividades:Realizar conferência de pedidos, conferência de nota fiscal e embarque e movimentação de mercarias.',NULL,NULL,'Administrativa, Estágio','https://drive.google.com/open?id=13dKGKXIcPf_zBKR-dd_xtXCeiE3W-1ur',NULL,'Grupo De Colegas Da Faculdade.','Nao, nao tenho contato com nenhum colaborador.','1500','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Olá, me chamo Jônatas!
Tenho conhecimentos básicos de pacote Office, sou impulsionado pela vontade de aprender, gosto de trabalhar com metas, tenho experiência com trabalho em equipe, facilidade de comunicação isso é um pouco sobre mim, gostaria de ter a oportunidade de fazer parte desde time...
Obrigado! Aguardo seu contato.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-01-29T15:56:00.000Z'::timestamptz),
  ('Luciana Santos oliveira','lucianasantos3552@gmail.com',NULL,'51998614563','1999-02-02',27,'Casado(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1HAeTsPOzDY2bt1bK_oVjqBgiFBjYNUON','Administração','Ensino Superior Incompleto','Uniasselvi','2024-01-29','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Casa do sonho - garçonete/operadora de caixa -2016 a 2018 
Padaria porto Emerim -balconista-2019 a 2021
Padaria ourique -balconista-2021/2022','Técnico em administração',NULL,'Administrativa',NULL,NULL,'Indicação','Flávia Braum Cardeal','1500','Não',NULL,'Área administrativa','Tenho muita vontade em aprender na área administrativa ,já fiz um curso técnico e estou cursando uma graduação ,porém sem experiência é mais difícil de conseguir ...Mas seguimos na luta 
Tirei minha carteira (CNH) a pouco tempo e no momento trabalho na padaria Ourique ,mas estou disponível caso essa vaga seja minha !','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-01-29T21:07:00.000Z'::timestamptz),
  ('Jucelaine Margarete sarotti da Silva','marielerihanna@outlook.com',NULL,'+55996197513','1993-01-18',33,'Solteiro(a)','2','Não','Alegrete/RS','https://drive.google.com/uc?export=view&id=1ZKc3eRclUS-OnWaWwaTGaxMo6aFph6sj','Gestão De Recursos Humanos','Ensino Superior Completo','Uniasselvi','2020-09-08','Sou formado','Empresa:Mercado Angeloni 
Cargo:Promotora de Vendas  02/2013 á 12/2014
Principais Atividades(Abordar clientes Fazer a venda de cartões de Crédito no mercado) já Ganhei prêmio tenho até o trofeu de meta batida meta pessoal e meta da empresa.

Empresa:Prefeitura Municipal de Alegrete estágio
Cargo:Atendente 09/2017 á 05/2019
Principais Atividades(Atendimento ao cliente fisíco e por telefone, entrevista social,verificação de documentos,preenchimento de cadastro Para o bolsa Familia)

Empresa:Escola Demétrio Ribeiro
Cargo: coordenadora Administrativa 08/2019 á 01/2022
Principais Atividades(Prestação de Contas,emisão de notas Fiscais,Mostrar a escola quando entra Funcionario novo coordenar equipe)','Estou Cursando pós Graduação em Processos Gerenciais','Manutenção de Microcomputador Rotinas de pessoal','Administrativa, Comercial, Novos Negócios',NULL,NULL,'Facebook','Carol volpato postou que teria vaga no insta dela','1500','Sim','Lany 55 996012248
Lisete 55 991431565','Qualquer vaga que se encaixar no meu perfil tenho muita Facilidade pra aprender e estou disponivel para Aprender em Qualquer setor.','Bom meu nome é Mariele tenho 29 anos, ja morei 5 anos em Florianópolis e por motivo pessoais acabei voltando pra Alegrete, ja trabalhei em banco em vendas de consignado comissionado sou apaixonada pela area de venda e trabalhar com clientes aqui em alegrete ainda não tive a oportunidade. GOSTARIA MUITO DE TRABALHAR NESSA ÁREA SE CASO EU TIVER UMA OPORTINIDADE VOU DAR O MEU MELHOR.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-02-01T16:32:00.000Z'::timestamptz),
  ('Alessandra Fraga da Silva','alessandrafraga2000@gmail.com',NULL,'51996355712','2000-12-12',25,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1tkixZmjY7naJLH2PeMsufqtzbcgXi9gn','Administração de empresas','Ensino Superior Incompleto','Centro universitário Leonardo da Vinci','2024-02-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Operadora de caixa e funções administrativas-
Instaladora elétrica Barufi','A data de formatura ainda não tem certa.
Técnico em eletrotécnica- concluído',NULL,'Administrativa',NULL,NULL,'Instagram','Não','1800','Sim',NULL,'Estágio administrativo',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-02-01T20:05:00.000Z'::timestamptz),
  ('Geovana da Rosa Pereira','rosage765@gmail.com',NULL,'51999924496','1993-09-15',32,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1PePhpVjIyNjwDnWFdgLQFXahndu7Aund','Ciências Contábeis','Ensino Superior Incompleto','UNIASSELVI','2026-08-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Trabalhei sempre na área educacional como professora, secretária de escola','Sou Pedagoga, estou cursando ciências contábeis e tecnólogo em Gestão financeira',NULL,'Administrativa','https://drive.google.com/open?id=1D8PUrWxAM9Mrv6-rW52UFRADGOYvleIB',NULL,'Instagram','não','1300','Não',NULL,'Estágio administrativo','Sou uma pessoa calma, persistente, estudiosa, gosto de ler, passear, conhecer lugares novos, gosto de estar junto da familia, sou uma pessoa organizada, pró-ativa, paciente.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-02-01T21:28:00.000Z'::timestamptz),
  ('Ana Manoela Ramos','anamanuramos2311@gmail.com',NULL,'51996110141','2001-06-14',24,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=18Kv1MW6i3IGL_JHlQ7JCvKfSt71SBSZn',NULL,'Ensino Médio Completo','Neja Rizoma',NULL,'Não, no momento pausei/parei por um período.','Rost Pedras - Design em rochas ornamentais 
Secretaria administrativa 
Jul-2021 à dez-2021
Implantação de caixa, gerenciamento de processos, criação de instruções de serviços, entradas e saídas de contas bancárias...',NULL,NULL,'Administrativa','https://drive.google.com/open?id=1EokoKo9x3g8z_Elxj--05XCJgimgGGyo',NULL,'Instagram','Não','R$1.800,00','Sim','Rost Pedras - Design em rochas ornamentais 
Rodrigo - 51 99891-2214','Administração','Não tenho ensino médio completo, mas logo me formo. Acredito que a experiência que carrego na área administrativa iria ajudar muito vocês, e posso colaborar ainda mais para o crescimento da empresa, sou muito motivada, pró-ativa, busco sempre me destacar no meu trabalho e não deixo nada pra depois, agradeço a atenção e aguardo retorno!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-02-02T13:59:00.000Z'::timestamptz),
  ('Giovana da Silva Garcia','garciagiovanna858@gmail.com',NULL,'55996319713','2022-02-03',4,'Solteiro(a)','0','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1RzgY2qnCTUPfhwLuSl_ku-DdncyTN3kZ',NULL,'Ensino Médio Completo','Ensino superior em andamento',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Vendedora loja corpo mágico 
Vendedora loja Chics perfumaria 
Vendedora loja Delas','Enfermagem Anhanguera','Não','Administrativa, Estágio, Marketing, Novos Negócios','https://drive.google.com/open?id=1juavbOXQ34lbqffR54gMVUiomekAQDBK',NULL,'Indicação','Carol Volpato','1000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Meu nome é Giovanna da ava Garcia. Tenho 24 anos nasci e cresci em São Borja RS fui criada pelos meus avós , desde pequena .nada me faltou, pois tive amor, carinho e muita proteção, graças a deus ! Atualmente moro com eles estou fazendo faculdade e estudando para me tornar alguém melhor, tenho como pontos positivos ser muito otimista,esforçada e percistente. Pois tudo que quero adquirir corro atrás , sempre fui aberta para novos desafio
Assim quero fazer parte da equipe tendo o objetivo crescer e aprender muito! Obrigada..','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-02-03T00:52:00.000Z'::timestamptz),
  ('Graziela lezina','grazielalezina@gmail.com',NULL,'55999582453','1980-09-04',45,'Solteiro(a)','1','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1L9pUX9zuBzLynBEsJEOKBmeLDLFr9_eW',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Vendas imobiliária',NULL,NULL,'Comercial','https://drive.google.com/open?id=1dy7bumBRo5Dpk6hGaKI1CnkzdR39aICl',NULL,'Google','Nao','2000','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-02-03T15:22:00.000Z'::timestamptz),
  ('João Carlos Clós Silva','joaocarlosclossilva12e@gmail.com',NULL,'55991647869','2000-09-16',25,'Solteiro(a)','1','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1eiovpz0QZYa2Ff5F6sxz56i7eW8KLkvd','Administração de empresas','Ensino Superior Incompleto','Uninter',NULL,'Não, no momento pausei/parei por um período.','Não',NULL,NULL,'Administrativa, Comercial, Estágio, Engenharia',NULL,NULL,'Facebook','Carol Volpato','14000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-02-07T21:23:00.000Z'::timestamptz),
  ('Lara Tedesco Randazzo','laratrandazzo25@gmail.com',NULL,'51998217261','2003-01-25',23,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1KpkpvR4YxGNYrlUZr8Q8agmMAZ5BgKDg','enfermagem','Ensino Médio Completo','UNIVERSIDADE LUTERANA DO BRASIL','2025-03-03','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Trabalho atualmente no setor de medicamentos especiais do Posto Central de Saúde de Santo Antônio da Patrulha. Lá cuido de partes administrativas, juntamente da dispensações de medicamentos do estado. 
Exerço esse cargo desde 01/02/2021.','cursando o terceiro semestre da faculdade de Enfermagem;
Possuo curso básico de inglês.',NULL,'Estágio, Novos Negócios, Engenharia',NULL,NULL,'Outros','Vi a proposta de emprego no Twitter da Flávia Cardeal','Meu salário é em torno de 1300, então, minha expectativa, se possível, seria não baixar disso.','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho 19 anos, curso faculdade Enfermagem na Ulbra, estou no 3º semestre, trabalho a um ano com medicamentos no posto de saúde, um trabalho bem administrativo. Tenho bastante facilidade de aprendizagem e muito interesse em aprender sempre mais. Gosto muito do meu emprego, mas também gostaria de explorar novas áreas de trabalho. A questão de horários disponibilizados pela Young me interessou bastante, pois assim facilitaria muito na questão do meu transporte para a faculdade.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-02-08T00:58:00.000Z'::timestamptz),
  ('Manoela Medeiros da Silva','manumedeiros.rs@gmail.com',NULL,'51995528412','2000-12-03',25,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=19Mg7yLJzgDnxiL_EAvYSLuZa5KFK_06W',NULL,'Ensino Superior Incompleto','Uniasselvi',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Mercado e açougue Silva, caixa, 5 anos. Lojas Pompeia, setor administrativo 1 ano. Esquadrias lauck, estagiária 6 meses no contrato ainda.',NULL,NULL,'Administrativa',NULL,NULL,'Facebook','Não','1300','Não','Mercado e açougue Silva, lojas Pompeia','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-02-08T13:16:00.000Z'::timestamptz),
  ('Manoela Medeiros da Silva','manumedeiros.rs@gmail.com',NULL,'51995528412','2000-12-03',25,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1QysHOWbl9r9aW51QU_2WZxat__mleQX4',NULL,'Ensino Superior Incompleto','Uniasselvi',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Mercado e açougue Silva, caixa, 5 anos. Lojas Pompeia, setor administrativo 1 ano.',NULL,NULL,'Administrativa','https://drive.google.com/open?id=1Nst6IOOg4mr3CMcdYY7x672o5V0Xwqv8',NULL,'Indicação','Sim, Flávia','1300','Sim','Mercado e açougue Silva 998212009','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-02-08T13:24:00.000Z'::timestamptz),
  ('Giulia Andriotte Oliveira Lima','andriottigiulia@gmail.com',NULL,'51999033302','1999-05-01',26,'Casado(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1QVbxX-tsjOmzMBZj5b1lBda97Lb7K_LY','Administração de empresas','Ensino Superior Incompleto','Universidade Federal do Rio Grande','2022-12-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Atualmente corretora na empresa HS Consórcios. 

Estagiária no BANRISUL – Onde atuava realizando atividades de atendimento ao público em geral, atuando na venda dos produtos financeiros ofertados pelo Banrisul no seguimento Pessoa Física e Jurídica (2020 - 2022). 

Assistente Administrativa na Empresa AC SALAZAR E CIA LTDA - Onde atuava no setor financeiro realizando a emissão de notas fiscais e boletos, controle das planilhas de gastos e compra e venda de materiais (2019 - 2020).','Curso de Técnicas de Vendas e Atendimento Bancário (BANRISUL) – Curso este que apresenta o processo de venda, estratégias para um bom atendimento de forma a cativar o cliente e conquistar a sua fidelidade, pontos necessários para uma boa venda e etiqueta empresarial. abordando também as técnicas de atendimento mais utilizadas no mercado e sua aplicação no meio bancário.
Bolsista no Projeto de Pesquisa  - “Gestão estratégica e avaliação em saúde: redesenho de processos e implementação da gestão por indicadores da secretária municipal de saúde do município de santo antônio da patrulha”.',NULL,'Financeiro','https://drive.google.com/open?id=1mTT_pfcyUItsEUSH9AW0i46JSKLvBlKJ','https://drive.google.com/open?id=1dWj7wC1b3Groxl5MoOiFtyyP-omRZH66','Indicação','Lucas Muniz','3.000,00','Sim','Rosângela Moreira Thiesen
Contato 51 99354-8867.
Gerente Geral - Banrisul','Quero inscrever-me no banco de talentos da Young!','Atualmente  exerço a função de Diretora de Quadro Associativo no ROTARACT CLUB (SAP) – Clube este que é filiado ao rotary club, e tem como público alvo jovens líderes que desejam entrar em ação para ajudar suas comunidades através do trabalho voluntário.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-02-08T14:14:00.000Z'::timestamptz),
  ('Guilherme ricci','guilhemericci911@gmail.com',NULL,'51997374372','1996-09-23',29,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1MZtbdXMvPucY9jRMJXqwl5rdItGzHy2Z','Engenharia agroindustrial indústrias alimentícias','Ensino Superior Incompleto','Furg','2022-12-05','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Cervejaria habitat entrei la em janeiro de 2021 e estou la até o momento. Participo do processo de produção completo da cervejaria',NULL,NULL,'Administrativa, Estágio','https://drive.google.com/open?id=1mrcWcoWVJjI531IQLD8--Ii2Ji3vAzSR',NULL,'Instagram','Não','600 a 1000','Sim',NULL,'Estágio Engenharia e/ou Arquitetura','Estou finalizando um curso de power bi.  Tenho conhecimento básico  em pacote Office, mas posso aprender o que for necessário','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-02-09T02:11:00.000Z'::timestamptz),
  ('Lívia Andrades Pozzebon','liviaapozz@gmail.com',NULL,'51980628901','2002-11-13',23,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1kd4suiF7ShWplPhjftr1lZSnbYKB-7wV',NULL,'Pós-graduação Incompleta','FURG - Campus SAP',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','CORSAN - Jovem Aprendiz - fevereiro de 2019 até fevereiro de 2021 - Atendimento ao público, ocupações administrativas (cadastros, abastecimento do sistema, almoxarifado)
IMAP - Auxiliar Administrativo - Maio de 2021 até o momento - Atendimento ao público, setor de pós vendas, programação de entregas.','Ocupações Administrativas pelo CIEE','Curso Ocupações Administrativas - Arcos Ocupacionais','Administrativa, Comercial, Estágio, Novos Negócios','https://drive.google.com/open?id=1lrL01IR7uAhbiLIpbcPCeO80A1dxIV_-',NULL,'Indicação','Sim, Flávia Braun','1.500,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-02-09T14:29:00.000Z'::timestamptz),
  ('Maurem Silveira Lima','mauremsilveira22@gmail.com',NULL,'055991416767','2002-11-22',23,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1h1A_upnwG8LuO7fQyOruR9xfIN0UG4Rl',NULL,'Ensino Médio Completo','Instituto Estadual Arneldo Matter','2021-12-20','Não, no momento pausei/parei por um período.','Jovem Aprendiz 
Lojas Colombo S.A. 
10/21 até 01/22
Atendimento ao público, ligações, estoque e administrativo em geral.

Secretária Executiva
Liga Feminina de Combate ao Câncer
12/19 até 09/21
Atendimento ao público, gestão organizacional, administrativo em geral e contabilidade.','Assistente Administrativo & Gestão Pessoal','Assistente Administrativo & Gestão Organizacional','Administrativa, Comercial','https://drive.google.com/open?id=1f8bOm9oG6rD5MqdSGhq596CZsbV_xPGq',NULL,'Google','Não fui.','R$1.200,00','Sim','Venilde Fachim - 055 34311194 - Presidente da Liga Feminina de Combate ao Câncer.','Comercial','Olá, possuo extrema facilidade em atendimento ao público e em comunicação interpessoal, sou uma pessoa muito pró-ativa e estou sempre querendo aprender, me relaciono muito bem com as pessoas em minha volta e estou disposta a dar o melhor para o crescimento da empresa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-02-16T13:16:00.000Z'::timestamptz),
  ('Simone Collioni dos Santos','collionidossantos@gmail.com',NULL,'51995783139','1986-12-10',39,'Casado(a)','0','Sim','Caraá/rs','https://drive.google.com/uc?export=view&id=138IHFH2WVvG5i63b8LoYZiCTmY2p7DNr','Engenharia Civil','Ensino Superior Completo','FACOS-FACULDADE CENECISTA DE OSÓRIO','2012-12-29','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Loja Brick Patrulhense SAP (sem registro em carteira de trabalho) - (Abril de 2017 – Janeiro de 2018). Função principal: atendimento ao público, vendas e marketing em redes sociais.

Escola de Qualificação Profissional Mundo Office -  (Janeiro de 2015 – Março de 2017)
Função principal: Professor de Informática. Exerci outras funções como: atendimento ao público, vendas, atendimento ao telefone, controle de contas e caixa. Conhecimento de sistemas de pagamentos de contas e fluxo de caixa, assim como sistemas de bancos.

Nos empregos anteriores trabalhava em fábrica de calçados na função de costureira.',NULL,NULL,'Administrativa, Estágio, Financeiro, Marketing','https://drive.google.com/open?id=1m3rklPkclyIc-mHvhlDTlQwd69KXu2lO',NULL,'Indicação','Sim, Lucas','R$1.500,00','Sim','Escola de Qualificação Profissional Mundo Office - 36625041','Estágio Administrativo','Sou uma pessoa muito sociável, gosto de frequentar academia, estudar e curtir com a família e amigos. Tenho conhecimento das ferramentas do pacote office, assim como Photoshop e Corel Draw','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-02-16T19:56:00.000Z'::timestamptz),
  ('Vanessa Fraga da Silveira','vanessasilveira369@gmail.com',NULL,'995815771','2002-05-23',23,'Solteiro(a)','0','Sim','Caraá/rs','https://drive.google.com/uc?export=view&id=16HjoXuxJj3W6laVXzTgSr4WO93PIHwJR','Ciências Contábeis','Ensino Superior Incompleto','Centro Universitário UniSantaCruz','2026-01-03','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Atelier de calçados Moro LTDA. Costureira. 01/09/2019 até o momento.','Rotinas Administrativas (escola-jovem profissional)',NULL,'Administrativa, Financeiro, Licenciamentos',NULL,NULL,'Indicação','Nao','1700','Sim',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-02-16T22:03:00.000Z'::timestamptz)
;

INSERT INTO young_talents.candidates (full_name, email, email_secondary, phone, birth_date, age, marital_status, children_count, has_license, city, photo_url, education, schooling_level, institution, graduation_date, is_studying, experience, courses, certifications, interest_areas, cv_url, portfolio_url, source, referral, salary_expectation, can_relocate, professional_references, type_of_app, free_field, status, tags, origin, created_by, original_timestamp)
VALUES
  ('Marcia Alessandra Rocha Fontella','marcia25alessandra@gmail.com',NULL,'48996866720','1992-12-01',33,'Solteiro(a)','1','Sim','Palhoça/sc','https://drive.google.com/uc?export=view&id=15gGOVcp_w4vpt8gQ5UBub4pbOlhXuRrW','Empresária','Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Sem resposta',NULL,NULL,'Engenharia',NULL,NULL,'Indicação','Não','Sem expectativa','Sim',NULL,'.',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-02-21T11:50:00.000Z'::timestamptz),
  ('Suelen Bilhalva Paim','suellenbilhalvap34@gmail.com',NULL,'55996204722','1984-02-23',42,'União estável','2','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1lXDiF4PhYXr_jn9PJ42WpBZm_bZ3mXx8',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Vaucher cobradora de ônibus',NULL,NULL,'Engenharia','https://drive.google.com/open?id=16ppldNwhPzzrqlr7qOpdGms5m6BohHFx',NULL,'Google','Nenhum','Da categoria','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Estou disposta a aprender','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-02-21T16:34:00.000Z'::timestamptz),
  ('Lucas Marques Brum','lmarquesbrum@gmail.com',NULL,'55991831333','1992-11-21',33,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1v7n7iVQwTm8HUS6O1429k4bbesaUOpV8','Engenharia Elétrica','Pós-graduação Incompleta','Universidade Federal do Pampa','2022-03-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Sirtec Sistemas Elétricos; 2)Estagiário de Engenharia; 3)15/11/2021a 31/01/2022; 4)Supervisão de equipes de construção e manutenção de redes de distribuição BT e MT, Inspeções de segurança, Relatórios dos indicadores de produção das equipes.','Graduação em Engenharia Elétrica com ênfase em Sistemas Elétricos de Potência, durante a graduação participei durante 1 no do grupo de pesquisa em Sistemas de Controle, 1 também durante 1 ano pesquisei sobre análise de viabilidade técnica e econômica de sistemas fotovoltaicos conectados à rede (TCC).Especialização em Engenharia de Produção em andamento; Pacote Office Intermediário/Avançado; Curso especialista solar (40 horas); Certificação Lean Six Sigma Yellow Belt (24 horas); Kaizen - Processo de Melhoria Contínua (12 horas);','1) Lean Six Sigma Wellow Belt; 2) Kaizen; 3) Projetista Fotovoltaico;','Engenharia','https://drive.google.com/open?id=1CawNbFT6alxUqNb3psMAV6jKI9W6ZghW','https://drive.google.com/open?id=1hvcoGMQFOQoncN2LIleuf4vfU1SNifFK, https://drive.google.com/open?id=1uY8Drn2CZ4Fd-9sHpmwYGIKVLMDZvoar','Google','N/A','R$4.878,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-02-22T11:41:00.000Z'::timestamptz),
  ('Cintia Lopes Dorneles','cintiadorneles2020@gmail.com',NULL,'5599212347','1975-09-26',50,'Casado(a)','2','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1TXJKPu5ZNuor5O4Pe8rlUVT-Xyvi0dLW','Recursos Humanos','Ensino Superior Completo','Unopar','2013-08-24','Sou formado','Caal supermercado setor vendas
Câmara de vereadores  Assessora Parlamentar 
Delegacia de Polícia Civil  Setor administrativo','Pronto socorro
Departamento pessoal
Recepcionista 
Secretária',NULL,'Administrativa','https://drive.google.com/open?id=1gE_iz2N4vkBtB8Egb2ovlG-BAJKQue7e',NULL,'Instagram','Carol Volpato','1500','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-02-22T19:10:00.000Z'::timestamptz),
  ('Diego Armando Kirinus','diego.kirinus@gmail.com',NULL,'55996466852','1995-11-12',30,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1064DUFWQE1acKxey0I6kn4juOcI6CtGk','Engenharia Civil','Ensino Superior Incompleto','Universidade Federal do Pampa','2023-06-02','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Trabalhei  no Grupo Detecta, como Auxiliar de eletricista e na sequencia como Eletricista, Com inicio em 2014 ate 2016, realizava a instalação de circuitos eletrônicos, elétricos, sistema de segurança, placas solares e outros serviços gerais que a empresa necessitava.','Realizei o curso Técnico em Eletrotécnica pelo Ctism- UFSM em 2014 e trabalhei na área ate 2017. Em 2017 ingressei na UNIPAMPA para cursa Engrenharia Civil.',NULL,'Estágio, Engenharia','https://drive.google.com/open?id=1BjJeLqbpcKZ0SupzL-i-JUfSdbqf3EAE',NULL,'Grupo Da Universidade','Nao','1300','Sim',NULL,'Estágio Engenharia e/ou Arquitetura','Tenho boa ralação interpessoal, gosto de trabalhar em grupo, me considero extrovertido e amigável. Tenho bastante conhecimento com as tecnologias BIM, como o REVIT. 
Falo bem a língua alemã, gosto de cozinhar e praticar atividades físicas.
 Adoro animais, tenho um gato hoje em razão de morar em apartamento, mas quero adotar um cachorro também.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-02-22T22:01:00.000Z'::timestamptz),
  ('Jessé Eduardo Mainardi da Rosa','jessemainardi@hotmail.com',NULL,'55984193640','1995-05-12',30,'Casado(a)','1','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1_AWYWxXlZIJXOQsPbNjkmQ2r4n6ZT4Xl','Engenharia Civil','Ensino Superior Incompleto','URI - Santo Ângelo','2022-07-15','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Ebert pré moldados, desenhista projetista, 29/02/2016 - 25/01/2019, projetos, acompanhamento de fabricação e montagem de estruturas pré-fabricadas; 

Cima projetos e construções, estagiário, 29/01/2019 - 05/11/2021, acompanhamento de obras de pavimentação (incluso drenagem urbana, passeios públicos e sinalização) levantamento e pedidos de materiais, execução de projetos fornecidos pela prefeitura.',NULL,NULL,'Estágio, Engenharia','https://drive.google.com/open?id=12pJ5u4Tc8pVZJGqkh8tqQQc9tzEJ3yRV',NULL,'Indicação','Engenheiro Edson','1500','Não','Paulo Henrique Cima, 54 997111488','Estágio Engenharia e/ou Arquitetura','Costumo assistir lives de outros engenheiros oara adquirir conhecimento através das experiências divididas, gosto de ler livros de suspense policial e principalmente a bíblia, estou fazendo curso para ser pastor na igreja do evangelho quadrangular, fiz alguns cursos no decorrer da faculdade, hoje estou a cursar o 10° semestre de engenharia civil.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-02-23T00:04:00.000Z'::timestamptz),
  ('Évelin Coelho dos Santos','evelinsantos0208@gmail.com',NULL,'51999886093','2001-08-02',24,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1KwqnXZ-rN9i4MsdkW4yN18sa1AbkHZC3','Administração de empresas','Ensino Superior Incompleto','Uniasselvi','2026-01-05','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Escola técnica e faculdade jovem profissional. Consultora de vendas. Atuava na área de vendas pelo celular, desde o primeiro contato com o aluno até o momento da realização do curso. Monitorava e administrava os cursos ofertados pela faculdade.','Curso interchange 2, básico pelo centro educacional mundo office. Dois semestres do curso de nutrição pela faculdade Unicnec',NULL,'Administrativa','https://drive.google.com/open?id=1b-2If8xJ8AS6Yw8WLjeH9PfEbcAdMj9z',NULL,'Indicação','Flávia Braun','1.500,00','Não','Escola técnica e faculdade jovem profissional, Everton Reis, 51 9604-8898.','Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-03-02T02:05:00.000Z'::timestamptz),
  ('Iasmin Juliane de Sousa Flem','iasminsflem@gmail.com',NULL,'5197922731','1999-06-20',26,'Solteiro(a)','1','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1ED48zdLbVCHxyVemKj7kutvUGIpaPL84',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Trabalhei na empresa cortel como recepcionista , e também na maior parte desses 1 ano e 2 meses lá no RH cuidando dos arquivos ajudando em tudo que era necessário.

Em seguida trabalhei como autônomacomk manicure e agora atualmente estou trabalhando em uma fábrica de calçados.',NULL,NULL,'Estágio, Novos Negócios',NULL,NULL,'Instagram','Aline','1000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa muito proativa , tudo que estiver ao meu alcancei irei fazer e sempre dar o meu melhor ! Estou disposta sempre a novas descobertas profissionais e gosto muito de aprender e transmitir oque sei .','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-03-02T18:14:00.000Z'::timestamptz),
  ('Mathus Allém Braga de Andrade','andrade.mathus@gmail.com',NULL,'5198880817','1994-06-17',31,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1uyi5jVOHiCgf52vSb45L-udEjz_7bEY0','Engenharia Civil','Pós-graduação Completa','Universidade Luterana do Brasil - Ulbra Canoas','2018-01-06','Sou formado','* Conterra Construções e Terraplanagens LTDA - 03/2012-10/2012 - Cargo: Estagiário de Engenharia Civil - Obra: Residencial Santo Antônio - Local: Santo Antônio da Patrulha, RS -  Principais atividades na empresa: Acompanhar as atividades do engenheiro no canteiro de obra, acompanhar atividades de infra-estrutura, acompanhar no controle de qualidade, auxiliar na identificação dos procedimentos realizados na unidade concedente, acompanhar o cronograma físico da obra, analisar a execução de obras de acordo com o projeto, elaborar e controlar planilhas;
* Eixo-M Engenharia LTDA - 11/2012-08/2013 - Cargo: Estagiário de Engenharia Civil - Obra: Rossi Atlântida - Local: Xangri-lá, RS - Principais atividades na empresa: Acompanhar as atividades do engenheiro no canteiro de obra, acompanhar atividades de infra-estrutura, acompanhar no controle de qualidade, auxiliar na identificação dos procedimentos realizados na unidade concedente, acompanhar o cronograma físico da obra, acompanhar obras junto ao engenheiro responsável, analisar a execução de obras de acordo com o projeto, elaborar e controlar planilhas;
* Melnick Even Construtora e Incorporadora LTDA - 09/2013-07/2019 - Cargos: Estagiário de Engenharia Civil, Auxiliar de Engenharia Civil, Assistente Técnico de Engenharia Civil, Analista Técnico de Engenharia Civil - Obras: Vida Vida Clube Canoas, Vida Viva Horizonte - Locais: Canoas e Porto Alegre, RS - Principais atividades na empresa: Acompanhar as atividades no canteiro de obra, acompanhar atividades de infra-estrutura, acompanhar no controle de qualidade, responsabilidade sobre controle de concreto e rastreabilidades, auxiliar na identificação dos procedimentos realizados, responsabilidade pelo cronograma físico e financeiro da obra, acompanhar obras junto ao engenheiro responsável, analisar a execução de obras de acordo com o projeto, elaborar e controlar planilhas, execução de quantitativos e levantamentos conforme projetos, elaboração de quadros de concorrência para contratação de empresas terceirizadas, execução de relatórios e análises de custos, execução de treinamentos sobre procedimentos aos colaboradores, efetuar medições de empreiteiros, lançamentos de contratos de terceiros no sistema SIENGE, revisão de escopos de contratos, controle e gestão de contratos, contato direto com empreiteiros, mestres de obra e projetistas, acompanhamento de gestão de entregas de unidades e participação de assistência técnica pós obra, conhecimento sobre áreas administrativas.
* MGM Serviços Técnicos LTDA - 02/2020-02/2022 - Cargos: Analista Técnico de Engenharia Civil e Engenheiro Civil - Obras: Execução da Ampliação da ETE Guarani, Execução de Redes Coletoras e Ramais Prediais de Capão da Canoa e Xangri-lá, Execução da Ampliação e reforma da ETA Dr. Celeste Gobbato em Caxias do Sul, RS - Principais atividades na empresa: Gestor do contrato monitorando o escopo das atividades do canteiro de obras, implementação de rede de infraestrutura com diâmetros nominais (DN) de 100 a 1000, responsável pelo cronograma físico e financeiro da obra, fornece explicações detalhadas e planilhas de controle de acordo com o projeto, realizar quantificação e medições com órgãos contratantes (CORSAN e SAMAE), executar relatórios e análise de custos, realizar medição de contratado, controlar e gerenciar contratos, gerenciar diretamente com contratados, supervisores de trabalho, equipes de operações e finanças, conduzir contratos de medição com empreiteiros, e compreender o campo de gestão.','Formado no MBA de Gerenciamento de obras, segurança e qualidade de obras no ano 2019/2',NULL,'Administrativa, Arquitetura, Financeiro, Engenharia','https://drive.google.com/open?id=13I5UZdI3fNpldy7O8BLWksGzLZMMrUMj','https://drive.google.com/open?id=1u8QOgpGyebaAAQev2iVv5Vj5c6zaCjWq','Instagram','Não','A combinar','Sim',NULL,'Engenheiro Civil',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-03-02T19:01:00.000Z'::timestamptz),
  ('Nicolas Costa Machado','nicolascosta34@gmail.com',NULL,'51995577894','1995-03-15',30,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1TDxuEsi_VGre-oCX3VfnUOcafds35v4W','Ciências Contábeis','Ensino Superior Incompleto','UNINTER',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Eli Contabilidade
Serviços de office boy, auxiliar de almoxarifado e auxiliar administrativo. Comecei em 04/06/2018 e sai em 11/08/2021',NULL,NULL,'Administrativa, Estágio, Financeiro','https://drive.google.com/open?id=10sXm-SqLtNpaAqrEvjy9jYrO1kD1MVwS',NULL,'Agência de Empregos','Não','R$1200 a R$1500','Sim',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-03-03T17:36:00.000Z'::timestamptz),
  ('Danrley Douglas Ledesma de Matos','douglasledesma95@gmail.com',NULL,'999138009','1995-05-12',30,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1pOb_CqdZEeYnOTjRPNvMTRlF6XdkyuH7','Educação Física','Ensino Superior Completo','Anhanguera',NULL,'Sou formado','Não possuo',NULL,NULL,'Comercial',NULL,NULL,'Facebook','Não','1500','Sim',NULL,'Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-03-04T17:04:00.000Z'::timestamptz),
  ('MARCIO LUIS AVILA DA SILVA','marcioavila-sb@hotmail.com',NULL,'+5555991337187','1981-12-15',44,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1MjOFZze1to-H8nVeokW8-b6EzBuUeVLa',NULL,'Ensino Superior Incompleto','Uniaselve',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Alvorada sistemas agrícolas, almoxarifado peças e oficina. OBS: nonoeriodo qual estava nas peças elaborei um programa deo exel de automação de entrega de peças para oficina . 01/03/2015 a 11/01/2016
Lojas Benoitt . Vendedor de móveis e eletros, 01/08/2016 a 01/12/2016
Farmácias São João.  Balcofarmacista. 17/08/2018 e ainda estou trabalhando. 
OBS: tenho carteira assinada desde 2003. Com grande experiências em vendas. Comecei em uma farmácia de 2003 a 2006 mudando para outra farmácia em 2006 a 2009. Em 2009 fui vendedor de software de automação comercial.  Em 2011 retorno a vendas em farmácia até 2012. Em 2012 até 20014 trabalhei nas lojas Obino','Estou cursando design de interiores',NULL,'Arquitetura, Comercial, Marketing, Engenharia',NULL,'https://drive.google.com/open?id=1yr_bIj4zy29zIU_M-1T25picI7N3JY8i, https://drive.google.com/open?id=1NgH_9Cll-2ptFbo0GfXYLI1aLUd3TMSl, https://drive.google.com/open?id=1RrocY_iNanv_M1HMsOj_lngXAnUxpv1Z, https://drive.google.com/open?id=1E38Ffu6EyINey3AAvzjDIeGj3B2bsJnd, https://drive.google.com/open?id=1dxVSMpZj8eTGYnABYSuf1Pl8m_SdTCRY','Indicação','Não','3.500.00','Sim','Farmácia São João 55 3431 2479','Quero inscrever-me no banco de talentos da Young!','Olá! Como deu para perceber , tenho bastante experiência com vendas. Porém sempre trabalhei co  free-lancer.  E estou cursando designer de interiores  . Para poder trabalhar na área de Archiviz.  Tenho domínio de vários programas de 3D. Como Blender Skatchup e renderizadores como V-ray encape lumion e outros. Percebo uma grande área para ajudar na venda de imóveis com projeções realistas dos projetos. Gostaria muito mostrar meus trabalhos a vocês  quem sabe colaborar junto a vcs em dar uma ar realista aos seusprojetos.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-03-07T17:24:00.000Z'::timestamptz),
  ('Marcelo da Costa Bordinhão','marcelobordinhao1903@gmail.com',NULL,'55991362151','1998-03-05',27,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=128QiuE-y8ufVXgduiFJKHVLpJjz6LxgB','Engenharia Civil','Ensino Superior Incompleto','Universidade federal do Pampa','2023-08-10','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Em busca do primeiro estágio',NULL,NULL,'Estágio','https://drive.google.com/open?id=1cHxHByRUma4mYHJPUnMmSM8lgIKK9Y0t',NULL,'Instagram','Não','R$800,00','Não',NULL,'Estágio Engenharia e/ou Arquitetura','Busco novos desafios, aprendizado e oportunidade de crescimento. Tenho muita facilidade em aprender e adequar a forma de trabalho, estou disposto a adquirir todo tipo de conhecimento e de agregar a empresa com as minhas habilidades. Sou uma pessoa proativa.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-03-07T17:39:00.000Z'::timestamptz),
  ('Cintia Correa de Mello','mellocintia18@gmail.com',NULL,'55991307253','2001-08-06',24,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1CtMyS1mL0eA9ptchFNXhQ8xyVcyWbR7s',NULL,'Ensino Superior Incompleto','Unipampa','2025-12-30','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Realizei estágio no Cartório da 2º vara cível do Fórum de São Borja','Sou estudante de Direito',NULL,'Administrativa','https://drive.google.com/open?id=183YnQD6lkciTCMEdsNP8qW0HizZ0U8vI',NULL,'Instagram','Não','De acordo com o cargo ofertado','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-03-08T08:04:00.000Z'::timestamptz),
  ('Leonardo de Fraga Salazar','leonardosalazzar3@gmail.com',NULL,'51994717909','1998-10-21',27,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1eqfctYbIq489bgp0_q92WY7LjMRHdyKa','Administração de empresas','Ensino Superior Incompleto','IFSUL','2022-10-08','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Agropet Tomba Lata 

Vendedor 

28 de julho de 2021 - 16 de janeiro de 2022 

Vendedor na filial e na matriz, responsável por mercadorias e  pedidos de compras, responsável pela filial, redes social, envio de e-mail e atendimento aos fornecedores e atendimento direto ao cliente.','Informática Avançada
Curso: Design Gráfico - Unialcance - maio de 2015 - Santo Antônio da Patrulha 

Informática 
Curso: Photoshop - Unialcance  - abril de 2015 - Santo Antônio da Patrulha 

Marketing Pessoal - Mundo Office - janeiro de 2015 - Santo Antônio da Patrulha 

Excel Básico- SENAR - janeiro de 2015 - Santo Antônio da Patrulha',NULL,'Administrativa, Comercial, Estágio, Novos Negócios','https://drive.google.com/open?id=1OYyHYuUZGw5pD1WHlk_K-xqg-tL0Ujlw',NULL,'Agência de Empregos','Não fui indicado','1200,00 reais','Sim','Cleber Gerente da rede Agropet Tomba Lata 
51 997808572','Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-03-08T19:36:00.000Z'::timestamptz),
  ('Antonio Gabriel Sampaio dos Santos','gabrielsantos92@hotmail.com',NULL,'51996035223','1992-08-07',33,'União estável','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1VXKIrpAkysVr8cv8qXKOrOqhLEnbCdrD',NULL,'Ensino Superior Incompleto','Uniasselvi','2025-08-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','2017-2021 ACR/INB/Vero Internet – Almoxarife responsável pelas rotinas de
estoque, recebimentos, entregas, organização, registros via sistema, entrada e
saída de ordens de serviço de clientes. Supervisor de Supply Chain
responsável pela equipe de estoque e distribuição de suprimentos para as
unidades da empresa, lançamento/emissão de nota fiscal, planejamento de
compras, gestão de equipe de colaboradores.
2010-2016 AGS/ARGOS Guindastes – Montador Operacional com atividades
relacionadas a montagem, desmontagem, limpeza e manutenção de cilindros
hidráulicos e componentes mecânicos. Inspetor da Qualidade realizava
inspeções metrológicas e visuais em peças acabadas e não acabadas(matéria
prima bruta), ensaios destrutivos e não destrutivos, baseado em normas e
desenhos técnicos. Responsável pela gestão metrológica, aquisição e
calibração de instrumentos de medição, adequação ao uso. Elaboração de
relatórios dimensionais de qualidade. Gestão do sistema de qualidade.',NULL,NULL,'Administrativa, Arquitetura, Estágio, Engenharia','https://drive.google.com/open?id=1srbrJ7-AOXbnQ4fUiNEslnon0djqrmcX',NULL,'Conheço A Empresa Da Cidade.','Não','1500','Não',NULL,'Estágio Engenharia e/ou Arquitetura',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-03-09T15:06:00.000Z'::timestamptz),
  ('Gabrielli Leiria Padilha','gabriellileiria@gmail.com',NULL,'55996937812','1995-02-13',31,'Solteiro(a)','0','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1JhdxIrIFwxo6BwT93dHB_zEvoFyb28Pk','Comunicação - Jornalismo','Pós-graduação Incompleta','Universidade Federal do Pampa - Campus São Borja','2019-02-02','Sou formado','1- UNIPAMPA- Monitoria NInA  - (Maio a dezembro de 2018).

Realizava acompanhamento dos alunos com deficiência, auxiliando e provendo à inclusão a partir da realização de monitorias de ensino e a produção de materiais acessíveis.

2) Coluna Crônicas da Cidade - Bolsista Voluntária da Coluna (2018 -2019) - Produção de reportagem.


3) Folha de São Borja - Estágio em Jornalismo - Folha de São Borja (2018)
Produção de conteúdo jornalísticos para produtos editoriais do veículo e redes sociais.

4) Site Deco Almeida- Fotógrafa (Maio de 2019 a março de 2020).
Cobertura fotográfica de eventos sociais e culturais, além de edição de imagens e publicações em site.


5) Câmara de Vereadores de Manoel Viana - Assessora Parlamentar - (Outubro de 2020 a dezembro de 2020).

Produção de documentos institucionais, ofícios, projetos de leis. Assessoramento de agenda pública, produção de conteúdo para veículos de comunicação, organização de arquivos e documentações.

6) Freelancer -  Social media - (2019- atual).

 Produção de Conteúdo para redes sociais.

7)PPGCIC - UNIPAMPA -  Gerenciamento de Redes Sociais - (Outubro de 2021 - atual).

Produção de publicações, release, vídeos e planejamentos comunicacionais.','Atualmente curso o segundo ano do mestrado profissional em comunicação e indústria criativa da UNIPAMPA - Campus São Borja. Sou pesquisadora da área de comunicação midiática, novas tecnologias e redes sociais. Possuo certificado em curso de escrita criativa e de conteúdo para redes sociais.',NULL,'Administrativa, Marketing, Novos Negócios','https://drive.google.com/open?id=1u1FZeX_QT9KtD8KTHB42W01XpgCbzslH',NULL,'Instagram','Não.','Minha expectativa é dentro do piso regional!','Sim','Marina Porto - (55) 996794327 - Corretora Imobiliária.','Quero inscrever-me no banco de talentos da Young!','Poder contar um pouco mais sobre nós é sempre uma experiência gratificante. Nas horas vagas, eu gosto de ler e estou sempre pesquisando sobre os mais diversos assuntos, tenho muita ânsia por aprender coisas novas a todo instante. Acredito que o conhecimento deve ser sempre regado com novas descobertas e experiências. Em outros momentos, gosto de praticar atividades físicas, acredito que a disciplina com nossa saúde está  diretamente ligada a nossa produtividade e organização nas outras áreas das nossas vidas. Sou sempre muito disposta e participativa, adoro pensar em novas ideias e soluções criativas.

Sempre tive muita facilidade com tecnologias, isso fez com que eu aprendesse sozinha a editar vídeo no SonyVegas, fotos no lightroom e descobrisse como produzir conteúdo para redes sociais. 

Gosto muito de participar de projetos e ações solidárias, durante a graduação participei de projetos de extensão, grupos de pesquisas e realizei trabalhos voluntários para instituições como a APAE de São Borja.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-03-15T00:44:00.000Z'::timestamptz),
  ('Matheus dos santos faccini','matheus.faccini33@gmail.com',NULL,'51980494030','1997-02-23',29,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1tvjvd0rLTW15NJlTFwmU8vQpGnim8QJb',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Imap Industria e Comércio
Data inicial: 04/05/2021
Data final: atual',NULL,NULL,'Comercial','https://drive.google.com/open?id=16a-y_QUvG0Kotb_3IQlHMcUm5-wDkED-',NULL,'Instagram','Não','1.700','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-03-15T23:28:00.000Z'::timestamptz),
  ('Gabriella Burin Roland','gabriellaburin@gmail.com',NULL,'55984455436','1994-08-26',31,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1z408T0tMbgK0ykYVmGpQF9QYLm7Mx8PB','Administração de empresas','Ensino Superior Completo','Urcamp Alegrete','2019-03-30','Sou formado','Trabalho na Empresa Studio Flávio Fotografias, no cargo de vendedor(a) do comércio Varejista, desde 01/3/2013, onde minhas funções são: atendimento ao cliente , tanto na venda como pós venda e atividades de rotina administrativa, como controle de caixa, emissão notas fiscais, compras, elaboração de contratos e orçamentos, além da edição de imagens.','Sou formada em Administração de Empresas, onde fui destaque acadêmico da turma e atualmente curso Ciências Contábeis pela UNOPAR.',NULL,'Administrativa, Comercial, Estágio, Financeiro','https://drive.google.com/open?id=1uCt71Jh7aVjRiLN1CYi200zShq05FreX',NULL,'Google','Não','1900','Sim','Studio Flávio: ( Flávio Luis)- 34214234','Estágio Financeiro','Em minha graduação participei de alguns projetos, entre eles fui cliente oculto em um trabalho de consultoria; tenho conhecimento em photoshop, lightroom. Gosto de viajar, ler, cozinhar e estar rodeada das pessoas que amo, principalmente minha família.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-03-16T12:31:00.000Z'::timestamptz),
  ('Stéfani Rodrigues da Silva','stefanirs.arq@gmail.com',NULL,'51996400494','1995-11-13',30,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=12MZJ5niniG7pD5GqjHTk2mVvsWhtcHEI','Arquitetura','Ensino Superior Incompleto','Unisinos','2025-12-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Blooms Arquitetura 12 meses, secretaria de obras do estado 1 ano e meio',NULL,NULL,'Arquitetura, Novos Negócios, Engenharia',NULL,NULL,'Instagram','Não','Salário compatível com a função','Não',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-03-16T12:34:00.000Z'::timestamptz),
  ('Aysha Ramos Maruf','aysharamosmaruf@gmail.com',NULL,'55991884796','1999-03-14',26,'União estável','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1rSETe5JCIAN7dVd0jKg6y5wLy_5U_wz-','Gestão de Recursos Humanos','Ensino Superior Completo','Unopar','2020-08-18','Sou formado','Prefeitura Municipal de Alegrete - Atendente ( Estágio) - 21/05/2019 - 21/05/2020 
Atendimento ao público.
Registro, classificação e distribuição e controle da tramitação dos documentos em geral das secretarias.

Aeronat - Oficina de manutenção de aeronaves - Auxiliar administrativa - 05/05/2021-03/03/2022
Rotinas administrativas; email, telefone, organização de documentos da empresa.
Conferência de material do estoque.
Compra de materiais na cidade.','Excel avançado - Udemy
Gestão de pessoas - Sebrae
Empreendedorismo - Unopar',NULL,'Administrativa, Comercial, Financeiro','https://drive.google.com/open?id=1C233A_nqkgmIN_tBRnProXOV9Fg-P69t',NULL,'Facebook','Não','R$1.800,00','Sim','Aeronat- Oficina de manutenção de aeronaves
Nome gestor: Nei Adelar trindade
Celular: 55 999715385','Comercial',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-03-16T17:26:00.000Z'::timestamptz),
  ('Carla Tressoldi Santos','carlatressoldi@hotmail.com',NULL,'51980518665','1999-05-31',26,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1AFqDblbX-xEuC2Hv_n4Jrhz5lMH6-xai','Ciências Contábeis','Ensino Superior Incompleto','Uniasselvi','2023-07-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Possuo experiência no setor administrativo, emissão, revisão e correção de notas fiscais, abastecimento de informações em sistemas, treinamento de pessoas, análise contábil, alto desempenho com clientes e fornecedores.','Pacote Office, administração, gestão de pessoas e atendimento ao público.',NULL,'Financeiro','https://drive.google.com/open?id=1_rSzZoX1SBnKHJu2VgIhl8LT4ip5W0d1',NULL,'Agência de Empregos','não','1.200,00','Sim',NULL,'Estágio Financeiro','Responsável, organizada, comunicativa, pontual, pró- ativa, aprendo com facilidade, e onde não possuo experiência, preencho com talento e esforço.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-03-16T19:30:00.000Z'::timestamptz),
  ('Vitória Isabeli Machado do Amaral','vitoria.machado07@outlook.com',NULL,'55984083531','2001-01-07',25,'Solteiro(a)','0','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=18c2d13ZuMbLz2jwFsiJG80vqfnkb34Ne','Administração de empresas','Ensino Superior Incompleto','UNIASSELVI','2023-12-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Sirtec, trabalho como assistente desde 06/2020. Trabalhei com registro de pontos, cadastros, folha de pagamento.','Técnico em Eventos integrado ao Ensino Médio - IFFAR','Sim, informações seguem no currículo.','Administrativa, Comercial, Marketing, Novos Negócios','https://drive.google.com/open?id=122SjFM0o9fv3p81NrMt6IyFD0m6ieKnz','https://drive.google.com/open?id=1lpIDUZcQqw3QM4Zjjniw7hJs3ed0OTF_','Site da Empresa','Não','2.000,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Olá!
Gosto de trabalhar com pessoas, com comunicação e marketing. Adoro o ramo da faculdade e quero fazer a pós mais relacionado a esses temas também. Gostaria muito de participar da Young, vejo que é uma empresa proativa e inovadora, seria um prazer participar da equipe.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-03-19T01:33:00.000Z'::timestamptz),
  ('Cassiano Oliveira da Motta','cassianoomotta@gmail.com',NULL,'51999519206','2001-09-14',24,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Vh0II1sq80fli1NQhqdiiCfid6ZBfd5e',NULL,'Ensino Superior Incompleto',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Cooperativa Agroindustrial Cooperja;
2) Ocupei os seguintes cargos;
Jovem aprendiz, auxiliar de vendas, almoxarife e auxiliar de escritório.
3) 14/10/2019 a 07/12/2021;
4) Exerci as seguintes experiências;
-Controlador de estoque;
-Caixa/Faturamento;
-Reabastecimento de gôndolas (layout);
-Conferência de mercadoria;
-Conferência e envio do livro fiscal;
-Atendimento de pedidos de tablet;
-Cobranças de duplicatas em atraso;
-Lançamentos de NFs;
-Lançamento de devoluções;
-Controle de manifesto de destinatário de notas;
-Planejamento do dia, repassando informações comerciais e de logística a equipe;
-Organização de cargas para entregas (Ordenagem de carregamentos e descargas)
-Conferir a formação das cargas (produtos, rotas, notas, receituários, certificados sementes);
-Organização ao recebimento e para onde vai o produto recebido
(estoque, baldeação ou entrega direta ao cliente);
-Verificação de melhor alocação das mercadorias;
-Verificações e treinamentos a equipe quanto a evitar danos nos produtos;
 -Responsável pela logística em geral (Unidade loja agropecuária Cooperja e UBS-SAP Unidade de Beneficiamento de sementes);
 -Análise de relatórios:
*Produtos vendido e não tem em estoque e nem no CD, usar relatório produto por remessa;
*Análise de relatório de ruptura;
*Análise de relatório de excesso de mercadoria;
*Análise a quantias de mínimo e máximo na gôndola de cada produto;
-Solicitações de compra a mercadorias;
-Solicitação e acompanhamento na programação de cargas de fertilizantes, defensivos, ferragens e rações;
-Despacho de mercadorias para outras unidades;
*Verificação de mercadorias com ST para transferências interestaduais (substituição tributário);
-Ajuste ao cadastro de clientes;
-Conferência estoque (contagem, verificação de erros, ajustes e correções dos processos);
-Arquivo de romaneios;
-Depósitos bancários;
-Verificação de e-mails com o planejamento de prioridades do dia.','Possuo os seguintes cursos: Montagem e Manutenção de Computadores – Unialcance, Montagem e Manutenção de Micros – Unialcance, II Programa de Qualificação para Empresas não Conveniadas da UNESC Sescoop/SC, Curso online capacitação para compradores - Atualizações - Sescoop/SC.',NULL,'Administrativa, Estágio, Financeiro, Novos Negócios','https://drive.google.com/open?id=15d3bPa3VHgetCLTfYeSOOrDUggzF1UAw',NULL,'Site da Empresa','Maria Eduarda da Silva','1500 a 1900','Sim',NULL,'Estágio Financeiro','Quando entro como colaborador de alguma empresa procuro aprender tudo e todas as áreas possíveis, realmente visto a camisa e me desempenho ao máximo possível.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-03-22T19:35:00.000Z'::timestamptz),
  ('Gabriel Oliveira dos Santos','gabrieloliveira0801santos@gmail.com',NULL,'51995778257','2002-01-08',24,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1QGcC6OzxLfXVTQ1e2Rd2x6YGpYclIXt3',NULL,'Ensino Médio Completo','Universidade Federal do Rio Grande - FURG',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) FURG
2) Estágio na Biblioteca 
3) 08/05/2019 - 08/06/2020
4)Funções administrativas e atendimento ao público.','Cursando Engenharia Agroindustrial Agroquímica',NULL,'Administrativa, Estágio','https://drive.google.com/open?id=161XUZViMneu9pJrk6lWc6VVkZTHBU2Sp',NULL,'Facebook','Não','1.500','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Bom, sou uma pessoa que faz amizade fácil, fazendo com que eu tenha uma boa interação com colegas de trabalho.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-03-25T20:10:00.000Z'::timestamptz),
  ('Isadora Pires Vaqueiro','izadorapires79@gmail.com',NULL,'51999414806','1999-11-15',26,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Fc_3XWub2BZQU1SiyW6rJLLurA4UPJ8f','Engenharia de software','Ensino Médio Completo','Uniaselvi - Santo Antônio da patrulha',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Mercado nacional Walmart. Trabalhei 1 ano e meio, como operadora de caixa, auxiliava, e tirava informações, mercado compre bem trabalhei 4 anos, operador de caixa, auxiliava, contato c cliente','Ensino médio completo cursando engenharia de software, tenho curso de informática, Excel.',NULL,'Estágio, Engenharia',NULL,NULL,'Facebook','Nao','1000 a 2000','Sim',NULL,'Estágio Engenharia e/ou Arquitetura','Tenho conhecimento na área do excel, tenho informática básica, sei inglês básico, ensino médio completo, cursando engenharia de software, gostaria de crescer na área de trabalho','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-03-26T01:37:00.000Z'::timestamptz),
  ('Ana Flavia Flores da Silveira','anaflaviasilveira2018@gmail.com',NULL,'51997688444','2001-03-07',24,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1h_boZirw8ozwFHPNHqwvBgRL1jTC1BmU',NULL,'Ensino Superior Incompleto','UNIVERSIDADE FEDERAL DO RIO GRANDE',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Vero Internet 2) Atendente Suporte Técnico 3) 01/11/2021-atual 4) Atendimento ao cliente via chat e telefone; 
1) Prefeitura Municipal de Santo Antônio da Patrulha 2) Estágio na Recepção 3) 03/06/2019-02/06/2021 4) Atendimento ao público, agendamento, elaboração de documentos.

Possuo domínio no uso de computadores e Pacote Office.','Estudo Administração na FURG - Universidade Federal do Rio Grande, atualmente no 6º semestre.','Assistente Administratico, 160h','Administrativa, Comercial, Financeiro','https://drive.google.com/open?id=1-c27ylBQTMBSHcQ1EOhrPpn31QRw7_35',NULL,'Facebook','Não','R$1.200,00','Sim',NULL,'Administrativo/Atendimento ao cliente','Possuo experiência na área administrativa e muita vontade de ingressar em definito nesta área. Tenho conhecimento da língua inglesa em nível intermediário.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-03-28T00:51:00.000Z'::timestamptz),
  ('Nicoly dos Santos Rosa','nicolydossantosrosa04@gmail.com',NULL,'51995982004','2004-01-01',22,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1IZTpOvB7Zex7Ou2FnBZuDwEU_o8C6far',NULL,'Ensino Médio Completo','Unisinos',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Estou me candidatando ao primeiro emprego.','Tenho curso técnico em design de móveis e comecei a cursar arquitetura e urbanismo estando no primeiro semestre.',NULL,'Arquitetura, Estágio, Engenharia','https://drive.google.com/open?id=126RjXEGwFlNG3k8uJRsJpIPtUsm34ayB','https://drive.google.com/open?id=1HsuzL15jDn8_eCh_iGaWJluaH1lCZUmZ','Instagram','Não fui.','Acredito que para estágio um salário mínimo já me satisfaz.','Não',NULL,'Estágio Engenharia e/ou Arquitetura','Eu tenho curso de design de móveis, iniciei arquitetura, tenho conhecimento de Autocad e estou aprendendo SketchUp, estou fazendo minha CNH do tipo B, tenho muito interesse em iniciar o estágio já no começo da faculdade para poder aprender e contribuir muito mais. Sou muito comunicativa e criativa e estou em busca da minha primeira oportunidade de emprego, já na área da qual pretendo seguir, estou aberta a aprender e ouvir. Seria uma honra iniciar numa empresa que abre tantas oportunidades para os jovens.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-03-28T19:20:00.000Z'::timestamptz),
  ('Everson Batista da Silva','eversonbats1@gmail.com',NULL,'48996080270','1981-03-04',44,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=15DA6yuQIYABUV-W1JdDYDKd10WQbZEXm','Arquitetura','Ensino Superior Completo','ULBRA - Torres','2012-01-14','Sou formado','Última empresa: Hotel Ceci - Capão da Canoa/RS                                                 Função: Sócio Gerente
Período: 10/2011 à 31/07/2018
Atividades: Gerente geral, atendimento a clientes, check-in e check-out, controle de reservas inclusive no site Booking.com Extranet, orçamentos, compras, pagamentos, atendimento a fornecedores, controle de estoque, controle de funcionários e controle financeiro geral.
 
Penúltima empresa: BR Consultoria e Serviços Ltda - São José/SC                      Função: Fiscal e RH
Período: 06/08/2013 à 30/06/2014                         
Atividades: Organização da rotina do Departamento Pessoal e informações para a folha de pagamento, emissão on line de Notas Fiscais, fiscalização nos postos de trabalho para acompanhar presença e devidos serviços de portaria, limpeza e zeladoria em condomínios da Grande Florianópolis. 
 
Antepenúltima empresa: DiGesso & Decorações – Capão da Canoa/RS       Função: Projetista Vendedor
Período: 03/11/2008 à 14/07/2011                 
Atividades: Desenvolvimento de projetos de gesso decorado para diversos ambientes residenciais e comerciais; demonstração de forro e paredes de gesso convencional e acartonado (Dry wall); orçamentos; cálculo de material; cálculo de mão-de-obra e acompanhamento da execução da obra de gesso.',NULL,NULL,'Arquitetura, Novos Negócios, Engenharia','https://drive.google.com/open?id=1d-b5T_h0ryav8F_hLCOX1xba9_kRKJTI',NULL,'Facebook','Não','R$2.300,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Trabalhos nos programas Auto cad e Sketchup','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-03-29T15:44:00.000Z'::timestamptz),
  ('Gabriela Vitória Reis da Silva','gabrielavitoriareis6@gmail.com',NULL,'+5551992961117','1996-10-15',29,'Solteiro(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Cb83wdsG9YgUHUdbvGU_ob-n6dTU1AVI','Gestão da qualidade','Ensino Superior Incompleto','Unigran EAD','2023-08-10','Não, no momento pausei/parei por um período.','Masal indústria e comércio de guindastes e cestos aéreos, durante no ano de 2021, assistente administrativo no planejamento e controle de produção, cadastrava 100% de toda a movimentação da fábrica de acordo com os parâmetros do sistema ERP, dando baixa em estoques e prestando suporte á manufatura.',NULL,NULL,'Administrativa, Comercial',NULL,NULL,'Indicação','Cassius Airold','O salário quem faz é o funcionário 😉','Sim','Masal indústria e comércio, 3662-3066','Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-03-29T19:34:00.000Z'::timestamptz),
  ('Renata Speransa Fraga','resperansa752@gmail.com',NULL,'51996127242','2002-05-07',23,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=18CCcsXKRvxvFz21LYZewGTut8v0pGQYy','Administração de empresas','Ensino Superior Incompleto','FURG','2023-12-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Estagiária pela SMTDS (Secretaria do Trabalho e Desenvolvimento Social), zona da Prefeitura de SAP, localizada no prédio do SINE, exercendo atividades profissionais na área do PROCON.
Responsável pelo atendimento ao público visando solucionar suas reclamações, entrando em contato com os fornecedores, sempre levando em consideração o Código de Defesa do Consumidor. Também, em determinadas ocasiões, me responsabilizava pela recepção, nas entregas de fichas, atendimento ao telefone e orientação ao público. Além disso, exercia atividades administrativas, fazia registros, arquivamento, fichas de atendimento e entregas de intimações para fornecedores necessários. 

Estagiária pela Prefeitura Municipal de Santo Antônio da Patrulha, no departamento de finanças.
Responsável pela abertura de processos licitatórios, arquivamento de documentos, atendimento ao público, fomentação do sistema, entre outras atividades administrativas.

Projetista da Bendita Marcenaria
Responsável pela montagem em 3D dos projetos para elaboração de orçamentos e apresentação aos clientes. 

Fraga Negócios Imobiliários (imobiliária do meu pai)
Responsável pela elaboração de contratos, marketing e alguns serviços de banco.','Cursando Administração
FURG- Santo Antônio da Patrulha, RS

Inglês 
Escola de Idiomas Wizard, SAP

Projeto crescer Sicredi:
Atendente de farmácia
Secretariado administrativo e contábil
Técnicas de vendas e atendimento ao cliente
Operador de caixa

Outros:
Sketchup intermediário',NULL,'Administrativa, Estágio, Financeiro, Marketing','https://drive.google.com/open?id=1E8nsgEGPdXC2B5_0R5xt9Wbb7dtnzLuu',NULL,'Indicação','A Maria Eduarda, funcionária da Young, comentou comigo sobre algumas vagas','Se efetivada, em torno de R$1400,00.','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Bom, tenho quase 20 anos, com carinha de 14... Sou uma pessoa muito dedicada e que tá sempre correndo atrás do que quer, extremamente exigente comigo mesma (às vezes até considero isso um problema), sempre fui a nerd da sala, mas não porque estudava muito, e sim, porque aprendo tudo muito fácil. Sou muito comunicativa e paciente, exceto com, gente mal educada, preconceituosa, que maltrata animais ou que não gosta de chocolate (brincadeira kk). Sempre amei matemática e números em geral, o que provavelmente herdei do meu pai (corretor de imóveis e técnico em contabilidade), mas mesmo sendo de exatas, sou apaixonada por inglês (tenho oito anos de curso) e não gosto nenhum pouco de português, o que é meio contraditório, porque minhas redações, em geral, são nota dez, já fui classificada várias vezes em concursos de dissertações, além de, ter uma pequena grande agonia de gente que escreve errado. Tenho fama de teimosa, mas quase sempre, com razão! Uma coisa que me define muito, são minhas técnicas infalíveis de sempre achar um jeito pra tudo e meu nítido perfeccionismo, esses, herdados da minha mãe. Pretendo começar em paralelo com a faculdade um curso de TTI (técnico em transações imobiliárias) para tirar meu CRECI. Minha visão de mundo é "enxergue possibilidades", acredito que para cada coisa existente, há uma maneira de fazer melhor, de recomeçar... E acho que é isso,  o resto eu conto pessoalmente! :)','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-03-29T22:34:00.000Z'::timestamptz),
  ('Luís Felipe Ebling','luisebling@hotmail.com',NULL,'51997423868','1997-07-07',28,'Solteiro(a)','0','Sim','Taquara/rs','https://drive.google.com/uc?export=view&id=1jjULLb0ek8GOGkiOq4G0MGVtwd4wGOAP','Engenharia Civil','Ensino Superior Incompleto','UNISINOS','2022-08-25','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Gaia Sul Ambiental
Comecei como estagiário, e atualmente sou assistente de engenharia
01/2020 a 01/2021 - estagiário
01/2021 - assistente de engenharia civil
Auxílio na elaboração de projetos de engenharia e montagem inicial de memoriais descritivos dos projetos desenvolvidos. Tratamento e finalização de plantas de levantamento planialtimétrico georreferenciadas.
Auxílio na elaboração de das plantas de cobertura vegetal. Auxílio na conferência de documentos dos processos de licenciamento ambiental e montagem de licenças ambientais nas prefeituras onde a empresa presta consultoria ambiental. Auxílio no levantamento de edificações para elaboração da planta baixa e licenciamento ambiental. Desenvolvimento de plantas baixas, cortes e faixada para aprovação e regularização de edificação.
Elaboração de projetos urbanísticos, de abastecimento de água, de tratamento de esgoto, de pavimentação, de drenagem pluvial para loteamentos e condomínios residenciais. Elaboração de memoriais descritivos dos projetos desenvolvidos. Elaboração de projetos de terraplanagem e movimentação de solo. Elaboração de projetos de retificação, fracionamento e união de matrículas. Acompanhamento das obras de implantação de loteamentos e condomínios residenciais. Elaboração de projetos geométricos, de sinalização, de drenagem rodoviária e pavimentação para aprovação de projeto de acesso pela EGR.  Elaboração de Planos de Gerenciamento de Resíduos Sólidos (PGRS) e Estudos de Impacto de Vizinhança (EIV. Elaboração dos documentos necessários para obtenção de licenças ambientais. Auxílio na elaboração de Laudos do Meio Físico (Geológico) e elaboração das plantas de sondagens e testes de infiltração. Auxílio na elaboração de Laudos do Meio Biótico e elaboração das plantas de cobertura vegetal',NULL,NULL,'Licenciamentos, Engenharia','https://drive.google.com/open?id=1Lw41O-auKQG7B4MlVrssF1XXZn9K8C_F',NULL,'Google','Não fui indicado','A combinar','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','As informações profissionais, habilidades e softwares estão no currículo, mas deixo aqui expressado minha vontade de aprender e de agregar novos conhecimentos como profissional, e a possibilidade de fazer parte de uma empresa qualificada como essa vai agregar muito no meu desenvolvimento como futuro engenheiro. A grande experiência da empresa nesse mercado com toda certeza é um grande diferencial. Ficaria feliz em fazer parte dessa equipe!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-04-08T20:34:00.000Z'::timestamptz),
  ('Renata Speransa Fraga','resperansa752@gmail.com',NULL,'51996127242','2002-05-07',23,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1jeO30oGTagDSrFr5mCgubMZCiwnoA09f','Administração de empresas','Ensino Superior Incompleto','FURG','2023-12-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Estagiária pela SMTDS (Secretaria do Trabalho e Desenvolvimento Social), zona da Prefeitura de SAP, localizada no prédio do SINE, exercendo atividades profissionais na área do PROCON.
Responsável pelo atendimento ao público visando solucionar suas reclamações, entrando em contato com os fornecedores, sempre levando em consideração o Código de Defesa do Consumidor. Também, em determinadas ocasiões, me responsabilizava pela recepção, nas entregas de fichas, atendimento ao telefone e orientação ao público. Além disso, exercia atividades administrativas, fazia registros, arquivamento, fichas de atendimento e entregas de intimações para fornecedores necessários. 

Estagiária pela Prefeitura Municipal de Santo Antônio da Patrulha, no departamento de finanças.
Responsável pela abertura de processos licitatórios, arquivamento de documentos, atendimento ao público, fomentação do sistema, entre outras atividades administrativas.

Projetista da Bendita Marcenaria
Responsável pela montagem em 3D dos projetos para elaboração de orçamentos e apresentação aos clientes. 

Fraga Negócios Imobiliários (imobiliária do meu pai)
Responsável pela elaboração de contratos, marketing e alguns serviços de banco.','Cursos concluídos:

Inglês 
Escola de Idiomas Wizard, SAP: 2012-2020 

Projeto crescer Sicredi:
Atendente de farmácia
Secretariado administrativo e contábil
Técnicas de vendas e atendimento ao cliente
Operador de caixa

Outros:
Sketchup intermediário',NULL,'Administrativa, Financeiro, Marketing, Novos Negócios','https://drive.google.com/open?id=1kL7VScV2FEztB4GulHsmjqozmeSTCjHU',NULL,'Indicação','A Maria Eduarda funcionária da Young comentou comigo sobre essa empresa.','Em torno de R$1400,00.','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Bom, tenho quase 20 anos, com carinha de 14... Sou uma pessoa muito dedicada e que tá sempre correndo atrás do que quer, extremamente exigente comigo mesma (às vezes até considero isso um problema), sempre fui a nerd da sala, mas não porque estudava muito, e sim, porque aprendo tudo muito fácil. Sou muito comunicativa e paciente, exceto com, gente mal educada, preconceituosa, que maltrata animais ou que não gosta de chocolate (brincadeira kk). Sempre amei matemática e números em geral, o que provavelmente herdei do meu pai (técnico em contabilidade e corretor de imóveis), mas mesmo sendo de exatas, sou apaixonada por inglês (tenho oito anos de curso) e não gosto nenhum pouco de português, o que é meio contraditório, porque minhas redações, em geral, são nota dez, já fui classificada várias vezes em concursos de dissertações, além de, ter uma pequena grande agonia de gente que escreve errado. Tenho fama de teimosa, mas quase sempre, com razão! Uma coisa que me define muito, são minhas técnicas infalíveis de sempre achar um jeito pra tudo e meu nítido perfeccionismo, esses, herdados da minha mãe. Pretendo começar em paralelo com minha faculdade, um curso de TTI (técnico em transações imobiliárias) para tirar meu CRECI. Minha visão de mundo é "enxergue possibilidades", acredito que, para cada coisa existente, há uma maneira de fazer melhor, de recomeçar... E acho que é isso,  o resto eu conto pessoalmente! :)','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-04-11T23:34:00.000Z'::timestamptz),
  ('Leonardo Dutra Freitas','ldutciv@gmail.com',NULL,'999547022','1999-05-05',26,'Solteiro(a)','0','Não','São Borja/RS','https://drive.google.com/uc?export=view&id=1aj_3KcB_ojj2qqYBx7zfek1XRT8Bxk4A','Engenharia Civil','Ensino Superior Incompleto','URI - Santo Ângelo','2024-12-31','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Prefeitura Municipal de São Borja 
2) Estagiário 
3) maio de 2021- Atual 
4) Análise prévia de projetos residenciais, comerciais e loteamentos para futura aprovação definitiva pelo Departamento Técnico do Município. Lançamento de projetos e planilhas orçamentárias em obras de pavimentação, terraplanagem, passeios, acessibilidade e sinalização viária na plataforma +Brasil, para futura aprovação de Projetos pela Equipe técnica da Caixa Federal, para obras de emendas parlamentares. Desenhos técnicos em CAD','Curso de AutoCAD 2d',NULL,'Arquitetura, Estágio, Engenharia','https://drive.google.com/open?id=1PyzydpK4tcNsa41j03vSEK0_Wik7WI_t',NULL,'Facebook','Não','1800','Não',NULL,'Estágio Engenharia e/ou Arquitetura','Sou bem calmo tenho bastante facilidade para aprender coisas novas, estou sempre aberto a novas experiências, também estou começando a aprender a mexer no software Revit e mais pra frente ainda quero aprender a usar SketchUp 3D pois me identifico muito com a parte da Arquitetura.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-04-14T12:07:00.000Z'::timestamptz),
  ('João Guilherme Bohrer Maciel','bohrercorretordeimoveis@gmail.com',NULL,'55999747193','1986-09-22',39,'Solteiro(a)','0','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1P5IGzhMnbTxFKIdvTZXaBiujO70HPHUf',NULL,'Ensino Superior Incompleto',NULL,NULL,'Não, no momento pausei/parei por um período.','Sou corretor de imóveis autônomo desde meus 21 anos. Atualmente tenho 35 anos sou proprietário de 02 empresas na cidade de São Borja, RS, sendo 01  (uma) do ramo de administração de condomínios, Total Síndico Ltda, e outra do ramo de turismo, CVC. Possuo boa comunicação, bons ouvidos, bom executor de atividades/tarefas, boas ideias, muita humildade, pés no chão e compromentimento. Apaixonado por processos de vendas e por relacionamento pessoais. O que me motiva ao cargo é possibilidade de mais uma fonte de renda e novos contatos profissionais.',NULL,NULL,'Administrativa',NULL,NULL,'Indicação','Carol Volpato','Negociável','Sim','Indicação Carol Volpato','Quero inscrever-me no banco de talentos da Young!','Conhecimento básico em word, Excel entre outros programas e softwares necessários para realizarmos com maestria nossas demandas diárias. Não tiro muitas férias, sou bem caseiro e família. Gosto de novos desafios, trocar experiências, ver novos horizontes. Possuo muita humildade e tenho bons ouvidos para críticas e sugestões. Nunca tive dificuldade de me relacionar com pessoas e clientes, pelo contrário, me satisfaz ajudar as pessoas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-04-19T23:23:00.000Z'::timestamptz),
  ('Rogério Moiano Roos','rogerio_moiano@hotmail.com',NULL,'55996736380','1985-02-09',41,'União estável','1','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1oPnpLJryUF7cMncbhoboN0zeL5yFIAYH','Engenharia Elétrica.','Ensino Superior Completo','URI São Luiz Gonzaga','2018-12-15','Sou formado','Sirtec Sistemas Elétricos - Coordenador de Operação - 12/06/2012 até hoje - Gestão de 70 colaboradores na construção e manutenção de redes elétricas - Elaboração de Projetos.','Engenharia de Segurança do Trabalho','Empretec - Facilitador do Sistema de Gestão Ciclo PDCA - PGQP','Engenharia',NULL,'https://drive.google.com/open?id=1ExMzJ8sSNlLlo5wFW_ldHJCtyjMiH6Zk','Facebook','Não','R$ 6.000,00 - Como responsável técnico','Não','Sirtec Sistemas Elétricos','Engenheiro Eletricista ou de Segurança',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-04-20T09:41:00.000Z'::timestamptz),
  ('Everthon Alan Garcia Meus','everthon_garcia@hotmail.com',NULL,'55996995747','1989-10-14',36,'Solteiro(a)','1','Sim','São Borja/RS','https://drive.google.com/uc?export=view&id=1TCYsAvmBFF8N2GV4a0ZQnbyN8HFEf96G',NULL,'Ensino Superior Completo','Unopar Uruguaiana/RS','2021-11-22','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1) Rispoli 2) Empacotar/Repositor 3) início 03 de abril de 2010 e saída 03 de maio de 2013 4)Trabalhei como auxiliar aduaneiro, e empacotar/repositor, estou buscando um estágio para área de Engenharia Civil, pois estou no 5°semestre na faculdade Unopar.','Estou cursando Engenharia Civil na faculdade Unopar','Sim, tenho alguns cursos.','Estágio','https://drive.google.com/open?id=1Yf8p6XexhCRQezpOo1wDG5fIT786Chp_',NULL,'Facebook','Não','A combinar','Sim','Mãe Valeria Andrea de Magalhães Garcia e pai Sérgio Meus, número de contato é 5534112392','Engenheiro Civil','Sou formado em Marketing Digital, e estou cursando Engenharia Civil no 5°semestre na Unopar de Uruguaiana/RS.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-04-25T14:56:00.000Z'::timestamptz),
  ('Fernanda Medeiros Raymundo','fernandamedeirosraymundo@gmail.com',NULL,'55999521756','1992-08-08',33,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1g1atn_62CDc0otR7ZgXUPq7VevxOQoIw','Administração de empresas','Pós-graduação Completa','Universidade Norte do Paraná','2019-12-16','Sou formado','1)Laboratório Luiz Fernandez, auxiliar administrativa, de 02/01/2013 a 05/11/2021, Principais atividades: Atendimento ao público, financeiro, abertura e fechamento de caixa, faturamento de convênios, emissão de notas fiscais, pedidos e recebimento de materiais de almoxarifado, digitação de exames, elaboração da agenda diária de atendimentos, suporte a área operacional, organização e digitação de documentos, preenchimento de formulários e planilhas.
2) Laboratório Municipal de Análises Clínicas, estagiária, de julho/2011 a dezembro de 2012, Principais atividades: Atendimento ao público, esterilização de materiais.
3) Planalto Transportes Ltda., jovem aprendiz, de junho a dezembro/2010, Principais atividades: Atendimento e informações ao público (presencial e/ou telefônico), elaboração das rotas de viagens dos motoristas.','Pós-graduada em Psicologia Organizacional, pós-graduada em gestão de pessoas, bacharela em administração e técnica administrativa.',NULL,'Administrativa, Financeiro','https://drive.google.com/open?id=1GTqbniaG524izJ_vbqAvv7bq0Nt6eJs3',NULL,'Agência de Empregos','Não','R$1.212,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-04-28T11:35:00.000Z'::timestamptz),
  ('Caroline Aparecida de Oliveira Pelinson','carol.pelinson@hotmail.com',NULL,'51999713137','1992-04-24',33,'União estável','1','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1w9UEpUJOoP2JC8gTetbxdxA7VVnub2Dc',NULL,'Ensino Médio Completo',NULL,NULL,'Não, no momento pausei/parei por um período.','Reobras Indústria e Comércio Ltda - Assistente Administrativo - início 29/04/2014 até 21/01/2022 - emissão de notas fiscais e boletos, atendimento comercial (compras e vendas para todo o Brasil, responder e enviar e-mails, atendimentos em geral é demais funções administrativas.',NULL,NULL,'Administrativa','https://drive.google.com/open?id=1Q0BW8x-A-OATO8By_krhZw-mm_Bp7Y21',NULL,'Facebook','Não','R$ 1.500,00 a 2.500,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Adoro novos desafios, sou responsável, pontual, possuo grande facilidade para trabalhar em grupo, sou parceira e trato com muito respeito a todos independente de posição e/ou cargo. Possuo habilidade em aprender rápido tudo que a mim é ensinado, sempre pensando no meu crescimento pessoal e da empresa a qual faço parte.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-05-02T23:59:00.000Z'::timestamptz),
  ('Miguel Pereira Grandini','miguelgrandini95@gmail.com',NULL,'51997337588','1995-04-23',30,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=11OEY1fgVlTmEl43YPSeJfrQMGfPJhEot','Engenharia Civil','Ensino Superior Completo','Universidade Federal do Rio Grande (FURG)','2020-01-18','Sou formado','Atualmente, atuo como engenheiro civil (temporário), na Prefeitura de Santo Antônio da Patrulha/RS, desde 01/02/2022.
Atuo também como professor do magistério em cursos profissionalizantes da rede estadual, desde 14/10/2020. Atualmente atuo na Escola Estadual de Educação Básica Prudente de Morais. 
Já atuei como professor e coordenador do Curso Técnico em Edificações no Instituto Estadual Riachuelo.','Curso Técnico em Eletrotécnica, pela Escola Estadual de Educação Básica Prudente de Morais, concluído em 2012. 
Projeto geométrico de Rodovias (30 horas), ofertado em 2018 pela Universidade Federal do Rio Grande (FURG).',NULL,'Administrativa, Engenharia','https://drive.google.com/open?id=1W2NguuuVH9-y1Yg834Oukq37XMliF27B',NULL,'Vejo Anúncios Da Empresa Pela Cidade E Pelo Dea','Não','para vagas de 40h semanais, R$ 4000,00','Sim','Departamento de Engenharia e Arquitetura (DEA) da Secretaria de Planejamento e Desenvolvimento Econômico (SEPDE). Falar com Engenheiro Jarbas, Arquiteta Ana Clara ou Diretora Katiane. Telefone (51) 36628400, ramal 588.','Engenheiro Civil','Desde antes da formatura atuo como professor, tendo me dedicado quase integralmente a prática pedagógica e formações nesta área. Com a oportunidade de trabalhar como engenheiro civil na Prefeitura de Santo Antônio da Patrulha, mais especificamente com os projetos e obras da Secretaria de Educação, reduzi minha carga horária no magistério  e reencontrei minha vocação para a construção civil, mas infelizmente meu contrato se encerra em 25/09/2022. 
No meu período de atuação no magistério tive também o cargo de coordenação de curso, em um curso profissionalizante, onde tive a oportunidade de aprender muito sobre gestão de pessoas e de empresas públicas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-05-03T19:06:00.000Z'::timestamptz),
  ('Pablo Machado Portal','pablomacportal@gmail.com',NULL,'519979000946','2000-07-09',25,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=11OYr3ZQwuuy4ATpNGcORuIa29r9R9wX_','Publicidade e Propaganda','Ensino Superior Incompleto','FACCAT - Faculdades Integradas de Taquara','2023-12-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Prefeitura Municipal de Santo Antônio - Assessor de Comunicação e Assessor do Prefeito Municipal - 20/10/2021 até o momento.
Atividades: redator publicitário, design gráfico e fotógrafo.

Loja Colombo - 14/07/2021 a 18/10/21
Atividades: Vendedor e especialista em Consórcios.

Lojas UM MEN STORE - 20/10/2020 a 01/03/2021
Atividades: Vendedor, prospecção de clientes, social media (3 vezes eleito o vendedor do mês).

Centro Clínico Vida e Saúde - 09/03/2020 a 18/10/2020
Atividades: Coordenador e vendedor do plano de saúde Viva Mais Saúde, recepcionista e social media. 

Livraria e Papelaria SanDiego - 09/03/2018 a 09/03/2019
Atividades: Auxiliar administração, vendedor, auxiliar na divulgação campanhas e peças gráficas.','Concluindo o 6º semestre de Publicidade e Propaganda. Com conhecimento em marketing, assessoria, planejamento de mídia, vendas e edição.',NULL,'Administrativa, Comercial, Marketing','https://drive.google.com/open?id=1FJ-GqOVMfHLlA4lHdM8nNW47AjZQiitD',NULL,'Instagram','Não','R$2.000,00','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Tenho conhecimento com Illustrator e Photoshop. Falo português, gritando e arranho no inglês. Sou extremamente divertido e com um senso de humor grande. Cozinho aos finais de semana para a família mas na culinária da vida moderna, ovo frito com pão é soberano.
Apaixonado pela franquia de Jogos Vorazes e pela série Friends. Ano passado criei projeto “Adote Um Bicho” para uma disciplina na faculdade, onde consegui fazer adoção responsável para as ONG’S de Santo Antônio, Taquara, Parobé, Igrejinha, Três Coroas e Gramado.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-05-04T14:53:00.000Z'::timestamptz),
  ('Jeniffer Souza','jeniffersouza.r@hotmail.com',NULL,'51989540757','1998-07-08',27,'Solteiro(a)','0','Sim','Cachoeirinha/rs','https://drive.google.com/uc?export=view&id=19IxBMpfbvg770NcZOBTJHOcg9iKh7WEE','Arquitetura','Ensino Superior Completo','Unisinos','2021-12-18','Sou formado','Rafaela Ritter: estágio/freelancer na área de avaliação de imóveis em 2019/2. Luís Francisco da Silva Arquiteto: estágio na área de projetos residenciais unifamiliares e multifamiliares, trabalhando com regularização e novos projetos durante o semestre de 2020/1. Casa Nord Incorporadora: estagiária e após formação, arquiteta na empresa é responsável por projetos executivos e legais de residências, além de concepção e detalhamento de projetos de interiores, de setembro/2020 até março/2022.','Me dediquei principalmente a cursos para desenvolvimento em softwares, como archicad, revit e softwares de renderização','Não está sendo possível adicionar o portfólio e o currículo por aqui, então deixo o link do meu portfólio: https://www.behance.net/jeniffersouzar e link do drive onde está meu currículo com mais informações: https://drive.google.com/file/d/1gQZ_l80x4V6JxmDMMrb192a2jmoAvkBz/view?usp=drivesdk','Arquitetura, Engenharia',NULL,NULL,'Indicação','Não','2800','Não','Casa Nord Incorporadora através do número de WhatsApp: 51 99388480, responsável: Héctor Camaratta','Arquitetura','Estou a procura de novas experiências que me agreguem diferentes conhecimentos, pois amo estudar e estou sempre em busca de movimento. Ver a satisfação dos clientes e perceber a importância que nossos projetos podem ter na vida das pessoas é o que me motiva na profissão.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-05-06T22:44:00.000Z'::timestamptz),
  ('Lucas Ariel Schwaickhardt','lucas.ariel10@gmail.com',NULL,'51991718148','1993-07-02',32,'Solteiro(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1s1m9gAumW51HUo_19QIVT1f85bSBeP2f','Engenharia Civil','Pós-graduação Completa','Unisc','2017-08-11','Sou formado','2017 – Auxiliar Administrativo na ALM Engenharia Construções LTDA
Acompanhamento de obras de alvenaria estrutural; Fiscalização da obra; medição
dos serviços executados; Elaboração de planilhas de controle de materiais, de
pessoal e diário de obra; Controle de produtividade de etapas construtivas
(revestimentos); Elaboração de quantitativos de materiais; Conferência da
qualidade dos serviços executados; Solicitação e recebimento de materiais;
Local: Residencial Recanto dos Pássaros – Venâncio Aires/RS
Duração: Janeiro de 2017 até Setembro de 2017.
● 2017 – Engenheiro Civil na ALM Engenharia Construções LTDA
Supervisão; coordenação e acompanhamento de obras de alvenaria estrutural;
Fiscalização da obra; medição dos serviços executados; Elaboração de planilhas de
controle de materiais, de pessoal e diário de obra; Controle de produtividade de
etapas construtivas (revestimentos); Elaboração de quantitativos de materiais;
Conferência da qualidade dos serviços executados; Solicitação e recebimento de
materiais;
Local: Residencial Recanto dos Pássaros – Venâncio Aires/RS
Duração: Setembro de 2017 até Junho de 2018.
2018 – Engenheiro Civil na ALM Engenharia Construções LTDA
Supervisão; coordenação e acompanhamento de obras de alvenaria estrutural;
Fiscalização da obra; medição dos serviços executados; Elaboração de planilhas de
controle de materiais, de pessoal e diário de obra; Elaboração de quantitativos de
materiais; Conferência da qualidade dos serviços executados; Solicitação de
materiais;
Local: Residencial Santa Fé – Canoas/RS
Duração: Junho de 2018 até Setembro de 2018.
2019 – Engenheiro Civil na Construtora Zagonel LTDA
Coordenação e acompanhamento do Empreendimento Comercial, com sistema
construtivo de Concreto Armado e Protendido, desde o Planejamento, Conferência
e Execução; Medição dos serviços executados; Elaboração de planilhas de controle
de materiais e diário de obra; Elaboração de quantitativos de materiais; Controle
Tecnológico de materiais; Planejamento Semanal de obra; Cronograma Global;
Conferência da qualidade dos serviços executados; Solicitações de materiais e
Gestão do Sistema ISO 9001.
Local: Agência Administrativa do Sicredi – Santa Cruz do Sul/RS
Duração: Agosto de 2019 até Março de 2020.
2021 – Gerenciamento de Geminados
Execução e gerenciamento de três(3) geminados em alvenaria.
Local: Bairro Country – Santa Cruz do Sul/RS
Duração: Maio de 2021 até Abril de 2022 (concluído).','-Auditor Interno da Qualidade–MV Engenharia e Consultoria– SiAC 2016 do PBQP-H
e NBR ISO 9001:2015.
Período Realizado: Dias 11 e 12 de Maio de 2018.
-Curso de Projetos, Planejamento e Controle de Obras (Ms-Project; Revit e
Navisworks) –Instituto Brasileiro de Educação Continuada (INBEC – Santa Maria).
Período Realizado: Março de 2019 a Setembro de 2019. – 120h
-Curso Esquenta Revit: Casa Popular – Instituição Cursos Construir – 8h.
Concluído: Setembro de 2021;
-MBA Gerenciamento de Obras, Produtividade, Racionalização e Desempenho da
Construção – Instituto de Pós-graduação e Graduação (IPOG – Porto Alegre).
Período Realizado: Dezembro de 2019 a Outubro de 2021. – 432h','.','Engenharia','https://drive.google.com/open?id=1iQHixSiF7LPKTBa-kQlgGln7a97_mgv6',NULL,'Google','.','R$3.700,00','Sim','.','Quero inscrever-me no banco de talentos da Young!','Estou buscando novas oportunidades.
Tenho interesse na vaga de Gerente de Obras e acredito que posso contribuir com minhas competências e disponibilidade em compartilhar conhecimentos.
Comunicação assertiva, pensamento crítico, ética, organização, criatividade fazem parte do meu perfil.
Coloco-me à disposição para conversarmos pessoalmente.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-05-07T15:18:00.000Z'::timestamptz),
  ('Luiz Eduardo da Costa Gomes Filho','luizeduardogomesfl@gmail.com',NULL,'51996036301','2003-01-05',23,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1uhucORdg5sIy6ojb6o0_ef34EiLQlJQK',NULL,'Ensino Superior Incompleto','FURG',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Atualmente trabalho na Connect Corretora de Seguros e Consórcios, a 8 meses, como vendedor de seguros,  com prospecções de novos clientes, assim como a renovação de contratos que já possuímos. Porém já atuei na área operacional como assistente administrativo, cadastrando propostas e apólices em nosso sistema, encaminhando documentações para nossos clientes, conferindo informações anteriores dos mesmos e solucionando problemas. Também possuo experiência na área de criação de conteúdos, tais como: filmagem e conhecimento em diversos programas de edição de vídeo e fotografia. Trabalhei por 2 anos na Mega Filmes produtora de vídeos. E sigo em busca de uma oportunidade para a área administrativa na qual estou cursando.',NULL,NULL,'Administrativa, Comercial','https://drive.google.com/open?id=1V0rbGy9bkc3qHX-cf8sOUrxS6OueHLNk',NULL,'Indicação','Sim, Antônio Alves','1600','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou o Luiz, tenho 19 anos, uma pessoa muito comunicativa, consigo me relacionar com qualquer pessoa facilmente. Me considero dedicado em busca dos meus objetivos e gosto de solucionar problemas. Tenho em mente que qualquer experiência é um aprendizado e que ajudar a empresa é me ajudar. Softwares que tenho experiência são principalmente o Final Cut Pro de edição de vídeos, atualmente o top de linha nesse nicho. Assim como Lightroom e Luminar para edição de fotos. Sem contar os programas básicos: Word, Excel, PowerPoint, Pages, Keynote etc. No meu tempo livre gosto de praticar esportes, viajar, vivenciar novas experiências… Também danço em CTG desde 2017 e este está sendo o último ano da minha participação devido à idade. Sou natural de Porto Alegre, morei por 10 anos em Fortaleza e voltei para o RS em 2012, atualmente moro em Santo Antônio a 6 anos.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-05-09T13:00:00.000Z'::timestamptz),
  ('Antônio de Castilhos Silveira','antoniodecastilhos.decastilhos@gmail.com',NULL,'51998585727','2000-02-10',26,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=14pI-WG7KRuGDQlsVp0l7HCjwySlYOzpT',NULL,'Ensino Médio Completo',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Supermercado Nacional, operador de loja, 21/02/20 iniciei na empresa, atualmente ainda estou trabalhando, auxilio os clientes nas suas compras, dúvidas acerca dos produtos, também ajudo sobre outras transações caso seja necessário, como também realizo tarefas no caixa do supermercado.','Estudo Psicologia, além de estudar Inglês também atualmente. Já realizei alguns cursos de informática.',NULL,'Administrativa, Estágio','https://drive.google.com/open?id=1PpmHuBnNyF5R_MgIJOYkeIl31lgICD0C',NULL,'Instagram','Não','1.200','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Possuo inglês intermediário, espanhol básico e também informática básica. Gosto muito de trabalhar com pessoas, realizando atendimentos necessários.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-05-09T14:34:00.000Z'::timestamptz),
  ('Luiz Eduardo da Costa Gomes Filho','luizeduardogomesfl@gmail.com',NULL,'51996036301','2003-01-05',23,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1lTUMmwSaK7kRtI4GdJhTUgXi_4BNUCr_',NULL,'Ensino Superior Incompleto','FURG',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Atualmente trabalho na Connect Corretora de Seguros e Consórcios, a 8 meses, como vendedor de seguros,  com prospecções de novos clientes, assim como a renovação de contratos que já possuímos. Porém já atuei na área operacional como assistente administrativo, cadastrando propostas e apólices em nosso sistema, encaminhando documentações para nossos clientes, conferindo informações anteriores dos mesmos e solucionando problemas. Também possuo experiência na área de criação de conteúdos, tais como: filmagem e conhecimento em diversos programas de edição de vídeo e fotografia. Trabalhei por 2 anos na Mega Filmes produtora de vídeos. E sigo em busca de uma oportunidade para a área administrativa na qual estou cursando.',NULL,NULL,'Administrativa, Novos Negócios','https://drive.google.com/open?id=1W9LH3tfnhng8e3PpRz_-Yr2YNEN-t0WD',NULL,'Indicação','Sim, Antônio Alves','1500','Não',NULL,'Estágio Administrativo','Sou o Luiz, tenho 19 anos, uma pessoa muito comunicativa, consigo me relacionar com qualquer pessoa facilmente. Me considero dedicado em busca dos meus objetivos e gosto de solucionar problemas. Tenho em mente que qualquer experiência é um aprendizado e que ajudar a empresa é me ajudar. Softwares que tenho experiência são principalmente o Final Cut Pro de edição de vídeos, atualmente o top de linha nesse nicho. Assim como Lightroom e Luminar para edição de fotos. Sem contar os programas básicos: Word, Excel, PowerPoint, Pages, Keynote etc. No meu tempo livre gosto de praticar esportes, viajar, vivenciar novas experiências… Também danço em CTG desde 2017 e este está sendo o último ano da minha participação devido à idade. Sou natural de Porto Alegre, morei por 10 anos em Fortaleza e voltei para o RS em 2012, atualmente moro em Santo Antônio a 6 anos.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-05-10T17:13:00.000Z'::timestamptz),
  ('Maria Eduarda Silva Message','eduarda.message14@gmail.com',NULL,'980486886','2004-04-13',21,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1BUoQo5Rjjmu07LWjn8UdoZon1r16ejU-','Arquitetura','Ensino Superior Incompleto','Universidade Luterana do Brasil - ULBRA Canoas','2027-01-01','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','RESUMO DE CARREIRA
- Escritório de Contabilidade Fahrion Cargo: Secretária
Local: Av. Borges de Medeiros, 560 Contato: (51) 3955-0448
Email: marcelofcontabilidade@gmail.com
- Trabalhei durante 2 meses na empresa pois entrei no lugar de uma mulher que estava de licença maternidade. 


- Secretaria Municipal da Educação Cargo: Estagiária - Recepcionista e setor Administrativo
Local: Av Borges de Medeiros, 481 Contato: (51) 3662-8650
Email: Joselia.fraga@polosap.com.br
- Trabalhei durante 1 ano na Secretaria da Educação.','Estou cursando Arquitetura e Urbanismo, tenho 18 anos e estou no 1º semestre da faculdade! Tenho disponibilidade na manhã e pela tarde! Estou em busca de uma oportunidade em minha área de futura atuação, na qual eu possa crescer e me desenvolver ainda mais no futuro.',NULL,'Arquitetura, Estágio, Engenharia','https://drive.google.com/open?id=1qLh9F9HopPUon_Gf72e308SRXg-Ri9on',NULL,'Facebook','Não','Em torno de 1000 à 1500','Não',NULL,'Estágio Engenharia e/ou Arquitetura','Referente a CNH categoria B, não tenho ainda! Mas estou no processo fazendo as aulas teóricas! 

Sobre mim, estou no curso, e fazendo cursinhos por fora! Nesse momento estou realizando alguns projetos no Sketchup e fazendo curso on-line do mesmo! Amo esta área e estou muito feliz que estou no caminho certo, agora estou na espera de conseguir algo na minha área de futura atuação!','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-05-10T18:56:00.000Z'::timestamptz),
  ('Renata Speransa Fraga','resperansa752@gmail.com',NULL,'51996127242','2002-05-07',23,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1tPFqK3vpinCbPr7z-ZjQMYOrXzT1gzBK','Administração de empresas','Ensino Superior Incompleto','FURG','2023-12-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Estagiária pela SMTDS (Secretaria do Trabalho e Desenvolvimento Social), zona da Prefeitura de SAP, localizada no prédio do SINE, exercendo atividades profissionais na área do PROCON.
Responsável pelo atendimento ao público visando solucionar suas reclamações, entrando em contato com os fornecedores, sempre levando em consideração o Código de Defesa do Consumidor. Também, em determinadas ocasiões, me responsabilizava pela recepção, nas entregas de fichas, atendimento ao telefone e orientação ao público. Além disso, exercia atividades administrativas, fazia registros, arquivamento, fichas de atendimento e entregas de intimações para fornecedores necessários. 

Estagiária pela Prefeitura Municipal de Santo Antônio da Patrulha, no departamento de finanças.
Responsável pela abertura de processos licitatórios, arquivamento de documentos, atendimento ao público, fomentação do sistema, entre outras atividades administrativas.

Projetista da Bendita Marcenaria
Responsável pela montagem em 3D dos projetos para elaboração de orçamentos e apresentação aos clientes. 

Fraga Negócios Imobiliários (imobiliária do meu pai)
Responsável pela elaboração de contratos, marketing e alguns serviços de banco.','Inglês 
Escola de Idiomas Wizard, SAP

Projeto crescer Sicredi 
Atendente de farmácia
Secretariado administrativo e contábil
Técnicas de vendas e atendimento ao cliente
Operador de caixa

Outros:
Sketchup intermediário',NULL,'Administrativa, Comercial, Financeiro, Marketing','https://drive.google.com/open?id=18d6EidrM9AKTKMxML7Ivgq-IRmaR7vvw',NULL,'Instagram','Não','Em torno de R$ 800,00','Não',NULL,'Estágio administrativo','Bom, tenho quase 20 anos, com carinha de 14... Sou uma pessoa muito dedicada e que tá sempre correndo atrás do que quer, extremamente exigente comigo mesma (às vezes até considero isso um problema), sempre fui a nerd da sala, mas não porque estudava muito, e sim, porque aprendo tudo muito fácil. Sou muito comunicativa e paciente, exceto com, gente mal educada, preconceituosa, que maltrata animais ou que não gosta de chocolate (brincadeira kk). Sempre amei matemática e números em geral, o que provavelmente herdei do meu pai, mas mesmo sendo de exatas, sou apaixonada por inglês (tenho oito anos de curso) e não gosto nenhum pouco de português, o que é meio contraditório, porque minhas redações, em geral, são nota dez, já fui classificada várias vezes em concursos de dissertações, além de, ter uma pequena grande agonia de gente que escreve errado. Tenho fama de teimosa, mas quase sempre, com razão! Uma coisa que me define muito, são minhas técnicas infalíveis de sempre achar um jeito pra tudo e meu nítido perfeccionismo, esses, herdados da minha mãe. Pretendo começar meu curso de TTI (técnico em transações imobiliárias) em paralelo com a minha faculdade, para tirar meu CRECI. Minha visão de mundo é "enxergue possibilidades", acredito que pra cada coisa existente, há uma maneira de fazer melhor, de recomeçar... E acho que é isso,  o resto eu conto pessoalmente! :)','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-05-10T22:03:00.000Z'::timestamptz),
  ('Fernanda Altenetter da Silva','fernandaaltenetter03@gmail.com',NULL,'51999737616','2003-11-01',22,'Solteiro(a)','0','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1zPkFYbhgAfSLfg9ursZyKjjaDwF4DrrV','Administração de empresas','Ensino Médio Completo','Profissionaliza EAD','2021-08-19','Não, no momento pausei/parei por um período.','Nenhuma','Recursos Humanos, Administração, Marketing, Departamento Pessoal, Internet.','.','Administrativa, Comercial, Estágio, Marketing',NULL,NULL,'Facebook','Não.','1.400,00','Não','.','Quero inscrever-me no banco de talentos da Young!','Inglês intermediário, digitação rápida, pontual, bastante dedicada em terminar as tarefas com antecedência se for possível, sempre dispota a aprender, gosto bastante de dançar, busco bastante tentar ser independente e conseguir fazer faculdade de psicologia.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-05-10T23:03:00.000Z'::timestamptz),
  ('Giovana osio fontes','giovanaosio131215@gmail.com',NULL,'51995995702','1997-05-07',28,'Solteiro(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1ieV3HGOOQOQpGbKEOGPX7Hsod0CqLBUN','Pedagogia','Ensino Superior Incompleto','Uniasselvi',NULL,'Não, no momento pausei/parei por um período.','•Loja Duda - vendedora - 1 ano 2 meses 
•Prefeitura municipal de Caraá - Aux. •Administrativo - 3 anos 4 meses 
Loja boa imagem SKY - 1 ano (até o presente momento) vendedora e Aux. Administrativo','Tenho curso de marketing e atendimento ao público',NULL,'Administrativa, Marketing',NULL,NULL,'Indicação','Sim, Luiza','1200 inicialmente','Sim','Boa imagem SKY - (51) 995523166 Dieison, proprietário.','Aux administrativo','Bom, me considero uma pessoa super comunicativa, tenho facilidade em me enturmar com a equipe, sou muito esforçada, proativa, tenho bastante experiência em tarefas administrativas, mas também me considero uma excelente vendedora. Sou bem flexível. Me coloco a disposição para novas experiências, com disponibilidade de horários.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-05-11T00:03:00.000Z'::timestamptz),
  ('Daiane da Silva Santos','daianedasilvasantos@ymail.com',NULL,'51998981065','1990-05-18',35,'União estável','1','Não','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1peBUKWWFghDvKDqQKVYkwegh8X2l1BlL','estou cursando Técnico em administração','Ensino Médio Completo','IFSUL',NULL,'Não, no momento pausei/parei por um período.','Trabalhei como recepcionista no laboratório Iberleo ltda no período de 13/05/2019 a 18/08/2020, atendia ao público e por telefone orientando o cliente de como será realizado e como proceder antes do exame. Recebimento de material de coleta e realização de cadastro de pacientes seja particular ou com convênios. Aceitando varias formas de pagamentos como: cheque, dinheiro e cartões de crédito e débito. E no período de 19/12/2017 a 19/12/2018 trabalhei como recepcionista ambulatorial / administrativa no Hospital de Santo Antônio da Patrulha administrado pelo Santa Casa de Misericórdia, atendimento ao público e por telefone realizando cadastro de pacientes e fazendo marcações de consultas e exames.
Tenho experiência em caixa pois trabalhei no supermercado Gomes no período de 31/07/2012 até 13/05/2015. Atendimento ao publico passando e registrando produtos no caixa, cobrando e fornecendo troco. Mantendo sempre limpo e organizado o local de trabalho.
 Em um período curto, pois a vaga era temporária, trabalhei nas lojas Taqi como caixa e crediarista em 08/12/2016 até 22/03/2017, atendia ao público e por telefone fornecendo informações de produtos, registrando e cobrando mercadorias, realizando e
atualizando cadastros de clientes.','Conclui curso técnico em meio ambiente em outubro de 2021, inicie o técnico em administração em 15/12/2021 esta em andamento .Tenho conhecimento em informática básica: Windows, word, Excel, fiz curso de rotinas administrativa: auxiliar de departamento pessoal, secretariado, auxiliar administrativo, organização no trabalho, e excelência em atendimento.',NULL,'Estágio',NULL,NULL,'Agência de Empregos','Não','1.350,00','Não',NULL,'Estágio administrativo.',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-05-11T15:11:00.000Z'::timestamptz),
  ('Eduarda ferrão Rodrigues','eduardaferrao23@outlook.com',NULL,'55999462931','1998-06-18',27,'Casado(a)','0','Sim','Alegrete/RS','https://drive.google.com/uc?export=view&id=1ivqUqxEdher6ai6eaqlbRN0CdofbPwSm','Bacharelado em administração','Ensino Superior Incompleto','Unopar','2024-08-20','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Colégio divino coração, aprendiz.
27/05/2014 até 15/07/2015.
Recepcionista,atendimento ao telefone,agendamento.

Colégio divino coração,auxiliar de educação infantil.
16/07/2015 até 17/01/2017.
Auxiliava nas atividades escolares, ajudava na organização da sala de aula e cuidava das crianças.

Daniele Fernandes e Silva, babá.
01/03/2018 até 21/05/2021.
Cuidava da criança, auxiliava nas atividades escolares e nos cuidados.
 
Lojas Pompéia, auxiliar de loja.
1/06/2021 até 16/12/2021
Abertura e fechamento de caixa, atendimento ao cliente, organização de estoque.',NULL,NULL,'Administrativa, Engenharia','https://drive.google.com/open?id=1-g-mPHuACT1UY75ok6gghWD3zesPfRFJ',NULL,'Instagram','Não','2000','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Atualmente trabalho como extensionistas de cílios e designer de sobrancelha, gostaria de trabalhar em uma área que eu possa vivenciar administração no dia a dia.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-05-11T23:26:00.000Z'::timestamptz),
  ('Victória Duarte da Silva Espíndola','victoria.vih2015@gmail.com',NULL,'51997809584','1998-08-04',27,'União estável','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1abkkHMsfZz8p7EQwk57RKHKy745pW8Bw','Administração de empresas','Ensino Superior Incompleto','Uniasselvi','2025-01-17','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Academia PrimeFit
Cargo:
- Recepcionista
Data de Início: 01/07/2020 - 01/02/2021
 Funções:
- Atendimento ao cliente
- Vendas de contratos 


Reobras Indústria e comércio 

Cargo: Assistente Administrativo
Data de início: 16/06/2021 até o momento
Funções:
- Emissão de Notas Fiscais
- Fechamento de mês 
- Financeiro
- Atendimento ao cliente
- Vendas/Compras',NULL,NULL,'Administrativa, Estágio','https://drive.google.com/open?id=1RWcKmGwqTb8xqeilVh2Gi33FHW5zZsA1',NULL,'Indicação','Não','1.750,00 - 1.900,00','Não',NULL,'Estágio administrativo','Busco conhecimento pessoal e profissional a fim de colaborar com as necessidades da empresa.

- Sou responsável
- Dedicada
- Proativa
- Determinada','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-05-12T12:25:00.000Z'::timestamptz),
  ('Jeronimo Fernandes Zanotto','jeronimodiamond@gmail.com',NULL,'51991816467','2001-01-10',25,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=14o-k8g_BLTIWnb5OvAnhRyQ1nmw8_z0s',NULL,'Ensino Médio Completo','Uniaselvi',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1- Tive meu primeiro emprego por alguns meses na escola Mundo Office, como Auxiliar Administrativo.
2- Tive meu segundo emprego na empresa HIAB, onde trabalhei por praticamente 2 anos como Auxiliar de produção, fazendo também funções administrativas.
3- Trabalho desde 2020 por conta própria com serviços digitais, voltados a área do Design para redes sociais, colecionando mais de 150 trabalhos entregues.','Cursos de Photoshop e assistente administrativo.','Mídias (Photoshop e afins) - Inglês (Nível iniciante/cursando) - Intensivo de Photoshop.','Administrativa, Marketing','https://drive.google.com/open?id=1oetXH6vK5uwjGG4NSycR1Phs-JB3X7yi','https://drive.google.com/open?id=1x-2VO4em0zSygj4lV_Xf7SwwSBmeRnbY, https://drive.google.com/open?id=1Q0QIkyFo-jUaFa5NRIs-Sl7OZ_NHoZ5I, https://drive.google.com/open?id=1xkgE6UUBmaOCmLu0TbMn89y6_2gqTb83','Indicação','Não, apenas vi no WhatsApp.','R$ 1.500,00 a R$ 2.000,00','Não',NULL,'Administrativa ou Marketing','Me considero muito competente e esforçado, costumo me relacionar bem com colegas... Gosto muito de desenvolver ideias de trabalho. Tenho como principal conhecimento o Photoshop, onde posso servir criando propagandas para anúncios.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-05-12T14:41:00.000Z'::timestamptz),
  ('Claudiane Fernanda Maciel Teodoro','claudianemaciel24@gmail.com',NULL,'51996576275','2001-02-14',25,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1ErofdyWG8awMkSLV5LEOEl2bUFq5r-nW',NULL,'Ensino Superior Incompleto','Uniasselvi',NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Operador de caixa -  Empresa: Sabores da Matriz (10/2019 - 03/2020)
Operar o caixa e atender a pedidos via telefone e presencialmente.
 Auxiliar na cozinha, antes da abertura do salão.
Auxiliar de Escritório Geral - Empresa: Sabores da Matriz (04/2021 - 07/2021)
Auxiliar no caixa e fechamento do mesmo.
Recepcionar e atendenter.
Operador de caixa - Empresa: Arlety dos Santos Barreto (12/2021 até o momento)
Operar o caixa e auxiliar nas vendas.','Marketing, Assistente Administrativo e Informática.',NULL,'Administrativa, Estágio, Financeiro',NULL,NULL,'Agência de Empregos','Não','A combinar','Sim',NULL,'Estágio Financeiro',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-05-12T16:30:00.000Z'::timestamptz),
  ('Maria Regina de Borba Domingos','r-domingos@hotmail.com',NULL,'51996094338','1986-08-13',39,'Casado(a)','1','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1q_6NWy_59pGkPkzJ85PSMZd8JphbbZMf',NULL,'Ensino Superior Incompleto',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Consultório Médico Monica Horikawa, secretaria/recepcionista de 2018 2022',NULL,NULL,'Administrativa, Estágio',NULL,NULL,'Facebook','Nao','1500','Não',NULL,'Quero inscrever-me no banco de talentos da Young!','Disponibilidade de estágio no turno da tarde','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-05-12T18:51:00.000Z'::timestamptz),
  ('Ingrid Farias dos Santos Floriano','ingridfarias271218@gmail.com',NULL,'984329049','2002-10-08',23,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1Q_6V8aFZHxtzazP9pxB15CqLJ_2UvBAW',NULL,'Ensino Médio Completo',NULL,NULL,'Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','1. Trabalhei no Santo Peccato, fazendo todos os lançamentos de notas, recebimentos, conferindo produtos e atendendo no caixa. 

2. Trabalhei na várzea nutrição pet, cargo administrativo, fazendo lançamento de notas, boletos, arquivos, atendendo telefone e recepcionando clientes. 


3. Hoje trabalho como cuidadora de crianças autônoma, prestando serviços as famílias
 que necessitassem. Cuidando de sua alimentação, ministrando remédios, efetuando
 curativos, entre outras atribuições referentes a função, tenho habilidades tais como,
 cuidar do bem-estar da criança, cuidar do desenvolvimento físico, emocional e motor',NULL,NULL,'Marketing',NULL,NULL,'Indicação','Fui indicada pela minha mãe, que vendou terrenos da Young','R$ 1.500,00 (mil e quinhentos reais).','Sim','Suany Farias 984996737','Comercial','Gosto muito de aprender,  adoro criar e organizar as  coisas.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-05-12T21:04:00.000Z'::timestamptz),
  ('João Vitor Hablich Martins','joaohablich@gmail.com',NULL,'51996079767','1997-10-04',28,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1yV6OhCy0Pp0-74vSWVebv1rMNGSAEog1','Ciências Contábeis','Ensino Superior Incompleto','Faccat','2024-01-12','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','Comecei minha carreira profissional na empresa Masal S/A em 2016 como jovem aprendiz, em 2018 fui efetivado para trabalhar na produção e em 2019 até o momento (2022) estou trabalhando como programador de máquinas de corte. Minhas atividadss são a execução com software de corte, controles de estoque e sucatas via planilha Excel e auxílio nas demandas de produção.',NULL,'Programação cut plus (lantek 2019), Microsoft Excel 2010 básico (fundação Bradesco, 2020) contabilidade empresarial (fundação Bradesco, 2020) iniciação profissi em finanças pessoais (senai, 2020)','Administrativa, Estágio, Financeiro','https://drive.google.com/open?id=1OZL_XYFg6qDbA_mMW0i4dP5bBsqb_u0M',NULL,'Instagram','Não','2000','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!','Sou uma pessoa tranquila e que gosta bastante de aprender atividades e conhecimentos novos, busco sempre dar o meu melhor e entregar tudo com qualidade e agilidade. Gosto de sair e tomar uma cerveja no final de semana para descontrair!! "A vida te ensina algo hoje e se você realmente aprende a evoluir com isso, sempre lembrará do que aprendeu.. e mais uma vez aprende de novo. Todos os dias uma nova lição, um novo aprendizado, uma nova evolução, um novo pensamento.','Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-05-13T01:22:00.000Z'::timestamptz),
  ('GILSON ANTONIO DOS SANTOS','gilsonsantostst@hotmail.com',NULL,'51992240057','1989-09-27',36,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=17qKSHCa34CZpDrtBgFcYPBXL-EAo7qE5','TECNICO DE SEGURANÇA DO TRABALHO','Ensino Superior Incompleto','FURG SANTO ANTONIO DA PATRULHA','2026-03-03','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','MERCADO SANTO ANTONIO MOTORISTA, FINGER E SOMMER (PORTO ALEGRE) ENGENHARIA COMO TÉCNICO DE SEGURANÇA NO TRABALHO E CANABI CALÇADOS TECNICO DE SEGURANÇA DO TRABALHO','FORMAÇÃO EM SEGURANÇA DO TRABALHO, ATENDIMENTO AO PUBLICO E MOTORISTA','TECNICO DE SEGURANÇA DO TRABALHO E ADMINISTRAÇÃO EM ANDAMENTO','Administrativa, Comercial, Estágio, Engenharia',NULL,'https://drive.google.com/open?id=1Q9UfpHhuflYJtkn0ChrvsuljOQqEWk6z','Agência de Empregos','NAO','PERTINENTE A FUNÇAO QUE ME DESIGNAREM.','Sim','AS EMPRESAS QUE TRABALHEI SEMPRE CUMPRI COM O QUE FUI DESIGNADO','VAGA DE ESTAGIÁRIO EM ADMINISTRAÇÃO',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-05-13T16:44:00.000Z'::timestamptz),
  ('CÍCERO ANDRADE LOPES','cicero0lopes78@gmail.com',NULL,'51997002814','1997-03-04',28,'Solteiro(a)','0','Sim','Santo Antônio da Patrulha/RS','https://drive.google.com/uc?export=view&id=1SioyRk-mLOdmX3kkm8XVatQ94QnyOSa9','Ciências Contábeis','Ensino Médio Completo','UNIASSELVI','2022-11-23','Sim, estou estudando e com a matrícula ativa na Faculdade/Universidade.','FAMP Portões Eletrônicos – Ajudante instalador – 2016 - 2017
Arroz DEMELLO – Controle de qualidade – 2017 - 2019
INB Telecom Eireli – Monitor de sistema e suporte ao usuário – 2019 – 2020',NULL,NULL,'Comercial, Estágio, Financeiro, Marketing',NULL,NULL,'Abertura Ilha Dos Açores, Fica Em Frente Onde Eu Moro','não, apenas tive contato com guilherme','R$2.500,00','Sim',NULL,'Quero inscrever-me no banco de talentos da Young!',NULL,'Inscrito',ARRAY[]::text[],'csv_import','Importação CSV','2022-05-14T00:02:00.000Z'::timestamptz)
;
