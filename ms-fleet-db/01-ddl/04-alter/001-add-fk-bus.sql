ALTER TABLE Fleet.Bus
    ADD CONSTRAINT FK_Bus_Model FOREIGN KEY (ModelId) REFERENCES Fleet.Model(Id);

ALTER TABLE Fleet.Bus
    ADD CONSTRAINT FK_Bus_SchoolCampus FOREIGN KEY (CampuseId) REFERENCES School.SchoolCampus(Id);

ALTER TABLE Fleet.Bus
    ADD CONSTRAINT FK_Bus_GpsDevice FOREIGN KEY (GpsDeviceId) REFERENCES Gps.GpsDevice(Id);