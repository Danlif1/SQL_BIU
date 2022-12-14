-- select first_name from sakila.customer
SELECT actor.first_name from sakila.actor where first_name not in (select first_name from sakila.customer)
UNION 
SELECT customer.first_name from sakila.customer where first_name not in (select actor.first_name from sakila.actor);
