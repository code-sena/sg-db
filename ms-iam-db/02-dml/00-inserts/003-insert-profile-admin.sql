INSERT INTO Iam.Profile (Id, PersonId, CampuseId, PasswordHash, RoleId, Status)
VALUES ('A0AF22FD-ED0E-4196-A8D1-ADDD9A881267', '297E0280-00C7-4432-ADCE-0A3F9701B34E', NULL, '$2a$10$PusPjhBU1ZoEEvat2p1TN..Lkx7uOeBvDPW4weQBRzBxpnJiD8mv.', (SELECT Id FROM Iam.Role WHERE Name = 'Admin'), 'Active');
