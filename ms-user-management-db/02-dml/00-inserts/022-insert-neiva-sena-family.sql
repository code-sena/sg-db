-- Familia SENA Neiva
INSERT INTO UserManagement.Family (Id, Name, Observations, Status)
SELECT v.Id, v.Name, v.Observations, 'Active'
FROM (VALUES
    ('B2000021-0000-4000-8000-000000000021', 'Familia Morales SENA', 'Acudiente Ana Morales y estudiante Sofia Morales - Sede SENA Neiva')
) AS v (Id, Name, Observations)
WHERE NOT EXISTS (SELECT 1 FROM UserManagement.Family f WHERE f.Id = v.Id);