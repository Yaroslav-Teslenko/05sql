DROP DATABASE onlinestore;

CREATE DATABASE onlinestore;

USE onlinestore;

CREATE TABLE customers (
  customer_id int AUTO_INCREMENT, first_name varchar(100), last_name varchar(100), email varchar(100), registration_date DATE, 
  PRIMARY KEY(customer_id)
);

CREATE TABLE products(
  product_id int AUTO_INCREMENT, product_name varchar(100), price Double, description TEXT, 
  PRIMARY KEY(product_id)
);

CREATE TABLE orders (
  order_id int AUTO_INCREMENT, customer_id int, order_date DATE, total_amount DOuble, 
  PRIMARY KEY(order_id), 
  FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
  
);

CREATE TABLE order_items (
  item_id int AUTO_INCREMENT, order_id int, product_id int, quantity int, subtotal double, 
  PRIMARY KEY(item_id), 
  FOREIGN KEY(order_id) REFERENCES orders(order_id),
  FOREIGN KEY(product_id) REFERENCES products(product_id)
  
);

INSERT INTO
	customers (customer_id, first_name, last_name, email, registration_date)
VALUES
(1, 'John', 'Smith', 'johnsmith@example.com', '2023-01-15'),
(2, 'Emily', 'Johnson', 'emilyjohnson@example.com', '2023-01-10'),
(3, 'Michael', 'Davis', 'michaeldavis@example.com', '2023-01-05');

INSERT INTO
	products
(product_id, product_name, price, description)
VALUES
(1, 'Laptop', 800, 'High-perfomance laptop'), 
(2, 'Smartphone', 400, 'Latest smartphone model'), 
(3, 'Tablet', 300, 'Portable tablet device');


INSERT INTO orders
(order_id, customer_id, order_date, total_amount)
VALUES
(1, 1, '2023-04-20', 1200.0),
(2, 2, '2023-05-15', 800.0),
(3, 1, '2023-06-10', 600.0);


INSERT INTO order_items
(item_id, order_id, product_id, quantity, subtotal)
VALUES
(1, 1, 1, 1, 800),
(2, 1, 2, 2, 800),
(3, 3, 1, 1, 400),
(4, 3, 3, 3, 900);


















