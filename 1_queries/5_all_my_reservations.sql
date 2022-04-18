SELECT reservations.id AS id, properties.title AS title, properties.cost_per_night AS cost_per_night, reservations.start_date AS start_date, avg(property_reviews.rating) AS average_rating
FROM properties
JOIN reservations ON property_id = properties.id
JOIN property_reviews ON property_reviews.property_id = properties.id
WHERE reservations.guest_id = 1
GROUP BY reservations.id, properties.title, properties.cost_per_night
ORDER BY start_date ASC
LIMIT 10;