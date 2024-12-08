
SELECT strftime('%H', tpep_pickup_datetime) AS Hour, COUNT(*) AS taxi_num
FROM TAXI
WHERE tpep_pickup_datetime BETWEEN '2020-01-01 00:00:00' AND '2024-08-31 23:59:59'
GROUP BY Hour
ORDER BY taxi_num DESC;
