CREATE DATABASE T_PSales;
-- COLOCAR O BANCO DE DADOS EM USO
USE T_PSales
CREATE TABLE Cursos
(
-- Tipo de dados, Pk, Fk
	IdCurso INT PRIMARY KEY IDENTITY 
	,Nome	VARCHAR(200) NOT NULL UNIQUE 
);


-- CRIAR TABELA DE DISCIPLINAS
CREATE TABLE Disciplinas 
(
	IdDisciplinas INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(250) NOT NULL 
	,IdCurso INT FOREIGN KEY REFERENCES Cursos (IdCurso) 
);

-- CRIAR TABELA DE ALUNOs
CREATE TABLE Aluno 
(
	IdAluno INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(250) NOT NULL UNIQUE 
);

--	 CRIAR A TABELA INTERMEDIÁRIA DE ALUNOS E CURSOS (VINCULAR)
CREATE TABLE CursosAlunos
(
	IdCurso INT FOREIGN KEY REFERENCES Cursos (IdCurso)
	,IdAlunos INT FOREIGN KEY REFERENCES Aluno (IdAluno)
);

--  INSERIR REGISTROS
-- Inserir em algum local alguma coisa
-- inserir into nome_tabela(colunas) values (valores)
INSERT INTO Cursos VALUES ('Técnico em dev. Sistemas');

INSERT INTO Cursos VALUES ('Técnico Em Redes');
INSERT INTO Cursos VALUES ('Curso A')
		 


-- VISUALIZAÇÃO 
SELECT IdCurso, Nome
		FROM Cursos;

SELECT Nome
	FROM Cursos;

SELECT *
	FROM Cursos;

SELECT *
FROM Cursos
WHERE IdCurso = 1;

-- ATUALIZACAO
-- TECNICO EM DESENVOLVIMENTO DE SISTEMAS
-- UPTADE TABELA SET QUAL_COLUNA = NOVO_VALOR CONDICAO
UPDATE Cursos
	SET Nome = 'técnico em Desenvolvimento de Sistemas'
	WHERE IdCurso = 1;


INSERT INTO Disciplinas(Nome    ,   IdCurso)
	VALUES				('HTML'	,	1	);


SELECT * 
FROM Disciplinas;

DELETE FROM Cursos
WHERE IdCurso = 5;

--CRUD
-- CREATE, READ, UPDATE, DELETE
-- INSERT, SELECT, UPDATE, DELETE