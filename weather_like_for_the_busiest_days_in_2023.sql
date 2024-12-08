
WITH HiredRides AS (
    SELECT DATE(tpep_pickup_datetime) AS date, trip_distance AS distance
    FROM TAXI
    WHERE tpep_pickup_datetime BETWEEN '2023-01-01' AND '2023-12-31'
    UNION ALL
    SELECT DATE(pickup_datetime) AS date,trip_miles AS distance
    FROM UBER
    WHERE pickup_datetime BETWEEN '2023-01-01' AND '2023-12-31'
    ),
Rides AS (
    SELECT date, COUNT(*) AS hired_num, AVG(distance) AS average_distance
    FROM HiredRides
    GROUP BY date
    ),
Weather AS (
    SELECT DATE(DATE) AS weather_date, DailyPrecipitation AS average_precipitation_amount, DailyAverageWindSpeed AS average_wind_speed
    FROM DAILY_WEATHER
    WHERE DATE BETWEEN '2023-01-01' AND '2023-12-31'
    GROUP BY weather_date
    )
SELECT 
    Rides.date AS date,
    Rides.hired_num AS total_rides,
    Rides.average_distance AS average_distance,
    Weather.average_precipitation_amount average_precipitation_amount,
    Weather.average_wind_speed AS average_wind_speed
FROM Rides
LEFT JOIN Weather ON Rides.date = Weather.weather_date
ORDER BY Rides.hired_num DESC
LIMIT 10;
