IF EXISTS (
    SELECT 1
    FROM sys.columns
    WHERE object_id = OBJECT_ID(N'School.School')
      AND name = N'Phone'
      AND system_type_id = TYPE_ID(N'int')
)
    ALTER TABLE School.School ALTER COLUMN Phone BIGINT NOT NULL;
