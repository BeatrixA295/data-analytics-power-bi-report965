# Power BI Project README
## Table of Contents 
- [Overview](https://github.com/BeatrixA295/data-analytics-power-bi-report965/edit/main/README.md#overview)
- [Project Workflow](https://github.com/BeatrixA295/data-analytics-power-bi-report965/edit/main/README.md#project-workflow)
  - [Data Loading and Preparation](https://github.com/BeatrixA295/data-analytics-power-bi-report965/edit/main/README.md#data-loading-and-preparation)
  - [Report Breakdown](https://github.com/BeatrixA295/data-analytics-power-bi-report965/edit/main/README.md#report-breakdown)
## Overview
This Power BI project aims to provide insights and analytics for a medium-sized international retailer who want to elevate their business intelligence practices. It includes visualizations and dashboards to help stakeholders make informed decisions based on key metrics derived from sales data.

Clone the Repository:
```bash
git clone [https://github.com/BeatrixA295/data-analytics-power-bi-report965]
```
Open Power BI File:
Navigate to the project directory and open the Power BI (.pbix) file using Power BI Desktop.
Power BI Dashboard - 1.pbix

Data Source Access: I made sure to have the appropriate permissions to access the underlying data sources used in the dashboard.
## Project Workflow
### Data Loading and Preparation
#### Connections Used
- Azure SQL Database
- Microsoft Azure Blob Storage
- Multiple web-hosted CSV Files
#### Entity Relationship Diagram Model
Star Schema consisting of relationships between Orders[product_code] to Products[product_code] (one-to-many),Orders[Store Code] to Stores[store code] (one-to-many),
Orders[User ID] to Customers[User UUID] (one-to-many), Orders[Order Date] to Date[date] (one-to-many)
Orders[Shipping Date] to Date[date] (Active relationship).
![Alt text](<ERD.png>)

**Orders Table**

Orders Table is the main fact table which I pulled from the Azure SQL Database, it consists of order and shipping dates, the customer, store and product IDs that later were used to associate with dimension tables.
Data Cleaning:
  - Removing [Card Number] column for data protection
  - Splitting column into Date and Time columns respectively
  - Filtering and removing nulls to ensure data integrity

**Products Table**

Products table is a dimension table, it contains details of each product offered by the company, including the product code, name, category, cost price, sale price, and weight.
Data Cleaning:
  - Removing duplicates to ensure each product is unique
  - Cleaning and transforming weight columns 

**Stores Table**

Stores table is also a dimension table contains information about each store, including the store code, store type, country, region, and address, This was imported from Azure Blob storage

**Customers table** 

Customers table is a table storing customer information i.e. Full name, DOB, User ID.

**Date Table**

Created the Date table using the date columns from the Orders Table, then used DAX Formulas to add date columns.

For the Date[Date] column, it runs from the start of the year containing the earliest date in the Orders[Order Date] column to the end of the year containing the latest date in the Orders[Shipping Date] column.
`Date = CALENDAR(DATE(2010, 1, 1), DATE(2023, 6, 28))`
Used Time intelligence functions such as `WEEKDAY`,`QUARTER`,`STARTOFQUARTER` to create Date columns which later were used to form a Dat Hierarchy.



## Report Breakdown
1. Executive Summary
This section provides a high-level overview of the company's performance, including key metrics such as total revenue, profit, and order volume. Visualizations in this section offer insights into quarterly performance trends and year-to-date comparisons.
![Alt text](<Executive Summary.png>)


2. Customer Detail
The Customer Detail section offers in-depth analysis of customer behavior and demographics. Visualizations include customer segmentation, purchase patterns, and geographic distribution of customers.
![Alt text](<Customer Detail.png>)

3. Product Detail
In the Product Detail section, stakeholders can explore detailed insights into product performance, including top-selling products, revenue contribution by product category, and trends over time. Visualizations help identify product trends and inform inventory management decisions.
![Alt text](<Product Detail.png>)

4. Stores Map
The Stores Map section offers a geographical view of store locations and their performance metrics. Users can visualize store sales, profitability, and customer distribution on an interactive map.
![Alt text](<Stores map.png>)

## Getting Started
Open Dashboard: Open the provided Power BI (.pbix) file using Power BI Desktop.
Data Refresh: If necessary, configure data source connections and refresh data to ensure the dashboard reflects the latest information.
Navigate Sections: Use the navigation pane or bookmarks to explore different sections of the dashboard.
Interact with Visualizations: Click, hover, or filter visualizations to drill down into specific data points and gain deeper insights.

