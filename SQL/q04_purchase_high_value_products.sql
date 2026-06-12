use e_commerce_casestudy;
/*Problem statement
Identify products where the average purchase quantity per order is 2 but with a high total revenue, 
suggesting premium product trends.*/
select product_id, avg(quantity) as average_quantity, sum(quantity*price_per_unit) as total_revenue
from orderdetails 
group by product_id
having average_quantity= 2
order by total_revenue desc;