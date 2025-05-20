## Task 6: 
Sales Trend Analysis Using Aggregations (using SQLite)

## Objective: 
Analyze monthly revenue and order volume from an online sales dataset using SQL aggregations in SQLite.

## Dataset
Online Sales Data.csv

## Columns Used:
  - Date: Order date (used for time grouping)
  - Transaction ID: Order identifier
  - Total Revenue: Revenue for each transaction

## 🧪 Tools Used
SQLite (via https://sqliteonline.com/)

## 🧾 SQLite SQL Query Used
SELECT
    strftime('%Y', Date) AS year,
    strftime('%m', Date) AS month,
    SUM("Total Revenue") AS total_revenue,
    COUNT(DISTINCT "Transaction ID") AS order_volume
FROM
    online_sales
WHERE
    Date >= '2024-01-01' AND Date < '2024-07-01'
GROUP BY
    year,
    month
ORDER BY
    year,
    month;

## Note: SQLite uses strftime instead of Extract which is used in MySQL and PostgreSQL. strftime is SQLite specific since it doesn't supports Extract for query.

All the files and the output screenshot is attached in this repository as well!
