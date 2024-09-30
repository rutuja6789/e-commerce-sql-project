USE e_commerce;

SELECT * FROM [dbo].[cust_details]

SELECT COUNT(*) AS TotalOrders FROM Orders;

-- Find Total Amount Spent by a Customer
SELECT o.order_id, c.first_name, c.last_name, o.total_amount
FROM Orders o
JOIN cust_details c ON o.customer_id = c.customer_id;

--Get Total Sales Amount per Product
SELECT p.product_id, p.product_name, SUM(od.quantity * od.price) AS TotalSales
FROM Order_Details od
JOIN Products p ON od.product_id = p.product_id
GROUP BY p.product_id, p.product_name;

--Find Customers Who Have Made More than 5 Orders
SELECT c.customer_id, c.first_name, c.last_name, COUNT(o.order_id) AS NumberOfOrders
FROM cust_details c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING COUNT(o.order_id) > 5;

--Get Payment Details for Each Order
SELECT o.order_id, p.payment_id, p.payment_date, p.amount, p.payment_method
FROM Orders o
JOIN Payments p ON o.order_id = p.order_id;

--Find the Average Order Value
select AVG(total_amount) as Average_Amount from Orders

--Top 5 Customers by Total Amount Spent
select c.customer_id, c.first_name, c.last_name, SUM(o.total_amount) as Total_Spent
from cust_details c
JOIN Orders o on c.customer_id = o.customer_id
group by c.customer_id, c.first_name, c.last_name
order by Total_Spent
OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY

--Monthly Sales Report
select year(order_date) as OrderYear, month(order_date) as OrderMonth, Sum(total_amount) as TotalSales
from Orders
group By year(order_date), month(order_date)
order by OrderYear, OrderMonth

--Get the Most Popular Products by Quantity Sold
select sum(od.quantity) as Total_Quantity_Sold, p.product_name, p.product_id 
from Order_Details od
Join Products p on od.product_id = p.product_id
Group by p.product_name, p.product_id 
order by Total_Quantity_Sold DESC
