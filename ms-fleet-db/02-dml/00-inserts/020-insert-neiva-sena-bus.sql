-- Bus para la sede SENA Neiva (Campus A3000016)
-- Capacidad 44, modelo similar a los existentes
INSERT INTO Fleet.Bus (Id, CampuseId, SoatValidity, GpsDeviceId, Capacity, Plate, ModelId, Status)
SELECT v.Id, v.CampuseId, v.SoatValidity, v.GpsDeviceId, v.Capacity, v.Plate, v.ModelId, 'Active'
FROM (VALUES
    ('D1000021-0000-4000-8000-000000000021', 'A3000016-0000-4000-8000-000000000016', '2028-06-30', 'E1000021-0000-4000-8000-000000000021', 44, 'SEN001', (SELECT Id FROM Fleet.Model WHERE Name = 'Bongo'))
) AS v (Id, CampuseId, SoatValidity, GpsDeviceId, Capacity, Plate, ModelId)
WHERE NOT EXISTS (SELECT 1 FROM Fleet.Bus b WHERE b.CampuseId = v.CampuseId AND b.Plate = v.Plate);