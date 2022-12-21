create database cinema

create sequence seq_cod_filme start 10001

create table filmes (

	id			integer,
	nome		varchar(100),
	categoria	varchar(20),
	duracao		float,
	lancamento	date

)

insert into filmes values
	(06, 'Avatar', 'Fantasia', '150', '2022-12-20')

insert into filmes (id, nome, categoria, duracao, lancamento) values
	(1, 'Como eu era Antes de Você', 'drama', '110', '2016-06-16'),
	(2, 'Pra sempre', 'romance', '104', '2012-06-07'),
	(3, 'Arremessando Alto', 'drama', '117', '2002-06-03'),
	(4, 'King Richard', 'drama', '144', '2021-12-02'),
	(5, 'No Ritmo do Coração', 'drama', '111', '2021-11-23')
	
select * from filmes 

delete from filmes where id = 6
	returning *
	
alter table filmes add verificar bool

update filmes set verificar = true 
	where categoria = 'drama'

select id, nome, categoria from filmes order by id
	limit 2

select nome from filmes where id <> 3
	order by id 

select * from filmes 
	where nome = 'Pra sempre'
	
drop table filemes