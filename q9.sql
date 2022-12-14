ALTER TABLE sakila.customer
ADD CONSTRAINT Not_same_actor_name CHECK (customer.first_name LIKE actor.first_name);
ALTER TABLE sakila.actor
ADD CONSTRAINT Not_same_customer_name CHECK (actor.first_name LIKE customer.first_name);