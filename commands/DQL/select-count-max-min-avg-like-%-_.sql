SELECT DISTINCT nacionalidade FROM pessoas;
ORDER BY nacionalidade;

SELECT COUNT(*) FROM cursos;

SELECT COUNT(*) FROM cursos WHERE nome LIKE 'C__';

SELECT MAX(carga) FROM cursos;

SELECT MAX(totaulas) FROM cursos WHERE ano = '2016';

SELECT MIN(totaulas) FROM cursos WHERE ano = '2016';

SELECT nome, MIN(totaulas) FROM cursos WHERE ano = '2016';

SELECT * from cursos;

SELECT SUM(totaulas) FROM cursos;

SELECT AVG(totaulas) FROM cursos;

SELECT nome FROM gafanhotos;

SELECT * FROM gafanhotos;

SELECT * FROM gafanhotos WHERE nascimento BETWEEN '2000/01/01' AND '2015/12/31';

SELECT * FROM gafanhotos WHERE profissao = 'Programador';

SELECT * FROM gafanhotos WHERE sexo = 'F' AND NOME LIKE 'J%' AND nacionalidade = 'Brasil';

SELECT * FROM gafanhotos WHERE sexo = 'M' AND PESO < '100.00' AND nacionalidade != 'Brasil';

SELECT nome, MAX(altura) FROM gafanhotos;

SELECT AVG(peso) FROM gafanhotos;

SELECT COUNT(*) FROM gafanhotos WHERE altura > '1.90';
