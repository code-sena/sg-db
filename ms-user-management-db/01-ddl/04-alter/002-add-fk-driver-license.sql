ALTER TABLE UserManagement.DriverLicense
    ADD CONSTRAINT FK_DriverLicense_Profile FOREIGN KEY (ProfileId) REFERENCES Iam.Profile(Id);