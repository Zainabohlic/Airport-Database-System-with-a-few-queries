--25. 
--Write a SQL query to find the average time it takes for a plane to undergo maintenance, grouped by plane type.

SELECT AVG(HOURS_WORKED) AS AVERAGE_HOURS , A_SERVICE AS MODEL
FROM PLANE_SERVICE AS PS
GROUP BY PS.A_SERVICE
ORDER BY AVERAGE_HOURS;
