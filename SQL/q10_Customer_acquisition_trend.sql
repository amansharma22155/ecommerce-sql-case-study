use e_commerce_casestudy;

/*Problem statement
Evaluate the month-on-month growth rate in the customer base 
to understand the effectiveness of marketing campaigns and market expansion efforts.*/

with t as (
select customer_id, min(date_format(order_date, "%Y-%m-%d")) as first_order_date
from orders
group by customer_id 
)
select date_format(first_order_date, "%Y-%m") as first_order_month, 
count(customer_id) as total_new_customers
from t
group by first_order_month
order by first_order_month;