SELECT  FirstName,LastName, TotalAmount FROM Customers FULL  JOIN  Orders on Customers.Customer_ID=Orders.Customer_ID WHERE TotalAmount IS NOT NULL ORDER BY TotalAmount DESC LIMIt 10


