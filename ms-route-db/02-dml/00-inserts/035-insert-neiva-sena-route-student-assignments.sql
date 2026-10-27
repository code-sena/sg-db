-- Asignacion de estudiante a las paradas de la ruta SENA Neiva
-- Usando RouteStop.Id (F7000031... F7000034)
-- Estudiante: ProfileId = 5F7F1B6A-1CD7-4C23-95C2-9DEEC82E44E0
-- Asignamos a las 4 paradas (Ida: 2 paradas, Vuelta: 2 paradas)
INSERT INTO Route.RouteStudentAssignments (Id, ProfileId, RouteStopId, Status)
SELECT v.Id, v.ProfileId, v.RouteStopId, 'Active'
FROM (VALUES
    -- IDA: Parada 1 (SENA Norte) - Orden 1
    ('F5000051-0000-4000-8000-000000000051', '5F7F1B6A-1CD7-4C23-95C2-9DEEC82E44E0', 'F7000031-0000-4000-8000-000000000031'),
    -- IDA: Parada 2 (Sur) - Orden 2
    ('F5000052-0000-4000-8000-000000000052', '5F7F1B6A-1CD7-4C23-95C2-9DEEC82E44E0', 'F7000032-0000-4000-8000-000000000032'),
    -- VUELTA: Parada 1 (Sur) - Orden 1
    ('F5000053-0000-4000-8000-000000000053', '5F7F1B6A-1CD7-4C23-95C2-9DEEC82E44E0', 'F7000033-0000-4000-8000-000000000033'),
    -- VUELTA: Parada 2 (SENA Norte) - Orden 2
    ('F5000054-0000-4000-8000-000000000054', '5F7F1B6A-1CD7-4C23-95C2-9DEEC82E44E0', 'F7000034-0000-4000-8000-000000000034')
) AS v (Id, ProfileId, RouteStopId)
WHERE NOT EXISTS (SELECT 1 FROM Route.RouteStudentAssignments rsa WHERE rsa.ProfileId = v.ProfileId AND rsa.RouteStopId = v.RouteStopId);