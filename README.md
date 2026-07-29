# 📊 E-Commerce Sales Analytics Dashboard

## 📌 Project Overview

This project is an end-to-end E-Commerce Sales Analytics solution built using **Python, SQL Server, and Power BI**. Instead of relying on a publicly available dataset, a realistic relational dataset was synthetically generated using **Python** and the **Faker** library.

The generated data was imported into SQL Server, analyzed using SQL queries, and visualized through an interactive Power BI dashboard to uncover valuable business insights related to sales performance, customer behavior, and product returns.

---

# 🔄 Data Generation Workflow

```
Python (Faker)
        ↓
Generate SQL INSERT Scripts
        ↓
SQL Server Database
        ↓
Power BI Dashboard
```

Custom Python scripts were developed to generate realistic data for:

- Customers
- Categories
- Products
- Orders
- Order Details
- Returns

---

## 🛠 Tech Stack

- Python
- Faker
- SQL Server
- Microsoft Power BI
- Power Query
- DAX
- Microsoft Excel

---

## 📂 Database Design

The project uses a normalized SQL Server database consisting of six related tables:

- Customers
- Categories
- Products
- Orders
- OrderDetails
- Returns

---

## 📈 Dashboard Features

### 📊 Sales Performance

- Total Revenue
- Total Orders
- Total Customers
- Average Order Value
- Revenue by Category
- Monthly Revenue Trend
- Top Selling Products
- Revenue by Brand
- Payment Method Analysis

### 👥 Customer & Returns Analysis

- Top Customers by Spending
- Return Rate
- Return Reasons
- Order Status Analysis
- Customer Purchase Insights

---

## 💡 Skills Demonstrated

- Python Scripting
- Synthetic Data Generation (Faker)
- SQL Database Design
- SQL Analysis Queries
- Data Cleaning
- Data Modeling
- Power Query
- DAX
- Interactive Dashboard Development
- Business Intelligence
- Data Visualization

---

## 📸 Dashboard Preview

### Sales Dashboard

![Sales Dashboard](Images/Sales_Analysis.png)

### Customer & Returns Dashboard

![Customer Dashboard](Images/customer_returns_dashboard.png)

---

## 📁 Repository Structure

```
PowerBI-Ecommerce-Sales-Analytics
│
├── Dashboard
│   └── Ecommerce_Sales_Analytics.pbix
│
├── Dataset
│   ├── Customers.xlsx
│   ├── Categories.xlsx
│   ├── Products.xlsx
│   ├── Orders.xlsx
│   ├── OrderDetails.xlsx
│   └── Returns.xlsx
│
├── Python
│   ├── 01_Generate_Customers_Categories.py
│   ├── 02_Generate_Products.py
│   └── 03_Generate_Orders_OrderDetails_Returns.py
│
├── SQL
│   ├── 01_Create_Database.sql
│   ├── 02_Insert_Data.sql
│   └── 03_Analysis_Queries.sql
│
├── Images
│   ├── Sales_Analysis.png
│   └── customer_returns_dashboard.png
│
└── README.md
```

---

## 📌 Business Insights

- Sports category generated the highest revenue.
- Apple emerged as the top-performing brand.
- Average order value reached **₹12.59K**.
- Return rate remained low at **7.5%**.
- Credit Card was the most preferred payment method.
- Highest customer spending exceeded **₹157.59K**.

---

## 🚀 Project Workflow

1. Generated a realistic relational dataset using Python and Faker.
2. Imported the generated data into SQL Server.
3. Performed SQL-based data analysis and validation.
4. Connected SQL Server with Power BI.
5. Built interactive dashboards using Power Query and DAX.
6. Derived business insights through data visualization.

---

## 👨‍💻 Author

**Kuldeep Ghura**

Electronics & Telecommunication Engineering  
Aspiring Data Analyst
