ALTER TABLE Notification.Boarding
    ADD CONSTRAINT FK_Boarding_RouteExecution FOREIGN KEY (RouteExecutionId) REFERENCES Route.RouteExecution(Id);

ALTER TABLE Notification.Boarding
    ADD CONSTRAINT FK_Boarding_Profile FOREIGN KEY (ProfileId) REFERENCES Iam.Profile(Id);

ALTER TABLE Notification.Boarding
    ADD CONSTRAINT FK_Boarding_RouteStop FOREIGN KEY (RouteStopId) REFERENCES Route.RouteStop(Id);