ALTER TABLE Gps.GpsLocation
    ADD CONSTRAINT FK_GpsLocation_GpsDevice FOREIGN KEY (GpsDeviceId) REFERENCES Gps.GpsDevice(Id);