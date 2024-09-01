-- Select all columns from the intro_sql.customers table
SELECT * FROM intro_sql.customers;

-- Select all columns from the customers table
SELECT * FROM customers;

-- Select the country and city columns from the customers table
SELECT country, city FROM customers;

-- Select distinct countries from the customers table
SELECT DISTINCT country FROM customers;

-- Select and rename the company_name column from customers
SELECT company_name AS 'Company Name' FROM customers;

-- Select specific columns for customers in Germany
SELECT id, company_name, phone, country FROM customers WHERE country = 'Germany';

-- Select all columns from the orders table
SELECT * FROM orders;

-- Select orders with freight cost greater than or equal to 100
SELECT customer_id, shipper, freight FROM orders WHERE freight >= 100;

-- Select customers in the USA, Oregon region
SELECT id, company_name, region, country FROM customers WHERE country = "USA" AND region = 'OR';

-- Select orders within the year 2019
SELECT id, order_date, shipper, freight FROM orders WHERE order_date BETWEEN '2019-01-01' AND '2019-12-31';

-- Select customers from either the USA or Germany
SELECT id, country FROM customers WHERE country = 'USA' OR country = 'Germany';

-- Order customers by company name and country in ascending order
SELECT id, company_name, region, country FROM customers ORDER BY company_name ASC, country ASC;

-- Count customers grouped by country
SELECT COUNT(ID) AS 'Customer Count', country FROM customers GROUP BY country;

-- Select all columns from the products table
SELECT * FROM products;

-- Select the category and units_in_stock columns from the products table
SELECT category, units_in_stock FROM products;

-- Sum the stock units by product category
SELECT category, SUM(units_in_stock) AS 'Total Stock' FROM products GROUP BY category;

-- Get the minimum stock units by product category
SELECT category, MIN(units_in_stock) AS 'Total Stock' FROM products GROUP BY category;

-- Get the maximum stock units by product category
SELECT category, MAX(units_in_stock) AS 'Total Stock' FROM products GROUP BY category;
