CREATE DATABASE amigo_pet;
USE amigo_pet;

CREATE TABLE TUTOR (
    id_tutor INT PRIMARY KEY AUTO_INCREMENT,
    nome_completo VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    telefone VARCHAR(15),
    email VARCHAR(100),
    endereco VARCHAR(200),
    data_cadastro DATE
) ENGINE=InnoDB;

CREATE TABLE ANIMAL (
    id_animal INT PRIMARY KEY AUTO_INCREMENT,
    id_tutor INT NOT NULL,
    nome VARCHAR(50) NOT NULL,
    especie VARCHAR(50),
    raca VARCHAR(50),
    data_nascimento DATE,
    peso DECIMAL(5,2),
    porte VARCHAR(20),
    sexo CHAR(1),
    microchip VARCHAR(20),
    FOREIGN KEY (id_tutor) REFERENCES TUTOR(id_tutor) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE VETERINARIO (
    id_veterinario INT PRIMARY KEY AUTO_INCREMENT,
    nome_completo VARCHAR(100) NOT NULL,
    crmv VARCHAR(20) NOT NULL,
    especialidade VARCHAR(50),
    telefone VARCHAR(15),
    email VARCHAR(100)
) ENGINE=InnoDB;

CREATE TABLE CONSULTA (
    id_consulta INT PRIMARY KEY AUTO_INCREMENT,
    id_animal INT NOT NULL,
    id_veterinario INT NOT NULL,
    data_consulta DATE NOT NULL,
    hora_consulta TIME NOT NULL,
    motivo VARCHAR(200),
    diagnostico VARCHAR(200),
    observacoes TEXT,
    temperatura DECIMAL(4,1),
    frequencia_cardiaca INT,
    status VARCHAR(20),
    FOREIGN KEY (id_animal) REFERENCES ANIMAL(id_animal) ON DELETE CASCADE,
    FOREIGN KEY (id_veterinario) REFERENCES VETERINARIO(id_veterinario) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE VACINA (
    id_vacina INT PRIMARY KEY AUTO_INCREMENT,
    id_animal INT NOT NULL,
    nome_vacina VARCHAR(100) NOT NULL,
    data_aplicacao DATE,
    data_proxima_dose DATE,
    lote VARCHAR(20),
    fabricante VARCHAR(50),
    veterinario_responsavel VARCHAR(100),
    FOREIGN KEY (id_animal) REFERENCES ANIMAL(id_animal) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE EXAME (
    id_exame INT PRIMARY KEY AUTO_INCREMENT,
    id_consulta INT NOT NULL,
    tipo_exame VARCHAR(100) NOT NULL,
    data_realizacao DATE,
    resultado_texto TEXT,
    arquivo_anexo VARCHAR(200),
    laboratorio VARCHAR(100),
    FOREIGN KEY (id_consulta) REFERENCES CONSULTA(id_consulta) ON DELETE CASCADE
) ENGINE=InnoDB;