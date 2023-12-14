USE shipping;

SELECT ShipID, COUNT(containerID) AS containerCount, MAX(weight_lbs) AS maxWeight
FROM shipping.Container
GROUP BY shipID;
    
SELECT p.portName, p.country, s.shipName
FROM shipping.Port p
JOIN shipping.Ship s ON p.portName = s.homePort
WHERE s.yearBuilt >= 1996;

SELECT containerID, (height_ft * width_ft * length_ft) AS volume
FROM shipping.Container
ORDER BY volume ASC;

SELECT c.containerID, c.height_ft, s.shipName
FROM shipping.Container c
LEFT JOIN shipping.Ship s ON c.shipID = s.shipName;

SELECT p.portName, s.shipName, s.captainName
FROM shipping.Port p
JOIN shipping.Ship s ON p.portName = s.homePort;

SELECT p.city, COUNT(s.shipName) AS shipCount
FROM shipping.Port p
JOIN shipping.Ship s ON p.portName = s.homePort
GROUP BY p.city;

SELECT c.containerID, s.shipName, p.city
FROM shipping.Container c
JOIN shipping.Ship s ON c.ShipID = s.shipName
JOIN shipping.Port p ON s.homePort = p.portName
WHERE c.weight_lbs > 5000;

SELECT c.containerID, s.shipName, p.country
FROM shipping.Container c
JOIN shipping.Ship s ON c.shipID = s.shipName
JOIN shipping.Port p ON s.homePort = p.portName
WHERE c.height_ft > 8.0;

SELECT c.containerID, s.shipName, p.country
FROM shipping.Container c
JOIN shipping.Ship s ON c.shipID = s.shipName
JOIN shipping.Port p ON s.homePort = p.portName
WHERE c.height_ft > 6.5 AND c.weight_lbs > 5500;

SELECT shipName, captainName, crewCount
FROM shipping.Ship
WHERE crewCount > 40;

SELECT containerID, height_ft, width_ft, length_ft, weight_lbs
FROM shipping.Container
WHERE shipID IS NULL;