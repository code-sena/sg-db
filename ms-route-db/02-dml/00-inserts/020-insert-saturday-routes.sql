-- Rutas para hoy sábado con horarios 8:00-9:00 (Ida) y 9:00-10:00 (Ida)
-- Usando campus existente A3000001-0000-4000-8000-000000000001 (Sede Principal - Escuela Springfield)

-- 1. INSERTAR 2 NUEVAS RUTAS (Name max 30 chars)
INSERT INTO Route.Route (Id, CampuseId, Name, TargetSector, StartTime, EndTime, Status)
VALUES
('F1000021-0000-4000-8000-000000000021', 'A3000001-0000-4000-8000-000000000001', 'Ruta Sabado 01 8-9am', 'Zona Norte', '08:00:00', '09:00:00', 'Active'),
('F1000022-0000-4000-8000-000000000022', 'A3000001-0000-4000-8000-000000000001', 'Ruta Sabado 02 9-10am', 'Zona Norte', '09:00:00', '10:00:00', 'Active');

-- 2. ASIGNAR BUSES EXISTENTES A LAS NUEVAS RUTAS
-- Usar buses D1000001 y D1000002 que ya existen
INSERT INTO Route.RouteBusAssignments (Id, BusId, RouteId, Status)
VALUES
('F4000021-0000-4000-8000-000000000021', 'D1000001-0000-4000-8000-000000000001', 'F1000021-0000-4000-8000-000000000021', 'Active'),
('F4000022-0000-4000-8000-000000000022', 'D1000002-0000-4000-8000-000000000002', 'F1000022-0000-4000-8000-000000000022', 'Active');

-- 3. HORARIOS PARA HOY (usando Friday como día más cercano - la BD solo permite Mon-Fri)
-- Ruta 1: 08:00 - 09:00 (Ida)
-- Ruta 2: 09:00 - 10:00 (Ida)
INSERT INTO Route.RouteSchedule (Id, RouteBusAssignmentsId, DayOfWeek, Direction, StartTime, Status)
VALUES
('F6000041-0000-4000-8000-000000000041', 'F4000021-0000-4000-8000-000000000021', 'Friday', 'Ida', '08:00:00', 'Active'),
('F6000042-0000-4000-8000-000000000042', 'F4000022-0000-4000-8000-000000000022', 'Friday', 'Ida', '09:00:00', 'Active');
