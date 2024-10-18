#criando uma views
create view VW_lista_de_funcionarios as 
Select nome, especialidade
from funcionarios;

#utilizando views crianda
select * from VW_lista_de_funcionarios;

create view vw_lista_de_dependentes as
select nome
from dependentes;

select * from vw_lista_de_dependentes;

create view vw_funcionario_com_dependentes as
select funcionarios.nome as fun_nome, dependentes.nome as dep_nome
from funcionarios 
inner join dependentes
on funcionarios.COD_FUNC = dependentes.COD;

select * from vw_funcionario_com_dependentes;

create view vw_funcionario_e_dependentes as
select funcionarios.nome as fun_nome, dependentes.nome as dep_nome
from dependentes 
left join funcionarios
on funcionarios.COD_FUNC = dependentes.COD;

select * from vw_funcionario_e_dependentes;

create view vw_funcionario_dependentes as
select funcionarios.nome as fun_nome, dependentes.nome as dep_nome
from funcionarios 
right join dependentes
on funcionarios.COD_FUNC = dependentes.COD;

select * from vw_funcionario_dependentes;

#exclunding
create view vw_funcionario_e_dependentes as
select funcionarios.nome as fun_nome, dependentes.nome as dep_nome
from dependentes
left join funcionarios
on funcionarios.COD_FUNC = dependentes.COD
where dependentes.nome is null;

create view vw_funcionario_dependentes as
select funcionarios.nome as fun_nome, dependentes.nome as dep_nome
from funcionarios 
right join dependentes
on funcionarios.COD_FUNC = dependentes.COD
where funcionarios.nome is null;






