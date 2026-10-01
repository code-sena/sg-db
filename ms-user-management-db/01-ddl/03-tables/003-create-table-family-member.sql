CREATE TABLE UserManagement.FamilyMember (
    Id UNIQUEIDENTIFIER PRIMARY KEY,
    FamilyId UNIQUEIDENTIFIER NOT NULL,
    ProfileId UNIQUEIDENTIFIER NOT NULL,
    RelationshipType VARCHAR(20) NOT NULL CHECK (RelationshipType IN ('Parent', 'Student')) DEFAULT 'Parent',
    Status VARCHAR(20) NOT NULL CHECK (Status IN ('Active', 'Inactive')) DEFAULT 'Active'
);