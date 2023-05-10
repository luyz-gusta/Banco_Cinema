use db_videolocadora_tarde_20231;

##SELECTs
select * from tbl_classificacao;
select * from tbl_filme;
select * from tbl_filme_genero;
select * from tbl_genero;
select * from tbl_sexo;

##INSERTs
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

#Ator


##INSERTs FILMES
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
insert into tbl_filme_genero(
	id_filme, id_genero
)values(
	(2,2),
    (2,5),
    (2,4)
);

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

##INSERTs ATORES
#TOM HANKS
insert into tbl_ator(
	nome, nome_artistico, foto, data_nascimento,
    biografia, id_sexo
) values (
	'Thomas Jeffrey Hanks',
	'TOM HANKS',
    'https://br.web.img3.acsta.net/c_310_420/pictures/18/08/08/18/47/1167635.jpg',
    '1956-07-09',
    'Tom Hanks iniciou a carreira no cinema aos 24 anos, com um papel no filme de baixo orçamento Trilha de Corpos. Logo migrou para a TV, onde estrelou por dois anos a série Bosom Buddies. Nela passou a trabalhar com comédia, algo com o qual não estava habituado, rendendo convites para pequenas participações nas séries Táxi, Caras & Caretas e Happy Days.Em 1984, veio seu primeiro sucesso no cinema: a comédia Splash - Uma Sereia em Minha Vida, na qual era dirigido por Ron Howard e contracenava com Daryl Hannah. Em seguida vieram várias comédias, entre elas A Última Festa de Solteiro (1984), Um Dia a Casa Cai (1986) e Dragnet - Desafiando o Perigo (1987), tornando-o conhecido do grande público.Com Quero Ser Grande (1988) Hanks obteve sua primeira indicação ao Oscar de melhor ator. Apesar de consagrado como comediante, aos poucos passou a experimentar outros gêneros.',
    1
);
