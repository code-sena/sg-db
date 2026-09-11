ALTER TABLE Notification.Alert
    ADD CONSTRAINT FK_Alert_AlertType FOREIGN KEY (AlertTypeId) REFERENCES Notification.AlertType(Id);

ALTER TABLE Notification.Alert
    ADD CONSTRAINT FK_Alert_RouteExecution FOREIGN KEY (RouteExecutionId) REFERENCES Route.RouteExecution(Id);

ALTER TABLE Notification.Alert
    ADD CONSTRAINT FK_Alert_Profile FOREIGN KEY (ProfileId) REFERENCES Iam.Profile(Id);