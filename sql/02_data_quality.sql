--checking required fields in orders
SELECT COUNT(*) FILTER(WHERE order_date IS NULL) AS missing_order_date,
Count(*) FILTER(WHERE order_time is null) AS missing_order_time
FROM orders;

--checking invalid price and quantity
select * from pizzas
where price < 0 or price is null;

select * from order_details
where quantity < 0 or quantity is null;

--checking duplicate values
select order_details_id, count(*) as occurance
from order_details
group by order_details_id
having count(*) > 1;

-- Does every order details have a matching order
SELECT count(*) AS unmatched_orders FROM order_details od
LEFT JOIN orders o ON od.order_id = o.order_id
WHERE o.order_id IS NULL;

-- Does every order detail have a matching pizza?
SELECT COUNT(*) AS unmatched_pizzas
FROM order_details od
LEFT JOIN pizzas p ON od.pizza_id = p.pizza_id
WHERE p.pizza_id IS NULL;

-- Does every pizza have a matching pizza type?
SELECT COUNT(*) AS unmatched_pizza_types
FROM pizzas p
LEFT JOIN pizza_types pt
    ON p.pizza_type_id = pt.pizza_type_id
WHERE pt.pizza_type_id IS NULL;
