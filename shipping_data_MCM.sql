INSERT INTO shipping.Port (portName, city, country) VALUES
	('Port of Singapore', 'Pasir Panjang', 'Singapore'),
    ('Port of Durban', 'Durban', 'South Africa'),
    ('Port of Rotterdam', 'Rotterdam', 'Netherlands'),
    ('Port of Shanghai', 'Shanghai', 'China'),
    ('Port of Los Angeles', 'Los Angeles', 'United States');
    
INSERT INTO shipping.Ship (shipName, displacement_tons, captainName, crewCount, homePort, yearBuilt) VALUES
	('USCSS Nostromo', '2300.75', 'Arthur Dallas', '30', 'Port of Durban', '1979'),
    ('USS Reliant', '2000.25', 'Clark Terrell', '50', 'Port of Los Angeles', '1982'),
    ('USS Enterprise', '3000.00', 'James T. Kirk', '45', 'Port of Shanghai', '2000'),
    ('Discovery One', '2500.75', 'Frank Poole', '55', 'Port of Rotterdam', '2012'),
    ('Millennium Falcon', '2800.50', 'Han Solo', '45', 'Port of Singapore', '2001'),
    ('Nebuchadnezzar', '3500.00', 'Morpheus', '80', 'Port of Shanghai', '2005'),
    ('Heighliner', '1500.25', 'David Smith', '78', 'Port of Durban', '1999'),
    ('Endurance', '1900.75', 'Joseph Cooper', '25', 'Port of Rotterdam', '2011'),
    ('Heart of Gold', '2000.50', 'Arthur Dent', '60', 'Port of Los Angeles', '2004'),
    ('Tardis', '3000.25', 'Doctor Who', '67', 'Port of Singapore', '2015');
    
INSERT INTO shipping.Container (containerID, height_ft, width_ft, length_ft, weight_lbs, shipID) VALUES
	(001, 8.5, 6.0, 10.0, 5000, 'USCSS Nostromo'),
    (002, 7.0, 5.5, 8.0, 4000, 'USS Reliant'),
    (003, 6.0, 4.5, 7.0, 3000, 'USS Enterprise'),
    (004, 9.0, 7.5, 12.0, 6000, 'Discovery One'),
    (005, 8.0, 6.5, 11.0, 5500, 'Millennium Falcon'),
    (006, 7.5, 5.0, 9.0, 3500, NULL),
    (007, 10.0, 8.0, 14.0, 7000, 'Heighliner'),
    (008, 6.5, 5.0, 8.5, 4500, 'Endurance'),
    (009, 9.5, 7.0, 13.0, 6500, 'Heart of Gold'),
    (010, 7.0, 5.5, 10.0, 5000, 'Tardis'),
    (011, 8.0, 8.0, 10.0, 5500, 'USCSS Nostromo'),
    (012, 6.5, 7.5, 8.0, 4500, 'USS Reliant'),
    (013, 5.0, 7.5, 6.0, 4000, 'USS Enterprise'),
    (014, 7.0, 7.5, 12.0, 6000, 'Discovery One'),
    (015, 9.0, 7.5, 11.5, 5500, NULL),
    (016, 7.5, 5.0, 9.0, 3500, 'Nebuchadnezzar'),
    (017, 8.0, 9.0, 13.0, 7500, 'Heighliner'),
    (018, 6.0, 9.0, 8.5, 4000, 'Endurance'),
    (019, 10.0, 8.0, 12.0, 6000, 'Heart of Gold'),
    (020, 6.0, 7.5, 11.0, 5500, 'Tardis');
    