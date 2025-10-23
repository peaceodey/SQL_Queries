# SQL_Queries
A collection of SQL practice questions and solutions using SQLLite

This repository contains a collection of SQL queries I wrote to practice data analysis using **SQLite**.  
It covers basic to intermediate SQL concepts, including filtering, aggregation, joins, and subqueries.

Each query is written and tested in **SQLite** and focuses on improving real-world problem-solving with SQL.




 Database: SQLite
 Description: A collection of SQL practice questions and answers



1. Query all columns (attributes) for every row in the CITY table.

SELECT * FROM CITY;


2. Query all columns for a CITY in Japan.

SELECT * 
FROM CITY
WHERE COUNTRYCODE = 'JPN';


3. Query the names of all the Japanese cities in the CITY table.

SELECT NAME 
FROM CITY
WHERE COUNTRYCODE = 'JPN';


4. Query all attributes of every Japanese city in the CITY table.

SELECT * 
FROM CITY
WHERE COUNTRYCODE = 'JPN';


5. Query all columns for every city where the population is larger than 100,000.
   
SELECT * 
FROM CITY
WHERE POPULATION > 100000;


6. Query the names of all the cities where the population is larger than 120,000.

SELECT NAME 
FROM CITY
WHERE POPULATION > 120000;


7. Query all columns for every city in the CITY table with a population larger than 120,000 and the country code equal to 'USA'.

SELECT * 
FROM CITY
WHERE POPULATION > 120000
  AND COUNTRYCODE = 'USA';


8. Query the CITY names from all cities where the population is larger than 120,000 and the country code is 'USA'.

SELECT NAME 
FROM CITY
WHERE POPULATION > 120000
  AND COUNTRYCODE = 'USA';


9. Query the CITY name and population for cities in the CITY table with population larger than 200,000.

SELECT NAME, POPULATION
FROM CITY
WHERE POPULATION > 200000;


10. Query the CITY name and population for cities in the CITY table with population larger than 200,000, ordered by population descending.

SELECT NAME, POPULATION
FROM CITY
WHERE POPULATION > 200000
ORDER BY POPULATION DESC;


11. Query the names of all American cities with populations larger than 100,000.

SELECT NAME 
FROM CITY
WHERE COUNTRYCODE = 'USA'
  AND POPULATION > 100000;


12. Query the names of all cities in Japan with populations greater than 200,000.

SELECT NAME 
FROM CITY
WHERE COUNTRYCODE = 'JPN'
  AND POPULATION > 200000;


13. Query the names of all cities in India with populations greater than 500,000.
    
SELECT NAME 
FROM CITY
WHERE COUNTRYCODE = 'IND'
  AND POPULATION > 500000;


14. Query the names of all cities with even ID numbers.

SELECT NAME
FROM CITY
WHERE ID % 2 = 0;


15. Query the difference between the maximum and minimum populations in the CITY table.
    
SELECT (MAX(POPULATION) - MIN(POPULATION)) AS PopulationDifference
FROM CITY;


16. Query the average population of all cities in the CITY table.

SELECT AVG(POPULATION) AS AveragePopulation
FROM CITY;


17. Query the total population of all cities in the CITY table.

SELECT SUM(POPULATION) AS TotalPopulation
FROM CITY;


18. Query the total population of all cities in the COUNTRY table.

SELECT SUM(POPULATION) AS TotalCountryPopulation
FROM COUNTRY;


19. Query the names of all the employees whose salary is greater than the average salary.

SELECT NAME 
FROM EMPLOYEE
WHERE SALARY > (
    SELECT AVG(SALARY)
    FROM EMPLOYEE
);


20. Query the names of all employees who earn the highest salary in the EMPLOYEE table.
SELECT NAME 
FROM EMPLOYEE
WHERE SALARY = (
    SELECT MAX(SALARY)
    FROM EMPLOYEE
);


Odey Peace Ogeyi  
📧 odeypeace20@gmail.com  

