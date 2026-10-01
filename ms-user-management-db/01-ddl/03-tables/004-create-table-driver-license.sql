CREATE TABLE UserManagement.DriverLicense (
    Id UNIQUEIDENTIFIER PRIMARY KEY,
    ProfileId UNIQUEIDENTIFIER NOT NULL,
    LicenseNumber VARCHAR(20) UNIQUE NOT NULL,
    LicenseExpirationDate DATE NOT NULL,
    Status VARCHAR(20) NOT NULL CHECK (Status IN ('Active', 'Inactive')) DEFAULT 'Active'
);