INSERT INTO Route.Route (Id, CampuseId, Name, TargetSector, Status)
VALUES (
    'F1000021-0000-4000-8000-000000000021',
    'A3000001-0000-4000-8000-000000000001',
    'Ruta 21 Prueba Notif',
    'Zona Prueba',
    'Active'
);

INSERT INTO Route.RouteBusAssignments (Id, BusId, RouteId, Status)
VALUES (
    'F4000021-0000-4000-8000-000000000021',
    'D1000021-0000-4000-8000-000000000021',
    'F1000021-0000-4000-8000-000000000021',
    'Active'
);

INSERT INTO Route.RouteSchedule (Id, RouteBusAssignmentsId, DayOfWeek, Direction, StartTime, Status)
VALUES (
    'F6000041-0000-4000-8000-000000000041',
    'F4000021-0000-4000-8000-000000000021',
    'Wednesday',
    'Ida',
    '00:30:00',
    'Active'
);

INSERT INTO Route.RouteStop (Id, RouteId, StopId, OrderSequence, Status)
VALUES (
    'F3000061-0000-4000-8000-000000000061',
    'F1000021-0000-4000-8000-000000000021',
    'F2000001-0000-4000-8000-000000000001',
    1,
    'Active'
);

INSERT INTO Route.RouteStudentAssignments (Id, ProfileId, RouteStopId, Status)
VALUES (
    'F5000021-0000-4000-8000-000000000021',
    'C1000039-0000-4000-8000-000000000039',
    'F3000061-0000-4000-8000-000000000061',
    'Active'
);
