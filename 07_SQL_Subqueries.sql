USE wisdomscompany;

-- Display customers ordered by credit limit
SELECT customerName, creditLimit
FROM customers
ORDER BY creditLimit DESC;

-- Calculate the average credit limit
SELECT AVG(creditLimit)
FROM customers;

-- Customers with credit limit above the average
SELECT customerName, creditLimit
FROM customers
WHERE creditLimit >
(
    SELECT AVG(creditLimit)
    FROM customers
)
ORDER BY creditLimit DESC
LIMIT 3;

-- Display product names and quantities ordered
SELECT productName, quantityOrdered
FROM products
JOIN orderdetails
ON products.productCode = orderdetails.productCode;

-- Top 5 most ordered products
SELECT productName
FROM
(
    SELECT
        productName,
        SUM(quantityOrdered) AS total_quantity
    FROM products
    JOIN orderdetails
    ON products.productCode = orderdetails.productCode
    GROUP BY productName
    ORDER BY total_quantity DESC
    LIMIT 5
) AS a;
