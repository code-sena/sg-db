-- Asignacion de bus para la ruta SENA Vuelta
-- Usando bus existente D1000002 del campus A3000002 (misma escuela A2000002)
INSERT INTO Route.RouteBusAssignments (Id, BusId, RouteId, Status)
SELECT v.Id, v.BusId, v.RouteId, 'Active'
FROM (VALUES
    ('F4000023-0000-4000-8000-000000000023', 'D1000002-0000-4000-8000-000000000002', 'F1000023-0000-4000-8000-000000000023')
) AS v (Id, BusId, RouteId)
WHERE NOT EXISTS (SELECT 1 FROM Route.RouteBusAssignments rba WHERE rba.RouteId = v.RouteId AND rba.BusId = v.BusId);