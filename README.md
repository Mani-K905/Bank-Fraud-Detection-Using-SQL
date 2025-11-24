🏦💳 Bank Fraud Detection Analysis — SQL Project

Dataset: Bank Transactions & Customer Data
Tools Used: MySQL, Window Functions, CTEs, Aggregations, Data Profiling

This project provides a complete end-to-end SQL-based analysis of customer accounts, transactions, spending patterns, and fraud detection.
It includes queries covering account insights, transaction behavior, channel trends, location activity, and fraud/anomaly detection.

📊 Project Overview

The objective of this project is to analyze customer banking behavior and detect fraudulent or suspicious activities.
The SQL script performs deep analysis on:

Account Summary & Occupation Analysis

Debit/Credit Transaction Breakdown

Monthly & Time-based Transaction Trends

Channel-Based Insights (ATM, Online, Branch)

Location-Level Spending

Anomaly & High-Risk Transaction Identification

Duplicate/Shared Account & Transaction Checks

This project demonstrates strong skills in SQL analytical thinking, financial data interpretation, and fraud detection logic.

📁 Highlights of the Analysis
🧾 Account Insights

Count of unique account holders

Occupation-wise customer distribution

Total/average bank balances

Highest balance holders

3rd highest Engineer balance using Window Functions

💰 Transaction Insights

Debit vs Credit count & total values

ATM, Online, Branch channel comparison

Total transaction value across the dataset

Monthly transaction trend using DATE functions

Time-of-day pattern (Morning, Afternoon, Night)

🌍 Location Analysis

Top locations by transaction volume

High-spending areas

Regional activity breakdown

🚨 Fraud & Anomaly Detection

Unusually large transactions using
Average + 3 × Standard Deviation

Suspicious high-value ONLINE debit transactions

Negative balance accounts

Duplicate Account IDs

Shared Transaction IDs (possible fraud network)

🛠 Skills Demonstrated

MySQL Query Optimization

Joins, Grouping, Aggregations

Window Functions (ROW_NUMBER, DENSE_RANK)

CTEs

Real-world Financial Data Analysis

Anomaly & Fraud Pattern Detection

Date & Time-Based Analytics

Data Validation & Profiling

📈 Insights Summary

Clear occupation-based patterns in account balances

High transaction density during afternoons

Online transactions dominate high-value movements

Specific accounts flagged for suspicious debit behavior

Significant outliers detected using statistical anomaly checks

Duplicate account IDs & shared transaction IDs identified

Strong regional variation in spending activity

📂 Project Files

SQL Script (.sql) — Complete analysis & fraud detection queries

Dataset (CSV) — Bank transaction and account data

Documentation — Analysis breakdown (optional)

📦 How to Use

Create the database:

CREATE DATABASE bank_fraud_detection;
USE bank_fraud_detection;


Import the CSV dataset

Run the SQL script:

SOURCE sql/bank_fraud_detection.sql;


View outputs directly in MySQL Workbench or your SQL client

🧑‍💻 Author

Mani Kondalu Koorakula

LinkedIn: https://linkedin.com/in/mani-k-79b359345

GitHub: https://github.com/Mani-K905

Email: mani9059619290@gmail.com

⭐ If you like this project

Please give the repository a ⭐ on GitHub — it motivates me to create more SQL & Data Analytics projects!
