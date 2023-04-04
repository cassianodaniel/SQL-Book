SELECT totaulas, COUNT(*) FROM cursos
GROUP BY totaulas
HAVING COUNT(*) > 5
ORDER BY totaulas;

SELECT carga, count(*) FROM cursos
WHERE ano > 2015
GROUP BY carga
HAVING carga > (SELECT AVG(CARGA) FROM cursos);

SELECT COUNT(*) from gafanhotos WHERE sexo IN ('F','M') AND nascimento > '2005-01-01';
