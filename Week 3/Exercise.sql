-- During the classes, I was using the database "portal__mammals" which represents a long-term ecological study hat has been monitoring small mammal community 
-- responses to climate and experimental manipulation of dominant rodent species since 1977 in southeastern Arizona

--1. Query joins tables "survey" and "species" based on a "species_id" column.
SELECT *
FROM surveys
JOIN species
ON surveys.species_id = species.species_id;

--2. Query joins 4 columns from tables "surveys" and "species" based on a "species_id" column.
SELECT s.record_id, s.species_id, sp.genus, sp.species
FROM surveys AS s
JOIN species AS sp
ON s.species_id = sp.species_id;

--3. Query joins 4 columns from tables "surveys" and "species" based on a "species_id" with usage of "USING" formula.
SELECT s.record_id, s.species_id, sp.genus, sp.species
FROM surveys AS s
JOIN species AS sp
USING (species_id);

--4. Query joins 4 tables "surveys", "species", "plots".
SELECT surveys.species_id, species.genus, species.species, plots.plot_id, plots.plot_type
FROM surveys
JOIN species
ON surveys.species_id = species.species_id
JOIN plots
ON surveys.plot_id = plots.plot_id
WHERE surveys.year=2000;
