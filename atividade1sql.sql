CREATE DATABASE db_rh;

-- comando para criar a tabela de colaboradoes
CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    idade INT(2),
    salario DECIMAL(10,2),
    cargo VARCHAR(255),
    
    PRIMARY KEY(id)
);

-- comando para inserir os dados na tabela
INSERT INTO tb_colaboradores(nome,idade,salario,cargo)
VALUES("Matheus",19,4000,"Desinger");

-- comando para visualizar a tabela
SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

