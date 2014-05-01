/* 
	Subqueries 
	Subqueries appear within the WHERE or HAVING
	clause of another SQL query.

	Rules Pertaining to subqueries
	- Subquery must produce a single column of data as its query
		results. This means that a subquery always has a single
		item in its SELECT clause.
	- The ORDER BY clause cannot be specified in a subquery.
	- The subquery reults are used internally by the main query and
		are never visible to the user, so it makes a little sense
		to sort it anyway.
*/

SELECT o.CITY
FROM OFFICES o
WHERE o.TARGET >
	(	SELECT SUM(rep.QUOTA)
		FROM SALESREPS rep
		WHERE rep.REP_OFFICE = o.OFFICE);

/* 
	List the salespeople whose Sales are equal to or higher
	than the target of the Atlanta sales office. 
*/
SELECT rep.NAME
FROM SALESREPS rep
WHERE rep.SALES >= 
			(   SELECT o.TARGET
				FROM OFFICES o
				WHERE o.CITY = 'Atlanta');

/* 
	List the company name of the customers served by Bill Adams
*/
SELECT customer.COMPANY
FROM CUSTOMERS customer
WHERE customer.CUST_REP = 
	( SELECT rep.EMPL_NUM
		FROM SALESREPS rep
		WHERE rep.NAME = 'Bill Adams');

/*
	Select the description and quantity on hand of all products
	from manufacturer ACI where the quantity on hand is above
	the quantity on hand of product ACI - 41004
*/

SELECT product.DESCRIPTION, product.QTY_ON_HAND
FROM PRODUCTS product
WHERE product.MFR_ID = 'ACI'
AND product.QTY_ON_HAND > (
				SELECT prod.QTY_ON_HAND
				FROM PRODUCTS prod
				WHERE prod.PRODUCT_ID = '41004'
				AND prod.MFR_ID = 'ACI');

/*
	Non-correlated Subqueries
	Correlated Subqueries
*/

/* 
	IN Keyword is used to test if a value is in the
	set of values returned by a subquery.
*/

SELECT rep.NAME
FROM SALESREPS rep
WHERE rep.REP_OFFICE IN 
				( SELECT office.OFFICE
					FROM OFFICES office
					WHERE office.SALES > office.TARGET);

/*
	List the salespeople who do not work in office managed by 
	Larry Fitch (employee number 108)
*/

SELECT rep.NAME
FROM SALESREPS rep
WHERE rep.REP_OFFICE NOT IN 
				( SELECT office.OFFICE
					FROM OFFICES office
					WHERE office.MGR = 108 );

/*
	List the office where there is a salesperson whose quota
	represents more than 55 percent of the office target.
*/

SELECT office.CITY
FROM OFFICES office
WHERE EXISTS (
				SELECT *
				FROM SALESREPS rep
				WHERE rep.REP_OFFICE = office.OFFICE
				AND rep.QUOTA > (.55 * office.TARGET));













