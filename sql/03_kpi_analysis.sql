
-- Main business KPIs
WITH order_revenue AS (
    SELECT
        od.order_id,
        SUM(od.quantity * p.price) AS revenue
    FROM order_details od
    JOIN pizzas p
        ON od.pizza_id = p.pizza_id
    GROUP BY od.order_id
)
SELECT
    ROUND(SUM(revenue), 2) AS total_revenue,
    COUNT(*) AS total_orders,
    ROUND(AVG(revenue), 2) AS average_order_value
FROM order_revenue;

-- Total pizzas sold
SELECT SUM(quantity) AS total_pizzas_sold
FROM order_details;

-- Average pizzas per order
SELECT ROUND(
    SUM(od.quantity)::NUMERIC
    / COUNT(DISTINCT od.order_id),
    2
) AS average_pizzas_per_order
FROM order_details od;


-- Finding best and worst pizzas
SELECT
    pt.name AS pizza_name,
    pt.category,
    SUM(od.quantity) AS pizzas_sold,
    COUNT(DISTINCT od.order_id) AS total_orders,
    ROUND(
        SUM(od.quantity * p.price),
        2
    ) AS revenue
FROM order_details od
JOIN pizzas p
    ON od.pizza_id = p.pizza_id
JOIN pizza_types pt
    ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.name, pt.category
ORDER BY revenue DESC
LIMIT 5;
