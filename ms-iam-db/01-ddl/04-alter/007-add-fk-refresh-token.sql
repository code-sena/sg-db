ALTER TABLE Iam.RefreshToken
    ADD CONSTRAINT FK_RefreshToken_SessionProfile FOREIGN KEY (SessionProfileId) REFERENCES Iam.SessionProfile(Id);

ALTER TABLE Iam.RefreshToken
    ADD CONSTRAINT FK_RefreshToken_ReplacedBy FOREIGN KEY (ReplacedByTokenId) REFERENCES Iam.RefreshToken(Id);
