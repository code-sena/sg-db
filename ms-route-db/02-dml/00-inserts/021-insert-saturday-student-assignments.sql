-- Asignar estudiante existente a la nueva ruta 1 (sábado 8-9am)
-- Estudiante: 5F7F1B6A-1CD7-4C23-95C2-9DEEC82E44D8 (Juan Perez)
-- Parada: usar la primera parada de la ruta 1 original (F1000001) via RouteStop
INSERT INTO Route.RouteStudentAssignments (Id, ProfileId, RouteStopId, Status)
VALUES
('F5000021-0000-4000-8000-000000000021', '5F7F1B6A-1CD7-4C23-95C2-9DEEC82E44D8', 
 (SELECT TOP 1 rs.Id FROM Route.RouteStop rs WHERE rs.RouteId = 'F1000001-0000-4000-8000-000000000001' ORDER BY rs.OrderSequence), 
 'Active');
