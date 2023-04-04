ALTER TABLE gafanhotos
ADD COLUMN cursopreferido INT;

ALTER TABLE gafanhotos
ADD FOREIGN KEY (cursopreferido)
REFERENCES cursos(idcurso);

UPDATE gafanhotos SET cursopreferido = '6' WHERE id = '1';
UPDATE gafanhotos SET cursopreferido = '5' WHERE id = '2';
UPDATE gafanhotos SET cursopreferido = '4' WHERE id = '3';

SELECT 
gafanhotos.nome, 
cursos.nome
FROM gafanhotos 
INNER JOIN cursos /* or JOIN */
ON gafanhotos.cursopreferido = cursos.idcurso
LIMIT 10;
