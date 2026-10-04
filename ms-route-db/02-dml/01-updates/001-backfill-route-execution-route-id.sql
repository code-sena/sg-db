UPDATE e
SET RouteId = a.RouteId
FROM Route.RouteExecution e
JOIN Route.RouteBusAssignments a
    ON a.BusId = e.BusId AND a.Status = 'Active'
WHERE e.RouteId IS NULL;

ALTER TABLE Route.RouteExecution
    ALTER COLUMN RouteId UNIQUEIDENTIFIER NOT NULL;
