# 🏦 Bank Fraud Detection Analysis using SQL

🚨 Detecting suspicious financial activity using real-world banking data.

This project simulates how financial institutions identify fraudulent transactions using SQL-based rule engines and anomaly detection techniques. It analyzes customer behavior, transaction patterns, and high-risk activities to flag potential fraud cases.

---

## 🎯 Business Problem

Banks process thousands of transactions ежедневно, making it difficult to manually identify fraud.

The challenge is to:

* Detect unusual transaction patterns
* Identify high-risk accounts
* Flag anomalies in real-time

This project solves the problem using SQL-based analytical techniques.

---

## 📊 Project Overview

The objective of this project is to analyze customer banking behavior and detect fraudulent or suspicious activities.

The analysis includes:

* 🧾 Account Summary & Occupation Analysis
* 💰 Debit/Credit Transaction Breakdown
* 📅 Monthly & Time-based Transaction Trends
* 💳 Channel-Based Insights (ATM, Online, Branch)
* 🌍 Location-Level Spending Analysis
* 🚨 Fraud & Anomaly Detection

---

## 📁 Dataset

* **Type:** Bank Transactions & Customer Data
* **Format:** CSV
* **Contents Include:**

  * Account ID
  * Transaction ID
  * Transaction Amount
  * Transaction Type (Debit/Credit)
  * Channel (ATM, Online, Branch)
  * Location
  * Transaction Date
  * Account Balance
  * Customer Details

---

## 🚨 Fraud Detection Rules Implemented

The following rule-based detection techniques were applied:

* 💸 **High-Value Transactions**
  Transactions exceeding *(AVG + 3 × STDDEV)*

* ⚡ **Rapid Transactions**
  Multiple transactions in a short time window

* 🌍 **Location Anomaly**
  Same account used across multiple locations

* 🌙 **Odd-Time Transactions**
  High-value transactions during late-night hours

* 💳 **Suspicious Online Activity**
  High-value debit transactions via online channels

* 🔁 **Duplicate Identifiers**
  Same Transaction ID used across multiple accounts

* 📉 **Negative Balance Detection**
  Accounts with invalid financial states

---

## 📊 Key Analysis Areas

### 🧾 Account Insights

* Count of unique account holders
* Occupation-wise customer distribution
* Total and average account balances
* Top customers by account balance
* 3rd highest Engineer balance using Window Functions

---

### 💰 Transaction Insights

* Debit vs Credit transaction count and values
* Total transaction volume
* ATM vs Online vs Branch comparison
* Monthly transaction trends using DATE functions
* Time-of-day transaction patterns

---

### 🌍 Location Analysis

* Top locations by transaction volume
* High-spending regions
* Regional activity breakdown

---

### 🚨 Fraud & Anomaly Detection

* Statistical anomaly detection using AVG & STDDEV
* High-value suspicious online debit transactions
* Negative balance accounts
* Duplicate Account IDs
* Shared Transaction IDs (possible fraud network)

---

## 📊 Sample Insights

| Account ID | Issue Detected     | Risk Level |
| ---------- | ------------------ | ---------- |
| 10234      | High-value anomaly | High       |
| 20456      | Multiple locations | Medium     |
| 30987      | Rapid transactions | High       |

---

## 🛠 Skills Demonstrated

* MySQL & Query Optimization
* Joins, Grouping, Aggregations
* Window Functions (ROW_NUMBER, DENSE_RANK)
* Common Table Expressions (CTEs)
* Financial Data Analysis
* Fraud Detection & Anomaly Identification
* Time-Series Analysis
* Data Validation & Profiling

---

## 📂 Project Structure

```
📁 Bank-Fraud-Detection-Using-SQL
 ┣ 📄 README.md
 ┣ 📄 bank_fraud_detection.sql
 ┣ 📁 dataset
 ┃ ┗ 📄 bank_transactions_data.csv
```

---

## 📦 How to Use

1. Create the database:

```sql
CREATE DATABASE bank_fraud_detection;
USE bank_fraud_detection;
```

2. Import the dataset (CSV file)

3. Run the SQL script:

```sql
SOURCE bank_fraud_detection.sql;
```

4. View outputs in MySQL Workbench or any SQL client

---

## 📈 Insights Summary

* Clear occupation-based patterns in account balances
* High transaction activity observed during afternoons
* Online transactions dominate high-value transfers
* Multiple accounts flagged for suspicious debit behavior
* Significant anomalies detected using statistical methods
* Duplicate and shared transaction identifiers identified
* Strong regional variation in spending patterns

---

## 🚀 Future Enhancements

* Integration with Power BI for interactive dashboards
* Real-time fraud detection pipeline
* Machine Learning-based fraud prediction
* Risk scoring system for accounts

---

## 🧑‍💻 Author

**Mani Kondalu Koorakula**

* 🔗 LinkedIn: https://linkedin.com/in/mani-k-79b359345
* 💻 GitHub: https://github.com/Mani-K905
* 📧 Email: [mani9059619290@gmail.com](mailto:mani9059619290@gmail.com)

---

## ⭐ If you like this project

Please consider giving this repository a ⭐ — it motivates me to build more data analytics and SQL projects!

---
