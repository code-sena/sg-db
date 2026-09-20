ALTER TABLE School.School
ADD ProfileId UNIQUEIDENTIFIER,
    CONSTRAINT FK_School_Profile 
    FOREIGN KEY (ProfileId) 
    REFERENCES Iam.Profile(Id);