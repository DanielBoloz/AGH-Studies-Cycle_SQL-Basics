-- During the classes, I was using the database "portal__mammals" which represents a long-term ecological study hat has been monitoring small mammal community 
-- responses to climate and experimental manipulation of dominant rodent species since 1977 in southeastern Arizona

--1. Query returns number of records from a table "surveys" where "species_id" equals to "DM" and "sex" equals to "M".
SELECT COUNT(*)
FROM surveys 
WHERE species_id='DM' AND sex='M';

--2. Query returns number of records from a table "surveys" where "species_id" equals to "DM" and "sex" equals to "F".
SELECT COUNT(*)
FROM surveys
WHERE species_id='DM' OR sex='F';

--3. Query returns number of cells from a table "species" from rows where "species" starts with the letter "m".
SELECT COUNT(*)
FROM species
WHERE species LIKE 'm%';

--4. Query returns all rows from a table "plots" in which "plot_type" equals "Control".
SELECT COUNT(*)
FROM plots
WHERE plot_type='Control';
