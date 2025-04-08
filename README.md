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

You can see full codes in [SQL Queries]() folder.



