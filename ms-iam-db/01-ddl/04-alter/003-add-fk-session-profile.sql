ALTER TABLE Iam.SessionProfile
    ADD CONSTRAINT FK_SessionProfile_Profile FOREIGN KEY (ProfileId) REFERENCES Iam.Profile(Id);