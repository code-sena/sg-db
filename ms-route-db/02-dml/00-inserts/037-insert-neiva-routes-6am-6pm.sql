-- Rutas Neiva 6:00-18:00 Lunes a Viernes
-- Ida: 06:00-08:00, 08:00-10:00, 10:00-12:00
-- Vuelta: 12:01-14:00, 14:00-16:00, 16:00-18:00
-- Campus: A3000016-0000-4000-8000-000000000016 (SENA Industrial Norte)
-- Cada ruta tiene 3 ventanas de 2 horas en cada dirección
INSERT INTO Route.Route (Id, CampuseId, Name, TargetSector, StartTime, EndTime, Status)
SELECT v.Id, v.CampuseId, v.Name, v.TargetSector, v.StartTime, v.EndTime, 'Active'
FROM (VALUES
    -- Ruta 1: Norte - SENA Industrial
    ('F1000030-0000-4000-8000-000000000030', 'A3000016-0000-4000-8000-000000000016', 'Ruta Neiva Norte 6-18', 'Norte - SENA Industrial', '06:00:00', '18:00:00'),
    -- Ruta 2: Sur - barrios populares
    ('F1000031-0000-4000-8000-000000000031', 'A3000016-0000-4000-8000-000000000016', 'Ruta Neiva Sur 6-18', 'Sur - Barrios Populares', '06:00:00', '18:00:00'),
    -- Ruta 3: Centro - zona céntrica
    ('F1000032-0000-4000-8000-000000000032', 'A3000016-0000-4000-8000-000000000016', 'Ruta Neiva Centro 6-18', 'Centro - Zona Céntrica', '06:00:00', '18:00:00')
) AS v (Id, CampuseId, Name, TargetSector, StartTime, EndTime)
WHERE NOT EXISTS (SELECT 1 FROM Route.Route r WHERE r.CampuseId = v.CampuseId AND r.Name = v.Name);