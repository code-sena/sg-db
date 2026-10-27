-- Asignacion de conductor para el bus SENA Neiva
-- Perfil del conductor se crea en ms-iam-db (ver 030-insert-neiva-sena-profiles.sql)
INSERT INTO Fleet.DriverAssignemts (Id, ProfileId, BusId, AssignedFrom, AssignedTo)
SELECT v.Id, v.ProfileId, v.BusId, v.AssignedFrom, NULL
FROM (VALUES
    ('D2000021-0000-4000-8000-000000000021', 'E11D8BAF-CF79-42EA-9929-8108F3720870', 'D1000021-0000-4000-8000-000000000021', '2026-10-26')
) AS v (Id, ProfileId, BusId, AssignedFrom)
WHERE NOT EXISTS (SELECT 1 FROM Fleet.DriverAssignemts da WHERE da.BusId = v.BusId AND da.AssignedTo IS NULL);