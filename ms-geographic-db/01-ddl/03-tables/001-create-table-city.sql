CREATE TABLE Geographic.City (
    Id UNIQUEIDENTIFIER PRIMARY KEY,
    Name VARCHAR(40) NOT NULL,
    Country VARCHAR(30) NOT NULL,
    Status VARCHAR(20) NOT NULL CHECK (Status IN ('Active', 'Inactive')) DEFAULT 'Active'
);