create database cinema

create sequence seq_cod_filme start 10001

create table FILEMES (

	id			integer default nextval('seq_cod_filme'),
	nome		varchar(20),
	categoria	varchar(10),
	duracao		float,
	lancamento	date

)

insert into filemes (nome, categoria, duracao, lancamento) values
	('Avatar', 'Fantasia', '150', '2022-12-20'),
	('O Senhor dos Aneis', 'Fantasia', '184', '2004-12-20'),
	('Harry Potter', 'Fantasia', '160', '2002-06-20'),
	('Top Gun', 'Aventura', '89', '2022-08-12'),
	('Sexta-Feira 13', 'Terror', '78', '2000-04-13')
	
select * from filemes 

delete from filemes where id = 10005
	returning *
	
alter table filemes add verificar bool

update filemes set verificar = true 
	where categoria = 'Fantasia'

update filemes set id = 6 
	where nome = 'Avatar'
	
select id, nome, categoria from filemes 
	limit 2

select nome from filemes 

select * from filemes 
	where categoria = 'Aventura'