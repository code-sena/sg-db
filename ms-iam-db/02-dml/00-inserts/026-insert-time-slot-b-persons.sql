-- Segundo juego de prueba para la franja 06:00-08:00 (hora de Bogota).
-- 18 personas: conductor, acudiente y estudiante por franja. Van antes que los perfiles (FK_Profile_Person).
INSERT INTO UserManagement.Person (Id, Name, LastName, IdentificationType, IdentificationNumber, Email, Phone, ResidenceAddress, DateBirth, Status)
VALUES
('9A100017-0000-4000-8000-000000000017', 'Oscar', 'Herrera', 'CC', '9880000071', 'conductor.0608b@school-guardian.com', 3209000017, 'Calle 47 # 11-07', '1983-04-10', 'Active'),
('9A100027-0000-4000-8000-000000000027', 'Adriana', 'Herrera', 'CC', '9880000072', 'acudiente.0608b@school-guardian.com', 3209000027, 'Calle 47 # 12-07', '1987-08-22', 'Active'),
('9A100037-0000-4000-8000-000000000037', 'Daniel', 'Herrera', 'TI', '9880000073', 'estudiante.0608b@school-guardian.com', 3209000037, 'Calle 47 # 13-07', '2013-02-15', 'Active');
