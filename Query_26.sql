--26.
--Write a SQL query to find the average salaray of employees that work a particular shift (You can choose Morning, Evening or Night).
SELECT AVG(SALARAY) AS 'Average_Salaray'
FROM EMPLOYEE AS E
WHERE shift_time = '7AM-3PM';