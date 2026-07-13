CREATE DATABASE db_exercicio01;

USE db_exercicio01;

CREATE TABLE tb_colaboradores (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    data_admissao DATE NOT NULL,
    departamento VARCHAR(50) NOT NULL,
    salario DECIMAL(10, 2) NOT NULL
);

INSERT INTO tb_colaboradores (nome, cargo, data_admissao, departamento, salario) 
VALUES 
('Ana Luisa', 'Analista de RH', '2025-05-12', 'Recursos Humanos', 3600.00),
('Fernanda Lima', 'Assistente Administrativo', '2025-02-18', 'Administração', 1900.00),
('Marcela Costa', 'Desenvolvedora Full Stack', '2026-06-01', 'Tecnologia', 8200.00),
('Camila Rocha', 'Auxiliar de Serviços Gerais', '2025-03-10', 'Operacional', 1700.00),
('Eduardo Silva', 'Coordenador de Marketing', '2025-08-25', 'Marketing', 4900.00);

-- Retorna todos os colaboradores com salário MAIOR do que 2000
SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

-- Retorna todos os colaboradores com salário MENOR do que 2000
SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

-- Atualiza um registro
UPDATE tb_colaboradores SET salario = 2300.00, cargo = 'Analista Administrativo' WHERE id = 2;
