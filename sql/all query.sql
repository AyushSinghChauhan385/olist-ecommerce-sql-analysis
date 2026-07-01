SELECT * FROM customers;

SELECT * FROM orders;

SELECT * FROM products;

SELECT * FROM orders
WHERE order_status = 'delivered';

SELECT * FROM customers
WHERE customer_state = 'SP';

SELECT * FROM products
ORDER BY product_category_name ASC;

SELECT order_id, order_item_id, product_id,price FROM order_items
ORDER BY price DESC
LIMIT 10;


////////////////////////////////////////////////////////////////////////////////////////////////////////

SELECT COUNT(*) AS total_customers
FROM customers;

SELECT COUNT(*) AS total_orders
FROM orders;

SELECT SUM(payment_value) AS total_revenue
FROM payments;

SELECT AVG(payment_value) AS average_payment
FROM payments;

SELECT MAX(payment_value) AS highest_payment,
       MIN(payment_value) AS lowest_payment
FROM payments;


//////////////////////////////////////////////////////////////////////////////////////////////

SELECT customer_state,
COUNT(*) AS total_customers
FROM customers
GROUP BY customer_state
ORDER BY total_customers DESC;

SELECT order_status,
COUNT(*) AS total_orders
FROM orders
GROUP BY order_status
ORDER BY total_orders DESC;

SELECT payment_type,
SUM(payment_value) AS total_revenue
FROM payments
GROUP BY payment_type
ORDER BY total_revenue DESC;

SELECT product_id,
COUNT(*) AS products_sold
FROM order_items
GROUP BY product_id
ORDER BY products_sold DESC;


////////////////////////////////////////////////////////////////////////////////////////////////////////


SELECT c.customer_id,c.customer_city,
       o.order_id,o.order_status,o.order_purchase_timestamp
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id;


SELECT o.order_id,o.customer_id,o.order_status,
       op.payment_type,op.payment_value
FROM orders o
JOIN payments op
ON o.order_id = op.order_id;

SELECT p.product_id,p.product_category_name,
       oi.price AS selling_price
FROM products p
JOIN order_items oi
ON p.product_id = oi.product_id;

SELECT c.customer_city,p.product_category_name
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN order_items oi
ON o.order_id = oi.order_id
JOIN products p
ON oi.product_id = p.product_id;


//////////////////////////////////////////////////////////////////////////////////////////////////////////



SELECT c.customer_id,
       c.customer_city,
       c.customer_state,
       SUM(op.payment_value) AS total_spent
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN payments op
ON o.order_id = op.order_id
GROUP BY c.customer_id,
         c.customer_city,
         c.customer_state
ORDER BY total_spent DESC
LIMIT 10;


select c.customer_city, count(o.order_id)as total_order from customers c 
join orders o
on c.customer_id=o.customer_id
group by c.customer_city
order by total_order desc
limit  10;


select c.customer_state, sum(p.payment_value)as total_revenue from customers c
join orders o
on c.customer_id=o.customer_id
join payments p
on p.order_id=o.order_id
group by c.customer_state
order by total_revenue desc;


select
    extract(year from order_purchase_timestamp) as year,
    extract(month from order_purchase_timestamp) as month,
    count(order_id) as total_orders
from orders
group by
    extract(year from order_purchase_timestamp),
    extract(month from order_purchase_timestamp)
order by
    year desc,
    month desc;
	

SELECT
    EXTRACT(YEAR FROM o.order_purchase_timestamp) AS year,
    EXTRACT(MONTH FROM o.order_purchase_timestamp) AS month,
    SUM(p.payment_value) AS total_revenue
FROM orders o
join payments p
on o.order_id=p.order_id
GROUP BY
    EXTRACT(YEAR FROM o.order_purchase_timestamp),
    EXTRACT(MONTH FROM o.order_purchase_timestamp)
ORDER by  year desc;


////////////////////////////////////////////////////////////////////////////////////////////////////

SELECT
    o.customer_id,
    SUM(p.payment_value) AS total_spent
FROM orders o
JOIN payments p
ON o.order_id = p.order_id
GROUP BY o.customer_id
HAVING SUM(p.payment_value) > 1000
ORDER BY total_spent DESC;



SELECT o.product_category_name,
    SUM(p.price) AS total_revenue
FROM products o
JOIN order_items p
ON o.product_id = p.product_id
GROUP BY o.product_category_name
ORDER BY total_revenue DESC
limit 5;


select o.customer_id, sum(p.payment_value) as Total_Spend from orders o
join payments p
on o.order_id=p.order_id
group by o.customer_id
order by Total_Spend desc
limit 5;


select o.customer_id, avg(p.payment_value) as Avg_Total_Spend from orders o
join payments p
on o.order_id=p.order_id
group by o.customer_id
having avg(p.payment_value) >
(
    select avg(payment_value) from payments
)
order by Avg_Total_Spend asc;



select p.product_category_name, avg(o.price) as avg_price from order_items o
join products p
on o.product_id = p.product_id
group by p.product_category_name
having avg(o.price) > 500
order by avg_price ;








































