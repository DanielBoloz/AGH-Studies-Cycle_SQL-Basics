-- During the classes, I was using the database "portal__mammals" which represents a long-term ecological study hat has been monitoring small mammal community 
-- responses to climate and experimental manipulation of dominant rodent species since 1977 in southeastern Arizona

--Exercise 1
SELECT s.record_id, s.species_id, sp.genus, sp.species
FROM surveys AS s
JOIN species AS sp
USING (species_id);

--Exercise 2
SELECT s.record_id, s.species_id, sp.genus, sp.species
FROM surveys AS s
LEFT JOIN species AS sp
ON s.species_id=sp.species_id;

--Exercise 3
SELECT s.record_id, s.species_id, sp.genus, sp.species, p.plot_id, p.plot_type
FROM surveys AS s
JOIN species AS sp
ON s.species_id=sp.species_id
JOIN plots AS p
ON s.plot_id=p.plot_id
WHERE s.year=2002;

--Exercise 4
SELECT s.record_id, s.species_id, sp.genus, sp.species, p.plot_id, p.plot_type
FROM surveys AS s
JOIN species AS sp
ON s.species_id=sp.species_id
JOIN plots as P
ON s.plot_id=p.plot_id
WHERE p.plot_type = 'Control';

--Exercise 5
SELECT * 
FROM surveys
WHERE species_id IN (
    SELECT species_id
    FROM surveys
    EXCEPT 
    SELECT species_id
    FROM species);
    
-- Exercise 6
SELECT * 
FROM surveys AS s 
JOIN species AS sp
USING (species_id)
WHERE genus = 'Dipodomys'
    AND year BETWEEN 2000 AND 2010;
    
-- Exercise 7
SELECT *
FROM surveys
WHERE plot_id IN (
    SELECT plot_id
    FROM surveys
    EXCEPT 
    SELECT plot_id
    FROM plots);
