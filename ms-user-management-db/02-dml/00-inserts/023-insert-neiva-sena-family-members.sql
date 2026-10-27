-- Miembros de la familia SENA Neiva
-- Padre (Parent) y Estudiante (Student)
-- Perfiles se crean en ms-iam-db (ver 030-insert-neiva-sena-profiles.sql)
INSERT INTO UserManagement.FamilyMember (Id, FamilyId, ProfileId, RelationshipType, Status)
SELECT v.Id, v.FamilyId, v.ProfileId, v.RelationshipType, 'Active'
FROM (VALUES
    -- Padre/Acudiente
    ('B3000041-0000-4000-8000-000000000041', 'B2000021-0000-4000-8000-000000000021', '3A8BBAAC-5388-4F16-ACC8-BAF37E1AEC20', 'Parent'),
    -- Estudiante
    ('B3000042-0000-4000-8000-000000000042', 'B2000021-0000-4000-8000-000000000021', '5F7F1B6A-1CD7-4C23-95C2-9DEEC82E44E0', 'Student')
) AS v (Id, FamilyId, ProfileId, RelationshipType)
WHERE NOT EXISTS (SELECT 1 FROM UserManagement.FamilyMember fm WHERE fm.FamilyId = v.FamilyId AND fm.ProfileId = v.ProfileId);