ALTER TABLE School.School
    ADD CONSTRAINT FK_School_City FOREIGN KEY (CityId) REFERENCES Geographic.City(Id);