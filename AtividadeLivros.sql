CREATE DATABASE T_Livros

USE T_Livros


CREATE TABLE Autores
(
IdAutores INT PRIMARY KEY IDENTITY 
,Nome VARCHAR(100) NOT NULL
);

CREATE TABLE Livros 
(
IdLivros INT PRIMARY KEY IDENTITY
,Nome VARCHAR(100) NOT NULL
,IdAutores INT FOREIGN KEY REFERENCES Autores (IdAutores)
);

ALTER TABLE Livros ADD IdGeneros INT FOREIGN KEY REFERENCES Generos (IdGeneros)

ALTER TABLE LIVROS DROP COLUMN IdGeneros 

CREATE TABLE Generos 
(
IdGeneros INT PRIMARY KEY IDENTITY
,Nome VARCHAR(100) NOT NULL
);

INSERT INTO Autores (Nome) VALUES ('Fernando Pessoa')
								  ,('Ziraldo')
								  ,('J.K. Rowling')
				

INSERT INTO  Livros (Nome) VALUES ('Livro 1')
								,('Livro 2')
								,('Livro 3')
								,('Livro 4')
								,('Livro 5')

SELECT *
FROM Livros

SELECT *
FROM Autores


ALTER TABLE Autores ADD Email VARCHAR (100) 

UPDATE 
SET Email = '' 
WHERE = 1
-- ALTER TABLE Autores ADD Ativo VARCHAR ()

SELECT *
FROM Autores
JOIN Livros
ON 
