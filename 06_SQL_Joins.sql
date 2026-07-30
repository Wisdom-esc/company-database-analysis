USE wisdomscompany;

-- INNER JOIN
SELECT *
FROM customers
JOIN orders
ON customers.customerNumber = orders.customerNumber;

-- INNER JOIN with selected columns
SELECT
    customers.customerNumber,
    orders.customerNumber,
    orderNumber,
    customerName,
    status,
    comments
FROM customers
JOIN orders
ON customers.customerNumber = orders.customerNumber
ORDER BY customers.customerNumber;

-- LEFT JOIN
SELECT
    customers.customerNumber,
    orders.customerNumber,
    orderNumber,
    customerName,
    status,
    comments
FROM customers
LEFT JOIN orders
ON customers.customerNumber = orders.customerNumber
ORDER BY customers.customerNumber;

-- RIGHT JOIN
SELECT
    customers.customerNumber,
    orders.customerNumber,
    orderNumber,
    customerName,
    status,
    comments
FROM orders
RIGHT JOIN customers
ON customers.customerNumber = orders.customerNumber
ORDER BY customers.customerNumber;

-- Customer with the highest number of orders
SELECT
    customers.customerNumber,
    customers.customerName,
    COUNT(orders.orderNumber) AS total_orders
FROM customers
JOIN orders
ON customers.customerNumber = orders.customerNumber
GROUP BY customers.customerNumber, customers.customerName
ORDER BY total_orders DESC
LIMIT 1;

-- Country with the highest number of orders
SELECT
    customers.country,
    COUNT(orders.orderNumber) AS total_orders
FROM customers
JOIN orders
ON customers.customerNumber = orders.customerNumber
GROUP BY customers.country
ORDER BY total_orders DESC
LIMIT 1;
