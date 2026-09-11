ALTER TABLE Exceptional.ExceptionalRouteUsage
    ADD CONSTRAINT FK_ExceptionalRouteUsage_Profile FOREIGN KEY (ProfileId) REFERENCES Iam.Profile(Id);

ALTER TABLE Exceptional.ExceptionalRouteUsage
    ADD CONSTRAINT FK_ExceptionalRouteUsage_Route FOREIGN KEY (RouteId) REFERENCES Route.Route(Id);