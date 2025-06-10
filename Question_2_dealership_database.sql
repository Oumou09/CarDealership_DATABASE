-- 2 Find all vehciles for a specific dealership
SELECT i.dealershipID, v.*
FROM vehicles v
JOIN inventory i ON i.vin = v.vin
WHERE i.dealershipID = "4";