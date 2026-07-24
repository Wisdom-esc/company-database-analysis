CREATE TABLE staff (
    staffID VARCHAR(10) PRIMARY KEY,
    firstName VARCHAR(20) NOT NULL,
    lastName VARCHAR(30),
    gender VARCHAR(10) NOT NULL,
    salary INT NOT NULL,
    DateOfEmpl DATE NOT NULL
);
