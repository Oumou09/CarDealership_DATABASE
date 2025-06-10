-- 4. Find the dealership where a certain car is located, by VIN
SELECT d.dealershipID, d.name, d.address, d.phone, i.VIN
FROM dealerships d
JOIN inventory i ON d.dealershipID = i.dealershipID
WHERE i.VIN = "VOLTAS9009";
