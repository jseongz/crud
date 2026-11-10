CREATE DATABASE shopease_db;
USE shopease_db;

CREATE TABLE products (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(150) NOT NULL,
  description TEXT,
  price DECIMAL(10,2) NOT NULL,
  stock INT NOT NULL DEFAULT 0,
  category VARCHAR(100),
  image_url VARCHAR(500),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO products
(name, description, price, stock, category, image_url)
VALUES
('Wireless Headphones', 'Wireless audio headphones', 1999, 20, 'Electronics',
 'https://placehold.co/400x300?text=Headphones'),
('Smart Watch', 'Watch with fitness tracking', 2499, 15, 'Electronics',
 'https://placehold.co/400x300?text=Watch'),
('Travel Backpack', 'Everyday backpack', 1299, 12, 'Fashion',
 'https://placehold.co/400x300?text=Backpack'),
('White Sneakers', 'Casual everyday shoes', 1899, 10, 'Fashion',
 'https://placehold.co/400x300?text=Sneakers');

SELECT * FROM products;