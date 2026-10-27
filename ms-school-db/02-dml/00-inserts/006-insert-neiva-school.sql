-- Escuela en Neiva (Name max 30 chars)
-- Idempotente por Id.
INSERT INTO School.School (Id, CityId, Logo, Name, Address, Phone, Email, Website, Theme, Status)
SELECT v.Id, v.CityId, v.Logo, v.Name, v.Address, v.Phone, v.Email, v.Website, v.Theme, 'Active'
FROM (VALUES
    ('A2000004-0000-4000-8000-000000000004', 'A1000013-0000-4000-8000-000000000013', 0x89504E470D0A1A0A, 'I.E. Neiva Sur', 'Cra 5 # 15-20', 867123456, 'contacto@neivasur.edu.co', 'https://www.neivasur.edu.co', 'Light')
) AS v (Id, CityId, Logo, Name, Address, Phone, Email, Website, Theme)
WHERE NOT EXISTS (SELECT 1 FROM School.School s WHERE s.Id = v.Id);
