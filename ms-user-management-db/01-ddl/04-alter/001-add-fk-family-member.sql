ALTER TABLE UserManagement.FamilyMember
    ADD CONSTRAINT FK_FamilyMember_Family FOREIGN KEY (FamilyId) REFERENCES UserManagement.Family(Id);

ALTER TABLE UserManagement.FamilyMember
    ADD CONSTRAINT FK_FamilyMember_Profile FOREIGN KEY (ProfileId) REFERENCES Iam.Profile(Id);