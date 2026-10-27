-- Perfiles IAM para prueba SENA Neiva
-- PasswordHash: bcrypt (rounds=10) del IdentificationNumber de cada persona
-- Driver: 99100000021 -> $2a$10$1nNKc9SinlSpSGE4or7N4ukUh6pbtrVYIX5YqVUuNJRUy04BcAT.G
-- Parent: 99100000022 -> $2a$10$lpbDZABg7lcXRCR4zuWdJOAz1JbYjVufXbIVN0BL9OyhrfyHuIdJq
-- Student: 99100000023 -> $2a$10$cY0oBksEb5t0eA8zfN8qAuSIobwgIsm7mj3SCGdSvmFtcY86vEhHa

-- Las personas viven en UserManagement.Person y Iam.Profile.PersonId tiene FK
-- hacia esa tabla. Se siembran aqui de forma idempotente porque este changelog
-- corre antes que el de ms-user-management-db.

INSERT INTO UserManagement.Person (Id, Name, LastName, IdentificationType, IdentificationNumber, Email, Phone, ResidenceAddress, DateBirth, Status)
SELECT v.Id, v.Name, v.LastName, v.IdentificationType, v.IdentificationNumber, v.Email, v.Phone, v.ResidenceAddress, v.DateBirth, 'Active'
FROM (VALUES
    ('A3FB479F-A7E4-42FE-8F04-24843B116235', 'Carlos', 'Ramirez', 'CC', '99100000021', 'driver.sena@school-guardian.com', 3101234567, 'Cra 5 # 20-30, Neiva', '1982-03-15'),
    ('399AE784-5872-489A-B9C7-BF59ACABD7B9', 'Ana', 'Morales', 'CC', '99100000022', 'parent.sena@school-guardian.com', 3101234568, 'Cra 10 # 15-10, Neiva', '1985-07-22'),
    ('26A097F2-4127-48BE-AC52-2DDC42B1E050', 'Sofia', 'Morales', 'TI', '99100000023', 'student.sena@school-guardian.com', 3101234569, 'Cra 10 # 15-10, Neiva', '2010-11-08')
) AS v (Id, Name, LastName, IdentificationType, IdentificationNumber, Email, Phone, ResidenceAddress, DateBirth)
WHERE NOT EXISTS (SELECT 1 FROM UserManagement.Person p WHERE p.IdentificationNumber = v.IdentificationNumber);

INSERT INTO Iam.Profile (Id, PersonId, CampuseId, PasswordHash, RoleId, Status)
SELECT v.Id, v.PersonId, v.CampuseId, v.PasswordHash, v.RoleId, 'Active'
FROM (VALUES
    -- Conductor - RoleId = Driver (1)
    ('E11D8BAF-CF79-42EA-9929-8108F3720870', 'A3FB479F-A7E4-42FE-8F04-24843B116235', 'A3000016-0000-4000-8000-000000000016', '$2a$10$1nNKc9SinlSpSGE4or7N4ukUh6pbtrVYIX5YqVUuNJRUy04BcAT.G', (SELECT Id FROM Iam.Role WHERE Name = 'Driver')),
    -- Padre/Acudiente - RoleId = Parent (2)
    ('3A8BBAAC-5388-4F16-ACC8-BAF37E1AEC20', '399AE784-5872-489A-B9C7-BF59ACABD7B9', 'A3000016-0000-4000-8000-000000000016', '$2a$10$lpbDZABg7lcXRCR4zuWdJOAz1JbYjVufXbIVN0BL9OyhrfyHuIdJq', (SELECT Id FROM Iam.Role WHERE Name = 'Parent')),
    -- Estudiante - RoleId = Student (3)
    ('5F7F1B6A-1CD7-4C23-95C2-9DEEC82E44E0', '26A097F2-4127-48BE-AC52-2DDC42B1E050', 'A3000016-0000-4000-8000-000000000016', '$2a$10$cY0oBksEb5t0eA8zfN8qAuSIobwgIsm7mj3SCGdSvmFtcY86vEhHa', (SELECT Id FROM Iam.Role WHERE Name = 'Student'))
) AS v (Id, PersonId, CampuseId, PasswordHash, RoleId)
WHERE NOT EXISTS (SELECT 1 FROM Iam.Profile p WHERE p.PersonId = v.PersonId AND p.CampuseId = v.CampuseId);