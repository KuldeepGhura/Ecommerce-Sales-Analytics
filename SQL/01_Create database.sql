CREATE DATABASE EcommerceDB;
GO

USE EcommerceDB;
GO

CREATE TABLE Customers(
    Customer_ID INT IDENTITY(1,1) PRIMARY KEY,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15),
    City VARCHAR(50),
    State VARCHAR(50),
    Join_Date DATE
);

CREATE TABLE Categories(
    Category_ID INT IDENTITY(1,1) PRIMARY KEY,
    Category_Name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE Products(
    Product_ID INT IDENTITY(1,1) PRIMARY KEY,
    Product_Name VARCHAR(100) NOT NULL,
    Category_ID INT NOT NULL REFERENCES Categories(Category_ID),
    Brand VARCHAR(50),
    Selling_Price DECIMAL(10,2) NOT NULL,
    Cost_Price DECIMAL(10,2) NOT NULL,
    Stock INT DEFAULT 0
);

CREATE TABLE Orders(
    Order_ID INT IDENTITY(1,1) PRIMARY KEY,
    Customer_ID INT NOT NULL REFERENCES Customers(Customer_ID),
    Order_Date DATE NOT NULL,
    Payment_Method VARCHAR(20) NOT NULL,
    Order_Status VARCHAR(20) NOT NULL
);

CREATE TABLE OrderDetails(
    OrderDetail_ID INT IDENTITY(1,1) PRIMARY KEY,
    Order_ID INT NOT NULL REFERENCES Orders(Order_ID),
    Product_ID INT NOT NULL REFERENCES Products(Product_ID),
    Quantity INT NOT NULL,
    Discount DECIMAL(5,2) DEFAULT 0
);

CREATE TABLE Returns(
    Return_ID INT IDENTITY(1,1) PRIMARY KEY,
    Order_ID INT NOT NULL REFERENCES Orders(Order_ID),
    Return_Date DATE NOT NULL,
    Return_Reason VARCHAR(100),
    Refund_Status VARCHAR(20) DEFAULT 'Pending'
);

-- Verify Tables

SELECT COUNT(*) AS Customers FROM Customers;
SELECT COUNT(*) AS Categories FROM Categories;
SELECT COUNT(*) AS Products FROM Products;
SELECT COUNT(*) AS Orders FROM Orders;
SELECT COUNT(*) AS OrderDetails FROM OrderDetails;
SELECT COUNT(*) AS Returns FROM Returns;
