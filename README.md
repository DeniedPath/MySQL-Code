# E-Commerce Database Project

## Project Summary

This project involves building an e-commerce database in MySQL, creating tables for customers, products, orders, and order items. It includes sample data insertion, data querying using joins, filtering, and aggregation, and setting up project connections to communicate with a web server.

## Learning Objectives

- Create and structure relational database tables
- Define primary and foreign key relationships
- Insert and manage data in tables
- Retrieve related data using joins
- Filter and aggregate data with SQL functions
- Analyze data using date functions

## Project Requirements

### 1. MySQL Environment Setup

- Create a new database

### 2. Database Schema Creation

- Create `customers` table with primary key
- Create `products` table with primary key
- Create `orders` table with foreign key to `customers`
- Create `order_items` table with foreign keys to `orders` and `products`

### 3. Sample Data Insertion

- Insert 3-5 rows into `customers`
- Insert 3-5 rows into `products`
- Insert 3-5 rows into `orders`
- Insert 5-10 rows into `order_items`

### 4. Query Writing

- Join `orders` and `customers` to get order details with customer info
- Join `order_items`, `orders`, and `products` to get order line items
- Use `SUM()` and `GROUP BY` to aggregate total revenue per customer
- Calculate the total revenue
- Calculate the average order value
- Count the number of orders per customer

### 5. Testing and Validation

- Execute each query and check results match expectations
- Verify aggregations and join results are correct

### 6. Object Relational Mapping (ORM) Project Setup

- Create a GitHub repository for application development e-commerce
- Install Node.js version 22.11.0 LTS
- Install required packages for MySQL ORM
- Install the dotenv package
- Install nodemon and save it to dev dependencies
- Create a `.env` file with necessary environment variables

### 7. MySQL Sync

- Create `server.js`
- Add import from sequelize & datatype
- Create data model
- Test the connection
- Sync data model

## Installation

1. Clone the repository:
https://github.com/DeniedPath/MySQL-Code.git


2. Install dependencies:
npm install


3. Set up your `.env` file with the following variables:
DB_HOST=localhost
DB_PORT=3306
DB_NAME=my_database
DB_USER=root
DB_PASSWORD=password
PORT=3000


4. Run the application:
npm start


## Reflection Questions

- How do primary and foreign keys help maintain data integrity?
- What insights can be gained by joining multiple tables?
- How can aggregate functions summarize data?
- What types of analyses are enabled by date functions?
- How might you extend this database for additional e-commerce features?

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
