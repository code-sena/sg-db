-- FR-8.1: el conductor reporta un incidente con una descripcion libre, que no
-- cabe en los 100 caracteres del esquema original. Se ensancha la columna; no
-- hay indices ni constraints sobre ella, y ningun dato existente se pierde.
ALTER TABLE Notification.Alert
    ALTER COLUMN Description VARCHAR(500) NULL;
