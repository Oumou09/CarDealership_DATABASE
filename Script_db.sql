DROP DATABASE IF EXISTS dealership_database; 

CREATE DATABASE IF NOT EXISTS dealership_database;
USE dealership_database;

DROP TABLE IF EXISTS lease_contracts;
DROP TABLE IF EXISTS sales_contracts;
DROP TABLE IF EXISTS inventory;
DROP TABLE IF EXISTS vehicles;
DROP TABLE IF EXISTS dealerships;


CREATE TABLE dealerships (
dealershipID INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
address VARCHAR(50) NOT NULL,
phone VARCHAR(12) NOT NULL
);

CREATE TABLE vehicles (
VIN VARCHAR(17) PRIMARY KEY,
make VARCHAR(50) NOT NULL,
model VARCHAR(50) NOT NULL,
year INT NOT NULL,
sold BOOLEAN NOT NULL,
color VARCHAR(50) NOT NULL,
vehicleType VARCHAR(50) NOT NULL,
odometer INT NOT NULL,
price DOUBLE NOT NULL
);


CREATE TABLE inventory (
dealershipID INT NOT NULL,
VIN VARCHAR(17) NOT NULL,
FOREIGN KEY(dealershipID) REFERENCES dealerships(dealershipID),
FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
);

CREATE TABLE sales_contracts (
contractID INT auto_increment primary key,
VIN VARCHAR(17) NOT NULL,
SaleDate DATE NOT NULL,
price DECIMAL(10.2)
);


CREATE TABLE lease_contracts (
contractID INT auto_increment PRIMARY KEY,
VIN VARCHAR(17) NOT NULL,
LeaseStart DATE NOT NULL,
LeaseEnd DATE NOT NULL,
MonthlyPayment DECIMAL(10.2)
);



INSERT INTO dealerships (name, address, phone)
VALUES
('Bronx Boosters', '1100 Grand Concourse, Bronx, NY 10456', '718-555-1100'),
('Brooklyn Burnouts', '45 Flatbush Ave, Brooklyn, NY 11217', '718-555-2244'),
('Manhattan Motors', '350 5th Ave, New York, NY 10118', '212-555-3500'),
('Queens QuickShift', '88-01 Queens Blvd, Queens, NY 11373', '718-555-8801'),
('Staten Island Speedzone', '130 Richmond Hill Rd, Staten Island, NY 10314', '718-555-1313'),
('Albany Auto Spud', '44 Capitol Sq, Albany, NY 12207', '518-555-4444'),
('Buffalo Blasters', '1 Bills Dr, Buffalo, NY 14210', '716-555-0101'),
('Rochester RevUps', '250 East Main St, Rochester, NY 14604', '585-555-2500'),
('Syracuse Spinners', '900 Erie Blvd E, Syracuse, NY 13210', '315-555-0900'),
('Ithaca Ignition Co.', '100 Cornell Way, Ithaca, NY 14850', '607-555-1000');


INSERT INTO vehicles (VIN, make, model, year, sold, color, vehicleType, odometer, price)
VALUES
('SPUDX1001', 'SpudTech', 'X-Treme', 2024, TRUE, 'Rust Red', 'compact', 8200, 15500),
('VOLTAS9009', 'Voltaco', 'Surge 9009', 2023, FALSE, 'Electric Blue', 'cruiser', 4200, 18750),
('TORKOAL777', 'Smokeforge', 'Torkoal Hauler', 2022, TRUE, 'Charcoal Gray', 'truck', 15800, 13200),
('PIKA2348Z', 'ThundraMotors', 'Pikavolt Z', 2024, TRUE, 'Yellow Spark', 'sports', 3100, 21000),
('SLOWCAR111', 'LazyRide', 'Slowpoke Glide', 2021, FALSE, 'Misty Rose', 'van', 24100, 9800),
('MUDTRUCK333', 'Mudwerks', 'Mudkip Loader', 2023, TRUE, 'Moss Green', 'truck', 7400, 17600),
('BULBATOW500', 'Solarseed Co.', 'BulbaTow 500', 2022, FALSE, 'Leaf Green', 'utility', 10200, 14300),
('RAI-TRIKE888', 'DynamoDrive', 'Raichu Trike', 2023, TRUE, 'Thunder Bronze', 'compact', 6000, 16200),
('GEODUDE442X', 'RocknRollerz', 'GeoGrinder', 2021, TRUE, 'Granite Gray', 'offroad', 19400, 11900),
('FLAMECRUISE7', 'Inferno Motors', 'FlameCruiser V7', 2024, FALSE, 'Fire Red', 'sports', 2900, 19999);


INSERT INTO inventory (dealershipID, VIN)
VALUES
(1, 'SPUDX1001'),
(1, 'GEODUDE442X'),
(2, 'VOLTAS9009'),
(2, 'RAI-TRIKE888'),
(3, 'FLAMECRUISE7'),
(3, 'SLOWCAR111'),
(4, 'TORKOAL777'),
(4, 'BULBATOW500'),
(5, 'MUDTRUCK333'),
(5, 'PIKA2348Z');



INSERT INTO sales_contracts(contractID, VIN, SaleDate, price)
VALUES
(201, 'SPUDX1001', '2025-01-10', 15500),
(202, 'VOLTAS9009', '2025-02-14', 18750),
(203, 'TORKOAL777', '2025-03-05', 13200),
(204, 'PIKA2348Z', '2025-03-22', 21000),
(205, 'SLOWCAR111', '2025-04-01', 9800),
(206, 'MUDTRUCK333', '2025-04-18', 17600),
(207, 'BULBATOW500', '2025-05-02', 14300),
(208, 'RAI-TRIKE888', '2025-05-20', 16200),
(209, 'GEODUDE442X', '2025-06-01', 11900),
(210, 'FLAMECRUISE7', '2025-06-08', 19999);


INSERT INTO lease_contracts (contractID, VIN, LeaseStart, LeaseEnd, MonthlyPayment)
VALUES
(301, 'SPUDX1001', '2025-01-01', '2025-12-31', 450),
(302, 'VOLTAS9009', '2025-02-15', '2026-02-14', 520),
(303, 'TORKOAL777', '2025-03-10', '2026-03-09', 390),
(304, 'PIKA2348Z', '2025-04-01', '2025-09-30', 610),
(305, 'SLOWCAR111', '2025-05-01', '2026-04-30', 330),
(306, 'MUDTRUCK333', '2025-05-20', '2026-05-19', 470),
(307, 'BULBATOW500', '2025-06-01', '2026-05-31', 440),
(308, 'RAI-TRIKE888', '2025-06-10', '2026-06-09', 495),
(309, 'GEODUDE442X', '2025-06-15', '2025-12-14', 360),
(310, 'FLAMECRUISE7', '2025-06-20', '2026-06-19', 580);



