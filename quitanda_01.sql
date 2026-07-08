-- Criando banco de dados
CREATE DATABASE db_quitanda;

-- Acessar/Selecionar o Banco de Dados atual
USE db_quitanda;

-- Criar Tabela
CREATE TABLE tb_produtos (
    id bigint AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    quantidade int,
    data_validade date,
    preco decimal NOT NULL,
    PRIMARY KEY(id)
);

-- Inserir dados na tabela
INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("Banana", 1000, "2026-07-15", 12.99);
 
INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("Cenoura", 800, "2026-07-25", 10.00),
       ("Alface", 100, "2026-07-12", 14.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("Alface", 100, "2026-07-12", 14.00);

-- Visualizar todos os dados
SELECT * FROM tb_produtos;

SELECT nome, preco FROM tb_produtos;

SELECT * FROM tb_produtos WHERE id = 2;
 
SELECT * FROM tb_produtos WHERE preco > 10;

SELECT nome_produto as Nome, preco FROM tb_produtos;

-- Atualizar o atributo preço na tabela, cujo id seja igual a 1
UPDATE tb_produtos SET preco = 12.99 WHERE id = 1;

-- Deletar um item na tabela, cujo id seja igual a 3
DELETE FROM tb_produtos WHERE id = 3;

-- Atualizar o tipo de um Atributo da Tabela
-- decimal (6 digitos, sendo os ultimos 2 as casas decimais - 4200.00)
ALTER TABLE tb_produtos MODIFY preco decimal(6,2);
 
-- Adicionar um novo Atributo na Tabela
ALTER TABLE tb_produtos ADD descricao varchar(1000);

-- Remover um atributo da Tabela
ALTER TABLE tb_produtos DROP descricao;

-- Modificar o nome de um Atributo da Tabela 
ALTER TABLE tb_produtos CHANGE nome nome_produto varchar(255);

-- Desabilitar o modo safe update, que impede a execução do update e do delete sem where
SET SQL_SAFE_UPDATES = 0;

-- Habilitar o modo safe update, que impede a execução do update e do delete sem where
SET SQL_SAFE_UPDATES = 1;