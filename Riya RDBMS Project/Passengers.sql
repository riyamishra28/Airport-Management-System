USE airline_management_system;

CREATE TABLE Passengers(
                      Ps_ID INT,
                      Ps_Name VARCHAR(20),
                      Address VARCHAR(50),
                      Age INT,
                      Sex VARCHAR(10),
                      Contacts VARCHAR(10),
                      Flight_ID VARCHAR(15),
                      PRIMARY KEY(Ps_ID),
                      FOREIGN KEY (Flight_ID) REFERENCES Flight(Flight_ID)
);

INSERT INTO Passengers VALUES (1, 'Steve Smith', '2230 Northside, Apt 11, London',30,'M', '8080367290', 'AI2014'),
(2, 'Ankita Ahir', '3456 Vikas Apts, Apt 102, New Jersey', 26, 'F', '8080367280', 'QR2305'),
(4, 'Akhilesh Joshi', '345 Chatam courts, Apt 678, Chennai', 29, 'M', '9080369290', 'EY1234'),
(3, 'Khyati Mishra', '7820 Mccallum courts, Apt 234, Washington', 30, 'F', '8082267280', 'LH9876'),
(5, 'Rom Solanki', '1234 Baker Apts, Apt 208, Chandigarh',60,'M', '9004568903', 'EY1234'),
(6, 'Lakshmi Sharma', '1110 Fir hills, Apt 90, Daman',30, 'F', '7666190505', 'AA4367'),
(8, 'Manan Lakhani', '7720 Mccallum Blvd, Apt 77,Beijing', 45, 'M', '8124579635','CT7812'),
(7, 'Ria Gupta', 'B-402, Aditya Apt, Hyderabad', 34, 'F', '9819414036', 'EY1234');

SELECT * FROM Passengers;