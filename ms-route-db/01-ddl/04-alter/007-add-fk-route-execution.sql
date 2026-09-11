ALTER TABLE Route.RouteExecution
    ADD CONSTRAINT FK_RouteExecution_Bus FOREIGN KEY (BusId) REFERENCES Fleet.Bus(Id);

ALTER TABLE Route.RouteExecution
    ADD CONSTRAINT FK_RouteExecution_Profile FOREIGN KEY (DriverId) REFERENCES Iam.Profile(Id);