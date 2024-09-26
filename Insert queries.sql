-- Insert user_id values in the Users table
INSERT INTO Users_data (user_id, username, password, email) VALUES
(1, 'johndoe92', 'Password123!', 'johndoe@gmail.com'),
(2, 'sara.smith', 'S@raP@ss2023', 'sara.smith@yahoo.com'),
(3, 'michael.king', 'MK!ngPass789', 'michael.king@hotmail.com'),
(4, 'amanda.white', 'AWhite2024$', 'amanda.white@gmail.com'),
(5, 'steve.jones', 'StvJ123#$', 'steve.jones@live.com'),
(6, 'emily.jackson', 'EmJ!6789', 'emily.jackson@outlook.com'),
(7, 'david.brown', 'David#123$', 'david.brown@icloud.com'),
(8, 'alice.green', 'Green123$', 'alice.green@company.com'),
(9, 'ben.watson', 'Watson#234%', 'ben.watson@business.com'),
(10, 'carla.mendes', 'Cmendes@5678', 'carla.mendes@mail.com');


INSERT INTO Products (name, description, price, stock) VALUES
('iPhone 14', 'Apple iPhone 14 - 128GB, Black', 799.99, 50),
('Samsung Galaxy S23', 'Samsung Galaxy S23 - 256GB, Green', 999.99, 30),
('Sony WH-1000XM5', 'Sony Noise Cancelling Wireless Headphones', 299.99, 100),
('Dell XPS 13', 'Dell XPS 13 Laptop - Intel i7, 16GB RAM', 1199.99, 20),
('Apple MacBook Pro', 'MacBook Pro 14-inch - M1 Chip, 512GB SSD', 1999.99, 15),
('Nike Air Max 90', 'Nike Air Max 90 Shoes - White/Black', 149.99, 75),
('Adidas Ultraboost', 'Adidas Ultraboost Running Shoes - Black', 179.99, 60),
('Canon EOS R6', 'Canon EOS R6 Mirrorless Camera - 24.2MP', 2499.99, 10),
('Fitbit Charge 5', 'Fitbit Charge 5 Fitness Tracker', 149.99, 150),
('GoPro HERO11', 'GoPro HERO11 Black Action Camera', 499.99, 40);


INSERT INTO Orders (user_id, total, order_date) VALUES
(1, 1599.98, '2023-09-21 14:35:22'), -- John Doe buys iPhone and MacBook
(2, 149.99, '2023-09-22 10:12:45'),  -- Sara Smith buys Nike Air Max 90
(3, 999.99, '2023-09-22 11:50:38'),  -- Michael King buys Samsung Galaxy S23
(4, 299.99, '2023-09-23 09:23:11'),  -- Amanda White buys Sony Headphones
(5, 2499.99, '2023-09-24 16:47:39'), -- Steve Jones buys Canon EOS R6
(6, 149.99, '2023-09-25 10:00:00'),  -- Emily Jackson buys Fitbit Charge 5
(7, 799.99, '2023-09-25 12:30:44'),  -- David Brown buys iPhone 14
(8, 179.99, '2023-09-26 14:10:05'),  -- Alice Green buys Adidas Ultraboost
(9, 1199.99, '2023-09-27 15:47:19'), -- Ben Watson buys Dell XPS 13
(10, 499.99, '2023-09-28 17:55:02'); -- Carla Mendes buys GoPro HERO11


INSERT INTO Order_Items (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 799.99),  -- John Doe buys 1 iPhone 14
(1, 5, 1, 1999.99), -- John Doe buys 1 MacBook Pro
(2, 6, 1, 149.99),  -- Sara Smith buys 1 Nike Air Max 90
(3, 2, 1, 999.99),  -- Michael King buys 1 Samsung Galaxy S23
(4, 3, 1, 299.99),  -- Amanda White buys 1 Sony Headphones
(5, 8, 1, 2499.99), -- Steve Jones buys 1 Canon EOS R6
(6, 9, 1, 149.99),  -- Emily Jackson buys 1 Fitbit Charge 5
(7, 1, 1, 799.99),  -- David Brown buys 1 iPhone 14
(8, 7, 1, 179.99),  -- Alice Green buys 1 Adidas Ultraboost
(9, 4, 1, 1199.99), -- Ben Watson buys 1 Dell XPS 13
(10, 10, 1, 499.99);-- Carla Mendes buys 1 GoPro HERO11


select * from users_data
select * from public.orders
