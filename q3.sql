SELECT film.title , film_text.title
FROM sakila.film , sakila.film_text
WHERE film.film_id = film_text.film_id AND (film.title NOT LIKE film_text.title)
ORDER BY film.title ASC;