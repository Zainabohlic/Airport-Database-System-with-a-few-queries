--27.
--Write a SQL query to find the available space in all the Hangars 
SELECT HANGNO AS HANGER_NO, CAP-OCCU_SPACE AS AVAILABLE_SPACE
FROM HANGER AS H;
