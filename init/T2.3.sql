create table if not exists  Customers (
	Customer_ID int PRIMARY KEY,
	FirstName VARCHAR ( 255 ) NOT NULL,
	LastName VARCHAR ( 255 ) NOT NULL,
	Email VARCHAR ( 255 ) NOT NULL 
);
create table if not exists  Orders(
	Order_ID int PRIMARY KEY,
	Customer_ID  int,
	OrderDate date,
	TotalAmount decimal,
	FOREIGN KEY(Customer_ID) REFERENCES Customers (Customer_ID) ON DELETE CASCADE
);
create table if not exists  OrderDetails(
	OrderDetail_ID int PRIMARY KEY,
	Order_ID int,
	Product_ID int,
	Quantity int,
	UnitPrice decimal,
	FOREIGN KEY(Order_ID) REFERENCES Orders(Order_ID) ON DELETE CASCADE
);
COPY Customers(Customer_ID,FirstName,LastName, Email)
FROM '/docker-entrypoint-initdb.d/data/customers.csv'
DELIMITER ','
CSV HEADER;

COPY  Orders(Order_ID,Customer_ID,OrderDate, TotalAmount)
FROM '/docker-entrypoint-initdb.d/data/orders.csv'
DELIMITER ','
CSV HEADER;

COPY OrderDetails(OrderDetail_ID, Order_ID,Product_ID,Quantity, UnitPrice)
FROM '/docker-entrypoint-initdb.d/data/orderdetails.csv'
DELIMITER ','
CSV HEADER;