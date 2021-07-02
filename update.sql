update customer 
set fax = null;

update customer 
set company = 'Self'
where company IS Null;

update customer 
set last_name = 'Thompson'
where customer_id = 28;

update customer 
set support_rep_id = 4
where email = 'luisrojas@yahoo.cl'

update track
set composer = 'The darkness around us'
where composer IS NULL and genre_id = 3;