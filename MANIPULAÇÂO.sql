UPDATE Pet
SET nome_pet = 'Rex', especie = 'Cachorro'
WHERE id_pet = 2;


UPDATE medicaçao
SET medicamento = 'Antibiótico Cefalexina 150mg'
WHERE id_med = 3;



UPDATE consultas
SET data_consulta = '2024-12-01 14:30:00',
    serviços_consulta = 'Exame clínico completo'
WHERE id_consulta = 4;


DELETE FROM Pet
WHERE id_pet = 1;



DELETE FROM consultas
WHERE id_consulta = 2;


DELETE FROM veterinario
WHERE id_vet = 1;
