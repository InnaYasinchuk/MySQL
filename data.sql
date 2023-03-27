CREATE TABLE `shop`.`product` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `product` VARCHAR(45) NULL,
  `price` INT NULL,
  `rating` DECIMAL(5,2) NULL,
  `category` VARCHAR(255) NULL,
  `brand` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));


INSERT INTO product(product, price, rating, category, brand)
VALUES('iPhone 9', 549, 4.69, 'smartphones', 'Apple'),
('iPhone X', 899, 4.44, 'smartphones', 'Apple'),
('Samsung Universe 9', 1249, 4.09, 'smartphones', 'Samsung'),
('OPPO F19', 280, 4.3, 'smartphones', 'OPPO'),
('Huawei P30', 499, 4.09, 'smartphones', 'Huawei'),
('MacBook Pro', 1149, 4.57, 'laptops', 'Apple'),
('Samsung Galaxy Book', 1149, 4.25, 'laptops', 'Samsung'),
('Microsoft Surface Laptop 4', 1149, 4.43, 'laptops', 'Microsoft Surface');

SELECT product, price FROM shop.product WHERE brand="Apple";
SELECT product FROM shop.product WHERE price < "1000";
SELECT product FROM shop.product WHERE price BETWEEN "500" AND "1500";
SELECT product, price, rating FROM shop.product WHERE brand IN("Apple", "Samsung", "Huawei");
SELECT product, category FROM shop.product WHERE product LIKE "Samsung%";