/* SQL QUERY TO SHOW 10 PREMIUM CUSTOMER */
select c.customer_id,
       c.contact_name,
       sum(oi.unit_price * oi.quantity) as totalspent
       from customer c
       join orders o on c.customer_id=o.customer_id
       join order_items oi on o.order_id = oi.order_id
       group by c.customer_id,
                c.contact_name
    order by totalspent desc
    limit 10;
       
       


