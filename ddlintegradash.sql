CREATE DATABASE bd_integradash;

USE bd_integradash;

CREATE TABLE tb_usuario (
id BINARY(16) NOT NULL,
nome VARCHAR(255) NOT NULL,
telefone VARCHAR(15) NOT NULL,
email VARCHAR(255) NOT NULL UNIQUE,
senha VARCHAR(255) NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (id_estrategia) REFERENCES tb_estrategia(id)
);

CREATE TABLE tb_estrategia(
id BINARY(16) NOT NULL,
nome_estrategia VARCHAR(255) NOT NULL,
data_estrategia DATETIME NOT NULL, 
descricao_estrategia VARCHAR(255) NOT NULL, 
FOREIGN KEY (id_usuario) REFERENCES tb_usuario(id),
FOREIGN KEY (id_erro) REFERENCES tb_erro(id),
PRIMARY KEY (id)
);

SELECT * FROM tb_estrategia;

CREATE TABLE tb_erro(
id BINARY(16) NOT NULL,
nome_erro VARCHAR(255) NOT NULL, 
data_erro DATETIME NOT NULL,
descricao_erro VARCHAR(255) NOT NULL, 
status_erro VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);



CREATE TABLE tb_alerta(
id BINARY(16) NOT NULL,
nome_alerta VARCHAR(255) NOT NULL, 
nivel_criticidade CHAR(255) NOT NULL,
data_alerta DATETIME NOT NULL,
status VARCHAR(255) NOT NULL,
descricao_alerta VARCHAR (255) NOT NULL, 
FOREIGN KEY (id_erro) REFERENCES tb_erro(id),
PRIMARY KEY (id)
);

CREATE TABLE tb_planta_erro(
id BINARY(16) NOT NULL,
descricao VARCHAR(255) NOT NULL,
FOREIGN KEY (id_planta) REFERENCES tb_planta(id),
PRIMARY KEY (id)
);

CREATE TABLE tb_planta(
id BINARY(16) NOT NULL,
nome_planta VARCHAR(255) NOT NULL, 
endereco_planta VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);
 









