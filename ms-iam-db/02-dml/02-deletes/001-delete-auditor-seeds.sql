-- Compensating delete: the audit trail service was discontinued, so its
-- Auditor role, audit.read permission and their mapping are removed.
-- (Applied changesets are immutable, so this runs as a new changeset.)
DELETE FROM Iam.PermissionsRole WHERE RoleId = (SELECT Id FROM Iam.Role WHERE Name = 'Auditor');
DELETE FROM Iam.PermissionsRole WHERE PermissionsId = (SELECT Id FROM Iam.Permissions WHERE TypePermissions = 'audit.read');
DELETE FROM Iam.Permissions WHERE TypePermissions = 'audit.read';
DELETE FROM Iam.Role WHERE Name = 'Auditor';
