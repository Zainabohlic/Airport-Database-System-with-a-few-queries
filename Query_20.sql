SELECT COUNT(*) AS TOTAL_PLANES, MODEL AS PLANE_TYPE 
FROM PLANE_TYPE AS P, AIRPLANE AS A 
WHERE P.MODEL = A.MOD_NO
GROUP BY MODEL
ORDER BY COUNT(*);