-- find all film titles rented out by customers with the first_name Roberta
-- Similar to exercise 5
SELECT title
from film
INNER JOIN inventory ON film.film_id = inventory.film_id
INNER JOIN rental ON inventory.inventory_id = rental.inventory_id
INNER JOIN customer ON rental.customer_id = customer.customer_id
WHERE customer.first_name = 'Roberta'




