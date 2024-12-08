
WITH SnowDay AS (
    SELECT DATE(DATE) AS snow_day, DailySnowfall AS total_snowfall_of_snow_day
    FROM DAILY_WEATHER
    WHERE DailySnowfall > 0
    GROUP BY snow_day
    ),
HiredRides AS (
    SELECT DATE(tpep_pickup_datetime) AS date, COUNT(*) AS total_rides
    FROM TAXI
    GROUP BY date
    UNION ALL
    SELECT DATE(pickup_datetime) AS date, COUNT(*) AS total_rides
    FROM UBER
    GROUP BY date
    )
SELECT 
    SnowDay.snow_day AS date,
    SnowDay.total_snowfall_of_snow_day,
    HiredRides.total_rides
FROM SnowDay
JOIN HiredRides ON SnowDay.snow_day = HiredRides.date
ORDER BY SnowDay.total_snowfall_of_snow_day DESC
LIMIT 10;
