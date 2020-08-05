select ano, nome,carga from cursos
order by ano, nome;

Select * from cursos
where ano= '2016'
order by nome;

Select nome, carga from cursos
where ano= '2016'
order by nome;

select nome, descricao, ano from cursos
where ano <='2015'
order by ano, nome;

select nome, descricao, ano from cursos
where ano between 2014 and 2016
order by ano desc, nome;

select nome, ano from cursos
where ano between '2015'and'2016'
order by nome, ano asc;

use mvtecnologies;

show tables;

select * from Clientes;

select * from cursos
where nome like '%P%';

select totaulas from cursos
order by totaulas;

select distinct totaulas from cursos
order by totaulas;

select totaulas from cursos
group by totaulas
order by totaulas;

select totaulas, count(*) from cursos
group by totaulas
order by totaulas;

select * from cursos where totaulas =30;

select * from cursos where totaulas =12;

select * from cursos where totaulas =18;

select carga, totaulas from cursos where totaulas =30
group by carga;

select carga, count(nome) from cursos where totaulas =30
group by carga;

select nome, descricao, carga, totaulas, count(nome) from cursos where totaulas =30;

select carga, count(nome) from cursos
group by carga
having count(nome)>3;

select avg(carga) from cursos;

Select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos);

Select profissao, count(*) from gafanhotos
group by profissao;

select sexo, count(sexo) from gafanhotos
where nascimento > 01-01-2005
group by sexo;

Select nacionalidade, count(*) from gafanhotos
where nacionalidade != 'Brasil'
group by nacionalidade
having count(nacionalidade)>3;

Select altura, count(*) from gafanhotos
where peso>'100'
group by altura
having altura > (select avg(altura) from gafanhotos); 
