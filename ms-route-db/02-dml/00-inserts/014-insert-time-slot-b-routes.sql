-- Segundo juego de prueba para la franja 06:00-08:00 (hora de Bogota).
-- Una ruta por franja; StartTime/EndTime acotan la ventana para iniciar el viaje.
INSERT INTO Route.Route (Id, CampuseId, Name, TargetSector, StartTime, EndTime, Status)
VALUES
('9E100007-0000-4000-8000-000000000007', 'A3000001-0000-4000-8000-000000000001', 'Ruta Prueba 06-08 B', 'Franja 06:00-08:00', '06:00:00', '08:00:00', 'Active');
