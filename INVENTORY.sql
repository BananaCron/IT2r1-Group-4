CREATE TABLE currentstock (
  productcode varchar(45) NOT NULL,
  current_quantity int,
  last_updated varchar(45),
  PRIMARY KEY (productcode)
) ;

CREATE TABLE customers (
  customercode varchar(50) NOT NULL,
  fullname varchar(50),
  address varchar(50),
  PRIMARY KEY (customercode)
);

CREATE TABLE products (
  productID int NOT NULL,
  productcode varchar(50),
  productname varchar(50),
  price double precision,
  brand varchar(50),
  PRIMARY KEY (productID),
  UNIQUE (productcode)
);

CREATE TABLE purchaseinfo (
  purchaseID int NOT NULL,
  productcode varchar(50),
  date varchar(50),
  quantity int,
  total_amount double precision,
  PRIMARY KEY (purchaseID)
) ;

CREATE TABLE supplier (
  supplierID int NOT NULL,
  suppliername varchar(45),
  contactinfo varchar(11),
  address varchar(100),
  PRIMARY KEY (supplierID)
) ;

CREATE TABLE admintype (
  adminID int NOT NULL,
  name varchar(45),
  address varchar(100),
  username varchar(20),
  userpassword varchar (20),
  usertype varchar (45),
  PRIMARY KEY (adminID),
  CHECK (usertype in ('CASHIER', 'MANAGER'))
) ;


SELECT * FROM currentstock

INSERT INTO currentstock VALUES ('PROD1', 100, '07/20/2024'),
								('PROD2', 150, '07/23/2024'),
								('PROD3', 100, '07/25/2024'),
								('PROD4', 150, '07/25/2024');
INSERT INTO customers VALUES ('CUST24', 'Ian Venarate', 'Cagayan Orriental');
INSERT INTO products VALUES (05, 'PROD1', 'Apple Phone', 12000.00, 'Apple');
INSERT INTO purchaseinfo VALUES (02, 'PROD1', 12/24/2024, 10, 120000.00);
INSERT INTO supplier VALUES (03, 'Apple Shop', 09123183455, 'CDO')
INSERT INTO admintype VALUES (01, 'Lenlen Pokita', 'Cagayan De Davao', 'cashier1', 'root', 'CASHIER')

DELETE FROM currentstock WHERE last_updated = '07/23/2024'

UPDATE currentstock 
SET current_quantity = 98
WHERE productcode = 'PROD1'

SELECT * FROM currentstock WHERE last_updated = '07/25/2024'
