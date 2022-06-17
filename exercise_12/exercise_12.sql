-- the top 10 cities with the most total rental payment amount
-- include the city name and sum
-- use SUM to sum up the amounts
SELECT city, SUM(payment.amount) as sum
FROM city
LEFT JOIN address ON city.city_id = address.city_id
LEFT JOIN customer ON address.address_id = customer.address_id
LEFT JOIN payment ON payment.customer_id = customer.customer_id
WHERE payment.amount IS NOT NULL
GROUP BY city.city
ORDER BY sum DESC
LIMIT 10;
