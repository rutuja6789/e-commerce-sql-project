USE e_commerce;

-- Customer Lifetime Value (CLV) Calculation

--Customer Lifetime Value (CLV) Calculation

--Calculate the total amount spent by each customer to determine their lifetime value.

SELECT c.customer_id, c.first_name, c.last_name, SUM(o.total_amount) AS lifetime_value
FROM cust_details c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY lifetime_value DESC;

--Calculate the average amount spent by customers per order.

SELECT AVG(total_amount) AS average_order_value
FROM Orders;

--Find how many customers have placed more than one order to assess retention.

SELECT COUNT(DISTINCT customer_id) AS RetainedCustomers
FROM Orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1;

--Identify customers who placed the most orders.

SELECT c.customer_id, c.first_name, c.last_name, COUNT(o.order_id) AS num_orders
FROM cust_details c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY num_orders DESC
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;

--Identify customers who have not placed any orders.

SELECT c.customer_id, c.first_name, c.last_name
FROM cust_details c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;