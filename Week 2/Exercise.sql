-- During the classes, I was using the database "portal__mammals" which represents a long-term ecological study hat has been monitoring small mammal community 
-- responses to climate and experimental manipulation of dominant rodent species since 1977 in southeastern Arizona

--1. Query returns the sum of values in column "weight" from table "surveys"
SELECT sum(weight)
FROM surveys;

--2. Query returns the maximum value in column "weight" from table "surveys"
SELECT max(weight)
FROM surveys;

--3. Query returns the minimum value in column "weight" from table "surveys"
SELECT avg(weight) AS SrWaga, max(weight) AS MaxWaga, min(weight) AS MinWaga
FROM surveys
WHERE species_id='DO';

--4. Query returns rounded average value from column "weight" from table "surveys"
SELECT ROUND(avg(weight),2)
FROM surveys;

--5. Query return 3 values 
SELECT  AVG(hindfoot_length) AS av_fl,
        MAX(hindfoot_length) AS max_fl,
        MIN(hindfoot_length) AS min_fl
FROM surveys
WHERE species_id='DO'

--6. Query returns rounded value of food length for animals with weight more than 20 and stores it as a "AverageFoot"
SELECT ROUND(avg(hindfoot_length),2) AS AverageFoot
FROM surveys
WHERE weight>20;

--7. Query returns columns "species_id", "genus", "species" from table "species" sorted alphabetically by column "species"
SELECT species_id, genus, species
FROM species
ORDER BY species ASC;

--8. Query returns columns "species_id", "genus", "species" from table "species" sorted alphabetically descending by column "species"
SELECT species_id, genus, species
FROM species
ORDER BY species DESC;

--9. Query returns columns "species_id, "year", "month", "day" from table "surveys" ordered by year, month, day alphabetically descending.
SELECT species_id, year, month, day
FROM surveys
ORDER BY species_id, year DESC, month DESC, day DESC;

--10. Query returns columns year, species_id and minimal values of foot lengths from the table surveys. It is grouped by year and includes only species with foot lengths more or equal 20
SELECT year, species_id, MIN(hindfoot_length) as min_hindfoot
FROM surveys
GROUP BY year, species_id
HAVING min_hindfoot>=20
