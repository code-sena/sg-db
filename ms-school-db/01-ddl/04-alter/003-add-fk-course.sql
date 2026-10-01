ALTER TABLE School.Course
    ADD CONSTRAINT FK_Course_SchoolCampus FOREIGN KEY (CampusId) REFERENCES School.SchoolCampus(Id);