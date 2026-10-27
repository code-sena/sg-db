-- Personas para prueba SENA Neiva
-- Conductor, Padre, Estudiante
INSERT INTO UserManagement.Person (Id, Name, LastName, IdentificationType, IdentificationNumber, Email, Phone, ResidenceAddress, DateBirth, Status)
SELECT v.Id, v.Name, v.LastName, v.IdentificationType, v.IdentificationNumber, v.Email, v.Phone, v.ResidenceAddress, v.DateBirth, 'Active'
FROM (VALUES
    -- Conductor
    ('A3FB479F-A7E4-42FE-8F04-24843B116235', 'Carlos', 'Ramirez', 'CC', '99100000021', 'driver.sena@school-guardian.com', 3101234567, 'Cra 5 # 20-30, Neiva', '1982-03-15'),
    -- Padre/Acudiente
    ('399AE784-5872-489A-B9C7-BF59ACABD7B9', 'Ana', 'Morales', 'CC', '99100000022', 'parent.sena@school-guardian.com', 3101234568, 'Cra 10 # 15-10, Neiva', '1985-07-22'),
    -- Estudiante
    ('26A097F2-4127-48BE-AC52-2DDC42B1E050', 'Sofia', 'Morales', 'TI', '99100000023', 'student.sena@school-guardian.com', 3101234569, 'Cra 10 # 15-10, Neiva', '2010-11-08')
) AS v (Id, Name, LastName, IdentificationType, IdentificationNumber, Email, Phone, ResidenceAddress, DateBirth)
WHERE NOT EXISTS (SELECT 1 FROM UserManagement.Person p WHERE p.IdentificationNumber = v.IdentificationNumber);