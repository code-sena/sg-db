# sg-db

La migracion `ms-school-db/01-ddl/04-alter/005-add-school-location.sql` agrega
`Latitude` y `Longitude` opcionales (`DECIMAL(10,7) NULL`) a `School.School` y
`School.SchoolCampus`. Conserva las columnas existentes y no modifica registros.

`ms-school-db/01-ddl/04-alter/006-widen-school-phone.sql` amplia `School.School.Phone`
de `INT` a `BIGINT`, conservando los valores y la restriccion `NOT NULL`, para
coincidir con el tipo `long` del servicio y admitir telefonos de diez digitos.

`ms-school-db/01-ddl/04-alter/007-widen-school-address.sql` widens `Address`
in `School.School` and `School.SchoolCampus` from `VARCHAR(30)` to `VARCHAR(255)`,
preserving existing data and `NOT NULL`. It does not shrink wider columns or
modify existing creation scripts. Apply this migration through the school
changelog in each environment before saving long addresses; configuring a
255-character limit in the API does not update an existing database.