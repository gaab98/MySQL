CREATE DATABASE db_exercicio03;

USE db_exercicio03;

CREATE TABLE tb_estudantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    turma VARCHAR(10) NOT NULL,
    nota DECIMAL(3,1) NOT NULL
);

INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) VALUES
('Ana Silva', '2010-05-15', '7º Ano A', 8.5),
('Enzo Souza', '2010-11-22', '7º Ano A', 6.2),
('Valentina Oliveira', '2009-03-10', '8º Ano B', 9.0),
('Diego Santos', '2009-08-05', '8º Ano B', 5.5),
('Eduarda Lima', '2010-01-30', '7º Ano B', 7.8),
('Felipe Costa', '2010-09-12', '7º Ano A', 4.8),
('Gabriela Rocha', '2009-07-25', '8º Ano A', 10.0),
('Heitor Almeida', '2009-12-01', '8º Ano B', 6.9);

-- Retorna estudantes com nota maior que 7.0
SELECT * FROM tb_estudantes WHERE nota > 7.0;

-- Retorna estudantes com nota menor que 7.0
SELECT * FROM tb_estudantes WHERE nota < 7.0;

-- Atualização de um registro
UPDATE tb_estudantes SET nota = 7.5 WHERE id = 4;
