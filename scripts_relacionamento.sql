use db_videolocadora_tarde_20231;

## RELACIONAMENTO PELO WHERE

#EXEMPLO 1
select tbl_ator.nome, tbl_ator.data_nascimento,
	   tbl_sexo.sigla
from tbl_ator, tbl_sexo 
where tbl_ator.id_sexo = tbl_sexo.id;

#EXEMPLO 2
select tbl_ator.nome, tbl_ator.foto, tbl_ator.biografia,
	   tbl_sexo.nome, tbl_sexo.sigla, tbl_nascionalidade.nome
from tbl_ator, tbl_sexo , tbl_nascionalidade, tbl_ator_nascionalidade
where tbl_ator.id_sexo = tbl_sexo.id and 
	  tbl_ator.id = tbl_ator_nascionalidade.id_ator and
      tbl_nascionalidade.id = tbl_ator_nascionalidade.id_nascionalidade order by tbl_ator.nome;


## RELACIONAMENTO PELO FROM(INNER JOIN)

#EXEMPLO 1
select tbl_ator.nome, tbl_ator.data_nascimento,
	   tbl_sexo.sigla
from tbl_ator
inner join tbl_sexo 
on tbl_ator.id_sexo = tbl_sexo.id;

#EXEMPLO 2
select tbl_ator.nome, tbl_ator.foto, tbl_ator.biografia,
	   tbl_sexo.nome, tbl_sexo.sigla, tbl_nascionalidade.nome
from tbl_ator
inner join tbl_sexo on tbl_ator.id_sexo = tbl_sexo.id
inner join tbl_ator_nascionalidade on tbl_ator.id = tbl_ator_nascionalidade.id_ator
inner join tbl_nascionalidade on tbl_ator.id = tbl_ator_nascionalidade.id_ator
order by tbl_ator.nome;

#FILME, ATOR, GENERO_FILME, NACIONALIDADE, SEXO
##ORDEM: Filme, genero, ator, nacionalidade, sexo

select 
filme.nome as nome_filme, 
filme.data_lancamento as data_lancamento_filme, 
filme.sinopse as sinopse_filme,
genero.nome as genero_filme,
ator.nome as nome_ator,
ator.biografia as biografia_ator,
nacionalidade.nome as nacionalidade_ator,
sexo.nome as sexo_ator 
from tbl_filme as filme
	inner join tbl_filme_genero as filme_genero on filme.id = filme_genero.id_filme
	inner join tbl_genero as genero on genero.id = filme_genero.id_genero
    inner join tbl_filme_ator as filme_ator on filme_ator.id_filme = filme.id
    inner join tbl_ator as ator on filme_ator.id_ator = ator.id
    inner join tbl_ator_nascionalidade as ator_nacionalidade on ator_nacionalidade.id_ator = ator.id
    inner join tbl_nascionalidade as nacionalidade on ator_nacionalidade.id_nascionalidade = nacionalidade.id
    inner join tbl_sexo as sexo on sexo.id = ator.id_sexo 
order by filme.nome, ator.nome;  

select * from tbl_filme;










