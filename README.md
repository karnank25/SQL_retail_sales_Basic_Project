# SQL Retail Sales Analysis

## 📌 Project Overview
This project focuses on analyzing **retail sales data** using SQL. It includes queries to extract insights related to sales trends, customer behavior, product performance, and profitability.
##[Project_Folder](sql_project.sql)

## 📂 Database Schema
### **Table: retail_sales**
| Column Name       | Data Type      | Description                                  |
|------------------|--------------|----------------------------------------------|
| transactions_id  | INT (Primary Key) | Unique transaction identifier              |
| sale_date       | DATE          | Date of the sale                            |
| sale_time       | TIME          | Time of the sale                            |
| customer_id     | INT           | Unique customer identifier                  |
| gender         | VARCHAR(20)   | Gender of the customer                      |
| age            | INT           | Age of the customer                         |
| category       | VARCHAR(15)   | Product category                            |
| quantity       | INT           | Quantity of items purchased                 |
| price_per_unit | FLOAT         | Price per unit of the product               |
| cogs           | FLOAT         | Cost of Goods Sold (COGS)                   |
| total_sale     | FLOAT         | Total revenue from the sale                 |

## 🚀 SQL Queries and Insights

### **1️⃣ Sales Per Month**
📊 *Finds the total number of sales for each month.*

### **2️⃣ Best-Selling Category**
🛍️ *Identifies which product category generated the highest total sales.*

### **3️⃣ Top 10 Customers**
🏆 *Determines the top 10 customers based on the total number of transactions.*

### **4️⃣ Peak Sales Time (Morning/Afternoon/Evening)**
⏳ *Finds the time of day when sales are highest.*

### **5️⃣ Customer Age Group Analysis**
👥 *Analyzes sales distribution based on customer age groups.*

### **6️⃣ Most Profitable Category**
💰 *Calculates total profit per category (Total Sales - COGS) to identify the most profitable product category.*

## 🔧 Data Cleaning Steps
- Checked for **NULL values** across all columns.
- Deleted rows containing NULL values to ensure data integrity.

## 📌 How to Use
1. **Create the database** and **import the dataset**.
2. **Execute SQL queries** to analyze the data.
3. **Gain insights** into customer behavior, sales trends, and profitability.

## 📜 License
This project is open-source and free to use.

---

🔗 **Connect with Me:** If you have any suggestions or need help, feel free to reach out! 😊

