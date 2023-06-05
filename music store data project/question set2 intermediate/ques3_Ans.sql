select name, milliseconds from track 
where milliseconds > (
	 select avg(milliseconds) as avg_of_milliseconds
from track)
order by milliseconds desc;