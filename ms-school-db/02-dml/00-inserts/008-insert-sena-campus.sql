-- Nueva sede SENA para el colegio Tecnico del Oriente (admin2@school-guardian.com)
-- Sede: La Industria, La Empresa y los Servicios
-- Idempotente por Id.
INSERT INTO School.SchoolCampus (Id, SchoolId, Name, Address, Status)
SELECT v.Id, v.SchoolId, v.Name, v.Address, 'Active'
FROM (VALUES
    ('A3000020-0000-4000-8000-000000000020', 'A2000002-0000-4000-8000-000000000002', 'SENA - Sede La Industria', 'Cra 1 # 50-01')
) AS v (Id, SchoolId, Name, Address)
WHERE NOT EXISTS (SELECT 1 FROM School.SchoolCampus c WHERE c.Id = v.Id);
