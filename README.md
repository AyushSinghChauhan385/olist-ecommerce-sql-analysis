# 🛒 Olist E-Commerce SQL Analysis

A PostgreSQL-based SQL data analysis project using the Brazilian Olist E-Commerce dataset. This project demonstrates SQL skills by importing, managing, and analyzing real-world e-commerce data.

---

## 📌 Project Overview

The goal of this project is to perform business-oriented analysis on an e-commerce dataset using PostgreSQL. It covers everything from database creation to writing analytical SQL queries.

---

## 🚀 Technologies Used

- PostgreSQL 18
- pgAdmin 4
- Git
- GitHub

---

## 📂 Dataset

The project consists of the following datasets:

- customers.csv
- orders.csv
- order_items.csv
- products.csv
- payments.csv

---

## 🗄 Database Schema

The database contains five tables:

| Table | Description |
|--------|-------------|
| customers | Customer information |
| orders | Order details |
| order_items | Products included in each order |
| products | Product information |
| payments | Payment details |

---

## 📊 SQL Concepts Covered

- SELECT
- WHERE
- ORDER BY
- LIMIT
- Aggregate Functions
  - COUNT()
  - SUM()
  - AVG()
  - MAX()
  - MIN()
- GROUP BY
- HAVING
- INNER JOIN
- Date Functions
- Filtering
- Sorting
- Business Analysis Queries

---

## 📈 Business Analysis Performed

- Display customer records
- Display order records
- Display product records
- Find delivered orders
- Find customers by state
- Sort products by category
- Top 10 expensive order items
- Top 10 highest spending customers
- Top 10 cities by number of orders
- Revenue by state
- Monthly order report
- Monthly revenue report
- Average spending per customer
- Average product price by category
- Product category analysis
- Customer purchase analysis

**Total SQL Queries:** 30+

---

## 📁 Project Structure

```
olist-ecommerce-sql-analysis/
│
├── datasets/
│   ├── customers.csv
│   ├── orders.csv
│   ├── order_items.csv
│   ├── products.csv
│   └── payments.csv
│
├── sql/
│   ├── create_tables.sql
│   ├── import_data.sql
│   └── project_queries.sql
│
├── screenshots/
│
└── README.md
```

---

## ▶️ How to Run

1. Create a PostgreSQL database.
2. Execute `create_tables.sql`.
3. Import all CSV files in the following order:
   - customers
   - products
   - orders
   - order_items
   - payments
4. Execute the queries from `project_queries.sql`.

---

## 📸 Screenshots

Add screenshots of:

- Database tables
- Query execution
- Query results

inside the `screenshots` folder.

---

## 🎯 Learning Outcomes

Through this project, I practiced:

- Database Design
- SQL Query Writing
- Data Import using CSV
- Table Relationships
- Primary & Foreign Keys
- Aggregate Functions
- SQL Joins
- Business Data Analysis
- PostgreSQL

---

## 👨‍💻 Author

**Ayush Singh Chauhan**

GitHub: https://github.com/AyushSinghChauhan385

---

## ⭐ If you found this project useful, don't forget to Star the repository!
