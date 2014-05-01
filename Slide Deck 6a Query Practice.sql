/*	Summary Queries
	SUM()
	AVG()
	MIN()
	MAX()
	COUNT()
	COUNT(*)
*/

/* 	Order of clauses in a query
	SELECT
	FROM
	WHERE
	GROUP BY
	HAVING
	ORDER BY
*/

SELECT SUM(SALES) "Total Sales"
FROM SALESREPS;

SELECT AVG(AGE) AS "Average Salesrep Age"
FROM SALESREPS;

SELECT SUM(SALES) "Total Old-timer Sales"
FROM SALESREPS
WHERE AGE > (SELECT AVG(AGE)
			 FROM SALESREPS);

SELECT NAME, (SALES - QUOTA) AS "Over Quota"
FROM SALESREPS
WHERE SALES = (SELECT MAX(SALES) 
			   FROM SALESREPS);

SELECT NAME, (QUOTA - SALES) AS "Under Quota"
FROM SALESREPS
WHERE SALES < QUOTA;

SELECT COUNT(*) AS "Number of Salesreps"
FROM SALESREPS;

SELECT COUNT(ORDER_NUM) AS "Number of Orders"
FROM ORDERS;

SELECT COUNT(DISTINCT TITLE)
FROM SALESREPS;


/* Group By */
SELECT rep.NAME, AVG(o.AMOUNT) AS "Average Order"
FROM ORDERS o JOIN SALESREPS rep
ON o.REP = rep.EMPL_NUM
GROUP BY rep.NAME;

SELECT office.CITY, COUNT(rep.name)
FROM OFFICES office, SALESREPS rep
WHERE rep.REP_OFFICE = office.office
GROUP BY office.CITY;

SELECT o.REP, o.CUST, SUM(o.AMOUNT) AS "Total Amount"
FROM ORDERS o
GROUP BY o.REP, o.CUST;

/* HAVING clause allows conditions to be applied to groups of queries */
SELECT o.REP, AVG(o.AMOUNT)
FROM ORDERS o
GROUP BY o.REP
HAVING SUM(o.AMOUNT) > 30000.00;

/* What is the total amount of all products 
sold by all manufactures except ACI and IMM. 
Only list if the total sold is > 4000 */
SELECT o.MFR, SUM(o.AMOUNT) AS "Total"
FROM ORDERS o
WHERE o.MFR NOT IN ('ACI', 'IMM')
GROUP BY o.MFR
HAVING SUM(o.AMOUNT) > 4000;

/* For each office, with 2 or more people, 
compute the total quota and total sales for all salespeople
who work in the office. */
SELECT 	o.CITY, 
		SUM(rep.QUOTA) AS "Sum of Quota",
		SUM(rep.SALES) AS "SUm Of Sales"
FROM OFFICES o, SALESREPS rep
WHERE o.OFFICE = rep.REP_OFFICE
GROUP BY o.CITY
HAVING COUNT(*) >= 2;

