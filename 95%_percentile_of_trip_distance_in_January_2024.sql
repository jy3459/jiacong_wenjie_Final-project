
SELECT trip_distance AS distance
FROM TAXI
WHERE tpep_pickup_datetime BETWEEN '2024-01-01 00:00:00' AND '2024-01-31 23:59:59'
UNION ALL
SELECT trip_miles AS distance
FROM UBER
WHERE pickup_datetime BETWEEN '2024-01-01 00:00:00' AND '2024-01-31 23:59:59';
