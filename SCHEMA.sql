CREATE DATABASE DB_SUSHIPET;
CREATE TABLE cliente (
    id_cliente INT PRIMARY KEY,
    nome_cliente VARCHAR(60) NOT NULL,
    cpf_cliente CHAR(14) UNIQUE NOT NULL,
    telefone_cliente VARCHAR(15) NOT NULL,
    email_cliente VARCHAR(100) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE pet (
    id_pet INT PRIMARY KEY,
    nome_pet VARCHAR(20) NOT NULL,
    especie VARCHAR(50) NOT NULL,
    idade_pet INT NOT NULL,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente) ON DELETE CASCADE
) ENGINE = InnoDB;

CREATE TABLE veterinario (
    id_vet INT PRIMARY KEY,
    nome_vet VARCHAR(60) NOT NULL,
    CRMV VARCHAR(8) NOT NULL,
    cpf_vet INT NOT NULL,
    contato VARCHAR(15) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE historico (
    id_historico INT PRIMARY KEY,
    uso_de_medicamento VARCHAR(60) NOT NULL,
    alergia_historico VARCHAR(8) NOT NULL,
    id_pet INT NOT NULL,
    FOREIGN KEY (id_pet) REFERENCES pet(id_pet) ON DELETE CASCADE
) ENGINE = InnoDB;
    
CREATE TABLE consultas (
    id_consulta INT PRIMARY KEY,
    data_consulta DATETIME NOT NULL,
    serviços_consulta VARCHAR(200) NOT NULL,
    id_pet INT NOT NULL,
    FOREIGN KEY (id_pet) REFERENCES pet(id_pet) ON DELETE CASCADE,
    id_vet INT NOT NULL,
    FOREIGN KEY (id_vet) REFERENCES veterinario(id_vet) ON DELETE CASCADE
) ENGINE = InnoDB;
    
 CREATE TABLE medicaçao (
    id_med INT PRIMARY KEY,
    medicamento VARCHAR(100) NOT NULL,
    data_de_atualizaçao DATETIME NOT NULL,
    id_pet INT NOT NULL,
    FOREIGN KEY (id_pet) REFERENCES pet(id_pet) ON DELETE CASCADE,
    id_consulta INT NOT NULL,
    FOREIGN KEY (id_consulta) REFERENCES consultas(id_consulta) ON DELETE CASCADE
) ENGINE = InnoDB;
    
CREATE TABLE serviços (
    id_serviço INT PRIMARY KEY,
    nome_serv VARCHAR (30) NOT NULL,
    valor DECIMAL(10,2) NOT NULL
) ENGINE = InnoDB;
    
CREATE TABLE pet_medicaçao (
    id_pet INT NOT NULL,
    id_med INT NOT NULL,
    PRIMARY KEY (id_pet, id_med),
    FOREIGN KEY (id_pet) REFERENCES pet(id_pet) ON DELETE CASCADE,
    FOREIGN KEY (id_med) REFERENCES medicaçao(id_med) ON DELETE CASCADE
) ENGINE = InnoDB;

CREATE TABLE medicaçao_consultas (
    id_med INT NOT NULL,
    id_consulta INT NOT NULL,
    PRIMARY KEY (id_med, id_consulta),
    FOREIGN KEY (id_med) REFERENCES medicaçao(id_med) ON DELETE CASCADE,
    FOREIGN KEY (id_consulta) REFERENCES consultas(id_consulta) ON DELETE CASCADE
) ENGINE = InnoDB;