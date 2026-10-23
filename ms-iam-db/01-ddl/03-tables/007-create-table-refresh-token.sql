CREATE TABLE Iam.RefreshToken (
    Id BIGINT PRIMARY KEY IDENTITY,
    SessionProfileId INT NOT NULL,
    TokenHash CHAR(64) NOT NULL,
    CreatedAt DATETIME2 NOT NULL,
    ExpiresAt DATETIME2 NOT NULL,
    RevokedAt DATETIME2 NULL,
    ReplacedByTokenId BIGINT NULL
);
