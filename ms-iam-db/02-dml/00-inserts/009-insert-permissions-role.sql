-- Asignacion de los 19 permisos a roles (los RolesId se resuelven por nombre para no depender de IDs).
INSERT INTO Iam.PermissionsRole (PermissionsId, RoleId)
VALUES
(1, (SELECT Id FROM Iam.Role WHERE Name = 'Admin')),
(2, (SELECT Id FROM Iam.Role WHERE Name = 'Admin')),
(3, (SELECT Id FROM Iam.Role WHERE Name = 'Admin')),
(4, (SELECT Id FROM Iam.Role WHERE Name = 'Coordinator')),
(5, (SELECT Id FROM Iam.Role WHERE Name = 'Coordinator')),
(6, (SELECT Id FROM Iam.Role WHERE Name = 'Admin')),
(7, (SELECT Id FROM Iam.Role WHERE Name = 'Coordinator')),
(8, (SELECT Id FROM Iam.Role WHERE Name = 'Admin')),
(9, (SELECT Id FROM Iam.Role WHERE Name = 'Dispatcher')),
(10, (SELECT Id FROM Iam.Role WHERE Name = 'Dispatcher')),
(11, (SELECT Id FROM Iam.Role WHERE Name = 'Dispatcher')),
(12, (SELECT Id FROM Iam.Role WHERE Name = 'Admin')),
(13, (SELECT Id FROM Iam.Role WHERE Name = 'SupportAgent')),
(14, (SELECT Id FROM Iam.Role WHERE Name = 'Inspector')),
(15, (SELECT Id FROM Iam.Role WHERE Name = 'Inspector')),
(16, (SELECT Id FROM Iam.Role WHERE Name = 'Admin')),
(17, (SELECT Id FROM Iam.Role WHERE Name = 'Admin')),
(18, (SELECT Id FROM Iam.Role WHERE Name = 'RouteAnalyst')),
(19, (SELECT Id FROM Iam.Role WHERE Name = 'Admin'));
