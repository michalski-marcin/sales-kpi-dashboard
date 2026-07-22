-- =============================================
-- QUALITY CHECKS OF IMPORTED DATA
-- =============================================

-- ORDERS TABLE

-- Check for order_id duplicates

SELECT order_id, COUNT(order_id)
FROM orders
GROUP BY order_id
HAVING COUNT(order_id)>1;

-- Check for NULLs

SELECT customer_id, order_date, total_amount_usd
FROM orders
WHERE customer_id IS NULL
	  OR order_date IS NULL 
	  OR total_amount_usd IS NULL;

-- Check for orphaned records

SELECT c.customer_id, o.customer_id, o.order_id
FROM orders o
LEFT JOIN customers c ON c.customer_id = o.customer_id
WHERE c.customer_id IS NULL;

-- Check if pct ranges are correct and if there are no incorrect values

SELECT discount_pct, quantity
FROM orders
WHERE discount_pct > 100
 	OR discount_pct < 0
	OR quantity <= 0;


-- CUSTOMERS TABLE

-- Check for NULLs

SELECT registration_date, country, age
FROM customers
WHERE registration_date IS NULL
	  OR country IS NULL 
	  OR age IS NULL;

-- Check for incorrect age

SELECT age
FROM customers
WHERE age < 13 OR age > 100;

