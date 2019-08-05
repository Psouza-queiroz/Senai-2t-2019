CREATE DATABASE T_MODA

USE T_MODA

CREATE TABLE Cores 
(
IdCores INT PRIMARY KEY IDENTITY
,Nome VARCHAR (100) NOT NULL
);

CREATE TABLE Marca 
(
IdMarca INT PRIMARY KEY IDENTITY
,Nome VARCHAR (100) NOT NULL UNIQUE
);

CREATE TABLE Tamanho 
(
IdTamanho  INT PRIMARY KEY IDENTITY 
,Nome VARCHAR (100) NOT NULL 
);

CREATE TABLE Camisetas
(
IdCamisetas INT PRIMARY KEY IDENTITY
,Nome VARCHAR (100) NOT NULL
,IdMarca INT FOREIGN KEY REFERENCES Marca (IdMarca)
);

INSERT INTO Cores Values ('Azul')
						,('Vermelho')
						,('Roxo')
						,('Preto')
						,('Branco')
SELECT *
FROM Cores

INSERT INTO Tamanho VALUES ('P')
						  ,('M')
						  ,('G')
						  ,('GG')

SELECT *
FROM Tamanho

INSERT INTO Marca VALUES ('Gucci')
						,('Supreme')
						,('Nike')
						,('Adidas')
						,('Lacoste')

SELECT *
FROM Marca
						  
INSERT INTO Camisetas (Nome, IdMarca) VALUES ('Camiseta 1',1)
											,('Camiseta 2',3)
											 ,('Camiseta 3',4)
											 ,('Camiseta 4',5)
											,('Camiseta 5',2)
	

SELECT *
FROM Camisetas


