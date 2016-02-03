SELECT speciality, COUNT(speciality)
FROM h_doctors
WHERE speciality IS NOT NULL
GROUP BY speciality
HAVING COUNT(speciality) <= ALL (SELECT COUNT(speciality) FROM h_doctors
WHERE speciality IS NOT NULL
GROUP BY speciality);
