ALTER TABLE pessoas
ADD COLUMN profissao varchar(10);

ALTER TABLE pessoas
DROP COLUMN profissao;

ALTER TABLE pessoas
ADD COLUMN profissao varchar(10) AFTER nome;

ALTER TABLE pessoas
ADD COLUMN codigo int FIRST;

ALTER TABLE pessoas
DROP COLUMN codigo;

ALTER TABLE pessoas
MODIFY COLUMN profissao VARCHAR(20) NOT NULL DEFAULT '';

ALTER TABLE pessoas
CHANGE COLUMN profissao prof VARCHAR(20);

ALTER TABLE pessoas
RENAME TO gafanhotos;

ALTER TABLE gafanhotos
RENAME TO pessoas;

CREATE TABLE IF NOT EXISTS cursos (
	nome VARCHAR(30) NOT NULL UNIQUE,
    descricao TEXT NOT NULL,
    carga INT UNSIGNED,
    totaulas INT,
    ano YEAR DEFAULT '2023'
) DEFAULT CHARSET = utf8mb4;

ALTER TABLE cursos
ADD COLUMN idcurso INT FIRST;

ALTER TABLE cursos
ADD PRIMARY KEY (idcurso);

DROP TABLE IF EXISTS cursos;
