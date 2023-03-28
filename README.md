# i212575_Assignment_2_DB

# Database-System
This is a simple Airport Database System with a few queries included.

The Entity-Relationship Diagram (ERD) above represents a small private airport database used to keep track of airplanes, their owners, airport employees, and pilots. The ERD is constructed using a crow's foot notation, which is a widely used standard notation in data modeling. The diagram shows various entities and relationships between them.
The first set of entities includes AIRPLANE, PLANE_TYPE, and HANGAR. AIRPLANE entity has attributes such as registration number, plane type, and hangar where it is stored. PLANE_TYPE entity has attributes like model number, capacity, and weight. HANGAR entity includes number, capacity, and location. These entities have relationships among themselves. For example, an AIRPLANE entity has a one-to-one relationship with a PLANE_TYPE entity, indicating that a particular type of airplane can only have one model number, capacity, and weight, while a PLANE_TYPE entity can be related to many AIRPLANE entities. An AIRPLANE entity is also related to a HANGAR entity, indicating that an airplane can only be stored in one hangar.
The next set of entities includes OWNER, EMPLOYEE, PILOT, and PERSON. OWNER entity is either a person or a corporation, and EMPLOYEE entity is related to MAINTAIN relationship, meaning an employee can maintain many airplanes, and an airplane can be maintained by many employees. PILOT entity is related to the FLIES relationship, which means a pilot can fly many types of planes, and a plane can be flown by many pilots. The PERSON entity is related to PILOT, OWNER, and EMPLOYEE entities since they all have attributes like Social Security number, name, address, and telephone number. CORPORATION entity is related to OWNER entity since a corporation can also be an owner of an airplane.
The final set of entities includes SERVICE and MAINTENANCE. A SERVICE entity is related to the PLANE_SERVICE relationship, which means an airplane can have many service records, and each service record can only belong to one airplane. A SERVICE entity includes attributes such as date of maintenance, number of hours spent on work, and type of work done. The MAINTENANCE entity is related to the SERVICE entity, meaning each service record has a particular type of Employee associated with it.

## QUERY 3

The query uses a LEFT JOIN operation between the AIRPLANE and PLANE_SERVICE tables, where the AIRPLANE table is aliased as 'A' and the PLANE_SERVICE table is aliased as 'P'. The LEFT JOIN operation is performed between the AIRPLANE table and the PLANE_SERVICE table using the ON clause, where the registration number of the airplane from the AIRPLANE table is matched with the airplane service number from the PLANE_SERVICE table. The WHERE clause then filters the results by selecting only those rows where the airplane service number from the PLANE_SERVICE table is null.

<img width="1512" alt="Query3" src="https://user-images.githubusercontent.com/66884608/228210799-8187ac25-a81d-4d6d-b04e-fab51623fc42.png">


## QUERY 4

The FROM clause specifies the four tables involved in the query, i.e., CORPORATION, OWNS, PLANE_TYPE, and AIRPLANE. The join conditions in the WHERE clause are as follows: the SSN column in the CORPORATION table is matched with the OSSN column in the OWNS table; the AIRREG column in the OWNS table is matched with the REGNO column in the AIRPLANE table; and the MOD_NO column in the AIRPLANE table is matched with the MODEL column in the PLANE_TYPE table. Finally, the WHERE clause specifies that the capacity of the airplane (i.e., the CAP column in the PLANE_TYPE table) must be greater than 200.

<img width="1512" alt="Query4" src="https://user-images.githubusercontent.com/66884608/228211406-66eec974-4171-4636-8ede-1f7931800caf.png">

## QUERY 5

The AVG() function is used to calculate the average salary of all employees who meet the criteria specified in the WHERE clause. The FROM clause specifies the EMPLOYEE table, which contains the data on all employees in the database. The WHERE clause specifies the condition for selecting the employees whose salaries will be used to calculate the average.

<img width="1512" alt="Query5" src="https://user-images.githubusercontent.com/66884608/228211462-2bea456e-ec41-49a7-bc99-e51bc750ece1.png">

## QUERY 6

This query matches 3 tables with each other namely EMPLOYEE, SERVICE_RECORD, and MAINTAINS. The condition is that the employee's ID in the EMPLOYEE table (E.EID) must match the employee's ID in the MAINTAINS table (M.E_SER), and the service record ID in the MAINTAINS table (M.SER_ID) must match the service record ID in the SERVICE_RECORD table (S.SERVICE_ID). Additionally, the number of hours worked on the service record must be equal to the highest number of hours worked.

<img width="1512" alt="Query6" src="https://user-images.githubusercontent.com/66884608/228211553-1d7c5c49-75d3-483f-ab64-d2557da263eb.png">

## QUERY 7

In this Query, the WHERE clause includes two conditions joined by the logical operator AND. The first condition checks if the service date in the PLANE_SERVICE table is greater than the current date minus seven days, which is achieved by using the DATEADD function with a day interval and a value of -7 added to the current date obtained by the GETDATE function. The second condition checks if the airplane registration number in the PLANE_SERVICE table matches the registration number in the AIRPLANE table.

<img width="1512" alt="Query7" src="https://user-images.githubusercontent.com/66884608/228211654-99eb3272-eb66-4b87-a24c-f533be997341.png">

## QUERY 8

Although this query could’ve been easily written with the help of the ‘OWNS’ table but just as a restriction, we managed to JOIN 3 tables, namely, OWNERS, PURCHASE, and PERSON. The conditions in the WHERE clause remove any purchases made before or after the last month and checks the ID’s of the buyer with that of the Person (PER.SSN) who owns it now. 

<img width="1512" alt="Query8" src="https://user-images.githubusercontent.com/66884608/228211722-4c4be667-ab65-4a7b-aea2-5010762619eb.png">

## QUERY 9

This SQL query retrieves the number of airplanes each pilot has flown, by joining the FLIES and PILOT tables on the P_ID column. The GROUP BY clause groups the results by each unique PILID value in the PILOT table, and then applies the aggregate function COUNT() to count the number of occurrences of each PILID value in the FLIES table. This SQL query retrieves the number of airplanes each pilot has flown, by joining the FLIES and PILOT tables on the P_ID column. The GROUP BY clause groups the results by each unique PILID value in the PILOT table, and then applies the aggregate function COUNT() to count the number of occurrences of each PILID value in the FLIES table.

<img width="1512" alt="Query9" src="https://user-images.githubusercontent.com/66884608/228211795-0974909c-be35-48e7-b096-50aaada40851.png">

## QUERY 10

The query retrieves all the information from the HANGER table. The available space is calculated by subtracting the occupied space from the total capacity of the hangar. The results are grouped by location and capacity, which means that the query will return the largest hangar with available space for each unique location and capacity combination. The records are then ordered by the maximum capacity of the hangar in descending order, so the query returns the largest hangar first.

<img width="1512" alt="Query10" src="https://user-images.githubusercontent.com/66884608/228211892-0a886654-d40c-4469-968d-b99d8a50bc96.png">

## QUERY 11

The query joins the 'Corporation' and 'Owns' tables using the SSN attribute to link the two tables. The GROUP BY clause is then used to group the result set by Corporation ID and Corporation Name. And, the ORDER BY clause sorts the result set by the count in descending order. The resulting table shows the Corporation ID, Corporation Name, and the total number of planes owned by each corporation.

<img width="1512" alt="Query11" src="https://user-images.githubusercontent.com/66884608/228211945-d6a33235-7d7d-4bc9-a0b0-6f566f7b720b.png">

## QUERY 12

The "INNER JOIN" operation is used to join the "PLANE_SERVICE" and "AIRPLANE" tables based on the registration number of the airplane. Then, the "GROUP BY" clause is used to group the results by the airplane's model number and registration number. Finally, the "AVG" function is used to calculate the average number of hours each airplane has been in service. The results are presented as the airplane's registration number, its model number, and the average hours it has been in service.

<img width="1512" alt="Query12" src="https://user-images.githubusercontent.com/66884608/228212039-0ea19c91-063f-433b-9455-09d2383b01e8.png">

## QUERY 13

The query starts by joining the "EMPLOYEE" and "PERSON" tables, and then inner joining "PURCHASE" on the "BUYER_ID" field in "PC" with the "PSSN" field in "P". Next, the query inner joins "AIRPLANE" on the "MOD_NO" field in "A" with the "MOD" field in "PC". Then, the query inner joins "PLANE_SERVICE" on the "A_SERVICE" field in "PS" with the "REGNO" field in "A". The "WHERE" clause is used to filter the results based on the ongoing status of the plane service, which is checked by the "STATUS_" field in "PS". Additionally, the "NOT IN" operator is used to exclude any employees whose "EID" is present in the subquery that selects "EID" from the "PLANE_SERVICE" table.

<img width="1512" alt="Query13" src="https://user-images.githubusercontent.com/66884608/228212101-e0b5f6ee-eed4-4944-9615-5dd7dc6eda69.png">

## QUERY 14

The "INNER JOIN" operator is used to join the "PERSON" table with the "PURCHASE" table, using the "PSSN" field in "P" and the "BUYER_ID" field in "PC". This ensures that only buyers who have made a purchase are included in the result set. Next, the query inner joins the "HANGER" table on the "LOC" field in "H" with the "LOCAT" field in "P". This ensures that only buyers who are associated with a hanger are included in the result set.

<img width="1512" alt="Query14" src="https://user-images.githubusercontent.com/66884608/228212182-7894c562-f1ea-45be-a97a-b398ec90a5a2.png">

## QUERY 15

The "JOIN" operator is used to combine the "PILOT" table with the "FLIES" table, using the "PILID" field in "P" and the "P_ID" field in "F". This ensures that only pilots who are assigned to fly an airplane are included in the result set. Next, the query inner joins the "AIRPLANE" table on the "MOD_NO" field in "A" with the "AIRMOD" field in "F". This ensures that only airplanes that are being flown by a pilot are included in the result set. The query then inner joins the "PLANE_SERVICE" table on the "A_SERVICE" field in "PS" with the "REGNO" field in "A". This ensures that only airplanes that are currently in maintenance and have an "ONGOING" status are included in the result set. Finally, the "WHERE" clause is used to filter the results based on the "ONGOING" status of the plane service, which is checked by the "STATUS_" field in "PS".

<img width="1512" alt="Query15" src="https://user-images.githubusercontent.com/66884608/228212285-f27ebd71-4638-4b13-a104-55ce9d1ae095.png">

## QUERY 16

The "JOIN" operator is used to combine the "EMPLOYEE" table with the "WORKS_ON" table, using the "EID" field in "E" and the "EMP_NO" field in "W". This ensures that only employees who have worked on airplanes are included in the result set. Next, the query inner joins the "AIRPLANE" table on the "MOD_NO" field in "A" with the "SERVICE_MOD" field in "W". This ensures that only airplanes that have been serviced by an employee are included in the result set. The query then inner joins the "OWNS" table on the "SERVICE_MOD" field in "W" with the "MOD_NO" field in "A". This ensures that only airplanes that are owned by someone are included in the result set. The query then inner joins the "CORPORATION" table on the "OSSN" field in "O" with the "SSN" field in "C". This ensures that only airplanes owned by the specified corporation, "APPLE INC.", are included in the result set. Finally, the "GROUP BY" clause groups the results by employee name, employee ID, owner ID, and corporation name. The "SUM" function is used to calculate the total hours worked on the airplanes serviced by each employee.

<img width="1512" alt="Query16" src="https://user-images.githubusercontent.com/66884608/228212367-8dec7386-e52b-4db9-aa51-356bfa91286a.png">

## QUERY 17

In this Query, The "NOT IN" operator is then used to ensure that any airplane registration numbers that appear in the subquery are excluded from the result set. The second condition is that the airplane registration number is not being worked on during the morning shift. This is accomplished by using another subquery that retrieves all employee IDs from the "WORKS_ON" table and joins it with the "EMPLOYEE" table on the "EMP_NO" field, and then filters only those employees who work during the morning shift.

<img width="1512" alt="Query17" src="https://user-images.githubusercontent.com/66884608/228212432-91e7c39e-04a2-45a4-b2f5-9d4109e485f4.png">

## QUERY 18

The query starts by joining the "PERSON" table with the "OWNERS" table on the "SSN" field, in order to retrieve information about the person who owns the airplane. It then joins the "PURCHASE" table with the "CORPORATION" table on the "SELLER_ID" field and with the "PERSON" table on the "BUYER_ID" field, in order to retrieve information about the corporation that sold the airplane and the person who bought it. The query then joins the "PLANE_TYPE" table with the "PURCHASE" table on the "MODEL" field, in order to retrieve information about the type of airplane that was purchased. It then joins the "AIRPLANE" table with the "PLANE_TYPE" table on the "MOD_NO" field, in order to retrieve information about the specific airplane that was purchased. The query also joins the "OWNS" table with the "CORPORATION" table on the "OSSN" field, in order to retrieve information about the corporation that currently owns the airplane. It uses the "DATEPART" function to calculate the difference between the current month and the month in which the airplane was purchased, in order to identify airplanes that were purchased in the previous month. It then filters the result set to only include airplanes that were purchased in the previous month.

<img width="1512" alt="Query18" src="https://user-images.githubusercontent.com/66884608/228212555-9b1aa7d6-838e-428b-ad61-e6d0154f614a.png">

## QUERY 19

The query simply selects the "HANGNO", "CAP", "LOC", and "OCCU_SPACE" columns from the "HANGER" table, which represents the hangers available for storing airplanes. The "HANGNO" column represents the unique identifier for each hanger, while the "CAP" column represents the total capacity of each hanger in terms of the number of airplanes that it can store. The "LOC" column represents the physical location of each hanger, and the "OCCU_SPACE" column represents the number of planes currently stored in each hanger.

<img width="1512" alt="Query19" src="https://user-images.githubusercontent.com/66884608/228212617-a36aba26-f0f0-4fd0-9575-71af646773bf.png">

## QUERY 20

The query selects the total count of planes, represented by the COUNT(*) function, and the model or type of each plane from the "PLANE_TYPE" and "AIRPLANE" tables. The "PLANE_TYPE" table contains information about the different models or types of planes, while the "AIRPLANE" table contains information about individual planes, including their model number. The query then groups the planes by model using the GROUP BY clause, and orders the results by the total count of each plane type in ascending order using the ORDER BY clause.

<img width="1512" alt="Query20" src="https://user-images.githubusercontent.com/66884608/228212715-fd71534a-20ad-4f27-8736-6270f1448af9.png">

## QUERY 21

The query selects the total count of services performed, represented by the COUNT(*) function, and the airplane registration number from the "PLANE_SERVICE" and "AIRPLANE" tables. The "PLANE_SERVICE" table contains information about the services performed on each airplane, including the airplane registration number, while the "AIRPLANE" table contains general information about each airplane, including its registration number. The query then groups the services performed by airplane registration number using the GROUP BY clause, and orders the results by the total count of services performed on each airplane in descending order using the ORDER BY clause.

<img width="1512" alt="Query21" src="https://user-images.githubusercontent.com/66884608/228212776-3af4194b-2286-43d0-b26d-a308eb4eb636.png">

## QUERY 22

The query starts by selecting the "SHIFT" and "SALARY" columns from the "EMPLOYEE" table. The "WHERE" clause is used to filter the result set to only include employees working in the morning, night, or evening shifts. The results are then grouped by shift using the "GROUP BY" clause, and the average salary for each shift is calculated using the "AVG" function.

<img width="1512" alt="Query22" src="https://user-images.githubusercontent.com/66884608/228212850-8df4c4b8-013b-4a1b-8110-48b3df2bd06c.png">

## QUERY 23

This SQL query retrieves information on the number of planes owned by each owner. It joins the "OWNERS" table with the "OWNS" table, which holds the relationship between owners and planes they own. The result is grouped by owner name and the count of planes they own is calculated using the COUNT(*) function. Finally, the result is ordered by the number of planes owned by each owner in ascending order.

<img width="1512" alt="Query23" src="https://user-images.githubusercontent.com/66884608/228212928-f478f3ec-ef2e-4068-8d98-486136b79794.png">

## QUERY 24

The FROM clause specifies the tables used in the query: FLIES, PLANE_TYPE, and PILOT. The WHERE clause joins these tables using the P_ID column in the FLIES table and the MODEL column in the PLANE_TYPE table. The join condition is specified using the "=" operator. The WHERE clause also specifies that the PILOT table is joined to the FLIES table using the PILID column. The GROUP BY clause groups the results by the PILID column in the PILOT table, so that the count of planes flown by each pilot is aggregated. The ORDER BY clause sorts the results in descending order by the count of planes flown by each pilot.

<img width="1512" alt="Query24" src="https://user-images.githubusercontent.com/66884608/228213001-05df8292-144d-475d-b703-816a2dbe41d9.png">

## QUERY 25

This query is retrieving the average number of hours worked for each airplane model in the "PLANE_SERVICE" table. It is using the AVG aggregate function to calculate the average of the HOURS_WORKED column, and grouping the results by the A_SERVICE column, which represents the airplane model. The ORDER BY clause is sorting the results in ascending order based on the average hours worked.

```
Importance of this Query - The query is providing a summary of the average hours worked by each airplane model to help identify any potential issues or areas for improvement in the maintenance and servicing of the airplanes.
```

<img width="1512" alt="Query25" src="https://user-images.githubusercontent.com/66884608/228213081-81e69fb4-e6ab-434d-9eab-8e0d72fd3051.png">

## QUERY 26

The query starts with the 'EMPLOYEE' table and applies a filter condition to select only those employees whose 'shift_time' column value is '7AM-3PM'. Then it calculates the average of the 'salary' column for the selected employees and renames the output column as 'Average_Salary'. 

```
Importance of this Query - This query calculates the average salary of employees who work a specific shift time (7AM-3PM) in the table "EMPLOYEE". It 
can be used to gain insight into the compensation of a specific group of employees or to compare the average salary of employees working different shift times.
```
<img width="1512" alt="Query26" src="https://user-images.githubusercontent.com/66884608/228213181-1e953f8f-3750-4b41-816c-8f2173f674b8.png">

## QUERY 27

By subtracting the occupied space from the total capacity, the query determines the available space in each hanger. 

```
Importance of this Query - This query is important because it helps to determine the available space in each hanger at the airport. The query retrieves the hanger number and the available space, which is calculated by subtracting the occupied space from the total capacity of each hanger. This  
information is crucial for airport management to ensure that there is sufficient space to accommodate planes and to make informed decisions about hangar rental and maintenance.
```
<img width="1512" alt="Query27" src="https://user-images.githubusercontent.com/66884608/228213245-75ebf721-34e9-43f1-81f4-d49fbc32c1a6.png">

## QUERY 28

This SQL query retrieves the number of planes owned by a specific corporation, in this case, "Google Inc." The query joins the "OWNS" and "CORPORATION" tables on the corporation's SSN and filters the result to only include the corporation with the name "Google Inc."

```
The importance of this Query - It allows a user to quickly retrieve information about the number of planes owned by a specific corporation in the 
database
```
<img width="1512" alt="Query28" src="https://user-images.githubusercontent.com/66884608/228213284-db7db934-7c49-4655-955f-0a95a4d25901.png">
