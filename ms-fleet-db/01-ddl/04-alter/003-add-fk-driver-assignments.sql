ALTER TABLE Fleet.DriverAssignemts
    ADD CONSTRAINT FK_DriverAssignemts_Bus FOREIGN KEY (BusId) REFERENCES Fleet.Bus(Id);

ALTER TABLE Fleet.DriverAssignemts
    ADD CONSTRAINT FK_DriverAssignemts_Profile FOREIGN KEY (ProfileId) REFERENCES Iam.Profile(Id);