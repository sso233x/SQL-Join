-- write your queries here

--1.
SELECT * FROM owners FULL JOIN vehicles ON owners.id = vehicles.owner_id;

--2.
SELECT owners.first_name, owners.last_name, COUNT(vehicles.id) AS count 
FROM owners LEFT JOIN vehicles
ON owners.id = vehicles.owner_id 
GROUP BY owners.first_name, owners.last_name 
HAVING COUNT(vehicles.id) > 0 
ORDER BY owners.first_name ASC;

--3.
SELECT owners.first_name, owners.last_name, ROUND(AVG(vehicles.price)) AS avg_price, COUNT(vehicles.id) AS count 
FROM owners 
LEFT JOIN vehicles 
ON owners.id = vehicles.owner_id 
GROUP BY owners.first_name, owners.last_name 
HAVING COUNT(vehicles.id) > 1 AND AVG(vehicles.price) > 10000 
ORDER BY owners.first_name DESC;