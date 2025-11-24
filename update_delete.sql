-- Atualizar telefone do tutor
UPDATE TUTOR
SET telefone = '31977777777'
WHERE id_tutor = 1;

-- Corrigir peso do animal
UPDATE ANIMAL
SET peso = 32.0
WHERE id_animal = 1;

-- Alterar status da consulta
UPDATE CONSULTA
SET status = 'Revisão Agendada'
WHERE id_consulta = 1;

-- Desativar modo seguro para permitir DELETE
SET SQL_SAFE_UPDATES = 0;

-- Remover vacinas vencidas
DELETE FROM VACINA
WHERE data_proxima_dose IS NOT NULL
  AND data_proxima_dose < CURDATE();

-- Excluir exame com erro
DELETE FROM EXAME
WHERE resultado_texto = 'Erro de leitura';

-- Reativar modo seguro
SET SQL_SAFE_UPDATES = 1;

-- Remover animal transferido
DELETE FROM ANIMAL
WHERE nome = 'Rex' AND id_tutor = 1;