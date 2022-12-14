SELECT customer.first_name, customer.last_name
from sakila.customer, sakila.rental
WHERE customer.customer_id = rental.customer_id AND rental.rental_date BETWEEN 2005-05-01 AND 2005-05-31
GROUP BY rental.customer_id
ORDER BY COUNT(rental_id) DESC
LIMIT 1;