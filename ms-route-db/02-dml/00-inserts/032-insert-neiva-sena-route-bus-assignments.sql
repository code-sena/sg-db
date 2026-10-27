-- Asignacion de bus para la ruta SENA Neiva
INSERT INTO Route.RouteBusAssignments (Id, BusId, RouteId, Status)
SELECT v.Id, v.BusId, v.RouteId, 'Active'
FROM (VALUES
    ('F4000025-0000-4000-8000-000000000025', 'D1000021-0000-4000-8000-000000000021', 'F1000025-0000-4000-8000-000000000025')
) AS v (Id, BusId, RouteId)
WHERE NOT EXISTS (SELECT 1 FROM Route.RouteBusAssignments rba WHERE rba.RouteId = v.RouteId AND rba.BusId = v.BusId);