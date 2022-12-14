SELECT CONCAT(customer.first_name, ' ', customer.last_name) as full_name , film.film_title, (rental.rental_date-rental.return_date)/7 as rental_weeks
FROM sakila.customer, sakila.film, sakila.rental, sakila.inventory
WHERE inventory.inventory_id = rental.inventory_id AND inventory.film_id = film.film_id
ORDER BY (rental.rental_date-rental.return_date)/7 DESC
LIMIT 1;