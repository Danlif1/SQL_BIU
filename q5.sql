SELECT AVG(film.length)
FROM sakila.film, sakila.film_category
WHERE film.film_id = film_category.film_id
GROUP BY film_category.category_id;