-- 20 tipos de alerta (la tabla se siembra vacia: los Id son los de la insercion 1..20).
INSERT INTO Notification.AlertType (Name, Description, UrgencyLevel)
VALUES
('Bus Delay', 'Bus arrived late to a scheduled pickup point', 3),
('Route Deviation', 'Bus deviated from the planned route', 4),
('Missed Stop', 'Scheduled stop was not registered', 3),
('Speed Alert', 'Speed limit exceeded in a school zone', 5),
('Geofence Enter', 'Bus entered a campus geofence', 1),
('Geofence Exit', 'Bus left a campus geofence unexpectedly', 3),
('No Boarding', 'Student did not register boarding this morning', 4),
('Unexpected Boarding', 'Boarding registered outside the assigned stop', 4),
('Engine Off', 'Engine turned off during an active route', 3),
('Device Offline', 'GPS device without connection over 30 minutes', 3),
('Late Departure', 'Bus departed the campus with delay', 2),
('Early Arrival', 'Bus arrived earlier than scheduled', 2),
('Overcapacity', 'Passengers over the bus rated capacity', 5),
('Seatbelt Alert', 'Seatbelt reported unfastened', 4),
('Hard Braking', 'Abrupt braking detected on the route', 3),
('Sharp Turn', 'Sharp steering maneuver detected', 3),
('Low Fuel', 'Fuel level below 15 percent', 2),
('Prolonged Stop', 'Unauthorized stop longer than 10 minutes', 3),
('Driver Absence', 'Assigned driver did not start the shift', 5),
('Route Cancellation', 'Route cancelled due to heavy rain', 5);
