# Pokédex Database

Este repositório contém o projeto de modelagem de banco de dados para a Pokédex, uma enciclopédia virtual com informações sobre espécies de Pokémons. O objetivo deste projeto é fornecer uma estrutura de banco de dados eficiente para armazenar e gerenciar as informações dos Pokémons, incluindo suas características, categorias, espécies, tipos e habilidades.

## Estrutura do Banco de Dados

O banco de dados da Pokédex foi modelado seguindo a abordagem relacional. Ele consiste em várias tabelas inter-relacionadas para armazenar as informações dos Pokémons. Abaixo está uma visão geral das principais tabelas do banco de dados:

- Tabela `pokemon`: Armazena os dados dos Pokémons, incluindo nome, altura, peso, valores de ataque, defesa e velocidade média.

- Tabela `categoria`: Contém as categorias dos Pokémons, como comum, sub-lendário, lendário ou mítico.

- Tabela `espécie`: Armazena as espécies dos Pokémons, com seus nomes e descrições.

- Tabela `tipo`: Contém os tipos dos Pokémons, como Fogo, Água, Elétrico, etc.

- Tabela `habilidade`: Armazena as habilidades dos Pokémons, incluindo habilidades ocultas.

- Tabela `raridade`: Contém informações sobre a raridade dos Pokémons.

Além dessas tabelas principais, o banco de dados também possui tabelas de junção para estabelecer os relacionamentos entre as entidades, como `pokemon_has_tipo` e `pokemon_has_habilidade`.

## Requisitos e Dependências

- MySQL: É necessário ter o MySQL instalado para criar e acessar o banco de dados da Pokédex. Você pode fazer o download do MySQL em [https://www.mysql.com/downloads/](https://www.mysql.com/downloads/).

- MySQL Workbench: É recomendado utilizar o MySQL Workbench como interface gráfica para interagir com o banco de dados da Pokédex. O MySQL Workbench pode ser baixado em [https://www.mysql.com/products/workbench/](https://www.mysql.com/products/workbench/).

## Utilização

1. Clone este repositório para o seu ambiente local.

2. Abra o MySQL Workbench e conecte-se ao servidor MySQL.

3. Execute o arquivo `.sql` fornecido para criar o banco de dados, tabelas e visões necessárias.

4. Com o banco de dados criado, você pode executar consultas SQL para inserir, atualizar ou recuperar informações sobre os Pokémons.

## Exemplos de Consultas SQL

O arquivo `.sql` fornecido neste repositório também contém exemplos de consultas SQL que demonstram a funcionalidade do banco de dados da Pokédex. Essas consultas abrangem diversos cenários, como junções de tabelas, filtragem de dados, agregação e uso de subconsultas.

## Contribuição

Se você encontrar algum problema ou tiver sugestões de melhoria, sinta-se à vontade para abrir uma issue neste repositório. Ficaremos felizes em revisar e discutir suas contribuições.

## Autores
- Adriel
- Ana Luiza Santos
- Arthur Henrique Oliveira
- Bruna Perez
- Emmannuel Viglioni
- Guilherme Henrique Coelho
- Gabriel Thomopoulos
- Joao Victor Teixeira

## Licença

Este projeto está licenciado sob a [Licença MIT](LICENSE). Sinta-se à vontade para usar, modificar e distribuir o código conforme necessário.

## Agradecimentos

Gostaríamos de agradecer à professora Aline por sua orientação e suporte durante o desenvolvimento deste projeto. Sua contribuição foi fundamental para o sucesso do trabalho.

**Pokémon** é uma marca registrada da The Pokémon Company. Este projeto é apenas uma implementação do banco de dados e não possui vínculo oficial com a The Pokémon Company.
