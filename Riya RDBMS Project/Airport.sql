USE airline_management_system;

CREATE TABLE Airport(
  Air_code VARCHAR(10),
  Air_Name VARCHAR(50),
  City VARCHAR(20),
  State VARCHAR(20),
  Country_code VARCHAR(3),
  PRIMARY KEY(Air_code),
  FOREIGN KEY (Country_code) REFERENCES Countries(Country_code)
);

INSERT INTO Airport VALUES('DEL', 'Indira Gandhi International Airport', 'Delhi','Delhi', +91),
('BOM', 'Chhatrapati Shivaji Maharaj International Airport', 'Mumbai', 'Maharashtra', +91),
('LCY', 'London City Airport', 'Newham', 'London',+44),
('EWR', 'Newark Liberty International Airport', 'Newark', 'New Jersey',+1),
('JFK', 'John F. Kennnedy International Airport', 'New York City', 'New York',+1),
('CPH', 'Copenhagen Airport', 'Copenhagen', 'Denmark',+45),
('AIP', 'Adampur Airport', 'Jalandhar', 'Punjab',+91),
('IXJ', 'Satwari Airport', 'Jammu', 'Jammu & Kashmir',+91);

SELECT * FROM Airport;
