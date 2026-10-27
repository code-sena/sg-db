-- Paradas en Neiva - Huila para la ruta SENA Vuelta
-- Paradas para la ruta de regreso (vuelta) que empieza a las 12:00 PM
-- Coordenadas aproximadas de Neiva, Huila
-- Idempotente: si la parada ya existe por Id, no se vuelve a insertar.
INSERT INTO Route.Stop (Id, CityId, SchoolId, Address, Longitude, Latitude, Status)
SELECT v.Id, v.CityId, v.SchoolId, v.Address, v.Longitude, v.Latitude, 'Active'
FROM (VALUES
-- Parada 1: Cerca del colegio (inicio de la ruta de vuelta)
('F2000031-0000-4000-8000-000000000031', 'A1000013-0000-4000-8000-000000000013', 'A2000002-0000-4000-8000-000000000002', 'Cra 10 # 22-05', -75.2800, 2.9200),
-- Parada 2: Barrio Las Palmas
('F2000032-0000-4000-8000-000000000032', 'A1000013-0000-4000-8000-000000000013', 'A2000002-0000-4000-8000-000000000002', 'Cra 12 # 35-18', -75.2780, 2.9180),
-- Parada 3: Centro de Neiva
('F2000033-0000-4000-8000-000000000033', 'A1000013-0000-4000-8000-000000000013', 'A2000002-0000-4000-8000-000000000002', 'Cra 3 # 8-12', -75.2760, 2.9220),
-- Parada 4: Barrio San Jorge
('F2000034-0000-4000-8000-000000000034', 'A1000013-0000-4000-8000-000000000013', 'A2000002-0000-4000-8000-000000000002', 'Calle 15 # 7-30', -75.2740, 2.9250),
-- Parada 5: Terminal de transporte
('F2000035-0000-4000-8000-000000000035', 'A1000013-0000-4000-8000-000000000013', 'A2000002-0000-4000-8000-000000000002', 'Cra 25 # 40-15', -75.2700, 2.9300),
-- Parada 6: SENA - Sede La Industria (FINAL)
('F2000036-0000-4000-8000-000000000036', 'A1000013-0000-4000-8000-000000000013', 'A2000002-0000-4000-8000-000000000002', 'Cra 1 # 50-01', -75.2650, 2.9350)
) AS v (Id, CityId, SchoolId, Address, Longitude, Latitude)
WHERE NOT EXISTS (SELECT 1 FROM Route.Stop s WHERE s.Id = v.Id);
