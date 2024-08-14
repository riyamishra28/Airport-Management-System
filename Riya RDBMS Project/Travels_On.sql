USE airline_management_system;

CREATE TABLE Travels_On(
			Route_ID INT,
            Flight_ID VARCHAR(15),
            PRIMARY KEY (Route_ID,Flight_ID),
            FOREIGN KEY (Route_ID) REFERENCES Route(Route_ID),
            FOREIGN KEY (Flight_ID) REFERENCES Flight(Flight_ID)
);

INSERT INTO Travels_On VALUES (168806,'AI2014'),
(157306,'QR2305'),
(178916,'EY1234'),
(324567,'LH9876'),
(452368,'BA1689'),
(894521,'AA4367'),
(578425,'CT7812'),
(421523,'PF4521');

SELECT * FROM Travels_On;