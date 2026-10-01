ALTER TABLE Notification.AlertRecipient
    ADD CONSTRAINT FK_AlertRecipient_Alert FOREIGN KEY (AlertId) REFERENCES Notification.Alert(Id);

ALTER TABLE Notification.AlertRecipient
    ADD CONSTRAINT FK_AlertRecipient_Profile FOREIGN KEY (ProfileId) REFERENCES Iam.Profile(Id);