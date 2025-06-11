-- 5. Find all dealerships that have a certain type (i.e. Red Ford Mustang)
SELECT * 
FROM inventory i
JOIN vehicles v ON v.VIN = i.VIN
JOIN dealerships d ON d.dealershipID = i.dealershipID
WHERE v.make ="Voltaco" AND v.model ="Surge 9009" AND v.color ="Electric Blue";