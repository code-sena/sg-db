ALTER TABLE Route.RouteStudentAssignments
    ADD CONSTRAINT FK_RouteStudentAssignments_RouteStop FOREIGN KEY (RouteStopId) REFERENCES Route.RouteStop(Id);

ALTER TABLE Route.RouteStudentAssignments
    ADD CONSTRAINT FK_RouteStudentAssignments_Profile FOREIGN KEY (ProfileId) REFERENCES Iam.Profile(Id);