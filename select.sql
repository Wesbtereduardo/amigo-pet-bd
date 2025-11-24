-- Animais com peso acima de 20kg
SELECT nome, especie, peso
FROM ANIMAL
WHERE peso > 20
ORDER BY peso DESC;

-- Histórico de consultas do animal Rex
SELECT C.data_consulta, C.motivo, C.diagnostico
FROM CONSULTA C
JOIN ANIMAL A ON C.id_animal = A.id_animal
WHERE A.nome = 'Rex';

-- Vacinas aplicadas por Dra. Ana Costa
SELECT V.nome_vacina, V.data_aplicacao, V.fabricante
FROM VACINA V
WHERE V.veterinario_responsavel = 'Dra. Ana Costa';

-- Exames realizados em 15/11/2025
SELECT tipo_exame, resultado_texto
FROM EXAME
WHERE data_realizacao = '2025-11-15';

-- Tutores e seus animais
SELECT T.nome_completo AS Tutor, A.nome AS Animal
FROM TUTOR T
JOIN ANIMAL A ON T.id_tutor = A.id_tutor
ORDER BY T.nome_completo;