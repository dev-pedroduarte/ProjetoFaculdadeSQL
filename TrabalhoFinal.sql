/*-------------------------------------------------------------------------------------------------------------------------
Disciplina: Banco de Dados Relacional e NoSQL
Autor....: Pedro Lucas de Souza Duarte
Objetivo..: Manipulação de dados
Bimestre.: 2 Bimestre 2023
-------------------------------------------------------------------------------------------------------------------------*/

CREATE DATABASE db_netflix;

USE db_netflix;

CREATE TABLE tb_filmes (
  id_filme INT AUTO_INCREMENT,
  titulo_filme VARCHAR(255),
  descricao_filme VARCHAR(255),
  ano_lancamento INT,
  id_idioma_filme INT,
  id_idioma_filme_original INT,
  id_legenda INT,
  dias_locacao INT,
  vlr_locacao DECIMAL(10, 2),
  duracao_filme_min INT,
  genero_filme VARCHAR(255),
  dt_registro DATETIME,
  dt_atualizacao DATETIME,
  
  PRIMARY KEY (id_filme),
  FOREIGN KEY (id_idioma_filme) REFERENCES tb_linguas(id_idioma),
  FOREIGN KEY (id_idioma_filme_original) REFERENCES tb_linguas(id_idioma),
  FOREIGN KEY (id_legenda) REFERENCES tb_legendas(id_legenda)
);

INSERT INTO tb_filmes (id_filme, titulo_filme, descricao_filme, ano_lancamento, id_idioma_filme, id_idioma_filme_original, id_legenda, dias_locacao, vlr_locacao, duracao_filme_min, genero_filme, dt_registro, dt_atualizacao)
VALUES
(1, 'Homem-Aranha: Longe de Casa', 'Peter Parker enfrenta novos desafios em uma viagem pela Europa.', 2019, 1, 1, 1, 7, 9.99, 129, 'Ação, Aventura', NOW(), NOW()),
  (2, 'Pantera Negra', 'TChalla retorna para Wakanda e assume o manto de Pantera Negra.', 2018, 1, 1, 1, 5, 7.99, 134, 'Ação, Aventura', NOW(), NOW()),
  (3, 'Vingadores: Ultimato', 'Os heróis da Marvel se reúnem para enfrentar o poderoso Thanos.', 2019, 1, 1, 1, 7, 12.99, 181, 'Ação, Aventura', NOW(), NOW()),
  (4, 'Os Incríveis 2', 'A família Pêra enfrenta novos desafios e luta contra um novo vilão.', 2018, 2, 2, 2, 3, 7.99, 118, 'Animação, Aventura', NOW(), NOW()),
  (5, 'Jurassic World', 'Um novo parque de dinossauros é inaugurado e as coisas saem do controle.', 2015, 1, 2, 1, 5, 9.99, 124, 'Ação, Aventura, Ficção Científica', NOW(), NOW()),
  (6, 'O Rei Leão', 'Simba, um jovem leão, luta para retomar seu lugar como rei da Savana.', 2019, 1, 1, 1, 7, 10.99, 118, 'Animação, Aventura, Drama', NOW(), NOW()),
  (7, 'A Origem', 'Um ladrão especializado em roubar segredos corporativos é contratado para implantar uma ideia na mente de alguém através dos sonhos.', 2010, 1, 1, 1, 5, 9.99, 148, 'Ação, Ficção Científica, Suspense', NOW(), NOW()),
  (8, 'Interestelar', 'Um grupo de exploradores viaja através de um buraco de minhoca em busca de um novo lar para a humanidade.', 2014, 1, 1, 1, 7, 12.99, 169, 'Aventura, Drama, Ficção Científica', NOW(), NOW()),
  (9, 'O Senhor dos Anéis: O Retorno do Rei', 'Frodo e Sam se aproximam de Mordor para destruir o Um Anel.', 2003, 1, 1, 1, 7, 9.99, 201, 'Aventura, Drama, Fantasia', NOW(), NOW()),
  (10, 'Toy Story 4', 'Woody, Buzz e seus amigos embarcam em uma nova aventura com Bonnie e um novo brinquedo chamado Forky.', 2019, 1, 2, 2, 3, 7.99, 100, 'Animação, Aventura, Comédia', NOW(), NOW()),
  (11, 'Capitão América: Guerra Civil', 'Os Vingadores se dividem em dois grupos liderados por Capitão América e Homem de Ferro.', 2016, 1, 2, 2, 5, 9.99, 147, 'Ação, Aventura, Ficção Científica', NOW(), NOW()),
  (12, 'Harry Potter e as Relíquias da Morte - Parte 2', 'Harry Potter se prepara para a batalha final contra Lord Voldemort.', 2011, 1, 2, 2, 7, 9.99, 130, 'Aventura, Drama, Fantasia', NOW(), NOW()),
  (13, 'O Lobo de Wall Street', 'A história real de Jordan Belfort, um corretor de valores que vive uma vida de excessos.', 2013, 1, 1, 1, 3, 7.99, 180, 'Biografia, Comédia, Crime', NOW(), NOW()),
  (14, 'O Poderoso Chefão', 'A saga da família Corleone e seu envolvimento com o crime organizado.', 1972, 1, 1, 1, 5, 9.99, 175, 'Crime, Drama', NOW(), NOW()),
  (15, 'Interestelar', 'Um grupo de exploradores viaja através de um buraco de minhoca em busca de um novo lar para a humanidade.', 2014, 1, 1, 1, 7, 12.99, 169, 'Aventura, Drama, Ficção Científica', NOW(), NOW()),
  (16, 'Coringa', 'A história de origem do icônico vilão do Batman, Arthur Fleck.', 2019, 1, 1, 1, 3, 7.99, 122, 'Crime, Drama, Suspense', NOW(), NOW()),
  (17, 'Matrix', 'Um programador descobre que a realidade que ele conhece é uma simulação controlada por máquinas.', 1999, 1, 1, 1, 5, 9.99, 136, 'Ação, Ficção Científica', NOW(), NOW()),
  (18, 'Os Vingadores', 'Os heróis da Marvel se unem para salvar o mundo de uma ameaça alienígena.', 2012, 1, 2, 2, 7, 9.99, 143, 'Ação, Aventura, Ficção Científica', NOW(), NOW()),
  (19, 'Clube da Luta', 'Um homem descontente cria um clube de luta subterrâneo como forma de rebelião.', 1999, 1, 1, 1, 5, 7.99, 139, 'Drama', NOW(), NOW()),
  (20, 'De Volta para o Futuro', 'Um jovem é acidentalmente enviado de volta no tempo e precisa fazer seus pais se apaixonarem para garantir sua existência.', 1985, 1, 1, 1, 7, 9.99, 116, 'Aventura, Comédia, Ficção Científica', NOW(), NOW());


DESCRIBE tb_filmes;

SELECT * FROM tb_filmes;

CREATE TABLE tb_linguas (
	id_idioma INT AUTO_INCREMENT,
    nome_idioma VARCHAR(255),
    
    PRIMARY KEY (id_idioma)
);

INSERT INTO tb_linguas (id_idioma, nome_idioma)
VALUES (1, 'Português'), (2, 'Inglês'), (3, 'Espanhol'), (4, 'Francês'), (5, 'Alemão');
  
CREATE TABLE tb_legendas (
	id_legenda INT AUTO_INCREMENT,
	nome_idioma VARCHAR(255),
    
    PRIMARY KEY (id_legenda)
);

INSERT INTO tb_legendas (id_legenda, nome_idioma) 
VALUES (1, 'Português'), (2, 'Inglês'), (3, 'Espanhol'), (4, 'Francês'), (5, 'Alemão');

ALTER TABLE tb_legendas
CHANGE COLUMN nome_idioma descricao_legenda VARCHAR(255);

DESCRIBE tb_legendas;

SELECT * FROM tb_legendas;

UPDATE tb_filmes
SET titulo_filme = UPPER(titulo_filme)
WHERE id_filme = 1;

SELECT id_filme, dt_registro, titulo_filme, ano_lancamento
FROM tb_filmes;

DELETE FROM tb_filmes
WHERE id_filme = 6;

USE sakila;

SELECT COUNT(*)  AS total_municipios
FROM sakila.city;

SELECT AVG(rental_rate) AS media_rental_rate
FROM sakila.film;
 
SELECT city, COUNT(*) AS total_ocorrencias
FROM sakila.city
GROUP BY city
HAVING COUNT(*) > 1;

SELECT *
FROM sakila.film
LEFT JOIN sakila.film_category ON sakila.film.film_id = sakila.film_category.film_id
LEFT JOIN sakila.category ON sakila.film_category.category_id = sakila.category.category_id;

SELECT COUNT(*) AS total_generos
FROM sakila.category;