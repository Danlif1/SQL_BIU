SELECT store.store_id, SUM(p2.amount) - SUM(p1.amount) as earning_difference
FROM sakila.payment as p1, sakila.payment as p2, sakila.staff, sakila.store
WHERE (p1.staff_id = staff.staff_id AND staff.store_id = store.store_id and p2.staff_id = staff.staff_id and month(p2.payment_date) = month(p1.payment_date) - 1)
GROUP BY store.store_id, MONTH(p1.payment_date);