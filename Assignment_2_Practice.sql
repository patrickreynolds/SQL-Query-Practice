/*
	Question 1
*/
SELECT office, city, region, mgr, target, sales
FROM OFFICES;

/*
	Question 2
*/
SELECT DESCRIPTION, price*qty_on_hand AS Value
FROM PRODUCTS
ORDER BY Value desc;

/*
	Question 3
*/
SELECT ORDER_NUM, ORDER_DATE, CUST, REP
FROM ORDERS
WHERE PRODUCT = 'XK47'
OR 	  PRODUCT = '773C';

/*
	Question 4
*/
SELECT rep.name, rep.age
FROM SALESREPS rep
WHERE rep.rep_office IN (12, 21, 13);

/*
	Question 5
*/
SELECT rep.name
FROM SALESREPS rep
WHERE rep.name LIKE '_o%';

/*
	Question 6
*/
SELECT rep.empl_num, rep.NAME
FROM SALESREPS rep
WHERE rep.rep_office IS NULL; 

/*
	Question 7
*/
SELECT rep.name
FROM SALESREPS rep
WHERE rep.name LIKE '%Smith';

/*
	Question 8
*/
SELECT DISTINCT rep.title
FROM SALESREPS rep;

/*
	Question 9
*/
SELECT DISTINCT product.description
FROM PRODUCTS product
WHERE length(product.description) BETWEEN 6 AND 9;

/*
	Question 10
*/
SELECT o.ORDER_NUM, order_rep.name, customer.COMPANY, customer_rep.name
FROM ORDERS o, SALESREPS order_rep, CUSTOMERS customer, SALESREPS customer_rep
WHERE o.rep = order_rep.empl_num
AND o.cust = customer.cust_num
AND customer.cust_rep = customer_rep.empl_num;



/*
	Question 1
*/
SELECT o.MFR, o.PRODUCT, customer.company, product.PRICE
FROM Orders o, CUSTOMERS customer, PRODUCTS product
WHERE o.CUST = customer.CUST_NUM
AND o.PRODUCT = product.PRODUCT_ID
AND customer.CUST_NUM IN (2111, 2112, 2105, 2119);

/*
	Question 2
*/
SELECT salesrep.EMPL_NUM, salesrep.NAME, o.ORDER_NUM
FROM SALESREPS salesrep, ORDERS o, CUSTOMERS customer
WHERE o.CUST = customer.CUST_NUM
AND customer.REP != o.REP
AND o.REP = salesrep.empl_num
ORDER BY salesrep.NAME ASC;


/*
	Question 3
*/
SELECT customer.COMPANY, customer.CUST_REP, customer.CREDIT_LIMIT, o.ORDER_NUM, o.AMOUNT
FROM CUSTOMERS customer INNER JOIN ORDERS o
ON o.CUST = customer.CUST_NUM
WHERE o.AMOUNT <= customer.CREDIT_LIMIT + 100000
AND o.AMOUNT >= customer.CREDIT_LIMIT - 10000;

/*
	Question 4
*/
SELECT rep.NAME, rep.AGE, manager.NAME, manager.AGE
FROM SALESREPS rep INNER JOIN SALESREPS manager
ON rep.MANAGER = manager.EMPL_NUM
WHERE rep.AGE >= manager.AGE;

/*
	Question 5
*/
SELECT rep.NAME, office.CITY
FROM SALESREPS rep INNER JOIN OFFICES office
ON rep.REP_OFFICE = office.office
WHERE rep.SALES < rep.QUOTA
AND office.SALES < office.TARGET;


/*
	Question 6
*/
SELECT rep.NAME, rep.EMPL_NUM, rep.HIRE_DATE
FROM SALESREPS rep INNER JOIN ORDERS o
ON rep.empl_num = o.rep
WHERE rep.SALES > rep.QUOTA
OR o.CUST IN (2117, 2111, 2101);

/*
	Question 7
*/

/*
	Question 8
*/


/*
	Question 9
*/


/*
	Question 10
*/





SELECT manager.name
FROM SALESREPS rep INNER JOIN CUSTOMERS customer
ON rep.empl_num = customer.cust_rep, SALESREPS manager
WHERE rep.manager = manager.empl_num
ORDER BY customer.CUST_NUM;

SELECT *
FROM CUSTOMERS;

SELECT *
FROM SALESREPS;

SELECT rep.name AS 'Salesrep Name'
FROM SALESREPS rep;

SELECT rep.name, office.city, customer.COMPANY
FROM SALESREPS AS rep 
INNER JOIN OFFICES AS office
	ON rep.REP_OFFICE = office.office
INNER JOIN CUSTOMERS AS customer
	ON customer.CUST_REP = rep.empl_num;

CREATE TABLE SALESREP_LOCATION_REFERENCE (
	employee_num float(3, 0) NOT NULL,
	employee_name varchar(100) NOT NULL,
	office_city varchar(20) NOT NULL,
		CONSTRAINT SALESREP_LOCATION_REFERENCE_PK PRIMARY KEY (employee_num, employee_name),
		CONSTRAINT SALESREP_LOCATION_REFERENCE_FK FOREIGN KEY (employee_num) REFERENCES SALESREPS(EMPL_NUM)
);

INSERT INTO SALESREP_LOCATION_REFERENCE(employee_num, employee_name, office_city) VALUES (103, 'Paul Cruz', 'Chicago');

INSERT INTO SALESREP_LOCATION_REFERENCE
SELECT SALESREPS.EMPL_NUM, SALESREPS,NAME, OFFICES.CITY
FROM SALESREPS AS rep INNER JOIN OFFICES AS office
WHERE rep.REP_OFFICE = office.office;

SELECT *
FROM SALESREPS;

SELECT *
FROM OFFICES;


SELECT *
FROM SALESREP_LOCATION_REFERENCE;

INSERT INTO SALESREP_LOCATION_REFERENCE(employee_num, employee_name, office_city) VALUES (104, 'Patrick Reynolds', 'San Francisco');

SELECT *
FROM SALESREP_LOCATION_REFERENCE;

UPDATE SALESREP_LOCATION_REFERENCE
SET office_city = 'Los Angeles'
WHERE employee_num = 101;

SELECT *
FROM SALESREP_LOCATION_REFERENCE;

UPDATE SALESREP_LOCATION_REFERENCE
SET office_city = 'Chicago'
WHERE employee_num = 101;

SELECT *
FROM SALESREP_LOCATION_REFERENCE;

DELETE FROM SALESREP_LOCATION_REFERENCE
WHERE employee_num = 104;

SELECT *
FROM SALESREP_LOCATION_REFERENCE;


/*
SELECT rep.manager 
FROM CUSTOMERS INNER JOIN SALESREPS rep
ON CUSTOMERS.CUST_REP = rep.empl_num;

SELECT *
FROM SALESREPS;
*/

/*
SELECT *
FROM CUSTOMERS;

SELECT *
FROM OFFICES;

SELECT *
FROM ORDERS;

SELECT *
FROM PRODUCTS;

SELECT *
FROM SALESREPS;
*/

SELECT rep.name, office.city
FROM SALESREPS rep, OFFICES office
WHERE rep.REP_OFFICE = office.office
ORDER BY office.office ASC;

SELECT rep.NAME, office.CITY
FROM SALESREPS rep RIGHT JOIN OFFICES office
ON rep.REP_OFFICE = office.office
ORDER BY office.office ASC;
