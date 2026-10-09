ALTER TABLE Iam.TermsAcceptance
    ADD CONSTRAINT FK_TermsAcceptance_Profile FOREIGN KEY (ProfileId) REFERENCES Iam.Profile(Id);

ALTER TABLE Iam.TermsAcceptance
    ADD CONSTRAINT FK_TermsAcceptance_StudentProfile FOREIGN KEY (StudentProfileId) REFERENCES Iam.Profile(Id);
