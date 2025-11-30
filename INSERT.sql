INSERT INTO cliente (id_cliente, nome_cliente, cpf_cliente, telefone_cliente, email_cliente) VALUES
(1, 'João Pedro Demétrio', '123.456.789-01', '(11) 98765-4321', 'joaopedro@example.com'),
(2, 'Mariana Alves Costa', '321.654.987-22', '(21) 99874-2211', 'mariana.costa@example.com'),
(3, 'Ricardo Menezes Rocha', '987.654.321-33', '(31) 91234-8899', 'ricardo.rocha@example.com'),
(4, 'Bianca Ferreira Lima', '654.987.321-44', '(41) 97788-5522', 'bianca.lima@example.com'),
(5, 'Carlos Eduardo Martins', '159.753.486-55', '(51) 96543-7788', 'carlos.martins@example.com');
INSERT INTO Pet (id_pet, nome_pet, especie, idade_pet, id_cliente) VALUES
(1, 'Thor', 'Cachorro', 5, 1),
(2, 'Mingau', 'Gato', 2, 2),
(3, 'Billy', 'Cachorro', 3, 3),
(4, 'Luna', 'Gato', 1, 4),
(5, 'Nina', 'Coelho', 4, 5);
INSERT INTO veterinario (id_vet, nome_vet, CRMV, cpf_vet, contato) VALUES
(1, 'Dra. Juliana Moreira', 'SP123456', 123456789, '(11) 91234-0000'),
(2, 'Dr. Roberto Almeida', 'RJ654321', 987654321, '(21) 93456-1111');
INSERT INTO historico (id_historico, uso_de_medicamento, alergia_historico, id_pet) VALUES
(1, 'Antibiótico leve', 'Nenhuma', 1),
(2, 'Vermífugo', 'Poeira', 2),
(3, 'Anti-inflamatório', 'Ração', 3),
(4, 'Colírio', 'Nenhuma', 4),
(5, 'Vitaminas', 'Pólen', 5);
INSERT INTO consultas (id_consulta, data_consulta, serviços_consulta, id_pet, id_vet) VALUES
(1, '2024-10-10 15:00:00', 'banho_e_tosa', 1, 1),
(2, '2024-10-12 10:30:00', 'vacinação', 2, 2),
(3, '2024-10-15 09:00:00', 'Exame_ortopédico', 3, 1),
(4, '2024-10-18 14:00:00', 'Limpeza_ocular', 4, 2),
(5, '2024-10-20 16:20:00', 'Avaliação_de_rotina', 5, 1);
INSERT INTO serviços (id_serviço, nome_serv, valor) VALUES
(1, 'Banho_e_Tosa', 80.00),
(2, 'Vacinação', 120.00),
(3, 'Cavaliação_de_rotina', 90.00),
(4, 'Exame_ortopedico', 150.00),
(5, 'limpeza_ocular', 200.00);
INSERT INTO medicaçao (id_med, medicamento, data_de_atualizaçao, id_pet, id_consulta) VALUES
(1, 'Antibiótico Amoxicilina 250mg', '2024-10-11 08:00:00', 1, 1),
(2, 'Pomada Dermatológica Clorexidina', '2024-10-13 08:00:00', 2, 2),
(3, 'Anti-inflamatório Carprofeno 25mg', '2024-10-16 08:00:00', 3, 3),
(4, 'Colírio Lubrificante Oftálmico', '2024-10-19 08:00:00', 4, 4),
(5, 'Complexo Vitamínico PetVita Plus', '2024-10-21 08:00:00', 5, 5);
INSERT INTO pet_medicaçao (id_pet, id_med) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);
INSERT INTO medicaçao_consultas (id_med, id_consulta) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);