Create database Empresa_Join_1E;

Create table Departamento(
ID_Departamento int primary key auto_increment not null,
Nome varchar (255) not null
);

Create table Funcionarios(
ID_Func int primary key auto_increment not null,
Salario decimal (10,2) not null,
Nome varchar (255) not null,
ID_Departamento int,
FOREIGN KEY (ID_Departamento) REFERENCES Departamento(ID_Departamento)
);

Create table Dependentes(
ID_Dependentes int primary key auto_increment not null,
nome varchar (255) not null,
ID_Func int,
FOREIGN KEY (ID_Func) REFERENCES Funcionarios(ID_Func)
);

insert Departamento (Nome)
   values ("Gerente"),
		  ("RH"),
          ("Marketing Digital"),
          ("Comercial"),
          ("Administrativo");
          
select*from departamento;
          
 insert Funcionarios (Salario, Nome, ID_Departamento)
 values ("14800.00", "Sofia Valente", "1"),
		("4200.00", "Isabel Furlani", "2"),
        ("7300.00", "Guilherme Rocha", "3"),
        ("3900.00", "João Pedro", "4"),
        ("5780.00", "Brenda Menezes", "5");
 
insert Dependentes (Nome, ID_Func)
   values ("Manuela", "2"),
		  ("Noah", "2"),
          ("Joaquim", "5"),
          ("Maria Flor", "1"),
          ("Alice", "3"),
		  ("Carol", "3"); 
    
select*from Funcionarios;    
select*from Dependentes;


#  1) 2 dependentes 

SELECT f.Nome AS Funcionario, COUNT(d.ID_Dependentes) AS Quantidade_Dependentes
FROM Funcionarios f
INNER JOIN Dependentes d ON f.ID_Func = d.ID_Func
GROUP BY f.Nome
HAVING COUNT(d.ID_Dependentes) > 1;


#2)

SELECT d.Nome AS Departamento, f.Nome AS Funcionario
FROM Departamento d
LEFT JOIN Funcionarios f 
ON d.ID_Departamento = f.ID_Departamento
ORDER BY d.Nome, f.Nome;

# 3) ?????????
SELECT funcionarios.nome, 
FROM Funcionarios f
LEFT JOIN Dependentes d ON funcionarios.id = dependentes.funcionario_id
GROUP BY funcionarios.nome;

#4)

SELECT d.Nome AS Departamento, AVG(f.Salario) AS Media_Salarial
FROM Departamento d
LEFT JOIN Funcionarios f ON d.ID_Departamento = f.ID_Departamento
GROUP BY d.Nome;

#5)????
#6)












          
        