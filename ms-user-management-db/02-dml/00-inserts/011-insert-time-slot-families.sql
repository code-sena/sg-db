-- Franjas de prueba (hora de Bogota): 23-00, 06-08, 11-13, 14-16, 17-19 y 20-22.
-- Una familia por franja.
INSERT INTO UserManagement.Family (Id, Name, Observations, Status)
VALUES
('9C200001-0000-4000-8000-000000000001', 'Familia Rojas 2300', 'Acudiente y estudiante de la franja 23:00-00:00', 'Active'),
('9C200002-0000-4000-8000-000000000002', 'Familia Castro 0608', 'Acudiente y estudiante de la franja 06:00-08:00', 'Active'),
('9C200003-0000-4000-8000-000000000003', 'Familia Mendoza 1113', 'Acudiente y estudiante de la franja 11:00-13:00', 'Active'),
('9C200004-0000-4000-8000-000000000004', 'Familia Vargas 1416', 'Acudiente y estudiante de la franja 14:00-16:00', 'Active'),
('9C200005-0000-4000-8000-000000000005', 'Familia Ortiz 1719', 'Acudiente y estudiante de la franja 17:00-19:00', 'Active'),
('9C200006-0000-4000-8000-000000000006', 'Familia Moreno 2022', 'Acudiente y estudiante de la franja 20:00-22:00', 'Active');
