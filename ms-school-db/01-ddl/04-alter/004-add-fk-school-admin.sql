ALTER TABLE School.SchoolAdmin
    ADD CONSTRAINT FK_SchoolAdmin_School FOREIGN KEY (SchoolId) REFERENCES School.School(Id);

ALTER TABLE School.SchoolAdmin
    ADD CONSTRAINT FK_SchoolAdmin_Profile FOREIGN KEY (ProfileId) REFERENCES Iam.Profile(Id);