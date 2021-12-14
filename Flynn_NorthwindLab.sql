
-- 1 
Select * from customers;

-- 2
Select distinct country from customers; 

-- 3 
Select * from customers Where customerId like 'bl%';  

-- 4
Select * from customers limit 100;

-- 5
select * from customers 
where PostalCode = 1010 OR 
PostalCode = 3012 OR 
PostalCode = 12209 OR 
PostalCode = 05023;

-- 6
select * from orders
where shipregion is not null;

-- 7
select * from customers
order by country asc, city asc;

-- 8
Insert into Customers
Values("CAT1","S.Capone Co", "Stone Capone", "CEO", "Sunset Ave", "Purrr", "CA", "0707", "Japan", "(26) 555-5555", "(26) 555-5551");

-- 9
Update orders
Set shipregion = ‘Eurozone’
Where ShipCountry = ‘France’;

-- 10 
Delete from ‘order details’
Where quantity = 1;

Select MIN(Quantity), MAX(Quantity), AVG(Quantity)
From ‘order details’;

Select orderid, MIN(Quantity), MAX(Quantity), AVG(Quantity)
From ‘order details’
Group by OrderID;

Select CustomerID
From orders
Where OrderID=10290;

SELECT Orders.OrderID, Customers.ContactName
from Orders
INNER JOIN ‘Customers
ON Orders.CustomerID = Customers.CustomerID;

Select firstname from employees
Where ReportsTo = null;

Select firstname from employees
Where ReportsTo = ‘Andrew’;
