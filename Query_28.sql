--28.
--Write a SQL query to find the total number of planes owned by a particular coperation
SELECT COONAME AS CORP, COUNT(*) AS TOTAL_PLANES_OWNED
FROM OWNS AS OH, CORPORATION AS C 
WHERE C.COONAME = 'Google Inc.' AND C.SSN = OH.OSSN
GROUP BY COONAME
ORDER BY COUNT(*);