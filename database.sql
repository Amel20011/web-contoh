-- Buat database
CREATE DATABASE IF NOT EXISTS liviaa_shop;
USE liviaa_shop;

-- Tabel users
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    google_id VARCHAR(100) DEFAULT NULL,
    phone VARCHAR(20) DEFAULT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabel otp_codes
CREATE TABLE IF NOT EXISTS otp_codes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(100) NOT NULL,
    otp_code VARCHAR(6) NOT NULL,
    whatsapp_sent BOOLEAN DEFAULT FALSE,
    expires_at DATETIME NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabel products
CREATE TABLE IF NOT EXISTS products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    description TEXT,
    price DECIMAL(10,2) NOT NULL,
    image_url VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert 10 produk Liquid Glass
INSERT INTO products (name, category, description, price, image_url) VALUES
('Liquid Glass Pro Max', 'Premium', 'Pelindung layar premium dengan kekuatan 9H', 199000, 'https://via.placeholder.com/300x300/ff69b4/ffffff?text=Pro+Max'),
('Liquid Glass Ultra', 'Premium', 'Pelindung anti gores dengan nano coating', 179000, 'https://via.placeholder.com/300x300/ff69b4/ffffff?text=Ultra'),
('Liquid Glass Matte', 'Standard', 'Anti sidik jari dengan finishing matte', 149000, 'https://via.placeholder.com/300x300/ff69b4/ffffff?text=Matte'),
('Liquid Glass Privacy', 'Premium', 'Pelindung privacy dari sisi samping', 219000, 'https://via.placeholder.com/300x300/ff69b4/ffffff?text=Privacy'),
('Liquid Glass Blue Light', 'Health', 'Filter blue light untuk kesehatan mata', 169000, 'https://via.placeholder.com/300x300/ff69b4/ffffff?text=Blue+Light'),
('Liquid Glass Anti Spy', 'Security', 'Anti spy untuk keamanan maksimal', 249000, 'https://via.placeholder.com/300x300/ff69b4/ffffff?text=Anti+Spy'),
('Liquid Glass Hydrogel', 'Flexible', 'Pelindung fleksibel dengan healing sendiri', 129000, 'https://via.placeholder.com/300x300/ff69b4/ffffff?text=Hydrogel'),
('Liquid Glass 3D Curved', 'Premium', 'Untuk layar melengkung 3D', 189000, 'https://via.placeholder.com/300x300/ff69b4/ffffff?text=3D+Curved'),
('Liquid Glass Tempered', 'Standard', 'Kaca temper dengan ketebalan 0.33mm', 99000, 'https://via.placeholder.com/300x300/ff69b4/ffffff?text=Tempered'),
('Liquid Glass Diamond', 'Luxury', 'Diamond coating dengan garansi seumur hidup', 299000, 'https://via.placeholder.com/300x300/ff69b4/ffffff?text=Diamond');

-- Buat user untuk testing (password: liviaa123)
INSERT INTO users (username, email, password) VALUES 
('admin', 'admin@liviaashop.com', '$2y$10$YourHashedPasswordHere');
