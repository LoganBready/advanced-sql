create view rock AS
select * from track 
where genre_id in (
	select genre_id from genre where genre_id = 1
);

create view classical_count as
select count(*)
from playlist_track pt
join playlist p on p.playlist_id = pt.playlist_id
where p.playlist_id = 12