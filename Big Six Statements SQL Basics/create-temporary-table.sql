# Temporary tables are tables that are only visible to the session that created them
# They can be used to store intermediate results for complex queries or to manipulate data before inserting it into a permanent table

#There's 2 ways to create temp tables:
#1. This is the less commonly used way - which is to build it exactly like a real table and insert data into it
CREATE TEMPORARY TABLE temp_table
(first_name varchar(50),
last_name varchar(50),
favorite_movie varchar(100)
);

#if we execute this it gets created and we can actualyl query it
SELECT *
FROM temp_table;

#we can insert data into the temp table which will not be saved becaused it's just temp
INSERT INTO temp_table
VALUES ('Alex','Freberg','Lord of the Rings: The Twin Towers');

SELECT *
FROM temp_table;

# 2. Build it by inserting data into it - easier and faster
CREATE TEMPORARY TABLE salary_over_50k
SELECT *
FROM employee_salary
WHERE salary > 50000;

# if we run this query we get our output
SELECT *
FROM salary_over_50k;

# temp tables are usefull to previsualize and modify data without affecting the database