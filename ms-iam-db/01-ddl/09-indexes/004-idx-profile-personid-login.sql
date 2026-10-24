-- Index to optimize login query: find profile by person email
-- The login query joins Profile -> Person on PersonId and filters by Person.Email
-- This index covers the join column and includes frequently accessed columns
CREATE INDEX IDX_Profile_PersonId_Login
ON Iam.Profile (PersonId)
INCLUDE (PasswordHash, RoleId, Status, CampuseId);