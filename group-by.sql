select count(*), g.name
from track t
join genre g on t.genre_id = g.genre_id
group by g.name

select count(*), g.name
from track t
join genre g on t.genre_id = g.genre_id
where g.name = 'Pop' or g.name = 'Rock'
group by g.name

select count(*) as albumCount, a.name
from artist a
join album ab on ab.artist_id = a.artist_id
group by a.name