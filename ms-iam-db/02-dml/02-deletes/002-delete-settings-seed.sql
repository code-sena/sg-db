-- Compensating delete: the configuration service was discontinued, so its
-- settings.manage permission and its role mapping are removed.
-- (Applied changesets are immutable, so this runs as a new changeset.)
DELETE FROM Iam.PermissionsRole WHERE PermissionsId = (SELECT Id FROM Iam.Permissions WHERE TypePermissions = 'settings.manage');
DELETE FROM Iam.Permissions WHERE TypePermissions = 'settings.manage';
