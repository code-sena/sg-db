CREATE TABLE Route.RouteStudentAssignments (
    Id UNIQUEIDENTIFIER PRIMARY KEY,
    ProfileId UNIQUEIDENTIFIER NOT NULL,
    RouteStopId UNIQUEIDENTIFIER NOT NULL,
    Status VARCHAR(20) NOT NULL CHECK (Status IN ('Active', 'Inactive')) DEFAULT 'Active'
);