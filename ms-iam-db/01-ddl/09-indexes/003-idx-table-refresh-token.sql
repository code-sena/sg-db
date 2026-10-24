CREATE UNIQUE INDEX UX_RefreshToken_TokenHash
ON Iam.RefreshToken (TokenHash);

CREATE INDEX IX_RefreshToken_SessionProfileId
ON Iam.RefreshToken (SessionProfileId);
