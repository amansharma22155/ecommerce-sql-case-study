use e_commerce_casestudy;

select distinct location, count(customer_id) as number_of_customers 
from customers 
group by location
order by count(customer_id) desc
limit 3;