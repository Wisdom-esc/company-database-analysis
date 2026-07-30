USE wisdomscompany;

-- Display all staff records
SELECT * FROM staff;

-- Retrieve selected customer information
SELECT customerName, phone, city
FROM customers;

-- Display all customer records
SELECT * FROM customers;

-- Display unique countries
SELECT DISTINCT country
FROM customers;

-- Count all countries
SELECT COUNT(country)
FROM customers;

-- Count unique countries
SELECT COUNT(DISTINCT country)
FROM customers;

-- Customers with a credit limit of 21000
SELECT customerName, country, creditLimit
FROM customers
WHERE creditLimit = 21000;

-- Customers with credit limit greater than or equal to 21000
SELECT customerName, country, creditLimit
FROM customers
WHERE creditLimit >= 21000
ORDER BY creditLimit;

-- Sort customers by country
SELECT customerName, country, creditLimit
FROM customers
WHERE creditLimit >= 21000
ORDER BY country DESC;

-- Customers from France or USA
SELECT customerName, country, creditLimit
FROM customers
WHERE country = 'France'
OR country = 'USA';
