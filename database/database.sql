/*DROP DATABASE secret_friend;*/
CREATE DATABASE secret_friend;

USE secret_friend;

CREATE TABLE Participante (
	id_participante INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	cpf CHAR(14) NOT NULL,
	nome_participante VARCHAR(100) NOT NULL,
	id_endereco INTEGER NOT NULL,
	id_grupo INTEGER NOT NULL
);

CREATE TABLE Presente (
	id_presente INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	tipo VARCHAR(30) NOT NULL,
	nome_presente VARCHAR(100) NOT NULL,
	id_apelido INTEGER NOT NULL,
	id_participante INTEGER NOT NULL
);

CREATE TABLE Endereco (
	id_endereco INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	rua VARCHAR(100) NOT NULL,
	numero_casa INTEGER,
	cep VARCHAR(9) NOT NULL
);

CREATE TABLE Mensagem (
	id_mensagem INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	conteudo VARCHAR(1000),
	remetente INTEGER NOT NULL,
	destinatario INTEGER NOT NULL,
	data_mensagem date NOT NULL
);

CREATE TABLE Apelido (
	id_apelido INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	id_participante INTEGER NOT NULL,
	nome_apelido VARCHAR(100) NOT NULL
);

/*Nome da tabela alterada apenas na fase de desenvolvimento, para melhor desempenho e entendimento
AmigoSecreto->Grupo*/
CREATE TABLE Grupo (
	id_grupo INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome_grupo VARCHAR(100) NOT NULL,
	data_sorteio date NOT NULL,
	data_revelacao date NOT NULL
);

ALTER TABLE Participante ADD CONSTRAINT fk_participante_endereco
FOREIGN KEY (id_endereco) REFERENCES Endereco(id_endereco);

ALTER TABLE Participante ADD CONSTRAINT fk_participante_amigosecreto
FOREIGN KEY (id_grupo) REFERENCES Grupo(id_grupo);

ALTER TABLE Presente ADD CONSTRAINT fk_presente_apelido
FOREIGN KEY (id_apelido) REFERENCES Apelido(id_apelido);

ALTER TABLE Presente ADD CONSTRAINT fk_presente_participante
FOREIGN KEY (id_participante) REFERENCES Participante(id_participante);

ALTER TABLE Mensagem ADD CONSTRAINT fk_mensagem_participante
FOREIGN KEY (remetente) REFERENCES Participante(id_participante);

ALTER TABLE Mensagem ADD CONSTRAINT fk_mensagem_apelido
FOREIGN KEY (destinatario) REFERENCES Apelido(id_apelido);

ALTER TABLE Apelido ADD CONSTRAINT fk_apelido_participante
FOREIGN KEY (id_participante) REFERENCES Participante(id_participante);
