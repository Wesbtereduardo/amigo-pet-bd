INSERT INTO TUTOR (nome_completo, cpf, telefone, email, endereco, data_cadastro)
VALUES 
('Carlos Silva', '12345678900', '31999999999', 'carlos@email.com', 'Rua A, 123', '2025-11-01'),
('Maria Oliveira', '98765432100', '31988888888', 'maria@email.com', 'Rua B, 456', '2025-11-02');

INSERT INTO ANIMAL (id_tutor, nome, especie, raca, data_nascimento, peso, porte, sexo, microchip)
VALUES 
(1, 'Rex', 'Cão', 'Labrador', '2020-05-10', 30.5, 'Grande', 'M', 'CHIP123'),
(2, 'Mimi', 'Gato', 'Persa', '2022-03-15', 4.2, 'Pequeno', 'F', 'CHIP456');

INSERT INTO VETERINARIO (nome_completo, crmv, especialidade, telefone, email)
VALUES 
('Dra. Ana Costa', 'MG12345', 'Clínica Geral', '31977777777', 'ana@vet.com'),
('Dr. João Pereira', 'MG54321', 'Cirurgia', '31966666666', 'joao@vet.com');

INSERT INTO CONSULTA (id_animal, id_veterinario, data_consulta, hora_consulta, motivo, diagnostico, observacoes, temperatura, frequencia_cardiaca, status)
VALUES 
(1, 1, '2025-11-15', '10:30:00', 'Check-up', 'Saudável', 'Animal em boas condições', 38.5, 90, 'Finalizada'),
(2, 2, '2025-11-16', '14:00:00', 'Cirurgia de rotina', 'Recuperação boa', 'Animal em recuperação', 37.8, 110, 'Em andamento');

INSERT INTO VACINA (id_animal, nome_vacina, data_aplicacao, data_proxima_dose, lote, fabricante, veterinario_responsavel)
VALUES 
(1, 'Antirrábica', '2025-11-15', '2026-11-15', 'L123', 'PetPharma', 'Dra. Ana Costa'),
(2, 'V8 Felina', '2025-11-16', '2026-05-16', 'L456', 'VetLife', 'Dr. João Pereira');

INSERT INTO EXAME (id_consulta, tipo_exame, data_realizacao, resultado_texto, arquivo_anexo, laboratorio)
VALUES 
(1, 'Hemograma', '2025-11-15', 'Resultados dentro da normalidade', 'hemograma_rex.pdf', 'LabVet'),
(2, 'Raio-X', '2025-11-16', 'Fratura corrigida com sucesso', 'raiox_mimi.pdf', 'LabVet');