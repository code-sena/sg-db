IF EXISTS (
    SELECT 1
    FROM sys.columns
    WHERE object_id = OBJECT_ID(N'School.School')
      AND name = N'Address'
      AND system_type_id = TYPE_ID(N'varchar')
      AND max_length BETWEEN 1 AND 254
)
    ALTER TABLE School.School ALTER COLUMN Address VARCHAR(255) NOT NULL;

IF EXISTS (
    SELECT 1
    FROM sys.columns
    WHERE object_id = OBJECT_ID(N'School.SchoolCampus')
      AND name = N'Address'
      AND system_type_id = TYPE_ID(N'varchar')
      AND max_length BETWEEN 1 AND 254
)
    ALTER TABLE School.SchoolCampus ALTER COLUMN Address VARCHAR(255) NOT NULL;
