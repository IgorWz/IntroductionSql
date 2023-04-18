CREATE DATABASE db_pizzaria_legal;

-- criando tabela de categorias
CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
sabor VARCHAR(200),
tipo VARCHAR(200),
PRIMARY KEY (id));

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,
recheio VARCHAR(200),
borda VARCHAR (200),
valor DECIMAL (6,2),
cobertura VARCHAR (200),
quantidade BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id));

INSERT INTO tb_categorias(sabor,tipo)
VALUES ("Frango","Salgada");

SELECT * FROM tb_categorias;

INSERT INTO tb_produtos(recheio, borda, preço, cobertura, quantididade)
VALUES ("Calabresa", "sim", "39,99", "catupiry",1);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor>50;

SELECT * FROM tb_produtos WHERE valor BETWEEN 50 AND 150;

SELECT * FROM tb_produtos WHERE corte LIKE "%m%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id
WHERE tb_categorias.id = 6;