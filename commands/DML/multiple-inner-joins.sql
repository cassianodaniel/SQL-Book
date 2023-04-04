CREATE TABLE gafanhoto_assiste_curso (
	id INT NOT NULL AUTO_INCREMENT,
    data DATE,
    idgafanhoto INT,
    idcurso INT,
    PRIMARY KEY (id),
    FOREIGN KEY (idgafanhoto) REFERENCES gafanhotos(id),
    FOREIGN KEY (idcurso) REFERENCES cursos(idcurso)
) DEFAULT CHARSET = utf8mb4;

INSERT INTO gafanhoto_assiste_curso VALUES
(DEFAULT, '2014-03-01', '1', '2');

SELECT * FROM gafanhoto_assiste_curso;

SELECT 
gafanhotos.id, 
gafanhotos.nome, 
gafanhoto_assiste_curso.idgafanhoto, 
gafanhoto_assiste_curso.idcurso,
cursos.nome as nomedocurso
FROM gafanhotos
JOIN gafanhoto_assiste_curso
ON gafanhotos.id = gafanhoto_assiste_curso.idgafanhoto
JOIN cursos
ON gafanhoto_assiste_curso.idcurso = cursos.idcurso
