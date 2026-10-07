CREATE TABLE UserManagement.Person (
    Id UNIQUEIDENTIFIER PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    IdentificationType VARCHAR(20) NOT NULL CHECK (IdentificationType IN ('TI', 'CC')) DEFAULT 'TI',
    IdentificationNumber VARCHAR(20) UNIQUE NOT NULL,
    Email VARCHAR(50) NOT NULL,
    Phone BIGINT NOT NULL,
    ResidenceAddress VARCHAR(50) NOT NULL,
    DateBirth DATE NOT NULL,
    Status VARCHAR(20) NOT NULL CHECK (Status IN ('Active', 'Inactive')) DEFAULT 'Active'
);