Create database Ger_Join1e;

create table funcionarios(
COD_FUNC INT primary KEY auto_increment NOT NULL,
NOME VARCHAR (255) NOT NULL,
ESPECIALIDADE VARCHAR(255)NOT NULL
);
SELECT * FROM FUNCIONARIOS;

CREATE TABLE dependentes(
COD INT primary key auto_increment NOT NULL,
NOME VARCHAR (255) NOT NULL,
COD_FUNC int ,
FOREIGN KEY (COD_FUNC) REFERENCES funcionarios(COD_FUNC)
);

Insert into funcionarios (NOME,ESPECIALIDADE)
   values  ("JOSÉ","ENGENHEIRO"),
		   ("JOÃO","MESTRE DE OBRAS"),
           ("MARIA","CONTABILISTA");
           
Insert into dependentes (NOME,COD_FUNC)
   values ("PEDRO","1"),
		  ("ALICE","1"),
		  ("LUANA", "3");
          Select *from dependentes;
          
Select funcionarios.NOME,dependentes.NOME
from funcionarios 
inner join dependentes 
on funcionarioS.COD_FUNC = dependentes.COD_FUNC
where funcionarios.COD_FUNC = 1;

select funcionarios.NOME, dependentes.NOME
From funcionarios 
left join dependentes 
ON funcionarios.COD_FUNC =  dependentes.COD_FUNC;

select funcionarios.NOME, dependentes.NOME
From funcionarios 
left join dependentes 
ON funcionarios.COD_FUNC =  dependentes.COD_FUNC
where dependentes.NOME is null;


select funcionarios.NOME, dependentes.NOME
From funcionarios 
right join dependentes 
ON funcionarios.COD_FUNC =  dependentes.COD_FUNC;

select funcionarios.NOME, dependentes.NOME
From funcionarios 
right join dependentes 
ON funcionarios.COD_FUNC =  dependentes.COD_FUNC
where funcionarios.NOME is null




