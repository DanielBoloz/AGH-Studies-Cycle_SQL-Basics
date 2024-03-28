-- During the classes, I was using the database "portal__mammals" which represents a long-term ecological study hat has been monitoring small mammal community 
-- responses to climate and experimental manipulation of dominant rodent species since 1977 in southeastern Arizona

--1. Query returns columns "weight" and "sex" from a table "surveys".
SELECT weight, sex
FROM surveys;

--2. Query returns 5 first rows of all columns from a table "surveys".
SELECT * 
FROM surveys 
LIMIT 5;

--3. Query returns number of distinct years bigger than 1978 from a table "surveys".
SELECT COUNT(DISTINCT year) 
FROM surveys
WHERE year>1978;

--4. Query returns rows from a table "surveys" where "species_id" equals "DO" or "plot_id" equals 1.
SELECT *
FROM surveys
WHERE species_id = 'DO' OR plot_id = 1;

--5. Query returns rows from a table "surveys" for "year" between 1990 and 1995.
SELECT * 
FROM surveys
WHERE year BETWEEN 1990 AND 1995;

--6. Query returns columns "plot_id", "species_id" and "weight" from a table surveys where "plot_id" equals 2, 4 or 6.
SELECT plot_id, species_id, weight
FROM surveys
WHERE plot_id IN (2, 4, 6);

