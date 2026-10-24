# sg-db

La migracion `ms-school-db/01-ddl/04-alter/005-add-school-location.sql` agrega
`Latitude` y `Longitude` opcionales (`DECIMAL(10,7) NULL`) a `School.School` y
`School.SchoolCampus`. Conserva las columnas existentes y no modifica registros.

`ms-school-db/01-ddl/04-alter/006-widen-school-phone.sql` amplia `School.School.Phone`
de `INT` a `BIGINT`, conservando los valores y la restriccion `NOT NULL`, para
coincidir con el tipo `long` del servicio y admitir telefonos de diez digitos.