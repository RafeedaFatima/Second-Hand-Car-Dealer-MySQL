SET search_path TO "Cars";

-- Create Table
CREATE TABLE "CarsDataset" (
    "Name" TEXT,
    "year" INTEGER,
    "selling_price" INTEGER,
    "km_driven" INTEGER,
    "fuel" VARCHAR(20),
    "seller_type" VARCHAR(20),
    "transmission" VARCHAR(20),
    "owner" VARCHAR(20),
    "mileage" VARCHAR(20),
    "engine" VARCHAR(20),
    "max_power" VARCHAR(20),
    "torque" VARCHAR(50),
    "seats" INTEGER
);

-- Read Cars Data
SELECT * FROM "CarsDataset";

-- A count of the total records
SELECT COUNT(*) FROM "CarsDataset";

-- The manager asked the employee how many cars will be available in 2023?
SELECT COUNT(*) FROM "CarsDataset" WHERE year = 2023; -- 6

-- The manager asked the employee how many cars is available in 2020, 2021, 2022?
SELECT COUNT(*) FROM "CarsDataset" WHERE year = 2020; -- 74
SELECT COUNT(*) FROM "CarsDataset" WHERE year = 2021; -- 7
SELECT COUNT(*) FROM "CarsDataset" WHERE year = 2022; -- 7

-- Client asked me to print the total of all cars by years.
SELECT YEAR, COUNT(*) FROM "CarsDataset" WHERE year IN (2020,2021,2022,2023) GROUP BY YEAR;

-- Client asked to car dealer agent how many diesel cars will there be in 2020?
SELECT COUNT(*) FROM "CarsDataset" WHERE year = 2020 AND fuel = 'Diesel'; -- 20

-- Client requested a car dealer agent how may petrol cars will there be in 2020?
SELECT COUNT(*) FROM "CarsDataset" WHERE year = 2020 AND fuel = 'Petrol'; -- 50

-- The manager told the employee to give a print all the fuel cars (petrol, diesel, and CNG) come by all year.
SELECT year, fuel, COUNT(*) FROM "CarsDataset" WHERE fuel IN ('Petrol', 'Diesel', 'CNG') GROUP BY year, fuel ORDER BY year;

-- Manager said there were more than 100 cars in a given year, which year had more than 100 cars?
SELECT year, COUNT(*) FROM "CarsDataset"  GROUP BY year HAVING COUNT(*)>100;

-- The manager said to the employee all cars count details between 2015 and 2023; we need a complete list?
SELECT COUNT(*) FROM "CarsDataset" WHERE year BETWEEN 2015 AND 2023;

-- The manager said to the employee all cars detail between 2020 to 2023 we need complete list?
SELECT * FROM "CarsDataset" WHERE year BETWEEN 2020 AND 2023 ORDER BY year;;