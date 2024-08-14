USE airline_management_system;

CREATE TABLE countries (
  country_code varchar(3),
  country_name varchar(20),
  PRIMARY KEY (country_code)
);

INSERT INTO countries VALUES (+44, 'England'),
(+1, 'USA'),
(+91, 'India'),
(+45, 'Denmark'),
(+64, 'New Zealand'),
(+971, 'UAE'),
(+213, 'Algeria'),
(+55, 'Brazil');

SELECT * FROM countries;