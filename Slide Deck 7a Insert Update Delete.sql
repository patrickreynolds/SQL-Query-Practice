/*
	Notes from slide deck 7a (INSERT, UPDATE, DELETE)
*/

/* 
	Inserting new information into a database
*/
INSERT INTO SALESREPS (Name, Age, Empl_Num, Sales, Title, Hire_Data, Rep_office)
VALUES ('Henry Jacobsen', 36, 119, 0.00, 'Sales Mgr', '25-JUL-90', 13);

/*
	Insert multi-row
*/

INSERT INTO OldOrders(Order_Num, Order_Date, Amount)
SELECT Order_Num, Order_Date, Amount
FROM ORDERS
WHERE Order_Date < '01-JAN-90';

/*
	Deleting Data from the Database
*/
DELETE FROM Salesreps
WHERE Name = 'Henry Jacobsen';

DELETE FROM ORDERS
WHERE CUST = 2126;

DELETE FROM CUSTOMERS
WHERE CUST_REP IN (101, 105, 109);

/*
	Updating statement is used to modify the values of one or
	more columns in selected rows of a single table.
*/

/*
	Raise the credit limit for Acme Manufacturing to 60000
	and reassign them to Mary Jones (employee number 109)
*/

UPDATE CUSTOMERS
SET CREDIT_LIMIT = 60000, CUST_REP = 109
WHERE CUSTOMERS.COMPANY = 'Acme Manufacturing';

/*
	Updates using where clause
*/

UPDATE CUSTOMERS
SET CUSTOMERS.CREDIT_LIMIT = CUSTOMERS.CREDIT_LIMIT + 5000
WHERE CUSTOMERS.CUST_NUM IN (SELECT DISTINCT CUST
							FROM ORDERS
							WHERE AMOUNT > 25000);

