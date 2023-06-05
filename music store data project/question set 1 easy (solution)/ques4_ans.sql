

select SUM(total) as invoice_total, billing_country 
from invoice
group by billing_country
order by invoice_total desc

