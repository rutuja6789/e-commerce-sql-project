--Top 10 Best-Selling Products by Quantity
SELECT p.product_id, p.product_name, SUM(od.quantity) AS total_quantity_sold
FROM Order_Details od
JOIN Products p ON od.product_id = p.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_quantity_sold DESC
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;

--Top 10 Products by Revenue
SELECT p.product_id, p.product_name, SUM(od.quantity * od.price) AS total_revenue
FROM Order_Details od
JOIN Products p ON od.product_id = p.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_revenue DESC
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;

--Average Price of Products Sold
Average Price of Products Sold
