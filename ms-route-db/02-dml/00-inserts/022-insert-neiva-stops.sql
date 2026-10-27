-- Paradas en Neiva para las nuevas rutas
-- 1 parada cerca del SENA Industrial (norte) para la ruta 1 (8-9am)
-- 1 parada en el sur para la ruta 2 (9-10am)
INSERT INTO Route.Stop (Id, CityId, SchoolId, Name, Address, Longitude, Latitude, Status)
VALUES
('F2000021-0000-4000-8000-000000000021', 'A1000013-0000-4000-8000-000000000013', 'A2000004-0000-4000-8000-000000000004', 'SENA Industrial Neiva', 'Cra 1 # 45-10', -75.28, 2.93, 'Active'),
('F2000022-0000-4000-8000-000000000022', 'A1000013-0000-4000-8000-000000000013', 'A2000004-0000-4000-8000-000000000004', 'Sur Neiva', 'Cra 10 # 15-05', -75.27, 2.92, 'Active');
