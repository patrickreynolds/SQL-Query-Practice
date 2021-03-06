CREATE TABLE PRODUCTS (MFR_ID VARCHAR(3) NOT NULL, PRODUCT_ID VARCHAR(5) NOT NULL, DESCRIPTION VARCHAR(20) NOT NULL, PRICE FLOAT(9,2) NOT NULL, QTY_ON_HAND FLOAT(5,0) NOT NULL);
INSERT INTO PRODUCTS VALUES ('REI','2A45C','RATCHET LINK',79,210);
INSERT INTO PRODUCTS VALUES ('ACI','4100Y','WIDGET REMOVER',2750,25);
INSERT INTO PRODUCTS VALUES ('QSA','XK47','REDUCER',355,38);
INSERT INTO PRODUCTS VALUES ('BIC','41672','PLATE',180,0);
INSERT INTO PRODUCTS VALUES ('IMM','779C','900-LB BRACE',1875,9);
INSERT INTO PRODUCTS VALUES ('ACI','41003','SIZE 3 WIDGET',107,207);
INSERT INTO PRODUCTS VALUES ('ACI','41004','SIZE 4 WIDGET',117,139);
INSERT INTO PRODUCTS VALUES ('BIC','41003','HANDLE',652,3);
INSERT INTO PRODUCTS VALUES ('IMM','887P','BRACE PIN',250,24);
INSERT INTO PRODUCTS VALUES ('QSA','XK48','REDUCER',134,203);
INSERT INTO PRODUCTS VALUES ('REI','2A44L','LEFT HINGE',4500,12);
INSERT INTO PRODUCTS VALUES ('FEA','112','HOUSING',148,115);
INSERT INTO PRODUCTS VALUES ('IMM','887F','BRACE HOLDER',54,223);
INSERT INTO PRODUCTS VALUES ('BIC','41089','RETAINER',225,78);
INSERT INTO PRODUCTS VALUES ('ACI','41001','SIZE 1 WIDGET',55,277);
INSERT INTO PRODUCTS VALUES ('IMM','775C','500-LB BRACE',1425,5);
INSERT INTO PRODUCTS VALUES ('ACI','4100Z','WIDGET INSTALLER',2500,28);
INSERT INTO PRODUCTS VALUES ('QSA','XK48A','REDUCER',177,37);
INSERT INTO PRODUCTS VALUES ('ACI','41002','SIZE 2 WIDGET',76,167);
INSERT INTO PRODUCTS VALUES ('REI','2A44R','RIGHT HINGE',4500,12);
INSERT INTO PRODUCTS VALUES ('IMM','773C','300-LB BRACE',975,28);
INSERT INTO PRODUCTS VALUES ('ACI','4100X','WIDGET ADJUSTER',25,37);
INSERT INTO PRODUCTS VALUES ('FEA','114','MOTOR MOUNT',243,15);
INSERT INTO PRODUCTS VALUES ('IMM','887X','BRACE RETAINER',475,32);
INSERT INTO PRODUCTS VALUES ('REI','2A44G','HINGE PIN',350,14);

CREATE TABLE SALESREPS (EMPL_NUM FLOAT(3,0) primary key, NAME varchar(15) not null, AGE FLOAT(3,0), REP_OFFICE FLOAT(2,0), TITLE varchar(10), HIRE_DATE varchar(10) not null, MANAGER FLOAT(3,0), QUOTA FLOAT(10,2), SALES FLOAT(10,2) not null);
INSERT INTO SALESREPS VALUES (105,'Bill Adams',37,13,'Sales Rep','12-FEB-88',104,350000,367911);
INSERT INTO SALESREPS VALUES (109,'Mary Jones',31,11,'Sales Rep','12-OCT-89',106,300000,392725);
INSERT INTO SALESREPS VALUES (102,'Sue Smith',48,21,'Sales Rep','10-DEC-86',108,350000,474050);
INSERT INTO SALESREPS VALUES (106,'Sam Clark',52,11,'VP Sales','14-JUN-88',NULL,275000,299912);
INSERT INTO SALESREPS VALUES (104,'Bob Smith',33,12,'Sales Mgr','19-MAY-87',106,200000,142594);
INSERT INTO SALESREPS VALUES (101,'Dan Roberts',45,12,'Sales Rep','20-OCT-86',104,300000,305673);
INSERT INTO SALESREPS VALUES (110,'Tom Synder',41,NULL,'Sales Rep','13-JAN-90',101,NULL,75985);
INSERT INTO SALESREPS VALUES (108,'Larry Fitch',62,21,'Sales Mgr','12-OCT-89',106,350000,361865);
INSERT INTO SALESREPS VALUES (103,'Paul Cruz',29,12,'Sales Rep','01-MAR-87',104,275000,286775);
INSERT INTO SALESREPS VALUES (107,'Nacy Angelli',49,22,'Sales Rep','14-NOV-88',108,300000,186042);

CREATE TABLE ORDERS (ORDER_NUM FLOAT(6,0) PRIMARY KEY, ORDER_DATE varchar(10) NOT NULL, CUST FLOAT(4,0) NOT NULL, REP FLOAT(3,0), MFR VARCHAR(3) NOT NULL, PRODUCT VARCHAR(5) NOT NULL, QTY FLOAT(4,0) NOT NULL, AMOUNT FLOAT(9,2) NOT NULL );
INSERT INTO ORDERS VALUES (112961,'17-DEC-89',2117,106,'REI','2A44L',7,31500);
INSERT INTO ORDERS VALUES (113012,'11-JAN-90',2111,105,'ACI','41003',35,3745);
INSERT INTO ORDERS VALUES (112989,'03-JAN-90',2101,106,'FEA','114',6,1458);
INSERT INTO ORDERS VALUES (113051,'10-FEB-90',2118,108,'QSA','K47',4,1420);
INSERT INTO ORDERS VALUES (112968,'12-OCT-89',2102,101,'ACI','41004',34,3978);
INSERT INTO ORDERS VALUES (113036,'30-JAN-90',2107,110,'ACI','4100Z',9,22500);
INSERT INTO ORDERS VALUES (113045,'02-FEB-90',2112,108,'REI','2A44R',10,45000);
INSERT INTO ORDERS VALUES (112963,'17-DEC-89',2103,105,'ACI','41004',28,3276);
INSERT INTO ORDERS VALUES (113013,'14-JAN-90',2118,108,'BIC','41003',1,652);
INSERT INTO ORDERS VALUES (113058,'23-FEB-90',2108,109,'FEA','112',10,1480);
INSERT INTO ORDERS VALUES (112997,'08-JAN-90',2124,107,'BIC','41003',1,652);
INSERT INTO ORDERS VALUES (112983,'27-DEC-89',2103,105,'ACI','41004',6,702);
INSERT INTO ORDERS VALUES (113024,'20-JAN-90',2114,108,'QSA','XK47',20,7100);
INSERT INTO ORDERS VALUES (113062,'24-FEB-90',2124,107,'FEA','114',10,2430);
INSERT INTO ORDERS VALUES (112979,'12-OCT-89',2114,102,'ACI','4100Z',6,15000);
INSERT INTO ORDERS VALUES (113027,'22-JAN-90',2103,105,'ACI','41002',54,4104);
INSERT INTO ORDERS VALUES (113007,'08-JAN-90',2112,108,'IMM','773C',3,2925);
INSERT INTO ORDERS VALUES (113069,'02-MAR-90',2109,107,'IMM','775C',22,31350);
INSERT INTO ORDERS VALUES (113034,'29-JAN-90',2107,110,'REI','2A45C',8,632);
INSERT INTO ORDERS VALUES (112992,'04-NOV-89',2118,108,'ACI','41002',10,760);
INSERT INTO ORDERS VALUES (112975,'12-OCT-89',2111,103,'REI','2A44G',6,2100);
INSERT INTO ORDERS VALUES (113055,'15-FEB-90',2108,101,'ACI','4100X',6,150);
INSERT INTO ORDERS VALUES (113048,'10-FEB-90',2120,102,'IMM','779C',2,3750);
INSERT INTO ORDERS VALUES (112993,'04-JAN-89',2106,102,'REI','2A45C',24,1896);
INSERT INTO ORDERS VALUES (113065,'27-FEB-90',2106,102,'QSA','XK47',6,2130);
INSERT INTO ORDERS VALUES (113003,'25-JAN-90',2108,109,'IMM','779C',3,5625);
INSERT INTO ORDERS VALUES (113049,'10-FEB-90',2118,108,'QSA','XK47',2,776);
INSERT INTO ORDERS VALUES (112987,'31-DEC-89',2103,105,'ACI','4100Y',11,27500);
INSERT INTO ORDERS VALUES (113057,'18-FEB-90',2111,103,'ACI','4100X',24,600);
INSERT INTO ORDERS VALUES (113042,'02-FEB-90',2113,101,'REI','2A44R',5,22500);


CREATE TABLE OFFICES (office FLOAT(2,0) primary key, CITY varchar(15) not null, REGION varchar(10) not null, MGR FLOAT(3,0), TARGET FLOAT(10,2), SALES FLOAT(10,2) not null);
INSERT INTO OFFICES VALUES (22,'Denver','Western',108,300000,186042);
INSERT INTO OFFICES VALUES (11,'New York','Eastern',106,575000,692637);
INSERT INTO OFFICES VALUES (12,'Chicago','Eastern',104,800000,735042);
INSERT INTO OFFICES VALUES (13,'Atlanta','Eastern',105,350000,367911);
INSERT INTO OFFICES VALUES (21,'Los Angeles','Western',108,725000,835915);

CREATE TABLE CUSTOMERS (CUST_NUM FLOAT(4,0) PRIMARY KEY, COMPANY VARCHAR(20) NOT NULL, CUST_REP FLOAT(3,0), CREDIT_LIMIT FLOAT(10,2));
INSERT INTO CUSTOMERS VALUES (2111,'JCP Inc.',103,50000);
INSERT INTO CUSTOMERS VALUES (2102,'First Corp.',101,65000);
INSERT INTO CUSTOMERS VALUES (2103,'Acme Mfg.',105,50000);
INSERT INTO CUSTOMERS VALUES (2123,'Carter and Sons',102,40000);
INSERT INTO CUSTOMERS VALUES (2107,'Ace International',110,35000);
INSERT INTO CUSTOMERS VALUES (2115,'Smithson Corp.',101,20000);
INSERT INTO CUSTOMERS VALUES (2101,'Jones Mfg.',106,65000);
INSERT INTO CUSTOMERS VALUES (2112,'Zetacorp',108,50000);
INSERT INTO CUSTOMERS VALUES (2121,'QMA Assoc.',103,45000);
INSERT INTO CUSTOMERS VALUES (2114,'Orion Corp.',102,20000);
INSERT INTO CUSTOMERS VALUES (2124,'Peter Brothers',107,40000);
INSERT INTO CUSTOMERS VALUES (2108,'Holm and Landis',109,55000);
INSERT INTO CUSTOMERS VALUES (2117,'J.P. Sinclair',106,35000);
INSERT INTO CUSTOMERS VALUES (2122,'Three-Way Lines',105,30000);
INSERT INTO CUSTOMERS VALUES (2120,'Rico Enterprises',102,50000);
INSERT INTO CUSTOMERS VALUES (2106,'Fred Lewis Corp.',102,65000);
INSERT INTO CUSTOMERS VALUES (2119,'Solomon Inc.',109,25000);
INSERT INTO CUSTOMERS VALUES (2118,'Midwest Systems',108,60000);
INSERT INTO CUSTOMERS VALUES (2113,'Ian and Schmidt',104,20000);
INSERT INTO CUSTOMERS VALUES (2109,'Chen Associates',103,25000);
INSERT INTO CUSTOMERS VALUES (2105,'AAA Investments',101,45000);


