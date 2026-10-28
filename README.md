# sg-db

## Activacion manual de Oriente Centro

`ms-route-db/02-dml/01-updates/002-activate-oriente-centro.sql` es una
migracion de datos manual y optativa: no esta incluida en el changelog
automatico porque selecciona un registro propio del entorno por nombre.
Ejecutarla solo en la base de datos de destino previamente verificada.

Busca exactamente `oriente centro`, ignorando mayusculas y espacios exteriores.
Exige una sola coincidencia; si no existe o hay duplicados, falla sin cambios.
Dentro de una transaccion cambia exclusivamente `Route.Route.Status` a `Active`
y devuelve ID, sede, nombre y estado para verificar el resultado. Puede
repetirse si la ruta ya esta activa. No cambia horarios, relaciones con buses
o paradas, ni habilita viajes fuera de la ventana programada.

El archivo se preparo sin ejecutarlo en ninguna base de datos. No incluye una
reversion automatica: volver a `Inactive` requiere comprobar el estado previo,
porque la ruta podria haber estado activa antes de ejecutar este script.

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

## Validacion de Compose sin credenciales

Desde esta carpeta, el ejemplo versionado contiene solo marcadores de posicion:

```powershell
docker compose --env-file compose-environment.example config --quiet
```

Este comando valida la configuracion; no conecta a SQL Server ni ejecuta
migraciones. No ejecutar `up` ni actualizaciones Liquibase con el ejemplo.
Para una ejecucion autorizada, sustituir el ejemplo por un archivo privado
mediante `--env-file <archivo-privado>` o suministrar las variables requeridas
por el entorno. Una `.env` privada tambien puede proporcionar las variables
cuando no se selecciona otro archivo. No versionar credenciales.

`MSSQL_HOST` es obligatorio: no existe un host de produccion predeterminado.
Los contenedores deben resolver un hostname alcanzable del SQL Server externo;
`localhost` dentro del contenedor apunta al propio contenedor, no al host Windows.
`sqlserver.example.invalid` y los valores `replace-with-*` no son desplegables.

## Alcance del DBML y contraste de esquema (2026-10-27)

`db-school-guardian.dbml` es un diagrama de los scripts versionados, no un
inventario de una instancia instalada ni un generador de migraciones. Se
contrastaron los 88 SQL de `01-ddl` (creaciones, alteraciones e indices), los
changelogs, los seis contextos/configuraciones EF de los servicios .NET y las
entidades JPA de IAM. GPS conserva dispositivos y ultima ubicacion en memoria:
no se encontraron entidades JPA GPS que implementen las dos tablas SQL.

Los 34 nombres de tabla del diagrama original NO equivalian al conjunto de
34 tablas DDL: faltaba `ForgotInformation.VerificationRequest` y sobraba `Audit`.
Se incorporo la primera y se retiro `Audit` del modelo implementado porque no
hay creacion/migracion ni entidad correspondiente en el alcance revisado.
Esto no demuestra que `Audit` no exista en una instancia externa.
Tras las correcciones, ambos conjuntos de nombres coinciden (34 tablas).

Los grupos indican los esquemas fisicos: `Fleet`, no `Bus`, es el esquema de
flota. Se conserva `Fleet.DriverAssignemts` y `CampuseId`: son nombres fisicos
implementados, aunque tengan errores ortograficos. Salvo la nueva tabla
calificada, las tablas conservan nombres cortos para legibilidad y `uuid`
representa `UNIQUEIDENTIFIER`. Los tipos logicos `status`, `Identificationtype`,
`RelationshipType`, `BoardingType` y `DayOfWeek` siguen siendo abreviaturas de
los `VARCHAR` con CHECK del DDL; el diagrama no enumera todos los defaults,
CHECK e indices existentes. No exportar el DBML para reemplazar el esquema.

### Recuperacion: dos rutas de creacion distintas

La tabla nueva representa
`ms-forgot-information-db/01-ddl/03-tables/001-create-table-verification-request.sql`
y los dos indices de `01-ddl/09-indexes`. Incluye los 14 campos, nulabilidad,
PK, CHECK de `Purpose`/`Status`, defaults 0/5/`Pending`/`GETUTCDATE()` y los indices
no unicos `(ProfileId, Purpose, Status)` y `(ExpiresAt)`, con sus nombres exactos.
`ProfileId` NO tiene FK en este DDL ni en la configuracion EF; no se inventa una.

El arranque de `sg-ms-forgot-information` llama a
`VerificationRequestSchemaInitializer.InitializeAsync`: la nueva tabla y los
metadatos EF ahora usan `VARCHAR`, los defaults de `AttemptCount`, `MaxAttempts`,
`Status` y `CreatedAt`, y el CHECK de `Status`. No se agrega el CHECK de
`Purpose`: los valores del SQL historico (`PasswordReset`, `ChangePassword`,
`ChangeEmail`, `ChangePhone`) no coinciden con el enum actual
(`PasswordReset`, `EmailChange`, `EmailChangeConfirm`, `PhoneChange`,
`PhoneChangeConfirm`). Resolverlo requiere una migracion revisada, no alterar
el SQL historico. El inicializador tampoco reconcilia una tabla ya creada.

### Diferencias que no se resuelven cambiando un diagrama

| Evidencia | Interpretacion / limite |
|---|---|
| `PersonConfiguration` y `PersonEntity` mapean `CityId`/`SchoolId`; no hay columnas ni migracion correspondiente en estos SQL | No se agregan columnas o FK ficticias al DBML; requiere decidir y migrar el esquema real. |
| `Person.Email` tiene indice NO unico en DDL y no `IsUnique` en EF | Se retira el UNIQUE incorrecto del DBML; no se promete unicidad de correo. |
| `DeviceToken.ProfileId` no tiene FK en los SQL ni relacion EF | Se retira la referencia fisica incorrecta del diagrama; sigue siendo un identificador logico. |
| `RouteExecution.RouteId` es NULL en migracion 009, pero `Guid` requerido en EF | Bloqueado: no se relaja el modelo ni se endurece SQL sin decision de nulabilidad e inventario de datos. |
| `RouteExecution.Direction` es `VARCHAR(10)` con default `Ida` en script 010 | EF ahora declara longitud, charset, default y nulabilidad. SQL 010 sigue sin changelog: al ser un `ALTER` no guardado, su estado instalado/historico desconocido bloquea vincularlo con seguridad. |
| EF declaraba `Route.Name` unico; SQL no | Se retiro el indice unico EF; no se afirma unicidad ausente de DDL ni se cambia SQL. |
| EF `FamilyMember` mapeaba CHECK a `[RelationType]` y cascade, pero DDL usa `RelationshipType` y FK sin cascade | Corregido: CHECK y `NO ACTION` ahora reflejan los scripts disponibles; sin cambio DDL. |
| JPA `SessionProfile.StatusSession` usaba longitud 20; DDL usa 50 | Corregido en metadata JPA a longitud 50; no altera el esquema instalado. |
| `Person.CityId`/`SchoolId` existen en EF/DTO, no en DDL | Bloqueado: decidir persistencia y migracion; no se inventan columnas o FK ni se descartan campos usados por los contratos. |
| Contextos EF leen tablas de otros esquemas y DDL declara FK cruzadas | El aislamiento por esquema es logico; no equivale a ausencia de joins o integridad cruzada. |

La copia `schoo-guardian/sg-db` tiene su propia historia: NO incluye la migracion
007 de direcciones. Su DBML conserva `VARCHAR(30)` para ambas direcciones;
este repositorio muestra `VARCHAR(255)` tras 007. No se sincronizan copias ni
se aplican migraciones en esta correccion documental.