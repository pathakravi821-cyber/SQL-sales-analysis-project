/* Sql Query To Show Customer-wise Total Revenue Using Window Functions */
select c.country,c.contact_name,oi.unit_price*oi.quantity as order_revenue,sum(oi.unit_price * oi.quantity)
over (partition by c.country) as country_total_revenue
from customer c 
join orders o on c.customer_id = o.customer_id
join order_items oi on o.order_id = oi.order_id;
