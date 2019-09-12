CREATE DATABASE T_DPS

USE T_DPS 

CREATE TABLE DEPARTAMENTOS 
(
IdDepartamentos INT PRIMARY KEY IDENTITY
,Nome VARCHAR (100) NOT NULL
);

CREATE TABLE FUNCIONARIOS
(
Idfuncionario INT PRIMARY KEY IDENTITY
,Nome VARCHAR (100) NOT NULL 
,Salarios INT NOT NULL
,IdDepartamentos INT FOREIGN KEY REFERENCES DEPARTAMENTOS (IdDepartamentos)
);
CREATE TABLE Habilidades 
(
IdHabilidades INT PRIMARY KEY IDENTITY 
,Nome VARCHAR (100) NOT NULL
);

CREATE TABLE HabilidadesFuncionarios 
(
IdFuncionario INT FOREIGN KEY REFERENCES FUNCIONARIOS (IdFuncionario)
,IdHabilidades INT FOREIGN KEY REFERENCES Habilidades (IdHabilidades) 
);

INSERT INTO DEPARTAMENTOS VALUES ('Administrativo')
								,('Recursos Humanos')
								,('Financeiro')
								,('Vendas')
								,('Marketing')
									
SELECT *
FROM DEPARTAMENTOS

INSERT INTO Habilidades VALUES ('Lealdade')
							  ,('Quebrar codigos')
							  ,('Gestão de tempo')
							  ,('Comunicação')
							  ,('Liderança')
									
SELECT *
FROM Habilidades

INSERT INTO FUNCIONARIOS (Nome, Salarios , IdDepartamentos) VALUES ('João', 5000, 1 )
																	,('Taiga',1300, 5)
																	,('Tiago',1500, 3)
																	,('Lucas',3000,4)
																	,('Thiago',1000,2)

SELECT *
FROM FUNCIONARIOS