SELECT * FROM cursos
WHERE nome LIKE 'H%'

SELECT * FROM cursos
WHERE nome LIKE '%4'

SELECT * FROM cursos
WHERE nome NOT LIKE 'H%'

SELECT * FROM cursos
WHERE nome LIKE '%H%'

SELECT * FROM cursos
WHERE nome LIKE '%H%_'

SELECT * FROM cursos
WHERE nome LIKE 'ph%p_'

SELECT DISTINCT nacionalidade FROM pessoas;
ORDER BY nacionalidade;
