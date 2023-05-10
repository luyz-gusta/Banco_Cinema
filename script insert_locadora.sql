use db_videolocadora_tarde_20231;

##INSERT

#TABELA DE GENERO
insert into tbl_genero (nome) values ('Policial');
insert into tbl_genero (nome) values ('Drama');
insert into tbl_genero (nome) values ('Ação');
insert into tbl_genero (nome) values ('Comédia');

#INSERT DE MULTIPLOS VALORES
insert into tbl_genero (nome) values ('Romance'), ('Aventura'), ('Animação');

select * from tbl_genero;

show tables;

##UPDATE
#update tbl_genero set nome = 'Comédia'; -> Teste sem where NUNCA RODAR ESSE
update tbl_genero set nome = 'Policial' where id = 1 ; 

##INSERT 

#TABELA DE CLASSIFICAÇÃO
select * from tbl_classificacao;

alter table tbl_classificacao modify column descricao varchar(150) not null;

insert into tbl_classificacao 
(nome, sigla, descricao) 
values
('Livre', 'L', 'Não expõe crianças a conteúdo potencialmente prejudiciais'),
('Não recomendado para menores de 10 anos','10','Conteúdo violento ou linguagem inapropriada para crianças, ainda que em menor intensidade'),
('Não recomendado para menores de 12 anos','12','As cenas podem conter agressão física, consumo de drogas e insinuação sexual'),
('Não recomendado para menores de 14 anos','14','Conteúdos mais violentos e/ou de linguagem sexual mais acentuda'),
('Não recomendado para menores de 16 anos','16','Conteúdos mais violentos ou com conteúdo sexual mais intenso, com cenas de tortura, suicídio, estupro ou nudez total'),
('Não recomendado para menores de 18 anos','18','Conteúdos violentos e sexuais extremos.Cenas de sexo, incesto ou atos repetidos de tortura, mutilação ou abuso sexual');

##INSERT

#TABELA DE FILME 
insert into tbl_filme(
nome, nome_original, data_lancamento, data_relancamento, duracao,
foto_capa, sinopse, id_classificacao
) values (
	'O Poderoso Chefão',
    'The Godfather',
    '1972-03-24',
    '2022-02-24',
    '02:55:00',
    'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/90/93/20/20120876.jpg',
    'Don Vito Corleone (Marlon Brando) é o chefe de uma "família" de Nova York que está feliz, pois Connie (Talia Shire), sua filha, se casou com Carlo (Gianni Russo). 
		Porém, durante a festa, Bonasera (Salvatore Corsitto) é visto no escritório de Don Corleone pedindo "justiça", vingança na verdade contra membros de uma quadrilha, 
        que espancaram barbaramente sua filha por ela ter se recusado a fazer sexo para preservar a honra. Vito discute, mas os argumentos de Bonasera o sensibilizam e ele 
        promete que os homens, que maltrataram a filha de Bonasera não serão mortos, pois ela também não foi, mas serão severamente castigados. Vito porém deixa claro que 
        ele pode chamar Bonasera algum dia para devolver o "favor". Do lado de fora, no meio da festa, está o terceiro filho de Vito, Michael (Al Pacino), um capitão da 
        marinha muito decorado que há pouco voltou da 2ª Guerra Mundial. Universitário educado, sensível e perceptivo, ele quase não é notado pela maioria dos presentes, 
        com exceção de uma namorada da faculdade, Kay Adams (Diane Keaton), que não tem descendência italiana mas que ele ama. Em contrapartida há alguém que é bem notado, 
        Johnny Fontane (Al Martino), um cantor de baladas românticas que provoca gritos entre as jovens que beiram a histeria. Don Corleone já o tinha ajudado, quando Johnny 
        ainda estava em começo de carreira e estava preso por um contrato com o líder de uma grande banda, mas a carreira de Johnny deslanchou e ele queria fazer uma carreira 
        solo. Por ser seu padrinho Vito foi procurar o líder da banda e ofereceu 10 mil dólares para deixar Johnny sair, mas teve o pedido recusado. Assim, no dia seguinte Vito
        voltou acompanhado por Luca Brasi (Lenny Montana), um capanga, e após uma hora ele assinou a liberação por apenas mil dólares, mas havia um detalhe: nas "negociações" 
        Luca colocou uma arma na cabeça do líder da banda. Agora, no meio da alegria da festa, Johnny quer falar algo sério com Vito, pois precisa conseguir o principal papel 
        em um filme para levantar sua carreira, mas o chefe do estúdio, Jack Woltz (John Marley), nem pensa em contratá-lo. Nervoso, Johnny começa a chorar e Vito, irritado, o 
        esbofeteia, mas promete que ele conseguirá o almejado papel. Enquanto a festa continua acontecendo, Don Corleone comunica a Tom Hagen (Robert Duvall), seu filho adotivo 
        que atua como conselheiro, que Carlo terá um emprego mas nada muito importante, e que os "negócios" não devem ser discutidos na sua frente. Os verdadeiros problemas 
        começam para Vito quando Sollozzo (Al Lettieri), um gângster que tem apoio de uma família rival, encabeçada por Phillip Tattaglia (Victor Rendina) e seu filho Bruno 
        (Tony Giorgio). Sollozzo, em uma reunião com Vito, Sonny e outros, conta para a família que ele pretende estabelecer um grande esquema de vendas de narcóticos em 
        Nova York, mas exige permissão e proteção política de Vito para agir. Don Corleone odeia esta idéia, pois está satisfeito em operar com jogo, mulheres e proteção, 
        mas isto será apenas a ponta do iceberg de uma mortal luta entre as "famílias".',
        10
);

##INSERT 

#TABELA FILME_GENERO
insert into tbl_filme_genero(id_filme, id_genero) values (1, 1), (1,2);






##Teste próprio de inner join
select tbl_filme.id, tbl_filme.nome, tbl_filme.duracao, tbl_filme.data_lancamento, tbl_filme.sinopse,tbl_classificacao.sigla, tbl_classificacao.nome, tbl_classificacao.descricao 
from tbl_filme inner join tbl_classificacao
on tbl_classificacao.id = tbl_filme.id_classificacao





