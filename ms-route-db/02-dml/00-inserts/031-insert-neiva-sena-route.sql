-- Ruta SENA Neiva - Ida y Vuelta
-- Ida: 00:00 - 12:00 (casa a colegio)
-- Vuelta: 12:01 - 00:00 (colegio a casa)
INSERT INTO Route.Route (Id, CampuseId, Name, TargetSector, StartTime, EndTime, Status)
SELECT v.Id, v.CampuseId, v.Name, v.TargetSector, v.StartTime, v.EndTime, 'Active'
FROM (VALUES
    ('F1000025-0000-4000-8000-000000000025', 'A3000016-0000-4000-8000-000000000016', 'Ruta SENA Neiva - Ida y Vuelta', 'SENA Industrial Norte y Sur', '00:00:00', '23:59:00')
) AS v (Id, CampuseId, Name, TargetSector, StartTime, EndTime)
WHERE NOT EXISTS (SELECT 1 FROM Route.Route r WHERE r.CampuseId = v.CampuseId AND r.Name = v.Name);