select FirstName,LastName,Order_ID,TotalAmount,
row_number() over (partition by FirstName,LastName order by TotalAmount desc),
rank() over (partition by FirstName,LastName order by TotalAmount desc),
dense_rank() over (partition by FirstName,LastName order by TotalAmount desc)
from  (Customers FULL  JOIN  Orders on Customers.Customer_ID=Orders.Customer_ID) 
WHERE LastName in (SELECT LastName 
						   FROM Customers FULL  JOIN  Orders on Customers.Customer_ID=Orders.Customer_ID 
						   WHERE TotalAmount IS NOT NULL ORDER BY TotalAmount DESC LIMIt 5)
				   and FirstName in (SELECT FirstName 
						   FROM Customers FULL  JOIN  Orders on Customers.Customer_ID=Orders.Customer_ID 
						   WHERE TotalAmount IS NOT NULL ORDER BY TotalAmount DESC LIMIt 5);
						   