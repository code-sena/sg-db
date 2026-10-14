-- 15 roles adicionales para completar 20 junto a los ya sembrados (Admin, SuperAdmin, Student, Driver, Parent).
INSERT INTO Iam.Role (Name, Description, Status)
VALUES
('Coordinator', 'Academic coordination and schedule management', 'Active'),
('Director', 'School director with full campus visibility', 'Active'),
('Teacher', 'Classroom teacher of one or more courses', 'Active'),
('Nurse', 'School health services staff', 'Active'),
('Psychologist', 'Student wellbeing and counseling staff', 'Active'),
('Dispatcher', 'Assigns buses and drivers daily', 'Active'),
('Mechanic', 'Fleet maintenance staff', 'Active'),
('Inspector', 'Supervisor of boarding and route stops', 'Active'),
('Secretary', 'Enrollment and administrative records', 'Active'),
('Guard', 'Campus access control staff', 'Active'),
('Accountant', 'Billing and payments staff', 'Active'),
('RouteAnalyst', 'Analyzes route performance and delays', 'Active'),
('FleetAnalyst', 'Monitors fleet usage and GPS data', 'Active'),
('SupportAgent', 'Handles parent support tickets', 'Active'),
('Auditor', 'Read-only access to audit logs', 'Active');
