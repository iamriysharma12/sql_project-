
select artist.artist_id, artist.name,count(artist.artist_id) as count_of_songs
from track
join album on album.album_id = track.album_id
join artist on artist.artist_id = album.artist_id
join genre on track.genre_id = genre.genre_id
where genre.name like 'Rock'
group by artist.artist_id
order by count_of_songs desc
limit 10

