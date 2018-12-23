-- Test queries

SELECT P.id, P.make, P.model, P.age, P.seats, count(*) AS totalRepairs
FROM Repairs R, Plane P
WHERE R.plane_id = P.id
GROUP BY P.id
ORDER BY totalRepairs DESC;

SELECT EXTRACT(YEAR FROM R.repair_date) AS repair_year, count(*) AS totalRepairs
FROM Repairs R
GROUP BY repair_year
ORDER BY totalRepairs DESC;

INSERT INTO Pilot(fullname, nationality) VALUES('john smith', 'american');
