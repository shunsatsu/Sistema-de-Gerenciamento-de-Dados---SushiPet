# Projeto de Modelagem de Banco de Dados: Clinica Veterinaria "SushiPet"

Este repositório contém o projeto SQL completo desenvolvido para a disciplina de Modelagem de Banco de Dados (CDC - Cruzeiro do Sul Virtual). O objetivo foi modelar, implementar e manipular um banco de dados relacional funcional (em 3ª Forma Normal - 3FN) para gerenciar o sistema de pedidos de uma pizzaria fictícia.

O projeto foi dividido em quatro etapas principais:

Modelo Conceitual: Definição do minimundo e dos conceitos de dados.
Modelo Entidade-Relacionamento (DER): Criação do diagrama DER, identificando entidades, atributos e cardinalidades.
Modelo Lógico: Conversão do DER em um esquema de tabelas normalizado (3FN).
Implementação (SQL): Criação dos scripts SQL (DDL e DML) para construir e testar o banco de dados.
1. Documentação do Projeto (Atividades 1, 2 e 3)
Todo o processo de concepção do projeto, desde a análise de requisitos (Minimundo) até o Modelo Conceitual (DER) e o Modelo Lógico (3FN), está documentado nos PDFs desta pasta, conforme a metodologia da disciplina.

 Atividade 1: Projeto Conceitual (Minimundo)
 
 Atividade 2: Modelo Conceitual (DER)
 
 Atividade 3: Projeto Lógico (Formas Normais)

## 2. Estrutura do Banco de Dados
O modelo lógico final consiste em 9 tabelas principais, duas delas são associativas, todas normalizadas até a 3FN:

* *CLIENTE*: Armazena os dados cadastrais dos clientes (nome,cpf, telefone, email).

* *PET*: Armazena os dados cadastrais dos pets que iram consultar na clinica (identificação do pet, nome,especie, idade, identificação do tutor)

* *HISTORICO*: Armazena os dados importantes do prontuario veterinario de consultas passadas dos pets (protocolo do historico, medicação em uso pelo pet,processos cirurgicos passados, alergias, identificação do pet)

* *VETERINARIO*: Armazena as informações dos Veterinarios da clinica (nome,cpf,CRMV,contato) 

* *CONSULTAS*: Armazena as consultas agendadas da clinica (numero protocolo da consulta, data da consulta, serviços que seram realizados, alergias, identificador do pet e do veterinario que realizara a consulta.)

* *MEDICAÇÂO*: informa a medicação preescrita pelo veterinario apos a consulta. (medicamento, data da preescrição, identificação do protocolo da consulta e do pet)

* *SERVIÇO*: Define os serviços e seus reespectivos valores cobrados que a clinica realiza (nome,valor)

## 3. Conteúdo do Repositório
Este repositório contém os scripts SQL e a documentação completa do projeto:

* /documentacao: Pasta contendo os PDFs das Atividades 1, 2 e 3 (o processo de concepção) e as Provas de Execução (MySQL Workbench) contendo os prints que comprovam a criação e execução bem-sucedida de todos os scripts no MySQL Workbench..

* README.md: Este arquivo, com a documentação do projeto.

* schema.sql: (DDL - Data Definition Language) Script que cria a estrutura do banco (CREATE DATABASE, CREATE TABLE) e define todas as chaves primárias (PK) e estrangeiras (FK).

* insert.sql: (DML - Data Manipulation Language) Script que popula o banco de dados, inserindo os dados de exemplo (clientes, produtos e pedidos).

* consultas.sql: (DQL - Data Query Language) Contém 5 consultas SELECT complexas para análise de dados, utilizando JOIN, GROUP BY, ORDER BY e AVG().

* manipulacao.sql: (DML) Contém os comandos UPDATE e DELETE para demonstrar a manipulação e a integridade dos dados (como ON DELETE CASCADE).

## 4. Como Executar
O projeto foi desenvolvido e testado utilizando MySQL Workbench.

É crucial que os scripts sejam executados na ordem correta para que as Chaves Estrangeiras (FKs) funcionem.

* 1-Execute o schema.sql primeiro. Isso irá criar o banco e todas as tabelas vazias.

* 2-Execute o insert.sql em seguida. Isso irá popular as tabelas com os dados de exemplo.

* 3-Execute o consultas.sql para testar as consultas de leitura e ver os resultados.

* 4-Execute o manipulacao.sql por último, para testar as regras de atualização e exclusão. (comandos de UPDATE antes)

## 5. Prova de Execução (MySQL Workbench)
Dentro da pasta "/documentos" dentro deste repositório contém prints que comprovam a criação e execução bem-sucedida de todos os scripts no MySQL Workbench.
