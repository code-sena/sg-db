CREATE TABLE Iam.Role (
    Id TINYINT PRIMARY KEY IDENTITY,
    Name VARCHAR(20) UNIQUE NOT NULL,
    Description VARCHAR(100) NOT NULL,
    Status VARCHAR(20) NOT NULL CHECK (Status IN ('Active', 'Inactive')) DEFAULT 'Active'
);