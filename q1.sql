SELECT name
FROM sakila.category
WHERE name REGEXP '^(?!.*a.*a).*a.*$';