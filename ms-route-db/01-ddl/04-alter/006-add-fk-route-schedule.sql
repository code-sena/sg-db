ALTER TABLE Route.RouteSchedule
    ADD CONSTRAINT FK_RouteSchedule_RouteBusAssignments FOREIGN KEY (RouteBusAssignmentsId) REFERENCES Route.RouteBusAssignments(Id);