USE airline_management_system;

CREATE TABLE Route(
  Route_ID INT,
  Take_Off_point VARCHAR(15),
  Destination VARCHAR(15),
  R_type VARCHAR(15),
  PRIMARY KEY (Route_ID)
);

INSERT INTO Route VALUES(168806, 'London', 'Delhi', 'Direct'),
(157306, 'New Jersey', 'Mumbai', '2Hr Break'),
(178916, 'Washington', 'Jodhpur', '3Hr Break'),
(324567, 'Chennai', 'Denmark', 'Direct'),
(452368, 'Chandigarh', 'New York', '3Hr Break'),
(894521, 'Daman', 'Delhi', 'Direct'),
(578425, 'Beijing', 'Amritsar', 'Direct'),
(421523, 'Hyderabad', 'Srinagar', 'Direct');

SELECT * FROM Route;
