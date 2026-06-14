-- Example SQL analysis queries used in the capstone
SELECT LaunchSite, COUNT(*) AS launches, ROUND(AVG(Class), 3) AS success_rate
FROM launches
GROUP BY LaunchSite
ORDER BY success_rate DESC;

SELECT Orbit, COUNT(*) AS launches, ROUND(AVG(PayloadMass), 1) AS avg_payload_kg
FROM launches
GROUP BY Orbit
ORDER BY launches DESC;

SELECT Year, COUNT(*) AS launches, SUM(Class) AS successful_landings, ROUND(AVG(Class), 3) AS success_rate
FROM launches
GROUP BY Year
ORDER BY Year;

SELECT BoosterVersion, COUNT(*) AS launches, ROUND(AVG(Class), 3) AS success_rate
FROM launches
GROUP BY BoosterVersion
HAVING launches >= 5
ORDER BY success_rate DESC;
