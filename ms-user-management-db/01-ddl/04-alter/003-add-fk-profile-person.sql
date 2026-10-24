IF NOT EXISTS (
    SELECT 1
    FROM sys.foreign_keys
    WHERE name = N'FK_Profile_Person'
      AND parent_object_id = OBJECT_ID(N'Iam.Profile')
)
BEGIN
    ALTER TABLE Iam.Profile
        ADD CONSTRAINT FK_Profile_Person
        FOREIGN KEY (PersonId) REFERENCES UserManagement.Person(Id);
END;