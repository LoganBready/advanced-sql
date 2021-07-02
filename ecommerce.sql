create table new_user (
  user_id serial PRIMARY KEY,
  user_email varchar(255),
  user_password varchar(255)
  );

create table products (
  product_id serial primary key,
  name varchar(255),
  price decimal(5, 2)
  );
  
  create table cart (
    cart_id serial PRIMARY KEY,
    user_id integer references new_user(user_id),
    product_id integer references products(product_id)
    );

insert into new_user (user_email, user_password)
values ('greg@greg.com', 'thisisgreg1')
insert into new_user (user_email, user_password)
values ('billy@gmail.com', 'greatnewspace')
insert into new_user (user_email, user_password)
values ('lipoma@hotmail.com', 'its83andsunny')

insert into products (price, name)
values (5.00, 'key')
insert into products (price, name)
values (34.34, 'bidet')
insert into products (price, name)
values (800.00, 'RTX-3080')
insert into products (price, name)
values (100.00, 'Guitar')
insert into products (price, name)
values (1.00, 'Soda')
insert into products (price, name)
values (2.50, 'double cheese burger')

insert into cart (product_id, quantity, user_id)
values (5, 4, 1) 
insert into cart (product_id, quantity, user_id)
values (2,1,2) 
insert into cart (product_id, quantity, user_id)
values (6,1,2) 
insert into cart (product_id, quantity, user_id)
values (3,2,3)
insert into cart (product_id, quantity, user_id)
values (1,5,3) 

select * from cart
where user_id = 1;

select c.cart_id, c.product_id, c.quantity, c.user_id, n.user_email, n.user_password, n.user_id
from cart c
join new_user n on n.user_id = c.user_id;

select sum(c.quantity*p.price) as result
from cart c
join products p on p.product_id = c.product_id
where c.cart_id = 2;

update cart
set quantity = 1
where user_id = 2;
