-- Licencia de conducir para el conductor SENA Neiva
-- Perfil del conductor: E11D8BAF-CF79-42EA-9929-8108F3720870 (se crea en ms-iam-db)
INSERT INTO UserManagement.DriverLicense (Id, ProfileId, LicenseNumber, LicenseExpirationDate, Status)
SELECT v.Id, v.ProfileId, v.LicenseNumber, v.LicenseExpirationDate, 'Active'
FROM (VALUES
    ('B4000021-0000-4000-8000-000000000021', 'E11D8BAF-CF79-42EA-9929-8108F3720870', 'LIC99100000021', '2029-03-15')
) AS v (Id, ProfileId, LicenseNumber, LicenseExpirationDate)
WHERE NOT EXISTS (SELECT 1 FROM UserManagement.DriverLicense dl WHERE dl.LicenseNumber = v.LicenseNumber);