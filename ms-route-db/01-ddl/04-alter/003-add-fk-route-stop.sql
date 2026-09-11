ALTER TABLE Route.RouteStop
    ADD CONSTRAINT FK_RouteStop_Route FOREIGN KEY (RouteId) REFERENCES Route.Route(Id);

ALTER TABLE Route.RouteStop
    ADD CONSTRAINT FK_RouteStop_Stop FOREIGN KEY (StopId) REFERENCES Route.Stop(Id);