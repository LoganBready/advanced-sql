select *
from invoice
join invoice_line on invoice_line.invoice_id = invoice.invoice_id
where invoice_line.unit_price > 0.99;

select i.invoice_date, c.first_name, c.last_name, i.total
from invoice i
join customer c on i.customer_id = c.customer_id

select c.first_name as CustomerFName, c.last_name, e.first_name as SalesRepName, e.last_name
from customer c
join employee e on c.support_rep_id = e.employee_id;

select ar.name, al.title
from artist ar
join album al on al.artist_id = ar.artist_id;

select playlist_track.track_id
from playlist_track
join playlist on playlist.playlist_id = playlist_track.playlist_id
where playlist.name = 'Music';

select t.name
from track t
join playlist_track p on p.track_id = t.track_id
where p.playlist_id = 5;

select t.name, p.name 
from track t
join playlist_track pt on t.track_id = pt.track_id
join playlist p on pt.playlist_id = p.playlist_id;

select t.name, a.title
from track t
join album a on t.album_id = a.album_id
join genre g on g.genre_id = t.genre_id
where g.name = 'Alternative & Punk'