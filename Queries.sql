-- Top Products by Revenue
SELECT 
    p.product_id,
    p.name AS product_name,
    SUM(od.quantity * od.price) AS total_revenue
FROM 
    Order_Details od
JOIN 
    Products p ON od.product_id = p.product_id
GROUP BY 
    p.product_id, p.name
ORDER BY 
    total_revenue DESC
LIMIT 10

--Customer Lifetime Value

SELECT 
    c.customer_id, 
    c.name AS customer_name, 
    SUM(o.total_amount) AS lifetime_value
FROM 
    Customers c
JOIN 
    Orders o ON c.customer_id = o.customer_id
GROUP BY 
    c.customer_id, c.name
ORDER BY 
    lifetime_value DESC

-- Monthly Sales Trend

SELECT 
    DATE_TRUNC('month', o.order_date) AS sales_month,
    SUM(o.total_amount) AS total_sales
FROM 
    Orders o
GROUP BY 
    sales_month
ORDER BY 
    sales_month ASC;

--Identifying Returning Customers
SELECT 
    c.customer_id, 
    c.name AS customer_name, 
    COUNT(o.order_id) AS order_count
FROM 
    Customers c
JOIN 
    Orders o ON c.customer_id = o.customer_id
GROUP BY 
    c.customer_id, c.name
HAVING 
    COUNT(o.order_id) > 1
ORDER BY 
    order_count DESC;
