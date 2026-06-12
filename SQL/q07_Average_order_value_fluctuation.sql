use e_commerce_casestudy;

/*Problem statement
Examine how the average order value changes month-on-month. 
Insights can guide pricing and promotional strategies to enhance order value.
*/

with t as (
select date_format(order_date, "%Y-%m") as Month, round(avg(total_amount),2) as Average_order_value
from orders
group by date_format(order_date, "%Y-%m")
order by date_format(order_date, "%Y-%m")
)
select Month, Average_order_value, round(
(Average_order_value- lag(Average_order_value) over ( order by Month))
,2) as Change_in_value
from t 
order by Change_in_value desc;