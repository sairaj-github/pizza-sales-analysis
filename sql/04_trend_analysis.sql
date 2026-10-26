-- Orders by day of the week
SELECT
TO_CHAR(order_date, 'DAY') as day_name,
EXTRACT(ISODOW FROM order_date) AS day_number,
COUNT(*) AS total_orders
FROM orders
GROUP BY day_name, day_number
order BY day_number;

-- Orders by month
SELECT
DATE_TRUNC('month', order_date)::DATE AS month_start,
COUNT(*) AS total_Orders
FROM orders
GROUP BY month_start
ORDER BY month_start;

-- Orders by Hours
SELECT
EXTRACT(HOUR FROM order_time) AS hours,
COUNT(*) AS total_orders
FROM orders
GROUP BY hours
ORDER BY hours;