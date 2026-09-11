ALTER TABLE Route.Stop
    ADD CONSTRAINT FK_Stop_City FOREIGN KEY (CityId) REFERENCES Geographic.City(Id);

ALTER TABLE Route.Stop
    ADD CONSTRAINT FK_Stop_School FOREIGN KEY (SchoolId) REFERENCES School.School(Id);