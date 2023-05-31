use db_videolocadora_tarde_20231;

/*********************** SELECTs ***********************/
select * from tbl_ator;
select * from tbl_ator_nascionalidade;
select * from tbl_classificacao;
select * from tbl_diretor;
select * from tbl_diretor_nascionalidade;
select * from tbl_filme;
select * from tbl_filme_genero;
select * from tbl_filme_ator;
select * from tbl_genero;
select * from tbl_nascionalidade;
select * from tbl_sexo;

/**************************** INSERTs *****************************/
#Sexo - Ator/Diretor
insert into tbl_sexo(
nome, sigla
) values (
	'Masculino', 
    'M'
),(
	'Feminino',
    'F'
);

/************** INSERTs FILMES **************/
#FORREST GUMP - O CONTADOR DE HISTÓRIAS
insert into tbl_filme(
	nome, nome_original, data_lancamento, data_relancamento, duracao,
	foto_capa, sinopse, id_classificacao
) values(
	'FORREST GUMP - O CONTADOR DE HISTÓRIAS',
    'Forrest Gump',
    '1994-12-07',
    null,
	'02:20:00',
    'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/87/30/21/19874092.jpg',
    'Quarenta anos da história dos Estados Unidos, vistos pelos olhos de Forrest Gump (Tom Hanks), um rapaz com QI abaixo da média e boas intenções. Por obra do acaso, ele consegue participar de momentos cruciais, como a Guerra do Vietnã e Watergate, mas continua pensando no seu amor de infância, Jenny Curran.',
    10
);
#FORREST GUMP - FilmeGenero
insert into tbl_filme_genero( id_filme, id_genero)values (2,2), (2,5), (2,4);
#FORREST GUMP - FilmeAtor
insert into tbl_filme_ator( id_filme, id_ator) values  (2,1),(2,2);
#FORREST GUMP - FilmeDiretor
insert into tbl_filme_diretor( id_filme, id_diretor) values (2,1);

#O REI LEÃO
insert into tbl_filme(
	nome, nome_original, data_lancamento, data_relancamento, duracao,
	foto_capa, sinopse, id_classificacao
) values (
	'O REI LEÃO',
    'The Lion King',
    '1994-07-08',
    '2011-08-26',
    '01:29:00',
    'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/87/84/28/19962110.jpg',
    'Clássico da Disney, a animação acompanha Mufasa (voz de James Earl Jones), o Rei Leão, e a rainha Sarabi (voz de Madge Sinclair), apresentando ao reino o herdeiro do trono, Simba (voz de Matthew Broderick). O recém-nascido recebe a bênção do sábio babuíno Rafiki (voz de Robert Guillaume), mas ao crescer é envolvido nas artimanhas de seu tio Scar (voz de Jeremy Irons), o invejoso e maquiavélico irmão de Mufasa, que planeja livrar-se do sobrinho e herdar o trono.',
    7
);
#O REI LEÃO - FilmeGenero
insert into tbl_filme_genero( id_filme, id_genero)values (4,4), (4,6), (4,7);
#O REI LEÃO - FilmeAtor
insert into tbl_filme_ator( id_filme, id_ator) values  (4,4),(4,5);
#O REI LEÃO  - FilmeDiretor
insert into tbl_filme_diretor( id_filme, id_diretor) values (4,3);

#À ESPERA DE UM MILAGRE
insert into tbl_filme(
	nome, nome_original, data_lancamento, data_relancamento, duracao,
	foto_capa, sinopse, id_classificacao
) values (
	'À ESPERA DE UM MILAGRE',
    'The Green Mile',
    '2000-03-10',
	null,
    '03:09:00',
    'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/91/66/66/20156966.jpg',
    '1935, no corredor da morte de uma prisão sulista. Paul Edgecomb (Tom Hanks) é o chefe de guarda da prisão, que temJohn Coffey (Michael Clarke Duncan) como um de seus prisioneiros. Aos poucos, desenvolve-se entre eles uma relação incomum, baseada na descoberta de que o prisioneiro possui um dom mágico que é, ao mesmo tempo, misterioso e milagroso.',
    10
);
#À ESPERA DE UM MILAGRE - FilmeGenero
insert into tbl_filme_genero( id_filme, id_genero)values (7,1), (7,8);
#À ESPERA DE UM MILAGRE - FilmeAtor
insert into tbl_filme_ator( id_filme, id_ator) values  (7,1),(7,7);
#À ESPERA DE UM MILAGRE - FilmeDiretor
insert into tbl_filme_diretor( id_filme, id_diretor) values (7,4);

#BATMAN - O CAVALEIRO DAS TREVAS
insert into tbl_filme(
	nome, nome_original, data_lancamento, data_relancamento, duracao,
	foto_capa, sinopse, id_classificacao
) values (
	'BATMAN - O CAVALEIRO DAS TREVAS',
    'The Dark Knight',
    '2008-07-18',
    null,
    '02:32:00',
    'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/86/98/32/19870786.jpg',
    'Após dois anos desde o surgimento do Batman (Christian Bale), os criminosos de Gotham City têm muito o que temer. Com a ajuda do tenente James Gordon (Gary Oldman) e do promotor público Harvey Dent (Aaron Eckhart), Batman luta contra o crime organizado. Acuados com o combate, os chefes do crime aceitam a proposta feita pelo Coringa (Heath Ledger) e o contratam para combater o Homem-Morcego.',
    10
);
#BATMAN - O CAVALEIRO DAS TREVAS - FilmeGenero
insert into tbl_filme_genero( id_filme, id_genero) values (6,3), (6,9);
#BATMAN - O CAVALEIRO DAS TREVAS - FilmeAtor
insert into tbl_filme_ator( id_filme, id_ator) values  (6,1),(6,9);
#BATMAN - O CAVALEIRO DAS TREVA - FilmeDiretor
insert into tbl_filme_diretor( id_filme, id_diretor) values (6,5);

#VINGADORES: ULTIMATO
insert into tbl_filme(
	nome, nome_original, data_lancamento, data_relancamento, duracao,
	foto_capa, sinopse, id_classificacao
) values (
	'VINGADORES: ULTIMATO',
    'Avengers: Endgame',
    '2019-04-25',
    '2019-07-11',
    '03:01:00',
    'https://br.web.img2.acsta.net/c_310_420/pictures/19/04/26/17/30/2428965.jpg',
    'Em Vingadores: Ultimato, após Thanos eliminar metade das criaturas vivas em Vingadores: Guerra Infinita, os heróis precisam lidar com a dor da perda de amigos e seus entes queridos. Com Tony Stark (Robert Downey Jr.) vagando perdido no espaço sem água nem comida, o Capitão América/Steve Rogers (Chris Evans) e a Viúva Negra/Natasha Romanov (Scarlett Johansson) precisam liderar a resistência contra o titã louco.',
    9
);
#VINGADORES: ULTIMATO - FilmeGenero
insert into tbl_filme_genero( id_filme, id_genero) values (8,3), (8,6), (8,10), (8,8);
#VINGADORES: ULTIMATO - FilmeAtor
insert into tbl_filme_ator( id_filme, id_ator) values  (8,10),(8,11);
#VINGADORES: ULTIMATO - FilmeDiretor
insert into tbl_filme_diretor( id_filme, id_diretor) values (8,6);

/************** INSERTs ATORES **************/
#TOM HANKS
insert into tbl_ator(
	nome, nome_artistico, foto, data_nascimento,
    biografia, id_sexo
) values (
	'Thomas Jeffrey Hanks',
	'TOM HANKS',
    'https://br.web.img3.acsta.net/c_310_420/pictures/18/08/08/18/47/1167635.jpg',
    '1956-07-09',
    'Tom Hanks iniciou a carreira no cinema aos 24 anos, com um papel no filme de baixo orçamento Trilha de Corpos.',
    1
);
#TOM HANKS - AtorNascionalidade
insert into tbl_ator_nascionalidade(id_ator, id_nascionalidade ) values (1,1);

#Robin Wright Penn
insert into tbl_ator(
	nome, nome_artistico, foto, data_nascimento,
    biografia, id_sexo
)values(
	'Robin Virginia Gayle Wright',
    'Robin Wright Penn',
    'https://br.web.img3.acsta.net/c_310_420/pictures/19/11/05/01/50/2018682.jpg',
    '1966-04-08',
    'Robin Wright nasceu em Dallas, Texas, filha de Gayle Gaston, uma vendedora de cosméticos, e Freddie Wright, funcionário de uma empresa farmacêutica. A atriz ficou famosa por seus papeis em House of Cards, Mulher-Maravilha, Corpo Fechado e Forrest Gump - O Contador de Histórias.Wright foi criada em San Diego, Califórnia.',
    2
);
#Robin Wright Penn - AtorNascionalidade
insert into tbl_ator_nascionalidade(id_ator, id_nascionalidade ) values (2,2);

#Matthew Broderick
insert into tbl_ator(
	nome, nome_artistico, foto, data_nascimento,
    biografia, id_sexo
) values (
	'Matthew Broderick',
    'Matthew Broderick',
    'https://br.web.img2.acsta.net/c_310_420/pictures/19/07/02/22/47/0236519.jpg',
    '1962-03-21',
    'Broderick nasceu em Nova York, filho de Patricia Biow, uma dramaturga, atriz e pintora, e de James Joseph Broderick, um ator. A mãe de Broderick era judia e seu pai, um católico de ascedência irlandesa. Broderick frequentou a escola primária City & Country School e cursou o ensino médio na Walden School. Depois da morte de sua mãe, suas pinturas foram exibidas na Tibor de Nagy Gallery em Nova York.',
    1
);
#Matthew Broderick - AtorNascionalidade
insert into tbl_ator_nascionalidade(id_ator, id_nascionalidade ) values (4,1);

#James Earl Jones
insert into tbl_ator(
	nome, nome_artistico, foto, data_nascimento,
    biografia, id_sexo
) values (
	'Todd Jones',
    'James Earl Jones',
    'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/87/55/34/20040970.jpg',
    '1931-01-17',
    'Do signo de Capricórnio;- Possui descendência africana, indígena e irlandesa;- Foi criado pelos avós maternos. Seus pais, Ruth Connolly and Robert Earl Jones, se separaram pouco antes de seu nascimento;- Começou a ter aulas de atuação para curar sua gagueira;- Também para melhorar sua dicção, começou a escrever poesias e contava com o apoio dos professores, que permitiam que ele as lesse em sala de aula.',
    1
);
#James Earl Jones - AtorNascionalidade
insert into tbl_ator_nascionalidade(id_ator, id_nascionalidade ) values (5,1);

#Michael Duncan 
insert into tbl_ator(
	nome, nome_artistico, foto, data_nascimento,
    biografia, id_sexo
) values (
	'Michael Clarke Duncan',
    'Michael Duncan',
    'https://br.web.img3.acsta.net/c_310_420/pictures/14/09/06/19/41/147683.jpg',
    '1957-12-10',
    'Michael Clarke Duncan é conhecido pela atuação em À Espera de um Milagre, que lhe rendeu indicações ao Oscar e ao Globo de Ouro de Melhor Ator Coadjuvante. Fez sua estreia nos cinemas em 1995, com um papel não creditado em Sexta-Feira em Apuros. O primeiro trabalho de destaque viria três anos depois com Armageddon. Agradou tanto que Bruce Willis recomendou que Frank Darabont contratasse ele para À Espera de um Milagre, em 1999.',
    1
);
#Michael Duncan - AtorNascionalidade
insert into tbl_ator_nascionalidade(id_ator, id_nascionalidade ) values (7,1);

#Christian Bale
insert into tbl_ator(
	nome, nome_artistico, foto, data_nascimento,
    biografia, id_sexo
) values (
	'Christian Charles Philip Bale',
    'Christian Bale',
    'https://br.web.img3.acsta.net/c_310_420/pictures/15/02/24/18/43/126776.jpg',
    '1974-01-30',
    'Caçula de três irmãs mais velhas, filho de um piloto de aviação comercial e de uma dançarina de circo, Bale começou a atuar por influência de uma delas. Pouca gente recorda que este ator inglês é o menino Jim, que tocou corações em Império do Sol (1987), de Steven Spielberg. Para ganhar o papel, derrotou cerca de quatro mil candidatos e sua atuação ainda rendeu prêmios.',
    1
);
#Christian Bale - AtorNascionalidade
insert into tbl_ator_nascionalidade(id_ator, id_nascionalidade ) values (8,1), (8,4);

#Heath Ledger
insert into tbl_ator(
	nome, nome_artistico, foto, data_nascimento,
    biografia, id_sexo
) values (
	'Heathcliff Andrew Ledger',
    'Heath Ledger',
    'https://br.web.img2.acsta.net/c_310_420/pictures/18/08/16/19/43/2593099.jpg',
    '1979-04-04',
    'Extremamente tímido, este australiano descendente de irlandeses e escoceses optou por atuar desde cedo. Mesmo com a rápida fama conquistada, em parte por sua beleza, ele procurou interpretar papéis que não explorassem este aspecto e conseguiu atuações marcantes em sua curta carreira. Premiado após sua morte pela atuação como Coringa, Ledger tem seu lugar marcado para sempre na história do cinema mundial.',
    1
);
#Heath Ledger - AtorNascionalidade
insert into tbl_ator_nascionalidade(id_ator, id_nascionalidade ) values (9,5);

#Robert Downey Jr.
insert into tbl_ator(
	nome, nome_artistico, foto, data_nascimento,
    biografia, id_sexo
) values (
	'Robert John Downey Jr',
    'Robert Downey Jr.',
    'https://br.web.img3.acsta.net/c_310_420/pictures/18/06/29/00/35/0101925.jpg',
    '1965-04-04',
    'Do céu ao inferno e ao céu novamente. Se alguém pensou no mito do pássaro fênix que renasce das cinzas, até que a comparação poderia se encaixar para definir este brilhante ator que já deu vida para personagens tão distantes em tempo e estilo, como Charles Chaplin (Chaplin - 1992) e Tony Stark (Homem de Ferro - 2008).Na ativa por mais de quatro décadas e dono de uma voz grave, afinada, Downey já dublou desenho animado (God, the Devil and Bob - 2000), se aventurou no mundo da música, em 2004, com o disco The Futurist (Sony) e fez bonito na televisão, onde faturou o Globo de Ouro, além de outros prêmios e indicações por Larry Paul, personagem do seriado Ally McBeal (2000 - 2002).',
    1
);
#Robert Downey Jr. - AtorNascionalidade
insert into tbl_ator_nascionalidade(id_ator, id_nascionalidade ) values (10,1);

#Chris Evans
insert into tbl_ator(
	nome, nome_artistico, foto, data_nascimento,
    biografia, id_sexo
) values (
	'Christopher Robert Evans',
    'Chris Evans',
    'https://br.web.img3.acsta.net/c_310_420/pictures/19/04/22/19/59/2129500.jpg',
    '1981-06-13',
    'Depois de uma infância e estudos ​​em Boston, Chris Evans decidiu ir para Nova York para tentar a sorte na comédia. Ele rapidamente consegue entrar na profissão, principalmente participando em séries de televisão (Boston Public). Sua carreira no cinema começou em 2001, em uma comédia para adolescentes (Não é Mais um Besteirol Americano). Mas sem ficar preso a apenas um gênero de filme, o ator vai para outras produções: trapaceia nas provas com Scarlett Johansson na comédia policial Nota Máxima (2004), interpreta o papel de Kim Basinger no thriller Celular - Um Grito de Socorro (2004) e seduz Jessica Biel em London (2005).',
    1
);
#Chris Evans - AtorNascionalidade
insert into tbl_ator_nascionalidade(id_ator, id_nascionalidade ) values (11,1);

/************** INSERT's DIRETORES **************/
#Robert Zemeckis
insert into tbl_diretor(
	nome, nome_artistico, foto, data_nascimento,
    biografia, id_sexo
) values (
	'Robert Lee Zemeckis',
    'Robert Zemeckis',
    'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/87/57/81/20030814.jpg',
    '1952-05-14',
    'Especialista em efeitos especiais, Robert Zemeckis é um dos partidários dos filmes do também diretor Steven Spielberg, que já produziu vários de seus filmes; - Trabalhando geralmente com seu parceiro de roteiros Bob Gale, os primeiros filmes de Robert apresentou ao público seu talento para comédias tipo pastelão, como Tudo por uma Esmeralda (1984); 1941 - Uma Guerra Muito Louca (1979) e, acrescentando efeitos muito especiais em Uma Cilada para Roger Rabbit (1988) e De Volta para o Futuro (1985).',
    1
);
#Robert Zemeckis- DiretorNascionalidade
insert into tbl_diretor_nascionalidade(id_diretor, id_nascionalidade ) values (1,1);

#Rob Minkoff
insert into tbl_diretor(
	nome, nome_artistico, foto, data_nascimento,
    biografia, id_sexo
) values (
	'Robert Ralph Minkoff',
    'Rob Minkoff',
    'https://br.web.img2.acsta.net/c_310_420/medias/nmedia/18/91/54/07/20150847.jpg',
    '1962-08-11',
    'Rob Minkoff nasceu o 11 de agosto de 1962 em Palo Alto, Califórnia, EUA. É produtor e diretor, conhecido pelo seu trabalho em O Rei Leão (1994), O Pequeno Stuart Little 2 (2002) e As Aventuras de Peabody & Sherman (2014). É casado com Crystal Kung Minkoff desde o 29 de setembro de 2007.',
    1
);
#Rob Minkoff- DiretorNascionalidade
insert into tbl_diretor_nascionalidade(id_diretor, id_nascionalidade ) values (3,1);

#Frank Darabont
insert into tbl_diretor(
	nome, nome_artistico, foto, data_nascimento,
    biografia, id_sexo
) values (
	'Ferenc Árpád Darabont',
    'Frank Darabont',
    'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/90/95/95/20122149.jpg',
    '1959-01-28',
    'É o autor dos roteiros de "A Hora do Pesadelo 3", "A Mosca 2" e "Frankenstein de Mary Shelley".- Trabalhou como roteirista na série de TV norte-americana "O Jovem Indiana Jones".',
    1
);
#Frank Darabont- DiretorNascionalidade
insert into tbl_diretor_nascionalidade(id_diretor, id_nascionalidade ) values (4,1), (4,3);

#Christopher Nolan
insert into tbl_diretor(
	nome, nome_artistico, foto, data_nascimento,
    biografia, id_sexo
) values (
	'Christopher Edward Nolan',
    'Christopher Nolan',
    'https://br.web.img3.acsta.net/c_310_420/pictures/15/02/26/15/33/118611.jpg',
    '1970-07-30',
    'Com apenas sete anos de idade, Christopher Nolan já se arriscava por trás das câmeras. Utilizando-se da câmera Super 8 do pai, ele realizou vários pequenos filmes estrelados por seus brinquedos. A vontade de dirigir não passou e ele acabou se tornando um importante realizador.Formou-se em literatura na Universidade de Londres, na mesma época em que começou a realizar filmes em 16mm. Seu curta "Larceny" foi exibido no Festival de Cinema de Cambridge em 1996.Nolan estreou na direção com Following (1998), mas foi Amnésia (2000) que chamou a atenção da grande público, abrindo seu caminho para o sucesso em Hollywood.',
    1
);
#Christopher Nolan- DiretorNascionalidade
insert into tbl_diretor_nascionalidade(id_diretor, id_nascionalidade ) values (5,4);

#Joe Russo
insert into tbl_diretor(
	nome, nome_artistico, foto, data_nascimento,
    biografia, id_sexo
) values (
	'Joseph Vincent Russo',
	'Joe Russo',
    'https://br.web.img2.acsta.net/c_310_420/pictures/15/11/24/17/01/231901.jpg',
    '1971-07-08',
    'Joe Russo nasceu o 8 de julho de 1971 em Cleveland, Ohio, EUA. É produtor e diretor, conhecido pelo seu trabalho em Vingadores: Ultimato (2019), Tudo em Todo o Lugar ao Mesmo Tempo (2022) e Vingadores: Guerra Infinita (2018).',
    1
);
#Joe Russo Nolan- DiretorNascionalidade
insert into tbl_diretor_nascionalidade(id_diretor, id_nascionalidade ) values (6,1);

/************** INSERT's NASCIONALIDADE **************/
#Americano
insert into tbl_nascionalidade (nome) values ('Americano');
#Americana
insert into tbl_nascionalidade (nome) values ('Americana');

#Francês
insert into tbl_nascionalidade (nome) values ('Francês');

#Britânico
insert into tbl_nascionalidade (nome) values ('Britânico');

#Australiano
insert into tbl_nascionalidade (nome) values ('Australiano');

/********************************************************************************************************/
