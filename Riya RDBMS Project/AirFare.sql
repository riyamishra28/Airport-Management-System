USE airline_management_system;

CREATE TABLE AirFare(
  Fare_ID INT,
  Charge_Amount INT,
  Description VARCHAR(25),
  Flight_ID VARCHAR(15),
  PRIMARY KEY(Fare_ID),
  FOREIGN KEY (Flight_ID) REFERENCES Flight(Flight_ID)
);

INSERT INTO AirFare VALUES(1,27341, 'Standard Single','AI2014'),
(4,34837, 'Standard Return', 'QR2305'),
(2,42176,'Key Fare Single', 'EY1234'),
(3,27373, 'Business Return', 'LH9876'),
(6,44592, 'Advanced Purchase', 'BA1689'),
(5,8777, 'Superpex Return', 'AA4367'),
(7,9578, 'Standard Return', 'CT7812'),
(8,4459, 'Superpex Return', 'PF4521');

SELECT * FROM AirFare;
