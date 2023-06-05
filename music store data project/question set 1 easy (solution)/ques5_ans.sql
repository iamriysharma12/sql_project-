

select customer.customer_id, customer.first_name, customer.last_name, SUM(invoice.total) as total
from customer
join invoice  on customer.customer_id = invoice.customer_id
group by customer.customer_id
order by total desc
limit 1