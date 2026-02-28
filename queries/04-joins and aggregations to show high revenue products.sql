/* SQL QUERY TO SHOW PRODUCTS THAT GENERATE HIGH REVENUE */
select p.product_name,p.product_id,sum(oi.unit_price * oi.quantity) as Total_Revenue
from products p 
join order_items oi
on oi.product_id = p.product_id
group by p.product_name,
         p.product_id
order by Total_Revenue desc;
         