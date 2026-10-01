CREATE TABLE UserManagement.Family (
    Id UNIQUEIDENTIFIER PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Observations VARCHAR(100) NOT NULL,
    Status VARCHAR(20) NOT NULL CHECK (Status IN ('Active', 'Inactive')) DEFAULT 'Active'
);