# SQL-Sales-Analysis-Project
## Project Overview
This project applies SQL to a retail superstore dataset to surface actionable business insights around revenue, product performance, regional trends, and discount impact. The goal is to demonstrate practical, business-first SQL skills that go beyond basic SELECT queries — including window functions, running totals, and profitability segmentation.

## 📊  Dataset
•	Source: Sample Superstore dataset (commonly used in BI training)
•	9,994 order records across 4 regions, 3 product categories, 17 sub-categories
•	Features: Order ID, Customer Name, Category, Sub-Category, Sales, Profit, Discount, Region, Quantity, Ship Mode

## 🎯  Business Questions Answered
1.	Which product categories generate the highest revenue and profit?
2.	Which regions contribute most to total sales, and which are underperforming?
3.	How do discounts affect profit margins — is there a discount threshold where profitability breaks down?
4.	Who are the top 10 customers by total revenue?
5.	What is the month-over-month sales trend (running total by month)?
6.	Which sub-categories have the worst profit-to-sales ratio?

## Objectives
- Analyze sales and profit trends
- Identify top-performing products and categories
- Understand regional performance
- Use advanced SQL techniques like window functions

## Tools Used
- SQL Server (SSMS)
- SQL (Joins, Aggregations, Window Functions)

## Key Insights
•	Technology is the top revenue category — generates ~36% of total sales
•	West region leads all 4 regions in total sales; Central region has the lowest profit margin
•	Discounts above 20% consistently produce negative profit — Tables sub-category loses money on average
•	Top 10 customers account for ~12% of total revenue — high concentration risk
•	Q4 (Oct–Dec) produces the highest sales volume, driven by seasonal demand spikes
•	Furniture has the largest gap between revenue and profit — high cost, thin margin


## SQL Techniques Used
•	GROUP BY + Aggregations (SUM, AVG, COUNT) — revenue and profit by category, region, customer
•	RANK() + PARTITION BY — top products ranked within each category
•	LAG() — month-over-month sales comparison
•	Running Total — cumulative revenue over time using SUM() OVER (ORDER BY month)
•	CASE statements — discount tier segmentation (Low / Medium / High / Damaging)
•	Subqueries — identifying premium customers above average spend threshold
•	CTEs (Common Table Expressions) — clean, readable multi-step analysis

## 🗂️  Repository Contents
•	Sales Analysis.sql — 20 queries covering all business questions above
•	Sample - Superstore.csv — raw dataset ready to import into SQL Server

## 🚀  How to Use
7.	Import Sample - Superstore.csv into SQL Server Management Studio (SSMS) as a new table
8.	Open Sales Analysis.sql and run queries section by section
9.	Each query is labelled with the business question it answers
10.	Results are immediately usable for dashboard creation in Power BI or Tableau

## 💡  Business Recommendations
•	Cap discounts at 20% — beyond this threshold, orders generate net losses
•	Prioritise Technology and Office Supplies for marketing investment — highest margin categories
•	Review Furniture pricing strategy — high revenue but thin or negative margins on several sub-categories
•	Investigate Central region performance — lower profitability despite moderate sales volume suggests cost or pricing issues
•	Introduce customer loyalty tiers — top 10 customers represent outsized revenue concentration


## Conclusion
SQL analysis helps uncover critical business patterns and supports data-driven decision-making.

## 👤  Author
Vaibhav Sonawane — Data Analyst | SQL · Python · Power BI
📧 vaibhavrsonawane9099@gmail.com
🔗 linkedin.com/in/vaibhavsonawane-304b62236
💻 github.com/Vaibhavrsonawane2000

