ALTER TABLE Audit.Audit
    ADD CONSTRAINT FK_Audit_Profile FOREIGN KEY (ProfileId) REFERENCES Iam.Profile(Id);