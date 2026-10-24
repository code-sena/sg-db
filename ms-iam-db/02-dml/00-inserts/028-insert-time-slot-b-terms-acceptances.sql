-- Segundo juego de prueba para la franja 06:00-08:00 (hora de Bogota).
-- TyC v2026.08: el acudiente acepta por si y por el estudiante; el conductor por si.
INSERT INTO Iam.TermsAcceptance (Id, ProfileId, StudentProfileId, TermsVersion, AcceptedAt, IpAddress, Channel)
VALUES
('9F100017-0000-4000-8000-000000000017', '9B100027-0000-4000-8000-000000000027', NULL, '2026.08', '2026-10-21T00:00:00', '192.0.2.50', 'mobile'),
('9F100027-0000-4000-8000-000000000027', '9B100027-0000-4000-8000-000000000027', '9B100037-0000-4000-8000-000000000037', '2026.08', '2026-10-21T00:00:00', '192.0.2.50', 'mobile'),
('9F100037-0000-4000-8000-000000000037', '9B100017-0000-4000-8000-000000000017', NULL, '2026.08', '2026-10-21T00:00:00', '192.0.2.50', 'mobile');
