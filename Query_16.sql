SELECT E.ENAME, E.EID, O.OSSN AS OWNER_ID, C.COONAME AS CORPORATION_NAME, SUM(PS.HOURS_WORKED) AS total_hours_worked
FROM EMPLOYEE AS E
JOIN WORKS_ON AS W ON E.EID = W.EMP_NO
JOIN AIRPLANE AS A ON A.MOD_NO = W.SERVICE_MOD
JOIN OWNS AS O ON W.SERVICE_MOD = A.MOD_NO
JOIN CORPORATION C ON O.OSSN = C.SSN
JOIN PLANE_SERVICE ps ON A.REGNO = PS.A_SERVICE
WHERE C.COONAME = 'APPLE INC.'
GROUP BY E.ENAME, E.EID, O.OSSN, C.COONAME
ORDER BY total_hours_worked DESC;