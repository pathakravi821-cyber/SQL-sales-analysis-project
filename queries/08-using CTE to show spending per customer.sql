/* find total spending per customer using "cte"*/


with my_tbt as ( select order_id, product_id, sum(quantity * unit_price) as spending
				from order_items
                group by product_id,order_id)
select c.contact_name,SUM(mt.spending) as total_spending
from customer c
join orders o
on c.customer_id = o.customer_id
join my_tbt mt
on mt.order_id = o.order_id
group by c.contact_name;
                
                

