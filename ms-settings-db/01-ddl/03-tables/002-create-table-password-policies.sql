CREATE TABLE Settings.PasswordPolicies (
    Id TINYINT PRIMARY KEY IDENTITY,
    MinLongitude TINYINT NOT NULL,
    MaxLongitude TINYINT NOT NULL,
    RequiresCapitalLetters TINYINT NOT NULL,
    RequiresNumbers TINYINT NOT NULL,
    RequiresSymbols TINYINT NOT NULL,
    ExpirationDays TINYINT NOT NULL
);