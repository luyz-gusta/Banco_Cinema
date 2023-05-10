show databases;

create database db_videolocadora_tarde_20231;

#drop database db_videolocadora_tarde_20231;

use db_videolocadora_tarde_20231;

show tables;

#TABELA: CLASSIFICAÇÃO
create table tbl_classificacao(
	id int not null auto_increment primary key,
    nome varchar(100) not null,
    sigla varchar(3) not null,
    descricao varchar(80) not null,
    unique index(id)
);
select * from tbl_classificacao;

#TABELA: GENERO
create table tbl_genero(
	id int not null auto_increment primary key,
    nome varchar(45) not null,
    unique index(id)
);
select * from tbl_genero;

#TABELA: SEXO
create table tbl_sexo(
	id int not null auto_increment primary key,
    nome varchar(45) not null,
    sigla varchar(5) not null,
    unique index(id)
);
select * from tbl_sexo;

#TABELA: NASCIONALIDADE
create table tbl_nascionalidade(
	id int not null auto_increment primary key,
    nome varchar(45) not null,
    unique index(id)
);
select * from tbl_nascionalidade;


################### COMANDOS PARA ALTERAR UMA TABELA ###################

## add column - Adiciona uma coluna na tabela
alter table tbl_nascionalidade
	add column descricao varchar(50) not null;

## Adiciona mais de uma coluna na tabela
alter table tbl_nascionalidade
	add column teste1 varchar(10) not null,
    add column teste2 varchar(10) not null;
  
## drop column - Exclui uma coluna da tabela
alter table tbl_nascionalidade
    drop column teste2;

## modify column - Permiite alterar a estrutura de uma coluna
alter table tbl_nascionalidade
	modify column teste1 varchar(5) not null;

## change - Permite alterar a escrita e a sua estrura
alter table tbl_nascionalidade
	change teste1 teste_nascionalidade int not null;

drop table tbl_nascionalidade;
show tables;
desc tbl_nascionalidade;

################### CRIANDO TABELAS COM FK ###################
#TABELA: FILME
create table tbl_filme(
	id int not null auto_increment primary key,
    nome varchar(100) not null,
    nome_original varchar(100) not null,
    data_lancamento date not null, 
    data_relancamento date,
    duracao time not null,
    foto_capa varchar(150) not null,
    sinopse text not null,
    id_classificacao int not null,
    
    constraint FK_Classificacao_Filme #É atribuito um nome ao processso de criar a FK
    foreign key (id_classificacao) #É o atributo desta tabela que será a FK 
    references tbl_classificacao(id), #Especifica de onde irá vir a FK
    
    unique index(id)
);
select * from tbl_filme;

#TABELA: FILME_GENERO
create table tbl_filme_genero(
	id int not null auto_increment,
    id_filme int not null, 
    id_genero int not null,
    
    #relacionamento de Filme e FilmeGenero
    constraint FK_Filme_FilmeGenero
    foreign key (id_filme)
    references tbl_filme(id),
    
    #relacionamento de Genero e FilmeGenero
    constraint FK_Genero_FilmeGenero
    foreign key (id_genero)
    references tbl_genero(id),
    
    primary key (id),
    unique index(id)
);
desc tbl_filme_genero;

#Permite excluir uma constraint de uma tabela
# ( somente podemos alterar a estrutura de uma tabela que fornece uma FK,
# se apagarmos a(s) sua(s) constraint(s) )
alter table tbl_filme_genero
	drop foreign key FK_Filme_FilmeGenero;
    
alter table tbl_filme_genero
	add constraint FK_Filme_FilmeGenero
    foreign key (id_filme)
    references tbl_filme(id);

#TABELA: DIRETOR
create table tbl_diretor(
	id int not null auto_increment primary key,
    nome varchar(80) not null,
    nome_artistico varchar(80) not null,
    foto varchar(150) not null, 
    data_nascimento date not null,
    biografia varchar(45) not null,
    id_sexo int not null,
    
    constraint FK_Diretor_Sexo
    foreign key (id_sexo)
    references tbl_sexo(id),
    
    unique index(id)
);
select * from tbl_diretor;

#TABELA: FILME_DIRETOR
create table tbl_filme_diretor(
	id int not null auto_increment primary key,
    id_filme int not null, 
    id_diretor int not null,
    
    constraint FK_Filme_FilmeDiretor
    foreign key (id_filme)
    references tbl_filme(id),
    
    constraint FK_Diretor_FilmeDiretor
    foreign key (id_diretor)
    references tbl_diretor(id),
    
    unique index(id)
);
desc tbl_filme_diretor;

#TABELA: DIRETOR_NASCIONALIDADE
create table tbl_diretor_nascionalidade(
	id int not null auto_increment primary key, 
    id_diretor int not null,
	id_nascionalidade int not null,
    
    constraint FK_Diretor_DiretorNascionalidade
    foreign key (id_diretor)
    references tbl_diretor(id),
    
    constraint FK_Nascionalidade_DiretorNascionalidade
    foreign key (id_nascionalidade)
    references tbl_nascionalidade(id),
    
    unique index(id)
);
desc tbl_diretor_nascionalidade;

#TABELA: ATOR
create table tbl_ator(
	id int not null auto_increment primary key,
    nome varchar(80) not null,
    foto varchar(150) not null,
    data_nascimento date not null,
    biografia varchar(80) not null,
    nome_artisitico varchar(80) not null,
	id_sexo int not null,
    
    constraint FK_Sexo_Ator
    foreign key (id_sexo)
    references tbl_sexo(id),
    
    unique index(id)
);
select * from tbl_ator;

#TABELA: ATOR_NASCIONALIDADE
create table tbl_ator_nascionalidade(
	id int not null auto_increment primary key,
    id_nascionalidade int not null,
    id_ator int not null,
    
    constraint FK_Nascionalidade_AtorNascionalidade
    foreign key (id_nascionalidade)
    references tbl_nascionalidade(id),
    
    constraint FK_Ator_AtorNascionalidade 
    foreign key (id_ator)
    references tbl_ator(id),
    
    unique index(id)
);
desc tbl_ator_nascionalidade;

#TABELA: FILME_AVALIAÇÃO
create table tbl_filme_avaliacao(
	id int not null auto_increment primary key,
    nota decimal not null,
    comentario varchar(300),
    id_filme int not null,
    
    constraint FK_Filme_FilmeAvaliacao
    foreign key (id_filme)
    references tbl_filme(id),
    
    unique index(id)
);
select * from tbl_filme_avaliacao;

#TABELA: FILME_ATOR
create table tbl_filme_ator(
	id int not null auto_increment primary key,
    id_filme int not null, 
    id_ator int not null,
    
    constraint FK_Filme_FilmeAtor
    foreign key (id_filme)
    references tbl_filme(id),
    
    constraint FK_Diretor_FilmeAtor
    foreign key (id_ator)
    references tbl_ator(id),
    
    unique index(id)
);
desc tbl_filme_diretor;