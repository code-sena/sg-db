-- Dispositivo GPS del bus SENA Neiva (D1000021).
-- Fleet.Bus.GpsDeviceId tiene FK a Gps.GpsDevice, por eso debe existir antes
-- de que corra el changelog de ms-fleet-db.
INSERT INTO Gps.GpsDevice (Id, Imei, LastConnection, GpsStatus)
SELECT v.Id, v.Imei, v.LastConnection, v.GpsStatus
FROM (VALUES
    ('E1000021-0000-4000-8000-000000000021', '356938035643821', '2026-10-26 08:00:00', 1)
) AS v (Id, Imei, LastConnection, GpsStatus)
WHERE NOT EXISTS (SELECT 1 FROM Gps.GpsDevice g WHERE g.Id = v.Id OR g.Imei = v.Imei);
