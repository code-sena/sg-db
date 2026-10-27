-- Nueva ruta para la sede SENA (admin2@school-guardian.com)
-- Ruta que termina en SENA - Sede La Industria
INSERT INTO Route.Route (Id, CampuseId, Name, TargetSector, Status)
SELECT v.Id, v.CampuseId, v.Name, v.TargetSector, 'Active'
FROM (VALUES
    ('F1000023-0000-4000-8000-000000000023', 'A3000020-0000-4000-8000-000000000020', 'Ruta SENA Vuelta', 'SENA La Industria')
) AS v (Id, CampuseId, Name, TargetSector)
WHERE NOT EXISTS (SELECT 1 FROM Route.Route r WHERE r.CampuseId = v.CampuseId AND r.Name = v.Name);