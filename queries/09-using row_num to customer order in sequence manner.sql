/*show each customer's order in "squence manner" */
select c.customer_id,c.contact_name, order_id,order_date, 
row_number() over(partition by c.customer_id order by order_date asc) as order_squence
from orders o
join customer c
on o.customer_id = c.customer_id;	
