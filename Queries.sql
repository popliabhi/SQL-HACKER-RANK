/*Query all columns for all American cities in CITY with populations larger than 100000. The CountryCode for America is USA.*/
select * from CITY where POPULATION > 100000 AND COUNTRYCODE = 'USA';

/*Query the names of all American cities in CITY with populations larger than 120000. The CountryCode for America is USA.*/
select NAME from CITY where POPULATION > 120000 AND COUNTRYCODE ='USA';

/*Query all columns (attributes) for every row in the CITY table.*/
select * from CITY;

/*Query all columns for a city in CITY with the ID 1661.*/
select * from CITY where ID=1661;

/*Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.*/
select * from CITY where COUNTRYCODE='JPN';

/*Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.*/
select NAME from CITY where COUNTRYCODE='JPN';

/*Query a list of CITY and STATE from the STATION table.*/
select CITY, STATE from STATION;

/*Query a list of CITY names from STATION with even ID numbers only. You may print the results in any order, but must exclude duplicates from your answer.*/
select distinct CITY from STATION where ID%2=0;

/*Let N be the number of CITY entries in STATION, and let N'be the number of distinct CITY names in STATION; query the value of N-N' from STATION. In other words, find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.*/
select count(CITY) - count(DISTINCT CITY) from STATION;

/*Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.*/
select CITY, length(CITY) from STATION order by length(CITY),CITY limit 1;
select CITY, length(CITY) from STATION order by length(CITY) desc limit 1;

/*Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.*/
select distinct CITY from STATION where substr(CITY,1,1)='a' OR substr(CITY,1,1)='e' OR substr(CITY,1,1)='i' OR substr(CITY,1,1)='o' OR substr(CITY,1,1)='u';

/*Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.*/
/*
SUBSTR(str, pos, len)
*/
select distinct CITY from STATION where substr(CITY,-1,1)='a' OR substr(CITY,-1,1)='e' OR substr(CITY,-1,1)='i' OR substr(CITY,-1,1)='o' OR substr(CITY,-1,1)='u';

/*Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.*/
select Distinct CITY from STATION where substr(CITY,1,1) in ('A','E','I','O','U') AND substr(CITY,-1,1) in ('A','E','I','O','U');

/*Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.*/
select distinct CITY from STATION where substr(CITY,1,1) not in ('A','E','I','O','U');

/*Query the list of CITY names from STATION that do not END with vowels. Your result cannot contain duplicates.*/
select distinct CITY from STATION where substr(CITY,-1,1) not in ('A','E','I','O','U');

/*Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.*/
select distinct CITY from STATION where substr(CITY,1,1) not in ('A','E','I','O','U') OR substr(CITY,-1,1) not in ('A','E','I','O','U');

/*Query the list of CITY names from STATION that either do not start with vowels and do not end with vowels. Your result cannot contain duplicates.*/
select distinct CITY from STATION where substr(CITY,1,1) not in ('A','E','I','O','U') AND substr(CITY,-1,1) not in ('A','E','I','O','U');

/*Query the Name of any student in STUDENTS who scored higher than 75 Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.*/
select Name from STUDENTS where Marks >75 order by substr(NAME,-3,3), ID;

/*Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.*/
select name from Employee order by name asc;

/*Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than $2000 per month who have been employees for less than 10 months. Sort your result by ascending employee_id.*/
select name from Employee where salary>2000 and months<10 order by employee_id;
