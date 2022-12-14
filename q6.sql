SELECT actor.first_name, actor.last_name
FROM sakila.actor, sakila.film_actor
WHERE COUNT(film_actor.film_id) >= AVG(film_actor.film_id) + 10
GROUP BY film_actor.actor_id
ORDER BY actor.first_name ASC, actor.last_name;