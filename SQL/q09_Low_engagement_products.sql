use e_commerce_casestudy;

/*Problem statement
List products purchased by less than 40% of the customer base, 
indicating potential mismatches between inventory and customer interest.*/

select p.product_id, p.name as product_name, Count(distinct o.customer_id) as UniqueCustomerCount
from products p join orderdetails od on p.product_id= od.product_id join 
orders o on od.order_id= o.order_id 
group by p.product_id, p.name
having UniqueCustomerCount < 0.4*(
select count(customer_id) as total_customer from customers
)