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

