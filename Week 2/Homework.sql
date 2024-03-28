-- During the classes, I was using the database "portal__mammals" which represents a long-term ecological study hat has been monitoring small mammal community 
-- responses to climate and experimental manipulation of dominant rodent species since 1977 in southeastern Arizona

--1. Query returns rounded average values from column "weight" from table "surveys" grouped by "plot_id"
SELECT plot_id, ROUND(avg(weight),2) AS avg_weight
FROM surveys
GROUP BY plot_id;

--2. Query returns values column "species" which represents species appearing on more than 20 plots.
SELECT species_id, COUNT(DISTINCT plot_id) AS count_plots
FROM surveys
GROUP BY species_id
HAVING count_plots>20;

--3. Query returns grouped maximum "foot_length" and minimum "weight" grouped by columns "species_id" and "sex" from table "surveys".
SELECT species_id, sex, MAX(hindfoot_length) AS max_hl, MIN(weight) AS min_wt
FROM surveys
GROUP BY species_id, sex; 
