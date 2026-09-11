CREATE TABLE Route.RouteSchedule (
    Id UNIQUEIDENTIFIER PRIMARY KEY,
    RouteBusAssignmentsId UNIQUEIDENTIFIER NOT NULL,
    DayOfWeek VARCHAR(10) NOT NULL CHECK (DayOfWeek IN ('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday')) DEFAULT 'Monday',
    Direction VARCHAR(10) NOT NULL,
    StartTime TIME NOT NULL,
    Status VARCHAR(20) NOT NULL CHECK (Status IN ('Active', 'Inactive')) DEFAULT 'Active'
);