USE wisdomscompany;

-- Display orders with month name and string functions
SELECT
    orderDate,
    CONCAT('@', MONTHNAME(orderDate)) AS monthName,
    LENGTH(CONCAT('@', MONTHNAME(orderDate))) AS fake,
    LENGTH(MONTHNAME(orderDate)) AS real_len,
    REPLACE(CONCAT('@', MONTHNAME(orderDate)), '@', '') AS replacefxn,
    TRIM('@' FROM CONCAT('@', MONTHNAME(orderDate))) AS trimfxn
FROM orders;

-- Display orders with comments and shipped date
SELECT *
FROM orders
WHERE comments IS NOT NULL
AND shippedDate IS NOT NULL;

-- Update comments for customer 363
UPDATE orders
SET comments = 'Good'
WHERE customerNumber = 363;

-- Display all distinct orders
SELECT DISTINCT *
FROM orders;

-- Update comments using CASE statement
UPDATE orders
SET comments = CASE
    WHEN comments IS NULL THEN 'Good1'
    WHEN comments IS NULL THEN 'Good2'
    WHEN comments IS NULL THEN 'Good3'
END
WHERE customerNumber IN (363, 128, 181);

-- Display all distinct orders after update
SELECT DISTINCT *
FROM orders;
