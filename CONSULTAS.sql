SELECT 
    especie,
    COUNT(*) AS total_pets,
    AVG(idade_pet) AS idade_media
FROM Pet
GROUP BY especie
ORDER BY idade_media DESC;


SELECT 
    v.nome_vet,
    COUNT(c.id_consulta) AS total_consultas
FROM consultas c
JOIN veterinario v ON c.id_vet = v.id_vet
GROUP BY v.id_vet, v.nome_vet
ORDER BY total_consultas DESC;

SELECT 
    nome_serv,
    AVG(valor) AS valor_medio
FROM serviços
GROUP BY nome_serv
ORDER BY valor_medio DESC;

SELECT 
    cl.nome_cliente,
    p.nome_pet,
    COUNT(m.id_med) AS total_medicacoes
FROM medicaçao m
JOIN Pet p ON m.id_pet = p.id_pet
JOIN cliente cl ON p.id_cliente = cl.id_cliente
GROUP BY cl.nome_cliente, p.nome_pet
ORDER BY total_medicacoes DESC;

SELECT 
    cl.nome_cliente,
    COUNT(DISTINCT p.id_pet) AS total_pets,
    COUNT(c.id_consulta) AS total_consultas,
    AVG(idade_pet) AS idade_media_pets
FROM cliente cl
JOIN Pet p ON cl.id_cliente = p.id_cliente
LEFT JOIN consultas c ON p.id_pet = c.id_pet
GROUP BY cl.id_cliente, cl.nome_cliente
ORDER BY total_consultas DESC;
