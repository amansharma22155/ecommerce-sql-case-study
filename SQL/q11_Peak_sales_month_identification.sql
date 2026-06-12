use e_commerce_casestudy;

/*Problem statement
Identify the months with the highest sales volume, aiding in planning for stock levels, 
marketing efforts, and staffing in anticipation of peak demand periods.*/

select date_format(order_date, "%Y-%m") as Month, 
sum(total_amount) as total_sales 
from orders
group by Month
order by total_sales desc
limit 3;