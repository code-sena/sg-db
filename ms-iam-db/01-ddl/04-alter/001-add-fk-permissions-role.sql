ALTER TABLE Iam.PermissionsRole
    ADD CONSTRAINT FK_PermissionsRole_Permissions FOREIGN KEY (PermissionsId) REFERENCES Iam.Permissions(Id);

ALTER TABLE Iam.PermissionsRole
    ADD CONSTRAINT FK_PermissionsRole_Role FOREIGN KEY (RoleId) REFERENCES Iam.Role(Id);