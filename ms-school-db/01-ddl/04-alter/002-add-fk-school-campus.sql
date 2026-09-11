ALTER TABLE School.SchoolCampus
    ADD CONSTRAINT FK_SchoolCampus_School FOREIGN KEY (SchoolId) REFERENCES School.School(Id);