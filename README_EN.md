# Pokédex Database

[Português](README.md) | [English](README_EN.md)

This repository contains the database modeling project for Pokédex, a virtual encyclopedia with information about Pokémon species. The aim of this project is to provide an efficient database structure to store and manage Pokémon information, including their characteristics, categories, species, types, and abilities.

## Database Structure

The Pokédex database is modeled using a relational approach. It consists of multiple interrelated tables to store Pokémon information. Here is an overview of the main tables in the database:

- `pokemon` table: Stores Pokémon data, including name, height, weight, attack values, defense values, and average speed.

- `category` table: Contains the categories of Pokémon, such as common, sub-legendary, legendary, or mythical.

- `species` table: Stores the species of Pokémon, along with their names and descriptions.

- `type` table: Contains the types of Pokémon, such as Fire, Water, Electric, etc.

- `ability` table: Stores the abilities of Pokémon, including hidden abilities.

- `rarity` table: Contains information about the rarity of Pokémon.

In addition to these main tables, the database also includes join tables to establish relationships between entities, such as `pokemon_has_type` and `pokemon_has_ability`.

## Requirements and Dependencies

- MySQL: You need to have MySQL installed to create and access the Pokédex database. You can download MySQL from [https://www.mysql.com/downloads/](https://www.mysql.com/downloads/).

- MySQL Workbench: It is recommended to use MySQL Workbench as a graphical interface to interact with the Pokédex database. MySQL Workbench can be downloaded from [https://www.mysql.com/products/workbench/](https://www.mysql.com/products/workbench/).

## Usage

1. Clone this repository to your local environment.

2. Open MySQL Workbench and connect to the MySQL server.

3. Execute the provided `.sql` file to create the necessary database, tables, and views.

4. With the database created, you can execute SQL queries to insert, update, or retrieve information about Pokémon.

## Examples of SQL Queries

The provided `.sql` file in this repository also includes examples of SQL queries that demonstrate the functionality of the Pokédex database. These queries cover various scenarios, such as table joins, data filtering, aggregation, and the use of subqueries.

## Contribution

If you encounter any issues or have suggestions for improvement, feel free to open an issue in this repository. We appreciate and welcome your contributions.

## Authors
- Adriel
- Ana Luiza Santos
- Arthur Henrique Oliveira
- Bruna Perez
- Emmannuel Viglioni
- Guilherme Henrique Coelho
- Gabriel Thomopoulos
- Joao Victor Teixeira

## License

This project is licensed under the [MIT License](LICENSE). Feel free to use, modify, and distribute the code as needed.

## Acknowledgments

We would like to thank Teacher Aline for her guidance and support throughout the development of this project. Her contribution was essential to the success of the work.

**Pokémon** is a registered trademark of The Pokémon Company. This project is merely an implementation of the database and has no official affiliation with The Pokémon Company.
