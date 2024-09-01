-- This is a single line comment 

/* This is the 
multiline comment
*/ 



SELECT * FROM intro_sql.customers;

SELECT * FROM customers;

SELECT country, city FROM customers;

SELECT DISTINCT country FROM customers;

SELECT company_name AS 'Company Name' FROM customers;

SELECT id, company_name, phone , country FROM customers WHERE country = 'Germany';

SELECT * FROM orders;

SELECT customer_id, shipper, freight FROM orders WHERE freight >= 100;

-- Returns all the customers in the OR , USA
SELECT id, company_name, region, country FROM customers
WHERE country = "USA" AND region = 'OR';

-- Find the order_date BETWEEN '2019-01-01' AND '2019-12-31'
SELECT id, order_date, shipper, freight FROM orders
WHERE order_date BETWEEN '2019-01-01' AND '2019-12-31';

-- Filtering with SQL OR operator
SELECT id, country FROM customers 
WHERE country = 'USA' OR country = 'Germany';

-- SQL ORDER BY keyword Syntax Ascending (ASC) and Descending (DESC)
SELECT id, company_name, region, country FROM customers 
ORDER BY country ASC;



