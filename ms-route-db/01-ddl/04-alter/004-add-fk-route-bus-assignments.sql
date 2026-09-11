ALTER TABLE Route.RouteBusAssignments
    ADD CONSTRAINT FK_RouteBusAssignments_Route FOREIGN KEY (RouteId) REFERENCES Route.Route(Id);

ALTER TABLE Route.RouteBusAssignments
    ADD CONSTRAINT FK_RouteBusAssignments_Bus FOREIGN KEY (BusId) REFERENCES Fleet.Bus(Id);