SELECT * FROM cursos
ORDER BY nome;

SELECT nome, carga, ano FROM cursos;

SELECT * FROM cursos
WHERE ANO = '2014';

SELECT * FROM cursos
WHERE ANO != '2014';

SELECT * FROM cursos
WHERE ANO <> '2014';

SELECT * FROM cursos
WHERE ANO >= '2014';

SELECT * FROM cursos
WHERE ANO <= '2014';

SELECT * FROM cursos
WHERE totaulas BETWEEN '20' AND '30'

SELECT nome, descricao, ano FROM cursos
WHERE ano IN (2014, 2016)

SELECT * FROM cursos
WHERE ano >= 2014 AND totaulas > 30

SELECT * FROM cursos
WHERE ano >= 2014 OR totaulas > 30

ORDER BY nome DESC;

ORDER BY nome ASC;


