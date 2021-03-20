==============Queries=======================
1- from orderdetails table. write a query to get all order numbers (without repitition) that contains any product starting with code S18 and price more than 100.


SELECT DISTINCT orderNumber ,productCode,priceEach FROM `orderdetails`
where productCode LIKE "S18%" AND priceEach >100
----------------------------------------------------------

2- from payments table. write a query to get all payments that made in 5 / 6 (whatever month or year).


SELECT paymentDate FROM payments
WHERE day(paymentDate)=5 OR day(paymentDate)=6



----------------------------------------------------------


3- from customers table. write a query to get the fifth highest credit limit of the customers who (lives in USA and their phone number contains 5555).

SELECT *  FROM `customers`
WHERE country= "usa" and phone LIKE '%5555%'
ORDER by creditLimit DESC
LIMIT 5
-------------------------------------------------------------