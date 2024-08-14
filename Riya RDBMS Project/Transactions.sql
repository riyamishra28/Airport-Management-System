USE airline_management_system;

CREATE TABLE Transactions(
			 TS_ID INT,
             Booking_Date DATE,
             Departure_Date DATE,
             TS_Type VARCHAR(20),
             Emp_ID INT,
             Ps_ID INT,
             Flight_ID VARCHAR(15),
             Fare_ID INT,
             PRIMARY KEY(TS_ID),
             FOREIGN KEY (Emp_ID) REFERENCES Employees (Emp_ID),
             FOREIGN KEY (Ps_ID) REFERENCES Passengers(Ps_ID),
             FOREIGN KEY (Flight_ID) REFERENCES Flight(Flight_ID),
             FOREIGN KEY (Fare_ID) REFERENCES AirFare (Fare_ID)
);

INSERT INTO Transactions VALUES(12345678,'2021-02-21','2021-02-22','Google Pay',1234,1,'AI2014',1),
(45612789, '2021-01-12','2021-01-14', 'Credit Card', 3246,2, 'QR2305',4),
(56987123, '2020-12-05','2020-12-02', 'Paytm',9321,4, 'EY1234',2),
(45321879, '2021-03-15', '2021-03-16', 'PhonePe', 8512,3, 'LH9876',3),
(75145863, '2021-04-22','2021-04-25', 'Paytm', 7512,5, 'EY1234', 6),
(17892455, '2021-02-05','2021-02-08', 'Paytm', 5123,6, 'AA4367',5),
(24517852, '2021-03-06','2021-03-08', 'PhonePe', 2458,8, 'CT7812',7),
(32548525, '2021-01-20','2021-01-25', 'Credit Card', 4521,7, 'EY1234',8);

SELECT * FROM Transactions;
