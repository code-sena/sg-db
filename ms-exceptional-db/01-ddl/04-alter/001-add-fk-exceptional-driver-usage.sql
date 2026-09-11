ALTER TABLE Exceptional.ExceptionalDriverUsage
    ADD CONSTRAINT FK_ExceptionalDriverUsage_Bus FOREIGN KEY (BusId) REFERENCES Fleet.Bus(Id);

ALTER TABLE Exceptional.ExceptionalDriverUsage
    ADD CONSTRAINT FK_ExceptionalDriverUsage_Profile FOREIGN KEY (ProfileId) REFERENCES Iam.Profile(Id);