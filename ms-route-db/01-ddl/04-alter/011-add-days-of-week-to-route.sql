IF COL_LENGTH(N'Route.Route', N'DaysOfWeek') IS NULL
    ALTER TABLE Route.Route
        ADD DaysOfWeek NVARCHAR(MAX) NOT NULL
            CONSTRAINT DF_Route_Route_DaysOfWeek DEFAULT (N'[]');
