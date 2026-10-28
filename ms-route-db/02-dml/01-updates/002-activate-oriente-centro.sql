SET XACT_ABORT ON;

BEGIN TRY
    BEGIN TRANSACTION;

    DECLARE @RouteId UNIQUEIDENTIFIER;
    DECLARE @Matches INT;

    SELECT @Matches = COUNT(*)
    FROM [Route].[Route] WITH (UPDLOCK, HOLDLOCK)
    WHERE LOWER(LTRIM(RTRIM([Name]))) = N'oriente centro';

    IF @Matches = 0
        THROW 51000, 'Route oriente centro was not found. No changes were made.', 1;

    IF @Matches > 1
        THROW 51001, 'Multiple routes named oriente centro exist. Select a route by ID before activating it.', 1;

    SELECT @RouteId = [Id]
    FROM [Route].[Route]
    WHERE LOWER(LTRIM(RTRIM([Name]))) = N'oriente centro';

    UPDATE [Route].[Route]
    SET [Status] = 'Active'
    WHERE [Id] = @RouteId
      AND [Status] <> 'Active';

    SELECT [Id], [CampuseId], [Name], [Status]
    FROM [Route].[Route]
    WHERE [Id] = @RouteId;

    COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    IF XACT_STATE() <> 0
        ROLLBACK TRANSACTION;
    THROW;
END CATCH;
