CREATE TABLE School.SchoolAdmin (
    Id UNIQUEIDENTIFIER PRIMARY KEY,
    SchoolId UNIQUEIDENTIFIER NOT NULL,
    ProfileId UNIQUEIDENTIFIER NOT NULL,
    Status VARCHAR(20) NOT NULL CHECK (Status IN ('Active', 'Inactive')) DEFAULT 'Active',
    -- Un admin administra exactamente un colegio, nunca varios: el UNIQUE lo
    -- garantiza en la base de datos, no solo en el codigo de aplicacion.
    CONSTRAINT UQ_SchoolAdmin_Profile UNIQUE (ProfileId)
);