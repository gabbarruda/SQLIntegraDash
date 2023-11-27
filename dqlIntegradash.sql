USE integradash;

SELECT * FROM tb_planta;

SELECT id, nome_erro, data_erro FROM tb_erro;

SELECT 
    pe.id_erro, e.nome_erro, e.data_erro, e.descricao_erro, e.status_erro,
    pe.id_planta, p.nome_planta, p.endereco_planta, pe.descricao
FROM 
    tb_planta_erro pe
JOIN 
    tb_erro e ON pe.id_erro = e.id
JOIN 
    tb_planta p ON pe.id_planta = p.id;

SELECT * FROM tb_alerta WHERE nivel_criticidade = 'Alto';

SELECT u.id, u.nome_usuario, u.telefone, u.email, e.nome_erro
FROM tb_usuario u
JOIN tb_erro e ON u.id_erro = e.id;


SELECT 
    es.id, es.nome_estrategia, es.data_estrategia, es.descricao_estrategia,
    u.nome_usuario, e.nome_erro
FROM 
    tb_estrategia es
JOIN 
    tb_usuario u ON es.id_usuario = u.id
JOIN 
    tb_erro e ON es.id_erro = e.id;



