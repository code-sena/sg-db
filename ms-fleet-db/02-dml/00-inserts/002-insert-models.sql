-- Un modelo por marca, en el mismo orden de 001-insert-brands.sql.
INSERT INTO Fleet.Model (BrandId, Name, Status)
VALUES
((SELECT Id FROM Fleet.Brand WHERE Name = 'Mercedes-Benz'), 'O500', 'Active'),
((SELECT Id FROM Fleet.Brand WHERE Name = 'Volvo'), '8900', 'Active'),
((SELECT Id FROM Fleet.Brand WHERE Name = 'Scania'), 'K360', 'Active'),
((SELECT Id FROM Fleet.Brand WHERE Name = 'Yutong'), 'ZK6122', 'Active'),
((SELECT Id FROM Fleet.Brand WHERE Name = 'King Long'), 'XMQ6122', 'Active'),
((SELECT Id FROM Fleet.Brand WHERE Name = 'Zhongtong'), 'LCK6127', 'Active'),
((SELECT Id FROM Fleet.Brand WHERE Name = 'Hino'), 'Rosa', 'Active'),
((SELECT Id FROM Fleet.Brand WHERE Name = 'Isuzu'), 'NQR', 'Active'),
((SELECT Id FROM Fleet.Brand WHERE Name = 'Chevrolet'), 'N300', 'Active'),
((SELECT Id FROM Fleet.Brand WHERE Name = 'Hyundai'), 'County', 'Active'),
((SELECT Id FROM Fleet.Brand WHERE Name = 'Kia'), 'Bongo', 'Active'),
((SELECT Id FROM Fleet.Brand WHERE Name = 'Ford'), 'Transit', 'Active'),
((SELECT Id FROM Fleet.Brand WHERE Name = 'MAN'), 'Lion City', 'Active'),
((SELECT Id FROM Fleet.Brand WHERE Name = 'Iveco'), 'Daily', 'Active'),
((SELECT Id FROM Fleet.Brand WHERE Name = 'BYD'), 'K9', 'Active'),
((SELECT Id FROM Fleet.Brand WHERE Name = 'Tata'), 'Star', 'Active'),
((SELECT Id FROM Fleet.Brand WHERE Name = 'Ashok Leyland'), 'Cruz', 'Active'),
((SELECT Id FROM Fleet.Brand WHERE Name = 'JAC'), 'Sunray', 'Active'),
((SELECT Id FROM Fleet.Brand WHERE Name = 'Dongfeng'), 'Auma', 'Active'),
((SELECT Id FROM Fleet.Brand WHERE Name = 'Foton'), 'Aumark', 'Active');
