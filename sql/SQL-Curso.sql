USE T_PSales

SELECT *
FROM Disciplinas

INSERT INTO Disciplinas (Nome) VALUES ('Disciplina de redes') 

UPDATE Disciplinas
SET IdCurso = 2
WHERE IdDisciplinas = 2;

SELECT *
FROM Cursos

SELECT *
FROM Disciplinas

SELECT *
FROM Disciplinas
JOIN Cursos
ON Disciplinas.IdCurso = Cursos.IdCurso
