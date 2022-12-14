USE AULA;
SELECT * FROM ALUNO;
SELECT * FROM CURSO;

INSERT INTO CURSO (COD_CURSO, NOME)
VALUES (123, 'SI'),
	   (124, 'GTI'),
       (125, 'ADS');

INSERT INTO CURSO 
VALUES (126, 'CD', 300);

-- EXCLUIR REGISTRO NA TABELA CURSO
DELETE FROM CURSO
WHERE COD_CURSO = 126;

SELECT COD_CURSO FROM CURSO
WHERE NOME = 'CD';

-- EXCLUIR A COLUNA CARGA_HORARIA DA TABELA CURSO
ALTER TABLE CURSO
DROP COLUMN CARGA_HORARIA;

-- INCLUIR A COLUNA CARGA_HORARIA
ALTER TABLE CURSO
ADD COLUMN CARGA_HORARIA INT;

-- INSERINDO VALORES NA TABELA ALUNO
INSERT INTO ALUNO
VALUES (24862,'FABIANA',1303985, 39692583, 123);
SELECT * FROM ALUNO;
SELECT * FROM CURSO;

-- FAZENDO UPDATE DO RA ALUNO
UPDATE ALUNO
SET RA = 139624
WHERE RA = 18084;

-- CONSULTA (SELECT) 
SELECT NOME,CPF FROM ALUNO
WHERE CPF = 1;

-- SELECT NOME E RA ALUNOS CURSO 124
SELECT NOME,RA  FROM ALUNO
WHERE COD_CURSO = 124;

-- BUSCAR RA , NOME DO ALUNO E NOME DO CURSO QUE
-- ESTÁ MATRICULADO
SELECT ALUNO.RA, ALUNO.NOME, CURSO.NOME
FROM ALUNO, CURSO
WHERE ALUNO.COD_CURSO = CURSO.COD_CURSO;

-- CRIAR A TABELA DISCIPLINA  (CODIGO,NOME,CARGA HORARIA)
CREATE TABLE DISCIPLINA (
COD_DISCIPLINA INT NOT NULL PRIMARY KEY,
NOME VARCHAR(30),
CARGA_HORARIA INT
);





INSERT INTO DISCIPLINA ( COD_DISCIPLINA,NOME,CARGA_HORARIA)
VALUES (987, 'BANCO DE DADOS',400);

-- CRIAR TABELA INTERMEDIARIA ENTRE ALUNO E DISCIPLINA (NOTA ALUNO)
ALTER TABLE ALUNO 
ADD COLUMN NOTA_ALUNO INT NOT NULL;




SELECT * FROM ALUNO;
SELECT * FROM CURSO;
SELECT * FROM DISCIPLINA;

-- ALTERANDO VALOR NOTA ALUNO
UPDATE ALUNO 
SET NOTA_ALUNO = 8
WHERE NOME = 'ENRICOLA';

UPDATE ALUNO 
SET NOTA_ALUNO = 5
WHERE NOME = 'FABIANA';

UPDATE ALUNO 
SET NOTA_ALUNO = 10
WHERE NOME = 'ENZO';

-- ALTERANDO TABELA ALUNO 
ALTER TABLE ALUNO 
ADD COLUMN COD_DISCIPLINA INT  ;

ALTER TABLE ALUNO 
ADD CONSTRAINT PK_COD_DISCIPLINA FOREIGN KEY (COD_DISCIPLINA) REFERENCES DISCIPLINA (COD_DISCIPLINA);

UPDATE ALUNO
SET COD_DISCIPLINA = 987
WHERE NOME = 'ENRICOLA';

UPDATE ALUNO 
SET COD_DISCIPLINA=123
WHERE NOME = 'FABIANA';

UPDATE ALUNO 
SET COD_DISCIPLINA = 543
WHERE NOME = 'ENZO';

-- SELECT 
SELECT ALUNO.NOME, ALUNO.RA , CURSO.NOME ,CURSO.COD_CURSO, DISCIPLINA.COD_DISCIPLINA, ALUNO.NOTA_ALUNO 
FROM ALUNO,CURSO,DISCIPLINA
WHERE ALUNO.COD_CURSO = CURSO.COD_CURSO
LIMIT 3;

SELECT * FROM DISCIPLINA













 












