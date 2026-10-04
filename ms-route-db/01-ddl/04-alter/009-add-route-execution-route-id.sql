ALTER TABLE Route.RouteExecution
    ADD RouteId UNIQUEIDENTIFIER NULL;

ALTER TABLE Route.RouteExecution
    ADD CONSTRAINT FK_RouteExecution_Route FOREIGN KEY (RouteId) REFERENCES Route.Route(Id);

ALTER TABLE Route.RouteExecution
    ALTER COLUMN EndDateTime DATETIME2 NULL;
