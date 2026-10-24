-- 8 personas admin nuevas (admin3..admin10) para completar 10 admins de seed.
-- Van en iam-db antes que los perfiles porque Iam.Profile referencia UserManagement.Person (FK_Profile_Person),
-- siguiendo el mismo patron de 006-insert-test-persons.sql.
INSERT INTO UserManagement.Person (Id, Name, LastName, IdentificationType, IdentificationNumber, Email, Phone, ResidenceAddress, DateBirth, Status)
VALUES
('B1000058-0000-4000-8000-000000000058', 'Laura', 'Mejia', 'CC', '99000000070', 'admin3@school-guardian.com', 315400001, 'Cra 15 # 32-18', '1985-04-12', 'Active'),
('B1000059-0000-4000-8000-000000000059', 'Pedro', 'Acosta', 'CC', '99000000071', 'admin4@school-guardian.com', 315400002, 'Calle 24 # 11-07', '1983-09-27', 'Active'),
('B1000060-0000-4000-8000-000000000060', 'Luisa', 'Cardona', 'CC', '99000000072', 'admin5@school-guardian.com', 315400003, 'Cra 20 # 41-25', '1988-01-15', 'Active'),
('B1000061-0000-4000-8000-000000000061', 'Felipe', 'Rueda', 'CC', '99000000073', 'admin6@school-guardian.com', 315400004, 'Calle 35 # 8-44', '1981-06-30', 'Active'),
('B1000062-0000-4000-8000-000000000062', 'Juliana', 'Vega', 'CC', '99000000074', 'admin7@school-guardian.com', 315400005, 'Cra 9 # 27-53', '1990-11-08', 'Active'),
('B1000063-0000-4000-8000-000000000063', 'Hector', 'Pineda', 'CC', '99000000075', 'admin8@school-guardian.com', 315400006, 'Calle 17 # 30-12', '1979-03-21', 'Active'),
('B1000064-0000-4000-8000-000000000064', 'Sonia', 'Beltran', 'CC', '99000000076', 'admin9@school-guardian.com', 315400007, 'Cra 26 # 14-36', '1986-08-05', 'Active'),
('B1000065-0000-4000-8000-000000000065', 'Rafael', 'Duarte', 'CC', '99000000077', 'admin10@school-guardian.com', 315400008, 'Calle 42 # 19-28', '1984-12-17', 'Active');
