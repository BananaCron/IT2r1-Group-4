CREATE TABLE currentstock (
  productcode varchar(45),
  current_quantity,
  last_updated
  PRIMARY KEY (productcode)
) ;

INSERT INTO currentstock VALUES ();

CREATE TABLE customers (
  cid int NOT NULL,
  customercode varchar(50),
  fullname varchar(50),
  address varchar(50),
  contactnumber varchar(50),
  PRIMARY KEY (cid)
);

INSERT INTO customers VALUES ();

CREATE TABLE products (
  pid int NOT NULL,
  productcode varchar(50),
  productname varchar(50),
  costprice double precision,
  sellprice double precision,
  brand varchar(50),
  PRIMARY KEY (pid),
  UNIQUE (productcode)
);

INSERT INTO products VALUES ();

CREATE TABLE purchaseinfo (
  purchaseID int NOT NULL,
  suppliercode varchar(50),
  productcode varchar(50),
  dat varchar(50),
  quanti int,
  totalcost double precision,
  PRIMARY KEY (purchaseID)
) ;

INSERT INTO purchaseinfo VALUES ();

CREATE TABLE users (
  uid int NOT NULL,
  fullname varchar(45),
  address varchar(45),
  contactnumber varchar(10),
  username varchar(20),
  userpassword varchar(200),
  usertype varchar(45),
  PRIMARY KEY (uid)
) ;

INSERT INTO users VALUES ()

