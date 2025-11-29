CREATE DATABASE DB_SUSHIPET;
CREATE TABLE cliente (
    id_cliente INT PRIMARY KEY,
    nome_cliente VARCHAR(60) NOT NULL,
    cpf_cliente CHAR(14) UNIQUE NOT NULL,
    telefone_cliente VARCHAR(15) NOT NULL,
    email_cliente VARCHAR(100) NOT NULL
);

CREATE TABLE Pet (
    id_pet INT PRIMARY KEY,
    nome_pet VARCHAR(20) NOT NULL,
    especie VARCHAR(50) NOT NULL,
    idade_pet INT NOT NULL,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);
CREATE TABLE veterinario (
    id_vet INT PRIMARY KEY,
    nome_vet VARCHAR(60) NOT NULL,
    CRMV VARCHAR(8) NOT NULL,
    cpf_vet INT NOT NULL,
    contato VARCHAR(15) NOT NULL
);
CREATE TABLE historico (
    id_historico INT PRIMARY KEY,
    uso_de_medicamento VARCHAR(60) NOT NULL,
    alergia_historico VARCHAR(8) NOT NULL,
    id_pet INT NOT NULL,
    FOREIGN KEY (id_pet) REFERENCES pet(id_pet)
    );
    
CREATE TABLE consultas (
    id_consulta INT PRIMARY KEY,
    data_consulta DATETIME NOT NULL,
    serviços_consulta VARCHAR(200) NOT NULL,
    id_pet INT NOT NULL,
    FOREIGN KEY (id_pet) REFERENCES pet(id_pet),
	id_vet INT NOT NULL,
    FOREIGN KEY (id_vet) REFERENCES veterinario(id_vet)
    );
    
    CREATE TABLE medicação (
    id_med INT PRIMARY KEY,
    medicamento DATETIME NOT NULL,
    data_de_atualização DATETIME NOT NULL,
    id_pet INT NOT NULL,
    FOREIGN KEY (id_pet) REFERENCES pet(id_pet),
	id_consulta INT NOT NULL,
    FOREIGN KEY (id_consulta) REFERENCES consultas(id_consulta)
    );
    
    CREATE TABLE serviços (
    id_serviço INT PRIMARY KEY,
    nome_serv VARCHAR (30) NOT NULL,
    valor DECIMAL(10,2) NOT NULL
    );
    
    CREATE TABLE pet_medicação (
    id_pet INT NOT NULL,
    id_med INT NOT NULL,
    PRIMARY KEY (id_pet, id_med),
    FOREIGN KEY (id_pet) REFERENCES pet(id_pet),
    FOREIGN KEY (id_med) REFERENCES medicação(id_med)
);

CREATE TABLE medicação_consultas (
    id_med INT NOT NULL,
    id_consulta INT NOT NULL,
    PRIMARY KEY (id_med, id_consulta),
    FOREIGN KEY (id_med) REFERENCES medicação(id_med),
    FOREIGN KEY (id_consulta) REFERENCES consultas(id_consulta)
);