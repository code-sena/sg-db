-- FR-8.1: tipos de alerta que el conductor puede reportar como incidente o
-- emergencia. Van despues de los 20 tipos operativos ya sembrados, asi que sus
-- Id (IDENTITY) son 21..24.
INSERT INTO Notification.AlertType (Name, Description, UrgencyLevel)
VALUES
('Accident', 'Traffic accident involving the bus', 5),
('Medical Emergency', 'Student or crew member requires medical help', 5),
('Mechanical Breakdown', 'Bus stopped by a mechanical failure', 4),
('Security Incident', 'Unsafe situation on board or around the bus', 5);
