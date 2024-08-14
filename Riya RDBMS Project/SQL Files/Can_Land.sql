USE airline_management_system;

CREATE TABLE Can_Land(
  Air_code VARCHAR(10),
  Flight_ID VARCHAR(15),
  PRIMARY KEY(Air_code, Flight_ID),
  FOREIGN KEY (Air_code) REFERENCES Airport(Air_code),
  FOREIGN KEY (Flight_ID) REFERENCES Flight(Flight_ID)
);

INSERT INTO Can_Land VALUES('DEL', 'AI2014'),
('BOM', 'QR2305'),
('LCY', 'EY1234'),
('EWR', 'LH9876'),
('JFK', 'BA1689'),
('CPH', 'AA4367'),
('AIP', 'CT7812'),
('IXJ', 'PF4521');

SELECT * FROM Can_Land;
