--- Retrieve all customers:
SELECT * FROM Customers;

-- Retrieve all branches:
SELECT * FROM Branches;

-- Retrieve all employees:
SELECT * FROM Employees;

-- Retrieve all accounts:
SELECT * FROM Accounts;

-- Retrieve all ATMs:
SELECT * FROM ATM;

-- Retrieve all cards:
SELECT * FROM Cards;

-- Retrieve all transactions:
SELECT * FROM Transactions;

-- Retrieve all transaction details:
SELECT * FROM TransactionDetails;

-- Retrieve all transaction statuses:
SELECT * FROM TransactionStatus;


-- Retrieve customers with accounts:
SELECT Customers.*, Accounts.*
FROM Customers
LEFT JOIN Accounts ON Customers.CustomerID = Accounts.CustomerID;

-- Retrieve transactions with details and status:
SELECT Transactions.*, TransactionDetails.*, TransactionStatus.*
FROM Transactions
LEFT JOIN TransactionDetails ON Transactions.TransactionID = TransactionDetails.TransactionID
LEFT JOIN TransactionStatus ON Transactions.TransactionID = TransactionStatus.TransactionID;

-- Retrieve ATM details with associated branch:
SELECT ATM.*, Branches.*
FROM ATM
LEFT JOIN Branches ON ATM.BranchID = Branches.BranchID;

-- Retrieve all customers with their branch information:
SELECT Customers.*, Branches.*
FROM Customers
LEFT JOIN Branches ON Customers.BranchID = Branches.BranchID;

--- Retrieve transactions with details, status, and associated account information:
SELECT Transactions.*, TransactionDetails.*, TransactionStatus.*, Accounts.*
FROM Transactions
LEFT JOIN TransactionDetails ON Transactions.TransactionID = TransactionDetails.TransactionID
LEFT JOIN TransactionStatus ON Transactions.TransactionID = TransactionStatus.TransactionID
LEFT JOIN Accounts ON Transactions.AccountNumber = Accounts.AccountNumber;


--- Retrieve the total balance for each account type:
SELECT AccountType, SUM(Balance) AS TotalBalance
FROM Accounts
GROUP BY AccountType;


--- Retrieve the average transaction amount for each transaction type:
SELECT TransactionType, AVG(Amount) AS AverageAmount
FROM Transactions
GROUP BY TransactionType;

---- Retrieve the count of transactions for each day:
SELECT DATE(DateTime) AS TransactionDate, COUNT(*) AS TransactionCount
FROM Transactions
GROUP BY TransactionDate
ORDER BY TransactionDate;


--- Retrieve the latest transaction for each account:
SELECT *
FROM Transactions
WHERE (AccountNumber, DateTime) IN (
    SELECT AccountNumber, MAX(DateTime) AS LatestDateTime
    FROM Transactions
    GROUP BY AccountNumber
);

--- Retrieve the total number of transactions and total transaction amount for each customer:
SELECT Customers.CustomerID, Customers.FirstName, Customers.LastName, COUNT(Transactions.TransactionID) AS TransactionCount, SUM(Transactions.Amount) AS TotalAmount
FROM Customers
LEFT JOIN Accounts ON Customers.CustomerID = Accounts.CustomerID
LEFT JOIN Transactions ON Accounts.AccountNumber = Transactions.AccountNumber
GROUP BY Customers.CustomerID, Customers.FirstName, Customers.LastName
ORDER BY CustomerID;
