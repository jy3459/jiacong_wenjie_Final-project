
SELECT strftime('%w', pickup_datetime) AS Day, COUNT(*) AS Day_num
FROM UBER
GROUP BY Day
ORDER BY Day_num DESC;
