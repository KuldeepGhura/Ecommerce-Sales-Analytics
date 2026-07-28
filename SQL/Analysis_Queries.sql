
-- 1. Total Revenue

SELECT
    SUM((p.Selling_Price * od.Quantity) - od.Discount) AS Total_Revenue
FROM OrderDetails od
JOIN Products p
    ON od.Product_ID = p.Product_ID;


-- 2. Total Orders by Status

SELECT
    Order_Status,
    COUNT(*) AS Total_Orders
FROM Orders
GROUP BY Order_Status
ORDER BY Total_Orders DESC;


-- 3. Revenue by Product Category

SELECT
    c.Category_Name,
    SUM((p.Selling_Price * od.Quantity) - od.Discount) AS Revenue
FROM OrderDetails od
JOIN Products p
    ON od.Product_ID = p.Product_ID
JOIN Categories c
    ON p.Category_ID = c.Category_ID
GROUP BY c.Category_Name
ORDER BY Revenue DESC;


-- 4. Top 10 Selling Products

SELECT TOP 10
    p.Product_Name,
    SUM(od.Quantity) AS Total_Quantity_Sold
FROM OrderDetails od
JOIN Products p
    ON od.Product_ID = p.Product_ID
GROUP BY p.Product_Name
ORDER BY Total_Quantity_Sold DESC;


-- 5. Revenue by Brand

SELECT
    p.Brand,
    SUM((p.Selling_Price * od.Quantity) - od.Discount) AS Revenue
FROM OrderDetails od
JOIN Products p
    ON od.Product_ID = p.Product_ID
GROUP BY p.Brand
ORDER BY Revenue DESC;


-- 6. Monthly Revenue Trend

SELECT
    YEAR(o.Order_Date) AS Sales_Year,
    MONTH(o.Order_Date) AS Sales_Month,
    SUM((p.Selling_Price * od.Quantity) - od.Discount) AS Monthly_Revenue
FROM Orders o
JOIN OrderDetails od
    ON o.Order_ID = od.Order_ID
JOIN Products p
    ON od.Product_ID = p.Product_ID
GROUP BY
    YEAR(o.Order_Date),
    MONTH(o.Order_Date)
ORDER BY
    Sales_Year,
    Sales_Month;


-- 7. Top 5 Customers by Spending

SELECT TOP 5
    c.First_Name + ' ' + c.Last_Name AS Customer_Name,
    SUM((p.Selling_Price * od.Quantity) - od.Discount) AS Total_Spent
FROM Customers c
JOIN Orders o
    ON c.Customer_ID = o.Customer_ID
JOIN OrderDetails od
    ON o.Order_ID = od.Order_ID
JOIN Products p
    ON od.Product_ID = p.Product_ID
GROUP BY
    c.First_Name,
    c.Last_Name
ORDER BY Total_Spent DESC;


-- 8. Return Count by Reason

SELECT
    Return_Reason,
    COUNT(*) AS Total_Returns
FROM Returns
GROUP BY Return_Reason
ORDER BY Total_Returns DESC;


-- 9. Average Order Value

SELECT
    AVG(Order_Value) AS Average_Order_Value
FROM
(
    SELECT
        o.Order_ID,
        SUM((p.Selling_Price * od.Quantity) - od.Discount) AS Order_Value
    FROM Orders o
    JOIN OrderDetails od
        ON o.Order_ID = od.Order_ID
    JOIN Products p
        ON od.Product_ID = p.Product_ID
    GROUP BY o.Order_ID
) AS OrderSummary;


-- 10. Products with Low Stock

SELECT
    Product_Name,
    Brand,
    Stock
FROM Products
WHERE Stock < 20
ORDER BY Stock;


-- 11. Top Performing Category (CTE)

WITH CategoryRevenue AS
(
    SELECT
        c.Category_Name,
        SUM((p.Selling_Price * od.Quantity) - od.Discount) AS Revenue
    FROM OrderDetails od
    JOIN Products p
        ON od.Product_ID = p.Product_ID
    JOIN Categories c
        ON p.Category_ID = c.Category_ID
    GROUP BY c.Category_Name
)
SELECT *
FROM CategoryRevenue
ORDER BY Revenue DESC;