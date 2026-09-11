CREATE TABLE Settings.SecuritySettings (
    Id TINYINT PRIMARY KEY IDENTITY,
    NameSettings VARCHAR(100) UNIQUE NOT NULL,
    ValueSettings VARCHAR(100) NOT NULL,
    Description VARCHAR(150) NOT NULL
);