-- Batch ECO: 20 políticas de contraseña.
INSERT INTO Settings.PasswordPolicies (MinLongitude, MaxLongitude, RequiresCapitalLetters, RequiresNumbers, RequiresSymbols, ExpirationDays)
VALUES
(7, 17, 1, 0, 0, 31),
(8, 18, 0, 1, 0, 32),
(6, 19, 1, 0, 1, 33),
(7, 20, 0, 1, 0, 34),
(8, 16, 1, 0, 0, 35),
(6, 17, 0, 1, 1, 36),
(7, 18, 1, 0, 0, 37),
(8, 19, 0, 1, 0, 38),
(6, 20, 1, 0, 1, 39),
(7, 16, 0, 1, 0, 40),
(8, 17, 1, 0, 0, 41),
(6, 18, 0, 1, 1, 42),
(7, 19, 1, 0, 0, 43),
(8, 20, 0, 1, 0, 44),
(6, 16, 1, 0, 1, 45),
(7, 17, 0, 1, 0, 46),
(8, 18, 1, 0, 0, 47),
(6, 19, 0, 1, 1, 48),
(7, 20, 1, 0, 0, 49),
(8, 16, 0, 1, 0, 50);
