use e_commerce_casestudy;

/*Problem statement
Based on sales data, identify products with the fastest turnover rates, 
suggesting high demand and the need for frequent restocking.*/

select product_id, count(order_id) as Sales_frequency 
from orderdetails
group by product_id
order by Sales_frequency desc
limit 5;