use db_videolocadora_tarde_20231;

# as -> Cria um "Apelido Virtual" pra coluna para caso queira que a coluna venha com outro nome
select tbl_filme.id as id_filme,
	   tbl_filme.nome as nome_filme,
       tbl_filme.nome_original 
       from tbl_filme;
      
#Permite ordenar de forma(alfabetica, numerica ou data) crescente e descrescente
select * from tbl_filme order by data_lancamento asc;
select * from tbl_filme order by id_classificacao desc;

#Limitar a quantidade de registro que serão exibidos
select * from tbl_filme limit 2;

#ucasse ou upper - padroniza o resultado dos dados em MAIUSCULO,
#lcasse ou lower - padroniza o resultado dos dados em minusculo,
select ucase(tbl_filme.nome) as nome,
	   lcase(tbl_filme.nome_original) as nome_original,
       length(tbl_filme.nome) as qtde_caracteres,
       concat('<span>Filme: ', tbl_filme.nome,'</span>') as nome_filme_formatado,
       tbl_filme.sinopse,
       concat(substr(tbl_filme.sinopse, 1, 50), '... Leia Mais') as sinopse_reduzida
from tbl_filme;

#Inner Join juntando duas tabelas: Estudo proprio
select filme.id as id_filme, upper(filme.nome) as nome_filme, lower(filme.nome_original) 
		as nome_original_filme,filme.data_lancamento as data_lancamento_filme, 
	   filme.duracao as duracao_filme, filme.sinopse as sinopse_filme, filme.foto_capa as foto_capa_filme,
       classificacao.nome as nome_classificacao, classificacao.descricao as descricao_classificacao
       from tbl_filme as filme inner join tbl_classificacao as classificacao 
       on classificacao.id = filme.id_classificacao order by filme.data_lancamento asc limit 5;