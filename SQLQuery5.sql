CREATE DATABASE T_SStop

USE T_SStop

CREATE TABLE Estilos
(
IdEstilos INT PRIMARY KEY IDENTITY
,Nome VARCHAR (100) NOT NULL 
);

INSERT INTO Estilos VALUES ('Rock')
							,('Metal')
							,('MPB')
							,('Eletronica')
							,('Axe')
							,('indie')
							,('Kpop')

CREATE TABLE Artistas
(
IdArtitas INT PRIMARY KEY IDENTITY
,Nome VARCHAR (100)
,IdEstilos INT FOREIGN KEY REFERENCES Estilos (IdEstilos)
);

SELECT *
FROM Estilos

INSERT INTO Artistas (Nome) VALUES  ('Quenn')
							,('Metallica')
							,('Caetano Veloso')
							,('Alok')
							,('Chiclete com Banana')
							,('Artic Monkeys')
							,('BTS')

SELECT *
FROM Artistas


UPDATE Artistas
SET IdEstilos = 1
WHERE IdArtitas = 1;

UPDATE Artistas
SET IdEstilos = 2
WHERE IdArtitas = 2;

UPDATE Artistas
SET IdEstilos = 3
WHERE IdArtitas = 3;

UPDATE Artistas
SET IdEstilos = 4
WHERE IdArtitas = 4;

UPDATE Artistas
SET IdEstilos = 5
WHERE IdArtitas = 5;

UPDATE Artistas
SET IdEstilos = 6
WHERE IdArtitas = 6;

UPDATE Artistas
SET IdEstilos = 7
WHERE IdArtitas = 7;