-- La ruta SENA Neiva se divide en dos rutas independientes de 12 horas:
--   IDA    : 00:01 - 12:00  -> F1000025
--   VUELTA : 12:01 - 00:00  -> F1000026
-- Idempotente: se puede re-ejecutar sin duplicar rutas ni horarios.

-- 1) La ruta existente queda unicamente como IDA.
UPDATE Route.Route
SET Name = 'Ruta SENA Neiva - Ida',
    TargetSector = 'SENA Industrial Norte a Sur',
    StartTime = '00:01:00',
    EndTime = '12:00:00'
WHERE Id = 'F1000025-0000-4000-8000-000000000025';

-- 2) Nueva ruta de VUELTA.
INSERT INTO Route.Route (Id, CampuseId, Name, TargetSector, StartTime, EndTime, Status)
SELECT v.Id, v.CampuseId, v.Name, v.TargetSector, v.StartTime, v.EndTime, 'Active'
FROM (VALUES
    ('F1000026-0000-4000-8000-000000000026', 'A3000016-0000-4000-8000-000000000016', 'Ruta SENA Neiva - Vuelta', 'SENA Industrial Sur a Norte', '12:01:00', '00:00:00')
) AS v (Id, CampuseId, Name, TargetSector, StartTime, EndTime)
WHERE NOT EXISTS (SELECT 1 FROM Route.Route r WHERE r.Id = v.Id);

-- 3) El mismo bus (SEN001) queda asignado a la ruta de VUELTA.
INSERT INTO Route.RouteBusAssignments (Id, BusId, RouteId, Status)
SELECT v.Id, v.BusId, v.RouteId, 'Active'
FROM (VALUES
    ('F4000026-0000-4000-8000-000000000026', 'D1000021-0000-4000-8000-000000000021', 'F1000026-0000-4000-8000-000000000026')
) AS v (Id, BusId, RouteId)
WHERE NOT EXISTS (SELECT 1 FROM Route.RouteBusAssignments rba WHERE rba.RouteId = v.RouteId AND rba.BusId = v.BusId);

-- 4) Horarios: la IDA arranca a las 00:01 y la VUELTA cuelga de la nueva ruta.
UPDATE Route.RouteSchedule
SET StartTime = '00:01:00'
WHERE RouteBusAssignmentsId = 'F4000025-0000-4000-8000-000000000025'
  AND Direction = 'Ida';

UPDATE Route.RouteSchedule
SET RouteBusAssignmentsId = 'F4000026-0000-4000-8000-000000000026'
WHERE RouteBusAssignmentsId = 'F4000025-0000-4000-8000-000000000025'
  AND Direction = 'Vuelta';

-- 5) Las paradas de VUELTA (Sur -> Norte) pasan a la nueva ruta.
--    Las asignaciones de estudiante siguen apuntando al mismo RouteStop.
UPDATE Route.RouteStop
SET RouteId = 'F1000026-0000-4000-8000-000000000026'
WHERE Id IN ('F7000033-0000-4000-8000-000000000033', 'F7000034-0000-4000-8000-000000000034');
