CREATE DATABASE db_exercicio02;

USE db_exercicio02;

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    categoria VARCHAR(100) NOT NULL,
    preco DECIMAL(8, 2) NOT NULL,
    estoque INT NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome, categoria, preco, estoque) VALUES 
('Smartphone Moto Edge 70', 'Eletrônicos', 1900.00, 45),
('Mouse Sem Fio Ergonomico', 'Acessórios', 89.90, 120),
('Teclado Mecânico RGB', 'Acessórios', 349.00, 60),
('Monitor AOC Gamer 27"', 'Eletrônicos', 800.00, 15),
('Fone de Ouvido Bluetooth', 'Áudio', 180.00, 200),
('Notebook Lenovo', 'Informática', 4500.00, 10),
('Carregador Portátil 20000mAh', 'Acessórios', 120.00, 85),
('Cadeira Office Ergonômica', 'Móveis', 850.00, 8);

-- Produtos com valor MAIOR do que 500
SELECT * FROM tb_produtos WHERE preco > 500.00;

-- Produtos com valor MENOR do que 500
SELECT * FROM tb_produtos WHERE preco < 500.00;

-- Atualização de um registro 
UPDATE tb_produtos SET preco = 95.00, estoque = 110 WHERE id = 2;
