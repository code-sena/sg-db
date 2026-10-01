ALTER TABLE Iam.Profile
    ADD CONSTRAINT FK_Profile_Role FOREIGN KEY (RoleId) REFERENCES Iam.Role(Id);

ALTER TABLE Iam.Profile
    ADD CONSTRAINT FK_Profile_SchoolCampus FOREIGN KEY (CampuseId) REFERENCES School.SchoolCampus(Id);