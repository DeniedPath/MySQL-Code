# Create a new database named 'ecommerce'
CREATE DATABASE ecommerce;

# Switch to using the 'ecommerce' database for subsequent operations
USE ecommerce;

# Create the customers table
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY, # Unique identifier for each customer
    first_name VARCHAR(50) NOT NULL, # Customer's first name (required)
    last_name VARCHAR(50) NOT NULL, # Customer's last name (required)
    email VARCHAR(100) UNIQUE NOT NULL, # Customer's email (unique and required)
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP # Timestamp of customer creation
);

# Create the products table
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY, # Unique identifier for each product
    name VARCHAR(100) NOT NULL, # Product name (required)
    description TEXT, # Product description (optional)
    price DECIMAL(10, 2) NOT NULL, # Product price (required, allows 2 decimal places)
    stock_quantity INT NOT NULL # Current stock quantity (required)
);

# Create the orders table
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY, # Unique identifier for each order
    customer_id INT, # References the customer who placed the order
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP, # Timestamp of order creation
    total_amount DECIMAL(10, 2) NOT NULL, # Total order amount (required)
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id) # Ensures data integrity with customers table
);

# Create the order_items table
CREATE TABLE order_items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY, # Unique identifier for each order item
    order_id INT, # References the order this item belongs to
    product_id INT, # References the product in this order item
    quantity INT NOT NULL, # Quantity of the product ordered (required)
    price DECIMAL(10, 2) NOT NULL, # Price of the product at the time of order (required)
    FOREIGN KEY (order_id) REFERENCES orders(order_id), # Ensures data integrity with orders table
    FOREIGN KEY (product_id) REFERENCES products(product_id) # Ensures data integrity with products table
);

# Insert sample customers
INSERT INTO customers (first_name, last_name, email) VALUES
('John', 'Doe', 'john.doe@example.com'), 
('Jane', 'Smith', 'jane.smith@example.com'), 
('Mike', 'Johnson', 'mike.johnson@example.com'), 
('Emily', 'Brown', 'emily.brown@example.com');

# Insert sample products
INSERT INTO products (name, description, price, stock_quantity) VALUES
('Laptop', 'High-performance laptop', 999.99, 50), 
('Smartphone', 'Latest model smartphone', 699.99, 100), 
('Headphones', 'Noise-cancelling headphones', 199.99, 75), 
('Tablet', '10-inch tablet', 299.99, 30);

# Insert sample orders
INSERT INTO orders (customer_id, total_amount) VALUES
(1, 1199.98), # Order for John Doe 
(2, 699.99),  # Order for Jane Smith 
(3, 399.98),  # Order for Mike Johnson 
(4, 999.99);  # Order for Emily Brown 

# Insert sample order items
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 999.99),  # Laptop in John's order 
(1, 3, 1, 199.99),  # Headphones in John's order 
(2, 2, 1, 699.99),  # Smartphone in Jane's order 
(3, 3, 2, 399.98),  # Two Headphones in Mike's order 
(4, 1, 1, 999.99);  # Laptop in Emily's order 

SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;
SELECT * FROM order_items;

#full board here:
SELECT c.first_name, c.last_name, o.order_id, p.name AS product_name, oi.quantity, oi.price
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
INNER JOIN order_items oi ON o.order_id = oi.order_id
INNER JOIN products p ON oi.product_id = p.product_id;
