USE integradash;

INSERT INTO tb_usuario VALUES (
	UUID_TO_BIN(UUID()),
    "Gabriela",
    "0",
    "gabi@email.com",
    "senai@134"
);

INSERT INTO tb_usuario VALUES (
	UUID_TO_BIN(UUID()),
    "Debora",
    "0",
    "debora@email.com",
    "senai@134"
);


INSERT INTO tb_planta (id, nome_planta, endereco_planta)
VALUES (UUID_TO_BIN(UUID()), 'Planta A', 'Endereço da Planta A');


INSERT INTO tb_erro (id, nome_erro, data_erro, descricao_erro, status_erro)
VALUES (UUID_TO_BIN(UUID()), 'Erro 1', NOW(), 'Descrição do Erro 1', 'Ativo');


INSERT INTO tb_planta_erro (id_erro, id_planta, descricao)
VALUES (UUID_TO_BIN(UUID()), 'Erro 1', NOW(), 'Planta A',  'Erro relacionado à Planta A');


INSERT INTO tb_alerta (id, id_erro, nome_alerta, nivel_criticidade, data_alerta, status_alerta, descricao_alerta)
VALUES (
    UUID_TO_BIN(UUID()), 
    'Alerta 1', 
    'Alto', 
   NOW(), 
    'Ativo', 
    'Descrição do Alerta 1'
);



INSERT INTO tb_estrategia (id, id_usuario, id_erro, nome_estrategia, data_estrategia, descricao_estrategia)
VALUES (
    UUID_TO_BIN(UUID()), 
    'Estratégia 1', 
    NOW(), 
    'Descrição da Estratégia 1'
);


SELECT * FROM tb_planta;

SELECT * FROM tb_planta_erro;

SELECT * FROM tb_erro;


SELECT * FROM tb_alerta;


SELECT * FROM tb_usuario;


SELECT * FROM tb_estrategia;