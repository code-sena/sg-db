-- Franjas de prueba (hora de Bogota): 23-00, 06-08, 11-13, 14-16, 17-19 y 20-22.
-- 18 personas: conductor, acudiente y estudiante por franja. Van antes que los perfiles (FK_Profile_Person).
INSERT INTO UserManagement.Person (Id, Name, LastName, IdentificationType, IdentificationNumber, Email, Phone, ResidenceAddress, DateBirth, Status)
VALUES
('9A100011-0000-4000-8000-000000000011', 'Hernan', 'Rojas', 'CC', '9880000011', 'conductor.2300@school-guardian.com', 3209000011, 'Calle 41 # 11-01', '1983-04-10', 'Active'),
('9A100021-0000-4000-8000-000000000021', 'Claudia', 'Rojas', 'CC', '9880000012', 'acudiente.2300@school-guardian.com', 3209000021, 'Calle 41 # 12-01', '1987-08-22', 'Active'),
('9A100031-0000-4000-8000-000000000031', 'Sofia', 'Rojas', 'TI', '9880000013', 'estudiante.2300@school-guardian.com', 3209000031, 'Calle 41 # 13-01', '2013-02-15', 'Active'),
('9A100012-0000-4000-8000-000000000012', 'Ricardo', 'Castro', 'CC', '9880000021', 'conductor.0608@school-guardian.com', 3209000012, 'Calle 42 # 11-02', '1983-04-10', 'Active'),
('9A100022-0000-4000-8000-000000000022', 'Patricia', 'Castro', 'CC', '9880000022', 'acudiente.0608@school-guardian.com', 3209000022, 'Calle 42 # 12-02', '1987-08-22', 'Active'),
('9A100032-0000-4000-8000-000000000032', 'Mateo', 'Castro', 'TI', '9880000023', 'estudiante.0608@school-guardian.com', 3209000032, 'Calle 42 # 13-02', '2013-02-15', 'Active'),
('9A100013-0000-4000-8000-000000000013', 'Fabio', 'Mendoza', 'CC', '9880000031', 'conductor.1113@school-guardian.com', 3209000013, 'Calle 43 # 11-03', '1983-04-10', 'Active'),
('9A100023-0000-4000-8000-000000000023', 'Liliana', 'Mendoza', 'CC', '9880000032', 'acudiente.1113@school-guardian.com', 3209000023, 'Calle 43 # 12-03', '1987-08-22', 'Active'),
('9A100033-0000-4000-8000-000000000033', 'Valentina', 'Mendoza', 'TI', '9880000033', 'estudiante.1113@school-guardian.com', 3209000033, 'Calle 43 # 13-03', '2013-02-15', 'Active'),
('9A100014-0000-4000-8000-000000000014', 'Mauricio', 'Vargas', 'CC', '9880000041', 'conductor.1416@school-guardian.com', 3209000014, 'Calle 44 # 11-04', '1983-04-10', 'Active'),
('9A100024-0000-4000-8000-000000000024', 'Sandra', 'Vargas', 'CC', '9880000042', 'acudiente.1416@school-guardian.com', 3209000024, 'Calle 44 # 12-04', '1987-08-22', 'Active'),
('9A100034-0000-4000-8000-000000000034', 'Samuel', 'Vargas', 'TI', '9880000043', 'estudiante.1416@school-guardian.com', 3209000034, 'Calle 44 # 13-04', '2013-02-15', 'Active'),
('9A100015-0000-4000-8000-000000000015', 'Wilson', 'Ortiz', 'CC', '9880000051', 'conductor.1719@school-guardian.com', 3209000015, 'Calle 45 # 11-05', '1983-04-10', 'Active'),
('9A100025-0000-4000-8000-000000000025', 'Marcela', 'Ortiz', 'CC', '9880000052', 'acudiente.1719@school-guardian.com', 3209000025, 'Calle 45 # 12-05', '1987-08-22', 'Active'),
('9A100035-0000-4000-8000-000000000035', 'Isabella', 'Ortiz', 'TI', '9880000053', 'estudiante.1719@school-guardian.com', 3209000035, 'Calle 45 # 13-05', '2013-02-15', 'Active'),
('9A100016-0000-4000-8000-000000000016', 'Gustavo', 'Moreno', 'CC', '9880000061', 'conductor.2022@school-guardian.com', 3209000016, 'Calle 46 # 11-06', '1983-04-10', 'Active'),
('9A100026-0000-4000-8000-000000000026', 'Diana', 'Moreno', 'CC', '9880000062', 'acudiente.2022@school-guardian.com', 3209000026, 'Calle 46 # 12-06', '1987-08-22', 'Active'),
('9A100036-0000-4000-8000-000000000036', 'Tomas', 'Moreno', 'TI', '9880000063', 'estudiante.2022@school-guardian.com', 3209000036, 'Calle 46 # 13-06', '2013-02-15', 'Active');
