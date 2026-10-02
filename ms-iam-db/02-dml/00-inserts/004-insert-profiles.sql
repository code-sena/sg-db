-- PasswordHash: bcrypt (rounds=10) del IdentificationNumber de cada persona.
INSERT INTO Iam.Profile (Id, PersonId, CampuseId, PasswordHash, RoleId, Status)
VALUES
('E11D8BAF-CF79-42EA-9929-8108F3720863', 'A3FB479F-A7E4-42FE-8F04-24843B116234', NULL, '$2a$10$niCweHNxQDvWurcbkfUWouAxRzcufYDrHM1ousviuUJ4K.DIcCziy', (SELECT Id FROM Iam.Role WHERE Name = 'Driver'), 'Active'),
('3A8BBAAC-5388-4F16-ACC8-BAF37E1AEC1D', '399AE784-5872-489A-B9C7-BF59ACABD7B8', NULL, '$2a$10$T2Ypr8EPBoleM80VlQHqcOsL915rsrMWIoVP80RMVkaUCqwDddBHK', (SELECT Id FROM Iam.Role WHERE Name = 'Parent'), 'Active'),
('5F7F1B6A-1CD7-4C23-95C2-9DEEC82E44D8', '26A097F2-4127-48BE-AC52-2DDC42B1E04F', NULL, '$2a$10$xkCUL/Nq108PWPse/1YVwuAgS.bWm7U7C/M6Q6ZD7zdKP6evfDBEy', (SELECT Id FROM Iam.Role WHERE Name = 'Student'), 'Active');
