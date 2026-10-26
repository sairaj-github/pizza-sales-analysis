# Pizza Sales Analysis

## Project Overview

An end-to-end data analytics project exploring pizza sales performance, customer ordering patterns, and product revenue. The goal is to turn raw sales records into actionable business insights using SQL, Python, and Power BI.

## Business Objectives

- Analyze total revenue, orders, and pizzas sold.
- Identify the highest- and lowest-performing pizzas.
- Understand sales trends by day, month, and hour.
- Compare revenue across pizza categories and sizes.
- Validate data quality and consistency before reporting.

## Tools and Technologies

- PostgreSQL — data storage, SQL queries, and analysis
- Python (pandas) — data validation and independent metric verification
- Power BI — interactive dashboard and visual reporting
- Git and GitHub — version control and project documentation

## Dataset

The dataset contains four related tables:

- `orders` — order date and time
- `order_details` — pizzas and quantities associated with orders
- `pizzas` — pizza variants, sizes, and prices
- `pizza_types` — pizza names, categories, and ingredients

Dataset source: [Pizza Sales Analysis reference repository](https://github.com/tushar2704/Pizza-Sales-Analysis)

## Methodology

1. Loaded the source data into PostgreSQL.
2. Designed relational tables and verified relationships.
3. Checked missing values, duplicates, and referential integrity.
4. Wrote SQL queries to calculate KPIs and analyze sales trends.
5. Used Python to independently validate key metrics.
6. Built an interactive Power BI dashboard with KPI cards, trend charts, product rankings, and filters.

## Key Performance Indicators

- Total Revenue: $817,860.05
- Total Orders: 21,350
- Total Pizzas Sold: 49,574
- Average Order Value: $38.31

## Key Findings

1. Generated $817.86K in revenue from approximately 21K orders and 50K pizzas sold.
2. Achieved an average order value of $38.31.
3. Classic pizzas contributed the highest category revenue at $220.05K (26.91%).
4. Thai Chicken Pizza ranked highest in revenue among individual pizzas.
5. Revenue peaked in July and declined during September–October.
6. Order activity was strongest around lunchtime, particularly 12 PM–1 PM.

## Business Recommendations

Develop recommendations based on the actual results, such as reviewing underperforming products, planning inventory for peak demand, or evaluating opportunities to improve product mix.

## Dashboard

See the `screenshots/` folder for the Sales Overview and Product Performance pages.

The Power BI report is available in `powerbi/pizza_sales_dashboard.pbix`.

## Repository Structure

- `sql/` — table creation, data quality, KPI, and trend queries
- `python/` — validation and analysis notebook
- `powerbi/` — Power BI report
- `screenshots/` — dashboard previews
- `data/` — data folders, subject to dataset licensing and size constraints

## Conclusion

This project demonstrates relational data modeling, SQL-based analysis, data quality validation, independent calculation checks, and interactive business reporting.

*This project is for educational and portfolio purposes.*
