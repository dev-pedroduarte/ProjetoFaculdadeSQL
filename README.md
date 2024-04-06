# Projeto de Banco de Dados Relacional e NoSQL

Este projeto foi desenvolvido como parte da disciplina de Banco de Dados Relacional e NoSQL, ministrada no 2º Bimestre de 2023 pelo autor Pedro Lucas de Souza Duarte. O objetivo principal do projeto é realizar a manipulação de dados relacionados a filmes, incluindo informações como título, descrição, ano de lançamento, idioma, legendas, duração, gênero e outras informações relevantes.

## Estrutura do Banco de Dados

O banco de dados foi modelado utilizando MySQL e inclui as seguintes tabelas principais:

- `tb_filmes`: Armazena informações detalhadas sobre os filmes, como título, descrição, idiomas, legendas, duração, gênero, etc.
- `tb_linguas`: Contém informações sobre os idiomas disponíveis para os filmes.
- `tb_legendas`: Armazena informações sobre as legendas disponíveis para os filmes.

## Funcionalidades Implementadas

- Criação do banco de dados `db_netflix` e das tabelas necessárias.
- Inserção de registros de filmes na tabela `tb_filmes`.
- Inserção de idiomas na tabela `tb_linguas`.
- Inserção de legendas na tabela `tb_legendas`.
- Atualização automática do título do filme para maiúsculas quando o `id_filme` é igual a 1.
- Exclusão de um registro de filme específico.
- Consultas SQL para contar o número de municípios e calcular a média da taxa de aluguel de filmes em outro banco de dados (`SAKILA`).
