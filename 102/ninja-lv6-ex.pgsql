-- #1
SELECT DISTINCT pcity FROM people ORDER BY pcity ASC;

-- #2
SELECT DISTINCT pcity AS "TOWNS" FROM people ORDER BY pcity ASC;

-- #3
SELECT pfirstname || ' ' || plastname AS "Full Name" FROM people ORDER BY plastname ASC;

-- #4
SELECT pstate || ' has the city ' || pcity AS "TOWNS" FROM people ORDER BY pstate DESC, pcity ASC;

-- #5
SELECT lidesired, lipurchased, lidesired - lipurchased AS "Items Still Desired" FROM listitems ORDER BY "Items Still Desired" ASC;

-- #6
SELECT lidesired, lipurchased, ROUND((1 - (CAST(lidesired - lipurchased AS NUMERIC)/CAST(lidesired AS NUMERIC)))*100,2) || '%' AS "Fulfillment" FROM listitems;