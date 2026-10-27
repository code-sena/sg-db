-- Horarios de ida para la ruta SENA - Lunes a Viernes 06:00-08:00
-- Direction: Ida (salida desde la sede hacia las paradas)
-- Rango de 2 horas: 06:00 a 08:00
INSERT INTO Route.RouteSchedule (Id, RouteBusAssignmentsId, DayOfWeek, Direction, StartTime, Status)
SELECT v.Id, v.RouteBusAssignmentsId, v.DayOfWeek, v.Direction, v.StartTime, 'Active'
FROM (VALUES
    ('F6000216-0000-4000-8000-000000000216', 'F4000023-0000-4000-8000-000000000023', 'Monday', 'Ida', '06:00:00'),
    ('F6000217-0000-4000-8000-000000000217', 'F4000023-0000-4000-8000-000000000023', 'Tuesday', 'Ida', '06:00:00'),
    ('F6000218-0000-4000-8000-000000000218', 'F4000023-0000-4000-8000-000000000023', 'Wednesday', 'Ida', '06:00:00'),
    ('F6000219-0000-4000-8000-000000000219', 'F4000023-0000-4000-8000-000000000023', 'Thursday', 'Ida', '06:00:00'),
    ('F6000220-0000-4000-8000-000000000220', 'F4000023-0000-4000-8000-000000000023', 'Friday', 'Ida', '06:00:00')
) AS v (Id, RouteBusAssignmentsId, DayOfWeek, Direction, StartTime)
WHERE NOT EXISTS (SELECT 1 FROM Route.RouteSchedule rs WHERE rs.RouteBusAssignmentsId = v.RouteBusAssignmentsId AND rs.DayOfWeek = v.DayOfWeek AND rs.Direction = v.Direction);