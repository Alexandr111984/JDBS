create schema netology;

create table netology.CUSTOMERS(
id bigserial primary key ,
name text not null,
surname text not null ,
age int not null ,
phone_number int
);

insert into netology.customers("name",surname,"age", phone_number)
values ('alexey', 'ivanov', 20, 2120),
('sergey', 'petrov', 25, 2232),
('alexey', 'alexeev', 22, 2829),
('alex', 'sergeev', 18, 9999);


select * from netology.customers;

create table netology.orders(
id bigserial primary key,
date int,
customer_id bigserial  not null ,
product_name text,
amount int not null,
foreign key (customer_id) references netology.customers (id)
);


insert into netology.orders("date",product_name,amount)
values (25.11,'grusha',25),
(27.11,'arbuz',14),
(21.11,'oreh',2),
(15.11,'diny',5);

select * from netology.orders;




