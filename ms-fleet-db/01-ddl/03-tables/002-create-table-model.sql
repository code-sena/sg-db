CREATE TABLE Fleet.Model (
    Id TINYINT PRIMARY KEY IDENTITY,
    BrandId TINYINT NOT NULL,
    Name VARCHAR(30) NULL,
    Status VARCHAR(20) NOT NULL CHECK (Status IN ('Active', 'Inactive')) DEFAULT 'Active'
);