
Q2. which countires has the most invoices?

select COUNT(*) as count, billing_country
from invoice
group by billing_country
order by count desc
limit 1



select * from invoice