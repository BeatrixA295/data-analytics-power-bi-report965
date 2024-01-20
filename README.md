# Power BI Project README
### Overview
This Power BI project aims to provide insights and analytics for a medium-sized international retailer who want to elevate their business intelligence practices. It includes visualizations and dashboards to help stakeholders make informed decisions based on key metrics derived from sales data.
## Table of Contents
``````
- [Project Title](#Power-BI-Project-README)
- [Table of Contents](#table-of-contents)
- [Overview](#Overview)
- [Installation instructions](#installation-instructions)
- [[Loading the Sales Data](https://github.com/Jkswm/data-analytics-power-bi-report965/blob/main/README.md#loading-the-sales-data)]
- [File structure of project](#File-structure-of-project)
- [License](#license)
``````
#### Installation Instructions
Power BI Desktop installed on your machine.
Appropriate permissions to access the underlying database.
Getting Started
Clone the Repository:

```bash
git clone https://github.com/your-username/your-power-bi-project.git
```
Open Power BI File:

Navigate to the project directory and open the Power BI (.pbix) file using Power BI Desktop.
Data Source Configuration:

The project uses data from a SQL database. Ensure that you have access to the database, and update the data source settings in Power BI accordingly.
Refresh Data:

After configuring the data source, refresh the data in Power BI to ensure that the latest information is loaded.

### Loading the Sales Data
#### Loading the Orders Table
The **Orders** table is the main fact table containing order information.

- **Connection Details:**
  - Server Name: `my-server-maya.database.windows.net`
  - Database Name: `orders_db`
  - Username: `maya`
  - Password: `AiCore127!`

1. Connect to Azure SQL Database using the provided credentials and import the `orders_powerbi` table using Power BI's Import option.

2. Navigate to Power Query Editor and delete the `[Card Number]` column for data privacy.

3. Use Split Column to separate `[Order Date]` and `[Shipping Date]` columns into date and time components.

4. Filter out rows with missing or null values in the `[Order Date]` column for data integrity.

5. Rename columns according to Power BI conventions for consistency.

#### Loading the Products Table
The **Products** table contains product information such as product code, name, category, cost price, sale price, and weight.

1. Download the `Products.csv` file and import it into Power BI using the Get Data option.

2. Remove duplicates from the `product_code` column to ensure uniqueness.

3. Follow the steps to clean and transform the `weight` column as described.

#### Stores Table
The **Stores** table includes store-related details.

- **Blob Storage Credentials:**
  - Account Name: `powerbistorage2`
  - Account Key: `<Account Key>`
  - Container Name: `data-analytics`

1. Connect to Azure Blob Storage using the provided credentials and import the Stores table into Power BI.

2. Rename columns to align with Power BI naming conventions for clarity.

#### Loading the Customers Data as a CSV file
The **Customers** data is split into CSV files for different regions.

1. Download the `Customers.zip` file and unzip it locally.

2. Use the Get Data option in Power BI to import the Customers folder using the Folder data connector.

3. Follow the instructions to combine and clean the customer data, creating a Full Name column and aligning column names with Power BI conventions.








  #### 6. File structure
  ---
  - README.md: Repository information   
  - SQL Queries for sql queries and output for questions 1-5
  - Information Regarding Databbse - For Database Schema information ie. Main Tables & Columns 
