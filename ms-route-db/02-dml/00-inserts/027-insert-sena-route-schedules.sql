-- Horarios de vuelta para la ruta SENA - Lunes a Viernes 12:00-14:00
-- Direction: Vuelta (regreso a la sede SENA)
-- Rango de 2 horas: 12:00 a 14:00
INSERT INTO Route.RouteSchedule (Id, RouteBusAssignmentsId, DayOfWeek, Direction, StartTime, Status)
SELECT v.Id, v.RouteBusAssignmentsId, v.DayOfWeek, v.Direction, v.StartTime, 'Active'
FROM (VALUES
    ('F6000211-0000-4000-8000-000000000211', 'F4000023-0000-4000-8000-000000000023', 'Monday', 'Vuelta', '12:00:00'),
    ('F6000212-0000-4000-8000-000000000212', 'F4000023-0000-4000-8000-000000000023', 'Tuesday', 'Vuelta', '12:00:00'),
    ('F6000213-0000-4000-8000-000000000213', 'F4000023-0000-4000-8000-000000000023', 'Wednesday', 'Vuelta', '12:00:00'),
    ('F6000214-0000-4000-8000-000000000214', 'F4000023-0000-4000-8000-000000000023', 'Thursday', 'Vuelta', '12:00:00'),
    ('F6000215-0000-4000-8000-000000000215', 'F4000023-0000-4000-8000-000000000023', 'Friday', 'Vuelta', '12:00:00')
) AS v (Id, RouteBusAssignmentsId, DayOfWeek, Direction, StartTime)
WHERE NOT EXISTS (SELECT 1 FROM Route.RouteSchedule rs WHERE rs.RouteBusAssignmentsId = v.RouteBusAssignmentsId AND rs.DayOfWeek = v.DayOfWeek AND rs.Direction = v.Direction);