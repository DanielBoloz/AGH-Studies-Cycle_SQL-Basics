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

--3. Query joins 4 oclumns from tables "surveys" and "species" based on a "species_id" with usage of "USING" formula.
SELECT s.record_id, s.species_id, sp.genus, sp.species
FROM surveys AS s
JOIN species AS sp
USING (species_id);