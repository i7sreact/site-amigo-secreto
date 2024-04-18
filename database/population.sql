INSERT INTO Endereco (rua, numero_casa, cep)
VALUES ('Rua', 1, 'CEP');

INSERT INTO AmigoSecreto (nome_grupo, data_sorteio, data_revelacao)
VALUES ('NomeGrupo', '2004-05-22', '2005-11-12');

INSERT INTO Participante (nome_participante, cpf, id_endereco, id_grupo)
VALUES ('Nome', 'cpf', 1, 1);

INSERT INTO Apelido (id_participante, nome_apelido)
VALUES (1, 'Apelido');

INSERT INTO Presente (tipo, nome_presente, id_apelido, id_participante)
VALUES ('Tipo', 'Nome', 1, 1);

INSERT INTO Mensagem (remetente, destinatario, conteudo, data_mensagem)
VALUES (1, 1, 'Conteudo', '2011-04-21');
