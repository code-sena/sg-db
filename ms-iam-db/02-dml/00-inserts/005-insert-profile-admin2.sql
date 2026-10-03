-- PasswordHash: bcrypt (rounds=10) del IdentificationNumber de la persona.
INSERT INTO Iam.Profile (Id, PersonId, CampuseId, PasswordHash, RoleId, Status)
VALUES ('387F2C49-5EDC-4E99-9119-3403D56D9159', 'A050F97B-24FC-4727-B4E7-D1C590DC43B7', NULL, '$2a$10$kqceSyIv2BDhrC9DygG5FuC97r7StgNfB7hDp88UoQ40QIcScCwi2', (SELECT Id FROM Iam.Role WHERE Name = 'Admin'), 'Active');
