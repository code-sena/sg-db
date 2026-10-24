IF COL_LENGTH(N'School.School', N'Latitude') IS NULL
    ALTER TABLE School.School ADD Latitude DECIMAL(10, 7) NULL;

IF COL_LENGTH(N'School.School', N'Longitude') IS NULL
    ALTER TABLE School.School ADD Longitude DECIMAL(10, 7) NULL;

IF COL_LENGTH(N'School.SchoolCampus', N'Latitude') IS NULL
    ALTER TABLE School.SchoolCampus ADD Latitude DECIMAL(10, 7) NULL;

IF COL_LENGTH(N'School.SchoolCampus', N'Longitude') IS NULL
    ALTER TABLE School.SchoolCampus ADD Longitude DECIMAL(10, 7) NULL;
