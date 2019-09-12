USE T_SStop

SELECT * FROM Estilos

SELECT * FROM Estilos

SELECT * 
FROM Estilos
WHERE IdEstilos = 1

SELECT * 
FROM Estilos
WHERE Nome = 'Kpop'

SELECT * 
FROM Estilos
WHERE Nome = 'Kpo'

SELECT * 
FROM Estilos
WHERE Nome LIKE 'Kpo%'

SELECT * 
FROM Estilos
WHERE Nome LIKE '%p%'

SELECT * 
FROM Estilos
WHERE Nome LIKE '%pop'


SELECT *
FROM Artistas
JOIN Estilos
ON Artistas.IdEstilos = Estilos.IdEstilos

INSERT INTO Artistas (Nome) VALUES ('Michael Jackson');

SELECT *
FROM Artistas
LEFT JOIN Estilos
ON Artistas.IdEstilos = Estilos.IdEstilos

INSERT  INTO Estilos (Nome) VALUES ('Pop')

SELECT *
FROM Artistas
RIGHT JOIN Estilos
ON Artistas.IdEstilos = Estilos.IdEstilos

SELECT *
FROM Artistas
FULL JOIN Estilos
ON Artistas.IdEstilos = Estilos.IdEstilos




