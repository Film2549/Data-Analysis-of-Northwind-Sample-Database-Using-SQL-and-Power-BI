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
