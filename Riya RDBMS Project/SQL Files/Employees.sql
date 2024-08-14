USE airline_management_system;

CREATE TABLE Employees(
             Emp_ID INT,
             E_Name VARCHAR(20),
             Address VARCHAR(50),
             Age INT,
             Email_ID VARCHAR(20),
             Contact VARCHAR(20),
             Air_code VARCHAR(10),
             PRIMARY KEY(Emp_ID),
             FOREIGN KEY (Air_code) REFERENCES Airport(Air_code)
);

INSERT INTO Employees VALUES (1234, 'Rekha Tiwary', '202-Meeta Apt. Yogi Nagar, Mumbai 30', 30, 'rekha1234@gmail.com','+918530324018','DEL'),
(3246, 'John Dsouza', '302-Fountain Apt. Elizabeth Street, Newham',26, 'john2346@gmail.com','+447911123456', 'BOM'),
(9321, 'Sanjay Rathod', '62-Patwa Apt. Pradeep Nagar, Delhi 36', 31, 'sanjay78@gmail.com','+917504681201','LCY'),
(8512, 'Hafsa Iqmar', '1023-Prajwal Apt, Newark', 41, 'hafsa964@gmail.com', '6465554468', 'EWR'),
(7512, 'Akshay Sharma','Akshay Villa, Queens Street, Copenhagen',20, 'akshay27@gmail.com','+45886443210','JFK'),
(5123, 'Lara Jen', '28-Mark road, Victoria street, New York City', 31, 'jenlara4@gmail.com','+448000751234','CPH'),
(2458, 'Johny Paul', '45-Balaji Apt. Ajit Nagar, Jalandhar', 32, 'johnypaul8@gmail.com','+919785425154', 'AIP'),
(4521, 'Nidhi Maroliya', '6-Matruchaya Apt,Park Road, Jammu',31,'nidhi785@gmail.com', '+918211954901', 'IXJ');

SELECT * FROM Employees;
