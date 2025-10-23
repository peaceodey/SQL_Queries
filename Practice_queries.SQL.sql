----1. Query all columns for all American cities in the CITY table with populations larger
----than 100000
SELECT *
FROM CITY
WHERE CountryCode = 'USA' AND Population > 100000;
----2. Query the NAME field for all American cities in the CITY table with populations larger
----than 120000.
SELECT NAME
FROM CITY
WHERE CountryCode = 'USA' AND POPULATION  > 120000;
----3. Query all columns (attributes) for every row in the CITY table.
SELECT *
FROM CITY;
----4.Query all columns for a city in CITY with the ID 1661.
SELECT *
FROM CITY
WHERE ID = 1661;
----5. Query all attributes of every Japanese city in the CITY table. 
    The COUNTRYCODE for Japan is JPN.
SELECT *
FROM CITY
WHERE COUNTRYCODE = 'JPN';
----6.Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
SELECT NAME
FROM CITY
WHERE COUNTRYCODE = 'JPN';
----7.Query a list of CITY and STATE from the STATION table.
SELECT CITY , STATE
FROM STATION;
----8. Query the difference between the maximum and minimum populations in CITY.
SELECT(MAX(POPULATION) - MIN(POPULATION)) AS population_difference
FROM CITY ;
----9. Query the average population for all cities in CITY, rounded down to the nearest integer.
SELECT FLOOR(AVG(POPULATION)) AS average_population
FROM CITY ;
----10. Query the total population of all cities in CITY where District is California.
SELECT SUM(POPULATION) AS total_population
FROM CITY
WHERE District = 'California' ;
----11. Query the average population of all cities in CITY where District is California.
SELECT AVG(POPULATION) AS population_average
FROM CITY
WHERE District = 'California' ;
----12. Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
SELECT DISTINCT CITY
FROM STATION
WHERE MOD( ID, 2 ) = 0 ;
----13.Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.
SELECT SUM(POPULATION)
FROM CITY
WHERE COUNTRYCODE = 'JPN' ;
----14. Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.
----Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
SELECT COUNTRY.Continent, FLOOR(AVG(CITY . Population)) AS average_population
FROM CITY
JOIN COUNTRY ON CITY . CountryCode = COUNTRY . Code
GROUP BY COUNTRY. Continent ;
----15. Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.
SELECT SUM(POPULATION) AS total_population
FROM CITY
WHERE COUNTRYCODE = 'JPN' ;
----16.Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
----Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
SELECT CITY . Name
FROM CITY
JOIN COUNTRY ON CITY . CountryCode = COUNTRY.Code
WHERE COUNTRY . Continent = 'Africa' ;
----17. Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.
SELECT name
FROM Employee 
ORDER BY name ASC;
----18. Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than  per month who have been employees for less than  months. Sort your result by ascending employee_id.
SELECT name
FROM Employee
WHERE salary > 2000 AND months_employed < 10
ORDER BY employee_id ASC;
----19. Query a count of the number of cities in CITY having a Population larger than 100000.
SELECT COUNT(*) AS city_count
FROM CITY
WHERE Population > 100000;
----20. Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.
----Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
SELECT SUM(CITY.Population) AS total_population
FROM CITY
JOIN COUNTRY ON CITY. CountryCode = COUNTRY . Code
WHERE COUNTRY. Continent = 'Asia' ;