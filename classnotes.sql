SELECT name
FROM salesreps
WHERE Salesreps.sales >= (SELECT Target FROM Offices WHERE cIty = 'atlanta'); 
20^20 + 10^10 O(n^2)


SELECT name
FROM Salesrep.Offices 
WHERE rep.offic=office AND city=Atlanta; 
20^20 + 10^10 O(n)