CREATE DATABASE airline_management_system;

CREATE TABLE Airplane_type(
A_ID INT,
Capacity INT,
A_weight INT,
Company VARCHAR(15),
PRIMARY KEY(A_ID)
);

INSERT INTO Airplane_type VALUES 
(738,853,394,'Indigo'),
(777,800,380, 'Vistara'),
(750,790,364, 'AirIndia'),
(790,850,390,'SpiceJet'),
(745,770,405,'GoAir'),
(768,867,387,'AirAsia'),
(821,790,355, 'TruJet'),
(785,835,410,'Alliance Air');

SELECT * FROM Airplane_type;
