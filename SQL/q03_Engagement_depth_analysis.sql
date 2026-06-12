use e_commerce_casestudy;
/*Problem statement
Determine how many customers fall into each order frequency category based on the number of orders they have placed.

Using the Orders table, calculate the number of customers who placed 1 order, 2 orders, 3 orders, etc.*/
with t as (
	select customer_id, count(order_id) as number_of_orders
    from orders
    group by customer_id
)
select number_of_orders, count(*) as number_of_customers
from t
group by number_of_orders
order by number_of_orders;