alter table animals 
add column location varchar(255)

insert into animals (type, age, location, name)
values ('dog', 4, 'utah', 'koda')
values('rat', 2, 'utah', 'bill')
values('chicken', 1, 'utah', 'kfc')

alter table animals
rename column type to species

alter table animals
alter column species type varchar(255);