SELECT *
FROM sakila.film
WHERE (film.rating LIKE 'PG' OR film.rating LIKE 'G') AND film.length < 90;