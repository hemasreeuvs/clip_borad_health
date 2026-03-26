SELECT 
    c.customer_name,
    p.product_name,
    s.total_amount
FROM `sales_clipboard health` s
JOIN `customers_clipboard health` c ON s.customer_id = c.customer_id
JOIN `products_clipboard health` p ON s.product_id = p.product_id
WHERE s.sale_date >= DATE_SUB('2014-01-01', INTERVAL 30 DAY);

SELECT 
    p.product_category,
    SUM(s.total_amount) AS total_revenue
FROM `sales_clipboard health` s
JOIN `products_clipboard health` p ON s.product_id = p.product_id
WHERE s.sale_date <= '2014-01-01'
GROUP BY p.product_category 
ORDER BY total_revenue DESC;

SELECT DISTINCT 
    c.customer_name,
    c.customer_id,
    c.sales_region
FROM `sales_clipboard health` s
JOIN `customers_clipboard health` c ON s.customer_id = c.customer_id
WHERE YEAR(s.sale_date) = '2014-01-01'
  AND c.sales_region = 'West';

SELECT 
    c.customer_name,
    COUNT(s.ï»¿sales_id) AS total_sales,
    SUM(s.quantity) AS total_quantity,
    SUM(s.total_amount) AS total_revenue
FROM `sales_clipboard health` s
JOIN `customers_clipboard health` c ON s.customer_id = c.customer_id
GROUP BY c.customer_name;

SELECT 
    c.customer_name,
    SUM(s.total_amount) AS total_revenue
FROM `sales_clipboard health` s
JOIN `customers_clipboard health` c ON s.customer_id = c.customer_id
WHERE YEAR(s.sale_date) BETWEEN 2011 AND 2014
GROUP BY c.customer_name
ORDER BY total_revenue DESC
LIMIT 3;

SELECT 
    p.product_name,
    SUM(s.quantity) AS total_quantity_sold,
    RANK() OVER (ORDER BY SUM(s.quantity) DESC) AS rank
FROM `sales_clipboard health` s
JOIN `products_clipboard health` p ON s.product_id = p.product_id
WHERE YEAR(s.sale_date) = 2023
GROUP BY p.product_name
ORDER BY rank;

SELECT 
    p.product_name,
    total_quantity_sold,
    (SELECT COUNT(DISTINCT total_quantity_sold) 
     FROM (
         SELECT SUM(s.quantity) AS total_quantity_sold
         FROM `sales_clipboard health` s
         JOIN `products_clipboard health` p2 ON s.product_id = p2.product_id
         WHERE YEAR(s.sale_date) = 2023
         GROUP BY p2.product_name
     ) AS subquery
     WHERE subquery.total_quantity_sold >= products.total_quantity_sold
    ) AS rn
FROM (
    SELECT 
        p.product_name,
        SUM(s.quantity) AS total_quantity_sold
    FROM `sales_clipboard health` s
    JOIN `products_clipboard health` p ON s.product_id = p.product_id
    WHERE YEAR(s.sale_date) = 2023
    GROUP BY p.product_name
) AS products
ORDER BY rn;

SELECT 
    c.customer_name,
    c.sales_region,
    CASE
        WHEN c.sign_up_date >= CURDATE() - INTERVAL 6 MONTH THEN 'New'    
        ELSE 'Existing'
    END AS category
FROM `customers_clipboard health` c;

SELECT 
    p.product_category,
    SUM(s.total_amount) AS total_revenue
FROM `sales_clipboard health` s
JOIN `products_clipboard health` p ON s.product_id = p.product_id
WHERE s.sale_date >= CURDATE() - INTERVAL 6 MONTH
GROUP BY p.product_category
HAVING total_revenue > 50000;


SELECT 
    DATE_FORMAT(s.sale_date, '%Y-%m') AS month_year,
    SUM(s.total_amount) AS total_sales
FROM `sales_clipboard health` s
WHERE s.sale_date >= DATE_SUB('2014-01-01', INTERVAL 12 MONTH )
GROUP BY month_year
ORDER BY month_year DESC;

SELECT 
    p.product_category,
    SUM(s.total_amount) AS total_revenue
FROM `sales_clipboard health` s
JOIN `products_clipboard health` p ON s.product_id = p.product_id
WHERE s.sale_date >= DATE_SUB('2014-01-01', INTERVAL 6 MONTH)
GROUP BY p.product_category
HAVING total_revenue > 50000;

SELECT 
    s.ï»¿sales_id,
    s.product_id,
    s.quantity,
    s.price,
    s.total_amount,
    (s.quantity * s.price) AS expected_value
FROM `sales_clipboard health` s
WHERE s.total_amount != (s.quantity * s.price);
