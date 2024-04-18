INSERT INTO Endereco (rua, numero_casa, cep)
VALUES ('Rua Raio de Luz', 10, '88789-444'),
	   ('Rua Monster', 120, '88789-555');

INSERT INTO Grupo (nome_grupo, data_sorteio, data_revelacao)
VALUES ('Estrela', '2024-05-22', '2025-11-12'),
	   ('Junina', '2024-01-22', '2025-09-10');

INSERT INTO Participante (cpf, nome_participante, id_endereco, id_grupo)
VALUES ('111.999.333-82', 'Juliana Torres', 1, 1),
	   ('255.777.444-99', 'Matheus Tazz', 2, 2);

INSERT INTO Apelido (id_participante, nome_apelido)
VALUES (1, 'Ju'),
	   (2, 'Matt');

INSERT INTO Presente (tipo, nome_presente, id_apelido, id_participante)
VALUES ('Eletrônico', 'Iphone 15', 1, 1),
	   ('Cozinha', 'Batedeira', 2, 2);

INSERT INTO Mensagem (conteudo, remetente, destinatario, data_mensagem)
VALUES ('Hi Lorena!',1, 2, '2024-04-17'),
	   ('Tchau Lorena!',2, 1, '2024-04-18');
