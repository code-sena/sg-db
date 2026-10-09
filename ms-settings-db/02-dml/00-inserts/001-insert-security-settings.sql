-- Batch ECO: 20 parámetros operativos.
INSERT INTO Settings.SecuritySettings (NameSettings, ValueSettings, Description)
VALUES
('jwt.access.minutes', '15', 'Vigencia del token de acceso'),
('jwt.refresh.days', '30', 'Vigencia del refresh token'),
('qr.ttl.minutes', '10', 'Vigencia del QR del estudiante'),
('gps.interval.seconds', '10', 'Intervalo de reporte GPS'),
('gps.offline.buffer', '500', 'Puntos GPS en buffer sin conexión'),
('notif.push.enabled', 'true', 'Envío push a acudientes'),
('notif.sms.fallback', 'false', 'SMS como respaldo de push'),
('route.max.stops', '40', 'Máximo de paradas por ruta'),
('trip.open.timeout.minutes', '120', 'Cierre automático de viajes abiertos'),
('boarding.duplicate.window.seconds', '60', 'Ventana anti-duplicado de bordadas'),
('password.min.length', '8', 'Longitud mínima de contraseña'),
('password.lockout.attempts', '5', 'Intentos antes de bloqueo'),
('session.abs.timeout.hours', '12', 'Tope absoluto de sesión'),
('terms.current.version', '2026.08', 'Versión vigente de TyC'),
('support.email', 'sch00l.guard4n@gmail.com', 'Canal de soporte'),
('support.sla.hours', '2', 'SLA de respuesta'),
('audit.retention.days', '365', 'Retención de bitácora'),
('location.history.days', '30', 'Retención de ubicaciones'),
('school.max.campuses', '10', 'Máximo de sedes por colegio'),
('family.max.students', '8', 'Máximo de estudiantes por familia');
