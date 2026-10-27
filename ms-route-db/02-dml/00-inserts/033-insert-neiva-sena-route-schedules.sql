-- Horarios para la ruta SENA Neiva - Lunes a Viernes
-- Ida: 00:00 a 12:00 (casa -> colegio)
-- Vuelta: 12:01 a 00:00 (colegio -> casa) - usamos 23:59 como fin de dia
INSERT INTO Route.RouteSchedule (Id, RouteBusAssignmentsId, DayOfWeek, Direction, StartTime, Status)
SELECT v.Id, v.RouteBusAssignmentsId, v.DayOfWeek, v.Direction, v.StartTime, 'Active'
FROM (VALUES
    -- IDA (00:00 - 12:00)
    ('F6000301-0000-4000-8000-000000000301', 'F4000025-0000-4000-8000-000000000025', 'Monday', 'Ida', '00:00:00'),
    ('F6000302-0000-4000-8000-000000000302', 'F4000025-0000-4000-8000-000000000025', 'Tuesday', 'Ida', '00:00:00'),
    ('F6000303-0000-4000-8000-000000000303', 'F4000025-0000-4000-8000-000000000025', 'Wednesday', 'Ida', '00:00:00'),
    ('F6000304-0000-4000-8000-000000000304', 'F4000025-0000-4000-8000-000000000025', 'Thursday', 'Ida', '00:00:00'),
    ('F6000305-0000-4000-8000-000000000305', 'F4000025-0000-4000-8000-000000000025', 'Friday', 'Ida', '00:00:00'),
    
    -- VUELTA (12:01 - 00:00) - usamos 12:01 como inicio de vuelta
    ('F6000311-0000-4000-8000-000000000311', 'F4000025-0000-4000-8000-000000000025', 'Monday', 'Vuelta', '12:01:00'),
    ('F6000312-0000-4000-8000-000000000312', 'F4000025-0000-4000-8000-000000000025', 'Tuesday', 'Vuelta', '12:01:00'),
    ('F6000313-0000-4000-8000-000000000313', 'F4000025-0000-4000-8000-000000000025', 'Wednesday', 'Vuelta', '12:01:00'),
    ('F6000314-0000-4000-8000-000000000314', 'F4000025-0000-4000-8000-000000000025', 'Thursday', 'Vuelta', '12:01:00'),
    ('F6000315-0000-4000-8000-000000000315', 'F4000025-0000-4000-8000-000000000025', 'Friday', 'Vuelta', '12:01:00')
) AS v (Id, RouteBusAssignmentsId, DayOfWeek, Direction, StartTime)
WHERE NOT EXISTS (SELECT 1 FROM Route.RouteSchedule rs WHERE rs.RouteBusAssignmentsId = v.RouteBusAssignmentsId AND rs.DayOfWeek = v.DayOfWeek AND rs.Direction = v.Direction);