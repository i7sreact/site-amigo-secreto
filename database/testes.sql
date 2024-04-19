USE secret_friend;

SELECT * FROM Endereco;

SELECT * FROM Participante
WHERE id_endereco=1 AND nome_participante="Juliana Torres";

SELECT id_grupo, nome_grupo, data_sorteio FROM Grupo
    WHERE data_revelacao <= '2025-09-10';

SELECT id_participante, cpf, nome_participante FROM Participante 
    ORDER BY nome_participante;

SELECT nome_participante, count(*) as numeroDePessoas FROM Participante 
    GROUP BY nome_participante;

SELECT nome_participante, count(id_participante) FROM Participante 
    GROUP BY nome_participante HAVING count(*) = 1;

SELECT max(id_participante), min(id_participante), avg(id_participante) FROM Participante;

SELECT * FROM Presente
WHERE tipo LIKE "%C%" AND id_participante=2
ORDER BY nome_presente DESC;

SELECT * FROM Participante INNER JOIN Endereco ON Participante.id_endereco = Endereco.id_endereco
