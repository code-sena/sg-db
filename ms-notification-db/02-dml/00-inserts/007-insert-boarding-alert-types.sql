-- 2 tipos de escaneo QR (subida/bajada del bus). Van despues de los 24 tipos ya
-- sembrados (20 operativos en 001 + 4 incidentes en 006), asi que sus Id
-- (IDENTITY) son 25..26. ProcessScanService fija estos ids al escanear.
-- Idempotente: no duplica si el tipo ya existe por Name.
INSERT INTO Notification.AlertType (Name, Description, UrgencyLevel)
SELECT v.Name, v.Description, v.UrgencyLevel
FROM (VALUES
    ('Boarding', 'Student boarded the bus at the assigned stop', 1),
    ('Alighting', 'Student got off the bus at the assigned stop', 1)
) AS v (Name, Description, UrgencyLevel)
WHERE NOT EXISTS (SELECT 1 FROM Notification.AlertType a WHERE a.Name = v.Name);
