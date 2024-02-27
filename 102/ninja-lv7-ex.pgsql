-- #1
SELECT pfirstname || ' ' || plastname || ' ' || CAST(ppoints AS TEXT) 
FROM people
ORDER BY ppoints DESC;;

-- #2
SELECT pfirstname || ' ' || plastname || ' is ' || CAST(EXTRACT(day FROM CAST('now' AS DATE) - pdob) AS INT) / 365 || ' years old' AS "Age" FROM people ORDER BY pdob ASC;

-- #3
SELECT CAST(pid AS INT) AS "one", CAST(pid AS NUMERIC) AS "two", CAST(pid AS TEXT) AS "three" FROM people;

-- #4
SELECT 2^8 AS "A";
SELECT 1000/150 AS "B";
SELECT 1000%150 AS "C";
SELECT 400/34.3 AS "D";
SELECT 400%34.3 AS "E";
SELECT ROUND(400/34.3, 4) AS "F";
SELECT 85>64 AS "G";