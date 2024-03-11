-- Create schema in any Database script or any ORM (Object Relational Mapping).
CREATE TABLE Product (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  sku VARCHAR(50) UNIQUE,
  category_id INT NOT NULL,
  inventory_id INT,  
  price DECIMAL(10,2) NOT NULL,
  discount_id INT,  
  creation_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  modification_time DATETIME DEFAULT NULL,
  deletion_time DATETIME DEFAULT NULL,
  FOREIGN KEY (category_id) REFERENCES Product_Category(id)
);

CREATE TABLE Product_Category (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  creation_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  modification_time DATETIME DEFAULT NULL,
  deletion_time DATETIME DEFAULT NULL
);