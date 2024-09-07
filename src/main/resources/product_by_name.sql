select product_name from netology.orders O
join netology.customers C on C.id=O.customer_id
where lower(C."name")=lower(:name)