use cadastro;
select profissao, count(profissao) from gafanhotos
group by profissao;

select sexo, count(sexo) from gafanhotos
where nascimento>2005-01-01
group by sexo desc;

select nacionalidade, count(nacionalidade) from gafanhotos
where nacionalidade <> 'brasil' 
group by nacionalidade
having count(nacionalidade)>3;

select altura, count(*) from gafanhotos where peso > '100'
group by altura
having altura > (select avg(altura) from gafanhotos);

select avg(totaulas), ano, count(ano) from cursos
group by ano;

 select nacionalidade, count(nacionalidade) from gafanhotos
 where nacionalidade <> 'brasil'
 group by nacionalidade
 having count(nacionalidade)>3;
 
 select altura, count(*) from gafanhotos
 where peso > '100'
 group by altura
 having altura>(select avg(altura) from gafanhotos);
 
 describe gafanhotos;
 
 alter table gafanhotos
 add column cursopreferido int;
 
 alter table gafanhotos
 add foreign key (cursopreferido)
 references cursos(idcurso);
 
 select * from gafanhotos;
 
 update gafanhotos set cursopreferido = '6' where id = 1;
 
delete from cursos where idcurso='6';

select gafanhotos.nome, cursos.nome, cursos.ano
from gafanhotos join cursos
on cursos.idcurso = gafanhotos.cursopreferido
order by gafanhotos.nome asc;
