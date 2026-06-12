use e_commerce_casestudy;

/*Problem statement
Analyze the month-on-month percentage change in total sales to identify growth trends.
*/

with t as (
	select date_format(order_date, "%Y-%m") as Month, 
    sum(total_amount) as total_sales
    from orders
    group by Month
    order by total_sales desc
)
select Month, total_sales, round(
((total_sales-lag(total_sales) over (order by Month))/(lag(total_sales) over( order by Month)))*100
,2) as M_O_M_percent_change
from t 