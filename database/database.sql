CREATE DATABASE secret_friend;

USE secret_friend;

CREATE TABLE Particiapante (
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

CREATE TABLE AmigoSecreto (
	id_grupo INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome_grupo VARCHAR(100) NOT NULL,
	data_sorteio date NOT NULL,
	data_revelacao date NOT NULL
);