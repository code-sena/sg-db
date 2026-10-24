-- Segundo juego de prueba para la franja 06:00-08:00 (hora de Bogota).
-- Un bus por franja en la Sede Principal.
INSERT INTO Fleet.Bus (Id, CampuseId, SoatValidity, GpsDeviceId, Capacity, Plate, ModelId, Status)
VALUES
('9D200007-0000-4000-8000-000000000007', 'A3000001-0000-4000-8000-000000000001', '2027-06-30', '9D100007-0000-4000-8000-000000000007', 30, 'SGT107', (SELECT Id FROM Fleet.Model WHERE Name = 'O500'), 'Active');
