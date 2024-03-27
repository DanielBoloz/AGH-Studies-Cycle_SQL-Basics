-- During the classes, I was using the database "portal__mammals" which represents a long-term ecological study that has been monitoring small mammal community responses to climate and experimental manipulation of dominant rodent species since 1977 in southeastern Arizona
-- 1. Query introduces column sum of the values from column "weights" from the table "surveys"

SELECT sum(weight)
FROM surveys;
