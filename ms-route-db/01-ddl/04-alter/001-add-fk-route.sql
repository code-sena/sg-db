ALTER TABLE Route.Route
    ADD CONSTRAINT FK_Route_SchoolCampus FOREIGN KEY (CampuseId) REFERENCES School.SchoolCampus(Id);