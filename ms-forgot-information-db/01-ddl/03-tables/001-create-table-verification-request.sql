CREATE TABLE ForgotInformation.VerificationRequest (
    Id UNIQUEIDENTIFIER PRIMARY KEY,
    ProfileId UNIQUEIDENTIFIER NOT NULL,
    Purpose VARCHAR(20) NOT NULL CHECK (Purpose IN ('PasswordReset', 'ChangePassword', 'ChangeEmail', 'ChangePhone')),
    Target VARCHAR(100) NOT NULL,
    CodeHash VARCHAR(255) NOT NULL,
    ResetTokenHash VARCHAR(255) NULL,
    ExpiresAt DATETIME2 NOT NULL,
    AttemptCount TINYINT NOT NULL DEFAULT 0,
    MaxAttempts TINYINT NOT NULL DEFAULT 5,
    Status VARCHAR(20) NOT NULL CHECK (Status IN ('Pending', 'Verified', 'Consumed', 'Expired', 'Locked')) DEFAULT 'Pending',
    CreatedAt DATETIME2 NOT NULL DEFAULT GETUTCDATE(),
    VerifiedAt DATETIME2 NULL,
    ConsumedAt DATETIME2 NULL,
    RequestIp VARCHAR(50) NOT NULL
);
