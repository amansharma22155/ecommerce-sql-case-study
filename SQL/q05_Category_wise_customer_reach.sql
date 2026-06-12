use e_commerce_casestudy;

/*Problem statement
For each product category, calculate the unique number of customers purchasing from it. 
This will help understand which categories have wider appeal across the customer base.*/

select distinct p.category, count(distinct o.customer_id) as unique_customers
from products p join orderdetails od on p.product_id=od.product_id join 
orders o on od.order_id= o.order_id
group by p.category
order by unique_customers desc;
