CREATE DATABASE IF NOT EXISTS sales_database;

USE sales_database;

CREATE TABLE IF NOT EXISTS sales(
	id INTEGER NOT NULL AUTO_INCREMENT,
	week_day VARCHAR(255) NOT NULL,
	product VARCHAR(255) NOT NULL,
	price DECIMAL (10, 2) NOT NULL,
	quantity INTEGER NOT NULL,
	PRIMARY KEY (id)
);

INSERT INTO sales
(week_day, product, price, quantity)
VALUES
("Mon", "Laptop", 1000, 5),
("Mon", "Phone", 700, 3),
("Mon", "Tablet", 500, 2),
("Tue", "Printer", 300, 4),
("Tue", "Phone", 600, 6),
("Tue", "Tablet", 450, 2),
("Tue", "Tablet", 350, 5),
("Wed", "Tablet", 500, 4),
("Wed", "Laptop", 1300, 4),
("Wed", "Printer", 300, 1),
("Wed", "Phone", 550, 8),
("Thu", "Phone", 700, 5),
("Thu", "Tablet", 850, 2),
("Thu", "Phone", 700, 3),
("Fri", "Laptop", 1000, 2),
("Fri", "Laptop", 1500, 1),
("Fri", "Tablet", 500, 2),
("Fri", "Phone", 950, 3);

SELECT * FROM sales;

SELECT * FROM sales LIMIT 2;

SELECT SUM(price * quantity) AS total_price
FROM sales;

SELECT product, SUM(quantity) AS total_quantity, AVG(price) AS avarage_price
FROM sales
GROUP BY product;
