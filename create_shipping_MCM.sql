CREATE SCHEMA shipping;
USE shipping;

CREATE TABLE IF NOT EXISTS Ship (
	shipName VARCHAR(50) PRIMARY KEY NOT NULL,
    displacement_Tons DECIMAL(10,2) NOT NULL,
    captainName VARCHAR(50) NOT NULL,
    crewCount INT NOT NULL,
    homePort VARCHAR(50) NOT NULL,
    yearBuilt YEAR NOT NULL
);

CREATE TABLE IF NOT EXISTS Port (
	portName VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    country VARCHAR(50) NOT NULL,
    PRIMARY KEY (portName, city, country)
);

CREATE TABLE IF NOT EXISTS Container (
	containerID INT PRIMARY KEY NOT NULL,
    height_ft DECIMAL(10,2) NOT NULL,
    width_ft DECIMAL(10,2) NOT NULL,
    length_ft DECIMAL(10,2) NOT NULL,
    weight_lbs DECIMAL(10,2) NOT NULL,
    shipID VARCHAR(50) NULL,
    FOREIGN KEY (shipID) REFERENCES Ship(shipName)
);

