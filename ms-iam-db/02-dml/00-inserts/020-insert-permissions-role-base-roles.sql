-- Base permissions for the end-user roles. The Admin grants live in 009; the remaining
-- roles had no permissions, so every token carried an empty RBAC set.
-- Permissions are resolved by name to avoid depending on the IDENTITY ordering of 008.
INSERT INTO Iam.PermissionsRole (PermissionsId, RoleId)
VALUES
    -- Driver: assigned route and bus, alerts, and boarding registration.
    ((SELECT Id FROM Iam.Permissions WHERE TypePermissions = 'routes.read'),
     (SELECT Id FROM Iam.Role WHERE Name = 'Driver')),
    ((SELECT Id FROM Iam.Permissions WHERE TypePermissions = 'buses.read'),
     (SELECT Id FROM Iam.Role WHERE Name = 'Driver')),
    ((SELECT Id FROM Iam.Permissions WHERE TypePermissions = 'alerts.read'),
     (SELECT Id FROM Iam.Role WHERE Name = 'Driver')),
    ((SELECT Id FROM Iam.Permissions WHERE TypePermissions = 'boarding.read'),
     (SELECT Id FROM Iam.Role WHERE Name = 'Driver')),
    ((SELECT Id FROM Iam.Permissions WHERE TypePermissions = 'boarding.manage'),
     (SELECT Id FROM Iam.Role WHERE Name = 'Driver')),
    -- Parent: follow the child's route, read alerts and boarding records.
    ((SELECT Id FROM Iam.Permissions WHERE TypePermissions = 'routes.read'),
     (SELECT Id FROM Iam.Role WHERE Name = 'Parent')),
    ((SELECT Id FROM Iam.Permissions WHERE TypePermissions = 'alerts.read'),
     (SELECT Id FROM Iam.Role WHERE Name = 'Parent')),
    ((SELECT Id FROM Iam.Permissions WHERE TypePermissions = 'boarding.read'),
     (SELECT Id FROM Iam.Role WHERE Name = 'Parent')),
    -- Student: read their own boarding records (personal QR).
    ((SELECT Id FROM Iam.Permissions WHERE TypePermissions = 'boarding.read'),
     (SELECT Id FROM Iam.Role WHERE Name = 'Student'));
