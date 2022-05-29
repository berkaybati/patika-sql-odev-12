-- Soru 1.
select count(*) from film
where length > 
(
	select avg(length) from film
);

-- Soru 2.
SELECT COUNT(*) FROM film
WHERE rental_rate  = 
(
	SELECT MAX(rental_rate) FROM film
);

-- Soru 3.
SELECT COUNT(*) FROM film
WHERE rental_rate  = 
(
	SELECT MIN(rental_rate) FROM film
)
AND 
replacement_cost = 
(
	SELECT MIN(replacement_cost) FROM film
);

-- Soru 4.
SELECT COUNT(payment_id),
(SELECT first_name FROM customer WHERE payment.customer_id=customer.customer_id)
FROM payment 
GROUP BY customer_id 
ORDER BY COUNT(payment_id) DESC;
