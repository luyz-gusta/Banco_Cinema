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
       
       
alter table tbl_filme 
	add column valor_unitario2 double;
    
update tbl_filme set valor_unitario2 = 80.4 where id = 8;

select * from tbl_filme;

select nome, min(valor_unitario) from tbl_filme; #Retorna o menor valor
select nome, max(valor_unitario) from tbl_filme; #Retorna o maior valor
select nome, round(avg(valor_unitario), 2) as media from tbl_filme; #AVG = Retornar a media de valores e ROUND realiza o arredondamento e limitação das casas decimais
select nome, round(sum(valor_unitario), 2) as media from tbl_filme; #Retorna a soma dos valores

select filme.nome as nome_filme, filme.foto_capa, 
	concat('R$ ',filme.valor_unitario) as valor_unitario,
	concat('R$ ',round((filme.valor_unitario - ((filme.valor_unitario * 10)/100)), 2)) as valor_desconto
from tbl_filme as filme;

#Operadores de Comparação

# =	Igualdade
# < Menor
# >	Maior
# <=	Menor ou Igual
# >= Maior ou Igual
# <> ou != Diferente
#like   	Comparação
#is			Comparação


select tbl_filme.nome as nome_filme, tbl_filme.foto_capa, tbl_filme.valor_unitario
from tbl_filme 
where tbl_filme.valor_unitario >=40 and tbl_filme.valor_unitario <= 50;



select tbl_filme.nome as nome_filme, tbl_filme.foto_capa, tbl_filme.valor_unitario
from tbl_filme 
where tbl_filme.valor_unitario = 29.8;

select * from tbl_filme 
	where tbl_filme.valor_unitario2 = 80.4;


#is null - retorna todos os registros nulos
#is not null - retorna todos os registros que não são nulos
select * from tbl_filme where tbl_filme.valor_unitario is not null;

select tbl_filme.nome, tbl_filme.foto_capa, tbl_filme.valor_unitario
from tbl_filme
where tbl_filme.valor_unitario >= 40 and tbl_filme.valor_unitario <= 50;

#between - retorna registros com um range de valores
select tbl_filme.nome, tbl_filme.foto_capa, tbl_filme.valor_unitario
from tbl_filme
where tbl_filme.valor_unitario between 40 and 50;


select tbl_filme.nome, tbl_filme.foto_capa, tbl_filme.valor_unitario
from tbl_filme
where tbl_filme.valor_unitario not between 40 and 50;

#LIKE
select * from tbl_filme where tbl_filme.nome like 'leão'; #Retorna somente a igualdade
select * from tbl_filme where tbl_filme.nome like 'leão%'; #Retorna o que inicia com a palavra chave
select * from tbl_filme where tbl_filme.nome like '%leão'; #Retorna o que termina com a palavra chave
select * from tbl_filme where tbl_filme.nome like '%leão%'; #Retorna por qualquer parte da busca


############################################################# FORMATANDO DATA E HORA #############################################################

#Retorna a data atual do servidor
select curdate() as data_atual;
select current_date() as data_atual;

#Retorna a hora atual o servidor 
select curtime() as hora_atual;
select current_time() as hora_atual;

#Retorna a data e hora atual o servidor
select current_timestamp() as data_hora_atual;

#Formatando a Hora
select time_format(curtime(), '%H') as hora_formatada; #Retorna só a hora em formato 24 horas
select time_format(curtime(), '%h') as hora_formatada; #Retorna só a hora em formato 12 horas
select time_format(curtime(), '%i') as hora_formatada; #Retorna os minutos
select time_format(curtime(), '%s') as hora_formatada; #Retorna os segundos
select time_format(curtime(), '%H:%i') as hora_formatada; #Retorna a hora e o minutos
select time_format(curtime(), '%r') as hora_formatada; #Retorna o padrão (AM/PM)
select time_format(curtime(), '%T') as hora_formatada; #Retorna o padrão, hora minuto e segundos

#Funções (hour, minute, second)
select hour(curtime()) as hora_formatada;
select minute(curtime()) as hora_formatada;
select second(curtime()) as hora_formatada;


#Formatando Data
select date_format(curdate(), '%d') as data_formatada; #dia
select date_format(curdate(), '%m') as data_formatada; #mes em numero
select date_format(curdate(), '%M') as data_formatada; #mes por extenso
select date_format(curdate(), '%b') as data_formatada; #mes abreviado
select date_format(curdate(), '%y') as data_formatada; #dois ultimos digitos do ano
select date_format(curdate(), '%Y') as data_formatada; #todos os digitos do ano
select date_format(curdate(), '%w') as data_formatada; #numero do dia da semana
select date_format(curdate(), '%W') as data_formatada; #nome do dia da semana em ingles
select date_format(curdate(), '%T') as data_formatada; #nome do dia da semana em ingles

select day(curdate()) as data_formatada; #dia
select day(curdate()) as data_formatada; #dia
select month(curdate()) as data_formatada; #mes
select year(curdate()) as data_formatada; #ano
select dayname(curdate()) as data_formatada; #nome do dia da semana
select dayofmonth(curdate()) as data_formatada; #dia do mes
select dayofyear(curdate()) as data_formatada; #dia do ano
select dayofweek(curdate()) as data_formatada; #dia do ano
select monthname(curdate()) as data_formatada; #o nome do mes
select yearweek(curdate()) as data_formatada; #o ano e a semana do ano
select weekofyear(curdate()) as data_formatada; #a semana do ano

select concat(day(curdate()), '/',  month(curdate()), '/',  year(curdate())) as data_brasil;
select date_format('2020-07-05', '%d/%m/%Y') as data_brasil;
select date_format(str_to_date('05/07/2020', '%d/%m/%Y'), '%Y-%m-%d') as data_universal;

select datediff('2023-05-30', '2023-04-01') as quantidade_dias,
	   (datediff('2023-05-30', '2023-04-01') * 2) as valor_pagar;

select timediff('16:15:00', '10:05:01') as qtde_horas,
		(timediff('16:15:00', '10:05:01') + timediff('16:15:00', '10:05:01')) as valor_pagar;

#Criptografia de dados

select 'senai ' as dados,
	md5('senai ') as dados_criptografados;
    
select sha2('senai',5000) as senha;



