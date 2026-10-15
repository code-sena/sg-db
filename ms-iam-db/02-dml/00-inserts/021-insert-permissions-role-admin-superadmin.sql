-- Admin and SuperAdmin need an explicit, complete grant.
--
-- 009 only gave Admin a partial set (schools, routes.read, buses.read, alerts.read,
-- users, settings.manage), so the admin UI sections for students, drivers and the
-- write actions of routes/buses had no matching permission. It also gave SuperAdmin
-- nothing at all. Gating the admin UI (or the endpoints) by permission would have
-- locked both roles out of screens they already use.
--
-- Permissions and roles are resolved by name to avoid depending on the IDENTITY
-- ordering of 008, and NOT EXISTS keeps the changeset idempotent if it is ever
-- replayed against a database that already ran 009.
INSERT INTO Iam.PermissionsRole (PermissionsId, RoleId)
SELECT p.Id, r.Id
FROM Iam.Permissions p
CROSS JOIN Iam.Role r
WHERE r.Name = 'SuperAdmin'
  AND NOT EXISTS (
      SELECT 1 FROM Iam.PermissionsRole pr
      WHERE pr.PermissionsId = p.Id AND pr.RoleId = r.Id
  );

INSERT INTO Iam.PermissionsRole (PermissionsId, RoleId)
SELECT p.Id, r.Id
FROM Iam.Permissions p
CROSS JOIN Iam.Role r
WHERE r.Name = 'Admin'
  AND p.TypePermissions IN (
      'schools.read', 'schools.create', 'schools.update',
      'students.read', 'students.manage',
      'routes.read', 'routes.manage',
      'buses.read', 'buses.manage',
      'drivers.read', 'drivers.manage',
      'alerts.read',
      'users.read', 'users.manage',
      'settings.manage'
  )
  AND NOT EXISTS (
      SELECT 1 FROM Iam.PermissionsRole pr
      WHERE pr.PermissionsId = p.Id AND pr.RoleId = r.Id
  );
