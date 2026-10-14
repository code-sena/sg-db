ALTER TABLE Iam.Profile
    ADD CONSTRAINT FK_Profile_Person FOREIGN KEY (PersonId) REFERENCES UserManagement.Person(Id);