# Retail Sales Analysis Dashboard

## Project Overview
The **Retail Sales Analysis Dashboard** is a data analytics project built using **Microsoft SQL Server** and **Power BI**. It explores retail transaction data to understand sales performance, product category revenue, monthly sales trends, and sales distribution by gender.

The interactive Power BI report includes KPI cards, charts, and slicers so users can explore the data by date, gender, and product category.

## Project Objectives
- Analyze overall retail sales and order performance.
- Compare revenue across product categories.
- Explore monthly sales trends.
- Compare sales by gender.
- Build an interactive dashboard to support data-driven decisions.
- Validate key totals using SQL queries.

## Tools and Technologies
- **Microsoft SQL Server** — data storage, SQL queries, and validation
- **Microsoft Power BI Desktop** — dashboard and visualizations
- **DAX** — measures for dashboard KPIs
- **CSV** — source dataset

## Dataset
The dataset contains **1,000 retail transactions** and the following fields:

| Column | Description |
|---|---|
| Transaction ID | Unique transaction identifier |
| Date | Transaction date |
| Customer ID | Customer identifier |
| Gender | Customer gender |
| Age | Customer age |
| Product Category | Category of the purchased product |
| Quantity | Number of units purchased |
| Price per Unit | Price for one unit |
| Total Amount | Total transaction amount |

## Dashboard Features
- **Total Sales** KPI
- **Total Orders** KPI
- **Quantity Sold** KPI
- Sales by Product Category
- Monthly Sales Trend
- Sales by Gender
- Interactive slicers for Date, Gender, and Product Category

## Key Findings
Based on the supplied dataset:

- **Total Sales:** 456,000
- **Total Orders:** 1,000
- **Quantity Sold:** 2,514
- **Electronics Sales:** 156,905
- **Clothing Sales:** 155,580
- **Beauty Sales:** 143,515

Electronics has the highest sales value among the three product categories in this dataset. January 2024 is the final month in the data, so comparisons involving that month should be interpreted carefully because it may represent a partial period.

## Dashboard Preview
Add your screenshot to the repository and use the matching path below.

If your image is stored in a `screenshots` folder:

![Retail Sales Analysis Dashboard](screenshots/Retail_Sales_Dashboard.png)

If the image is stored in the repository root, change the image path to `Retail_Sales_Dashboard.png`.

## Project Structure
```text
Retail-Sales-Analysis/
├── README.md
├── SQL_Queries.sql
├── Retail_Sales_Analysis.pbix
├── Retail_Sales.csv
└── screenshots/
    └── Retail_Sales_Dashboard.png
```

Only include files and folders that are actually present in your repository. The filenames above are suggested names; adjust them to match your files.

## SQL Validation
The following example queries can be used to validate the main totals. Update the table and column names if they differ in your SQL Server database.

```sql
-- Check the number of rows
SELECT COUNT(*) AS TotalRows
FROM dbo.RetailSales;

-- Validate dashboard totals
SELECT
    SUM(Total_Amount) AS TotalSales,
    COUNT(DISTINCT Transaction_ID) AS TotalOrders,
    SUM(Quantity) AS QuantitySold
FROM dbo.RetailSales;
```

Expected results for the supplied dataset:
- Total rows: 1,000
- Total sales: 456,000
- Total orders: 1,000
- Quantity sold: 2,514

## How to View the Project
1. Download or clone this repository.
2. Open `Retail_Sales_Analysis.pbix` using Power BI Desktop to explore the report.
3. Review `SQL_Queries.sql` to see the SQL queries used for analysis and validation.
4. View the dashboard screenshot in the `screenshots` folder.

## Business Value
This project demonstrates how SQL and Power BI can be used together to summarize transaction data, compare sales performance, and present findings through an interactive dashboard.

## Disclaimer
This is a learning and portfolio project. Findings describe the supplied dataset and should not be generalized to all retail businesses.

---
**Created as a Data Analytics portfolio project using SQL Server and Power BI.**
