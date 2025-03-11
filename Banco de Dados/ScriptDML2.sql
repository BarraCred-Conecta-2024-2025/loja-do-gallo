use lojinha;
go

SET IDENTITY_INSERT Categoria ON;

INSERT INTO Categoria (Id, Nome, Foto, ExibirHome) VALUES
(1, 'Smartphones', 'img/categorias/1.png', 1),
(2, 'Notebooks', 'img/categorias/2.png', 1),
(3, 'Smartwatches', 'img/categorias/3.png', 1),
(4, 'Fones de Ouvido', 'img/categorias/4.png', 1),
(5, 'Monitores', 'img/categorias/5.png', 1),
(6, 'Teclados e Mouses', 'img/categorias/6.png', 1),
(7, 'Consoles', 'img/categorias/7.png', 1),
(8, 'Action Figures', 'img/categorias/8.png', 1),
(9, 'Drones', 'img/categorias/9.png', 1),
(10, 'Câmeras Digitais', 'img/categorias/10.png', 1);

SET IDENTITY_INSERT Categoria OFF;


SET IDENTITY_INSERT Produto ON;

INSERT INTO Produto (Id, CategoriaId, Nome, Descricao, ValorCusto, ValorVenda, QtdeEstoque, Destaque) VALUES
-- Smartphones (CategoriaId = 1)
(1, 1, 'iPhone 14 Pro', 'Apple A16 Bionic, 128GB', 4500.00, 6999.00, 10, 1),
(2, 1, 'Samsung Galaxy S23', 'Snapdragon 8 Gen 2, 256GB', 4000.00, 6499.00, 15, 1),
(3, 1, 'Xiaomi 13 Pro', 'Snapdragon 8 Gen 2, 512GB', 3500.00, 5299.00, 20, 0),
(4, 1, 'Motorola Edge 30 Ultra', 'Snapdragon 8 Gen 1, 256GB', 3200.00, 4799.00, 12, 0),
(5, 1, 'Asus ROG Phone 6', 'Gaming Phone, 512GB', 4200.00, 6999.00, 8, 0),

-- Notebooks (CategoriaId = 2)
(6, 2, 'MacBook Pro M2', 'Apple M2, 16GB RAM, 512GB SSD', 8000.00, 11999.00, 5, 1),
(7, 2, 'Dell XPS 15', 'Intel i7, 16GB RAM, 1TB SSD', 7000.00, 9999.00, 7, 0),
(8, 2, 'Asus ROG Strix G15', 'Ryzen 9, RTX 3070, 16GB RAM', 7500.00, 10999.00, 6, 0),
(9, 2, 'Lenovo ThinkPad X1', 'Intel i5, 8GB RAM, 512GB SSD', 5000.00, 7999.00, 10, 0),
(10, 2, 'HP Spectre x360', 'Intel i7, 16GB RAM, 1TB SSD', 7200.00, 10499.00, 8, 0),

-- Smartwatches (CategoriaId = 3)
(11, 3, 'Apple Watch Series 8', 'GPS + Cellular, 45mm', 2500.00, 3999.00, 10, 1),
(12, 3, 'Samsung Galaxy Watch 5', 'LTE, 44mm', 1500.00, 2499.00, 15, 0),
(13, 3, 'Garmin Fenix 7', 'MultiSport GPS Watch', 3500.00, 4999.00, 5, 0),
(14, 3, 'Xiaomi Mi Watch', 'Bluetooth, 46mm', 800.00, 1499.00, 20, 0),
(15, 3, 'Fitbit Sense 2', 'Monitoramento de saúde', 1200.00, 2099.00, 12, 0),

-- Fones de Ouvido (CategoriaId = 4)
(16, 4, 'AirPods Pro', 'Cancelamento de Ruído Ativo', 900.00, 1499.00, 12, 1),
(17, 4, 'Sony WH-1000XM5', 'Over-ear, Noise Cancelling', 1400.00, 2199.00, 10, 0),
(18, 4, 'JBL Live 660NC', 'Fone Bluetooth, Graves Potentes', 600.00, 999.00, 20, 0),
(19, 4, 'Beats Studio Buds', 'Fones In-Ear, Bluetooth', 800.00, 1299.00, 15, 0),
(20, 4, 'Razer Kraken X', 'Headset Gamer, Surround 7.1', 400.00, 699.00, 25, 0),

-- Monitores (CategoriaId = 5)
(21, 5, 'LG Ultragear 27"', 'IPS, 144Hz, 1ms', 1200.00, 1899.00, 8, 1),
(22, 5, 'Samsung Odyssey G5', 'Curvo, 165Hz, 2K', 1400.00, 2399.00, 10, 0),
(23, 5, 'AOC Hero 24"', 'IPS, 144Hz, FreeSync', 900.00, 1499.00, 15, 0),
(24, 5, 'Dell P2723QE', '4K UHD, 60Hz, USB-C', 2000.00, 3299.00, 5, 0),
(25, 5, 'BenQ Zowie XL2546', '240Hz, 1ms, eSports', 2500.00, 3999.00, 6, 0),

-- Teclados e Mouses (CategoriaId = 6)
(26, 6, 'Logitech G Pro X', 'Teclado Mecânico, RGB', 700.00, 1099.00, 20, 1),
(27, 6, 'Razer Huntsman Mini', 'Teclado Óptico, 60%', 800.00, 1299.00, 12, 0),
(28, 6, 'HyperX Alloy FPS', 'Teclado Mecânico, Red Switch', 600.00, 999.00, 18, 0),
(29, 6, 'Logitech G502 Hero', 'Mouse Gamer, 16K DPI', 300.00, 599.00, 25, 0),
(30, 6, 'Razer DeathAdder V2', 'Mouse Ergonômico, 20K DPI', 400.00, 699.00, 20, 0),

-- Consoles (CategoriaId = 7)
(31, 7, 'PlayStation 5', 'Edição Standard, SSD 825GB', 3500.00, 4999.00, 8, 1),
(32, 7, 'Xbox Series X', '1TB SSD, 4K Gaming', 3500.00, 4899.00, 10, 0),
(33, 7, 'Nintendo Switch OLED', 'Tela OLED, 64GB', 1800.00, 2699.00, 12, 0),
(34, 7, 'PlayStation 4 Slim', '500GB HDD, Controle DualShock', 1500.00, 2299.00, 15, 0),
(35, 7, 'Xbox Series S', '512GB SSD, Digital', 2000.00, 2899.00, 18, 0),

-- Action Figures (CategoriaId = 8)
(36, 8, 'Batman (DC Collectibles)', 'Figura colecionável 1/6', 500.00, 899.00, 15, 1),
(37, 8, 'Homem de Ferro (Hot Toys)', 'Escala 1/6', 1200.00, 1999.00, 8, 0),
(38, 8, 'Goku (Dragon Ball Z)', 'SH Figuarts', 300.00, 599.00, 25, 0),
(39, 8, 'Naruto Uzumaki', 'Banpresto Figure', 250.00, 449.00, 20, 0),
(40, 8, 'Darth Vader (Star Wars)', 'Figura Hasbro Black Series', 450.00, 799.00, 10, 0),

-- Drones (CategoriaId = 9)
(41, 9, 'DJI Mini 3 Pro', '4K, Compacto, Smart Features', 2500.00, 3999.00, 6, 1),
(42, 9, 'DJI Mavic Air 2', '48MP, 4K 60fps', 3000.00, 4999.00, 7, 0),
(43, 9, 'Parrot Anafi', 'Câmera HDR 4K, Compacto', 2000.00, 3299.00, 10, 0),
(44, 9, 'Ryze Tello', 'Drone Educacional, 720p', 400.00, 799.00, 20, 0),
(45, 9, 'Autel Evo Lite+', 'Câmera 6K, Bateria 40min', 3500.00, 5499.00, 5, 0),

-- Câmeras Digitais (CategoriaId = 10)
(46, 10, 'Canon EOS R5', 'Mirrorless, 8K Video', 12000.00, 15999.00, 4, 1),
(47, 10, 'Sony A7 IV', 'Mirrorless Full-Frame, 33MP', 9000.00, 12999.00, 6, 0),
(48, 10, 'Nikon Z6 II', 'Mirrorless, 24MP, 4K', 8000.00, 11499.00, 5, 0),
(49, 10, 'GoPro Hero 11', 'Câmera de Ação, 5.3K', 2000.00, 3199.00, 15, 0),
(50, 10, 'Fujifilm X-T4', 'APS-C, 26MP, 4K', 7500.00, 10999.00, 7, 0);

SET IDENTITY_INSERT Produto OFF;

