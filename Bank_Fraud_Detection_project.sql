create bank_fraud_detection
use bank_fraud_detection;
-- 1.Account Analysis

-- 1.1 Count of unique accounts
select distinct count(AccountID) 
from Bank_data;

-- 1.2 Customer Occupations (unique)
select distinct CustomerOccupation from bank_data;

-- 1.3 Accounts based on occupation
select CustomerOccupation, count(*) 
from bank_data
group by CustomerOccupation;

-- 1.4 Number of different locations
select count(distinct Location) from bank_data;

-- 1.5 List of all locations
select distinct Location from bank_data;

-- 1.6 Average age of account holders
select avg(CustomerAge) as Avg_customerAge
from bank_data;

-- 1.7 Total remaining balance in the bank
select sum(AccountBalance) as Remaing_amount_in_Bank
from bank_data;

-- 1.8 Total balance for student accounts
select CustomerOccupation,sum(AccountBalance)
from bank_data
where CustomerOccupation = 'Student'
group by CustomerOccupation;

-- 1.9 Occupation with highest account balance
select CustomerOccupation,sum(AccountBalance)
from bank_data
group by CustomerOccupation
order by sum(AccountBalance) desc;

-- 1.10 Top 5 customers with highest balance
select AccountID, CustomerOccupation,AccountBalance
from bank_data
order by AccountBalance desc
limit 5;

-- 3rd highest balance among Engineers (Window Function)
SELECT AccountID, CustomerOccupation, AccountBalance,rnk
FROM (
    SELECT AccountID, CustomerOccupation, AccountBalance,
           DENSE_RANK() OVER (PARTITION BY CustomerOccupation ORDER BY AccountBalance Desc) AS rnk
    FROM bank_data
) t
WHERE rnk = 3 AND CustomerOccupation = 'Engineer';

-- 2. Transaction Analysis

-- 2.1 Different transaction types
select TransactionType, count(distinct TransactionType)
from bank_data
group by TransactionType;

-- 2.2 Count of debit & credit transactions
select TransactionType,count(*)
from bank_data
group by TransactionType;

-- 2.3 Total transaction amount
select sum(TransactionAmount)
from bank_data;

-- 2.4 Total debit & credit amounts
select TransactionType, sum(TransactionAmount)
from bank_data
group by TransactionType;

-- 2.5 ATM debit & credit
select Channel, TransactionType, sum(TransactionAmount)
from bank_data
where channel = 'ATM'
group by TransactionType, Channel;

-- 2.6 Online debit & credit
select Channel, TransactionType, sum(TransactionAmount)
from bank_data
where channel = 'ONLINE'
group by TransactionType, Channel;

-- 2.7 Location with highest transactions
select Location, sum(TransactionAmount)
from bank_data
group by Location
order by sum(TransactionAmount) desc;

-- 2.8 Transactions done in 2023
select year(TransactionDate), sum(TransactionAmount)
from bank_data
where year(TransactionDate) = 2023
group by year(TransactionDate);

-- 2.9 Monthly transaction trend
select DATE_FORMAT(TransactionDate, '%Y-%m') as month,
       sum(TransactionAmount)
from bank_data
group by month
order by month;

-- 2.10 Time-of-day pattern
SELECT 
    CASE
        WHEN HOUR(TransactionDate) BETWEEN 6 AND 12 THEN 'Morning'
        WHEN HOUR(TransactionDate) BETWEEN 13 AND 18 THEN 'Afternoon'
        ELSE 'Night'
    END AS TimePeriod,
    COUNT(*) AS txn_count
FROM bank_data
GROUP BY TimePeriod;

-- 3. Channel Analysis

-- 3.1 Different channels
select distinct Channel from bank_data;

-- 3.2 Highest debit & credit in branch
WITH ranked AS (
    SELECT 
        TransactionID, AccountID, TransactionType, Channel,
        SUM(TransactionAmount) AS TotalAmount,
        ROW_NUMBER() OVER (
            PARTITION BY TransactionType 
            ORDER BY SUM(TransactionAmount) DESC
        ) AS rn
    FROM bank_data
    WHERE Channel = 'Branch'
    GROUP BY TransactionID, AccountID, TransactionType, Channel
)
SELECT *
FROM ranked
WHERE rn = 1;

-- 3.3 Suspicious high-value ONLINE debit
select AccountID, sum(TransactionAmount) as Total_amount
from bank_data
where Channel = 'Online' 
  and UPPER(TransactionType) = 'DEBIT'
group by AccountID
having sum(TransactionAmount) > 15000;

-- 4. Fraud Detection Insights

-- 4.1 Unusually large transactions (Anomaly Detection)
SELECT *
FROM bank_data
WHERE TransactionAmount > (
    SELECT AVG(TransactionAmount) + 3 * STDDEV(TransactionAmount)
    FROM bank_data
);

-- 4.2 Negative balance detection
SELECT AccountID, AccountBalance
FROM bank_data
WHERE AccountBalance < 0;

-- 4.3 Duplicate AccountIDs
SELECT AccountID, COUNT(*) AS cnt
FROM bank_data
GROUP BY AccountID
HAVING COUNT(*) > 1;

-- 4.4 Accounts sharing the same TransactionID
SELECT TransactionID, GROUP_CONCAT(AccountID) AS Accounts
FROM bank_data
GROUP BY TransactionID
HAVING COUNT(DISTINCT AccountID) > 1;



