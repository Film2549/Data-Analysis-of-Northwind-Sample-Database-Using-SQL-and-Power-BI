# Data-Analysis-of-Northwind-Sample-Database-Using-SQL-and-Power-BI

## Overview

I worked on this project by myself using the Northwind sample database. Building on the knowledge and steps from my previous GitHub project, I started by understanding the database — how each table is structured and how they relate to each other. Then I came up with questions I could ask and answer using the data. I wrote SQL queries in Microsoft SQL Server Management Studio (with the database hosted locally on my laptop) and visualized the results in Power BI using clear dashboards that directly answered those questions.

This project give me a chance to practice the full workflow, from data analysis to visualization, and improve my technical skills.

## Data Source

[Data Source1](https://github.com/microsoft/sql-server-samples/tree/master/samples/databases/northwind-pubs) from Github Website

Or [Data Source2](https://learn.microsoft.com/en-us/dotnet/framework/data/adonet/sql/linq/downloading-sample-databases) Directly from Microsoft website.

## Built With

- [Power BI](https://powerbi.microsoft.com/en-us/) 
- [SQL Server](https://www.microsoft.com/en-us/sql-server/sql-server-downloads)

## Table Of Contents
- [Understand Northwind sample database](#understand-northwind-sample-database)
- [Data Model](#data-model)
- [Identifying Key Questions for Database Analysis](#identifying-key-questions-for-database-analysis)
- [Query Data Using SQL](#query-data-using-sql)
- [Analysis](#analysis)
- [credit](#credit)
  
## Understand Northwind sample database

The Northwind sample database is a fictional business database representing a specialty food company's sales and operations originally created by Microsoft. It's designed to be a learning tool, providing a realistic scenario for practicing and understanding database concepts, especially relational databases and SQL.

## Data Model

The database is structured to model a typical small business, including core business functions.

![image](https://github.com/user-attachments/assets/94fafe3e-7775-4da4-9a38-8ae22721d6e6)

It contains tables that represent various aspects of the business :
- **Customers** : Information about the company's customers.   
- **Suppliers** : Details of the companies that supply products to Northwind Traders.   
- **Products** : Information about the products that Northwind Traders sells.   
- **Orders** : Records of customer orders.   
- **Order Details** : Specific items within each order.
- **Employees** : Information about the company's employees.   
- **Shippers** : Details of shipping companies.   
- **Categories** : Product categories.
- **Region** : Defines geographical sales regions.
- **Territories** : Specifies sales territories within those regions.
- **EmployeeTerritories** : Links employees to the territories they manage.

## Identifying Key Questions for Database Analysis

After understanding the dataset and how the tables are connected, the next step was to think about what topics could be analyzed. For each topic, simple questions were listed and planned out like below :

1. **Revenue and Profitability Analysis:**
    * Calculate total revenue over specified periods (monthly, yearly).
    * Compare revenue across different regions.
    * Rank products by total sales, revenue, and quantity sold; identify best-selling categories.
    * Analyze seasonal trends in product sales.
    * Evaluate the impact of discounts on sales and profit margins.

2. **Customer Insights:**
    * Rank customers by total spending and classify them by country and role.
    * Identify the most purchased products by country.
    * Analyze order quantity by customer country.
    * Calculate average order spending and quantity.

3. **Employee Performance:**
    * Identify top-performing sales representatives by individual and region.
    * Compare employee sales performance.
    * Analyze employee efficiency per employee.
    * Evaluate the impact of employee region on sales state (profit/loss).

4. **Shipping and Logistics Efficiency:**
    * Identify the most frequently used shipping/supplier companies.
    * Evaluate delivery times and shipping costs across different carriers.
    * Identify fulfillment delays that impact sales.

## Query Data Using SQL
Open and connect to my local database on my computer using Microsoft SQL Server Management Studio, then write an SQL statement based on these 4 topics. 

You can see full codes in [Code]() folder. The image below shows the tables result and fields after SQL query used in the process : 

![image](https://github.com/user-attachments/assets/a5b79194-8731-4d8b-9391-a36deaa59c14)

Also, a Calendar table generated using Power BI DAX code was included.

## Analysis

### Main page

The main dashboard, which has the main topic "Northwind Sample Database Analysis," serves as the starting point for exploring the Northwind company’s key business areas. A quick overview of the company’s performance is provided through clear and interactive visuals. Four main sections are included, each covering an important part of the business

![image](https://github.com/user-attachments/assets/1b5e1a23-2da2-4d26-b335-2334e53e10cc)

### Revenue & Profitability Analysis

![image](https://github.com/user-attachments/assets/fe0ea817-4553-4a5c-b66f-79bb3d4b7712)

‘Total Income, Revenue & Cost by Month’ graph shows income generally up over last 2-3 years. From beginning, total revenue is $1.27 million. Income is $1.06 million (84%) and costs are $0.21 million (16%). Product category ranking shows Beverages have highest revenue and income. Top three categories change with seasons, as shown in picture. Highest average revenue happens at $0.05 discount per item, second highest at $0.25 discount per item.

### Customer Insight

![image](https://github.com/user-attachments/assets/8006ffb5-2e5e-4f17-9e3e-eb441831e720)

Dashboard shows from start until now, top three customer roles with highest total company income are Accounting Managers, Sales Managers, and Sales Representatives. Customer country ranking for total income and quantity ordered is USA, Germany, and Austria. Average customer income is around $491.18, and average order is 23.81 items over entire period. 'Number of customers by month' graph shows average customer number trend is upward every month and year.

### Employee Performance

![image](https://github.com/user-attachments/assets/3f5bae8b-6c0b-4498-9b9b-e3991c1d816a)

Dashboard shows when ranking employees by average income per order, top three are Ms. Anne, Mr. Robert, and Dr. Andrew. Average quantity per order sold shows Mr. Robert, Mr. Steven, and Dr. Andrew. Average quantity across employees is similar, in the 24-26 range. Region grouping shows Eastern is number one in both income and quantity. Yearly view shows top three performing employees in the picture. Employee with shortest delivery time is Mr. Steven, at 6.752 days. Regional profit/loss ratios are different, as shown in dashboard. Southern region has highest profit, at 94.08%. Analysis uses averages due to different employee start dates and employment lengths.

### Shipper & Supplier Analysis

![image](https://github.com/user-attachments/assets/f9dfd4f1-36a6-4777-bcb3-178b4ad3ceef)

Shipper companies here are just three. From start, United Package is most used. Speedy Express is second most used. Total shipping costs are $207.31 thousand. Average shipping cost is $96.20 per order. Top right bar chart shows United Package has highest shipping cost. Cost and time relationship shows all three companies have consistent average cost and consistent shipping time over period. All three shipping companies have delivery status rates as shown. Overall, all companies deliver early. Very few deliveries are late. Supplier companies show Plutzer AG is most used. USA companies are most used.


By the way, each dashboard page includes a filter pane that allows for multiple selections, enabling specific and detailed analysis.

## Credit
All of contents in this project was created by Jirapat Chaiya, a Computer Engineering student at the Faculty of Engineering, Chulalongkorn University.

This project uses the Northwind sample database from Microsoft. Thank you to Microsoft for providing this dataset, which helped with the data analysis and visuals in this project.




