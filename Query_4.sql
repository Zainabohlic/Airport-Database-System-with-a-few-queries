SELECT COONAME AS CORP_NAME, COOADD AS CORP_ADDRESS, O.AIRREG, P.CAP
FROM CORPORATION AS C, OWNS AS O, PLANE_TYPE AS P, AIRPLANE AS A
WHERE C.SSN = O.OSSN AND O.AIRREG = A.REGNO AND A.MOD_NO = P.MODEL AND P.CAP > 200;