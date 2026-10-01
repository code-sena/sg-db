CREATE TABLE Fleet.Brand (
    Id TINYINT PRIMARY KEY IDENTITY,
    Name VARCHAR(30) NULL,
    Status VARCHAR(20) NOT NULL CHECK (Status IN ('Active', 'Inactive')) DEFAULT 'Active'
);