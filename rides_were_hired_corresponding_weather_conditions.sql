
WITH HiredRiders AS (
    SELECT strftime('%Y-%m-%d %H', tpep_pickup_datetime) AS date_hour, COUNT(*) AS hired_num
    FROM TAXI
    WHERE tpep_pickup_datetime BETWEEN '2023-09-25 00:00:00' AND '2023-10-03 23:59:59'
    GROUP BY date_hour
    UNION ALL
    SELECT strftime('%Y-%m-%d %H', pickup_datetime) AS date_hour, COUNT(*) AS hired_num
    FROM UBER
    WHERE pickup_datetime BETWEEN '2023-09-25 00:00:00' AND '2023-10-03 23:59:59'
    GROUP BY date_hour
    ),
Weather AS (
    SELECT 
        strftime('%Y-%m-%d %H', DATE) AS weather_date_hour,
        HourlyPrecipitation AS total_precipitation_for_the_hour,
        HourlyWindSpeed AS average_wind_speed_for_the_hour
    FROM HOURLY_WEATHER
    WHERE Date BETWEEN '2023-09-25 00:00:00' AND '2023-10-03 23:59:59'
    GROUP BY weather_date_hour
    )
SELECT 
    HiredRiders.date_hour AS date_hour,
    HiredRiders.hired_num,
    Weather.total_precipitation_for_the_hour,
    Weather.average_wind_speed_for_the_hour
FROM HiredRiders
LEFT JOIN Weather ON HiredRiders.date_hour = Weather.weather_date_hour
ORDER BY HiredRiders.date_hour;
