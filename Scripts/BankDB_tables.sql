
-- Create a new database named 'BankDB' if it doesn't exist
DO $$ 
BEGIN
  IF NOT EXISTS (SELECT FROM pg_database WHERE datname = 'BankDB') THEN
    CREATE DATABASE BankDB;
  END IF;
END $$;

-- Switch to the 'transaction_data' database
USE BankDB;

CREATE TABLE Customers (
    CustomerID INTEGER PRIMARY KEY,
    FirstName VARCHAR,
    LastName VARCHAR,
    Address VARCHAR,
    City VARCHAR,
    Gender CHAR(1) CHECK (Gender IN ('F', 'M')),
    State VARCHAR,
    Country VARCHAR,
    Phone INTEGER,
    Email VARCHAR,
    DateOfBirth DATE CHECK (DateOfBirth <= CURRENT_DATE),
    SSN VARCHAR UNIQUE,
    BranchID INTEGER REFERENCES Branches(BranchID),

    
    -- Business Rules and Constraints
    CONSTRAINT UniqueCustomerID UNIQUE (CustomerID),
    CONSTRAINT UniqueSSN UNIQUE (SSN),
    CONSTRAINT ValidDOB CHECK (DateOfBirth <= CURRENT_DATE),
    CONSTRAINT ValidGender CHECK (Gender IN ('F', 'M')),
    CONSTRAINT ValidContact CHECK (Phone IS NOT NULL OR Email IS NOT NULL)
);


CREATE TABLE Branches (
    BranchID INTEGER PRIMARY KEY,
    BranchName VARCHAR,
    Location VARCHAR,
    BranchPhone VARCHAR,
    BranchEmail VARCHAR,
    ManagerID INTEGER,   
    OperatingHours VARCHAR NOT NULL,
    
    
    -- Business Rules and Constraints
    CONSTRAINT UniqueBranchID UNIQUE (BranchID),
    CONSTRAINT ValidOperatingHours CHECK (OperatingHours IS NOT NULL)
);


CREATE TABLE Employees (
    EmployeeID INTEGER PRIMARY KEY,
    BranchID INTEGER REFERENCES Branches(BranchID),
    Name VARCHAR,
    Position VARCHAR,
    EmpPhone VARCHAR,
    EmpEmail VARCHAR,
    Gender VARCHAR CHECK (Gender IN ('Male', 'Female')),
    HireDate DATE CHECK (HireDate <= CURRENT_DATE),
    Qualification VARCHAR,
    
    
    -- Business Rules and Constraints
    CONSTRAINT UniqueEmployeeID UNIQUE (EmployeeID),
    CONSTRAINT ValidHireDate CHECK (HireDate <= CURRENT_DATE)
);


CREATE TABLE Accounts (
    AccountNumber INTEGER PRIMARY KEY,
    CustomerID INTEGER REFERENCES Customers(CustomerID),
    AccountType VARCHAR CHECK (AccountType IN ('Checking Account', 'Savings Account', 'Money Market Account', 'Certificate of Deposit (CD)')),
    Balance DECIMAL CHECK (Balance >= 0),
    AccountStatus VARCHAR,
    RegistrationDate DATE,
    OpenDate DATE,
    ClosedDate DATE,

    
    -- Business Rules and Constraints
    CONSTRAINT UniqueAccountNumber UNIQUE (AccountNumber),
    CONSTRAINT ValidAccountType CHECK (AccountType IN ('Checking Account', 'Savings Account', 'Money Market Account', 'Certificate of Deposit (CD)'))
);

-- Change the data type of the AccountNumber column to bigint
ALTER TABLE Accounts
ALTER COLUMN AccountNumber TYPE bigint;


CREATE TABLE ATM (
    ATMid INTEGER PRIMARY KEY,
    Location VARCHAR,
     Status VARCHAR CHECK (Status IN ('Operational', 'Non-operational')),
    OperatingHours VARCHAR,
    SupportedTransactions VARCHAR,
    BranchID INTEGER REFERENCES Branches(BranchID),
    
    -- Business Rules and Constraints
    CONSTRAINT UniqueATMid UNIQUE (ATMid)
    CONSTRAINT ValidStatus CHECK (Status IN ('Operational', 'Non-operational'))
);


CREATE TABLE Cards (
    CardNumber INTEGER PRIMARY KEY,
    CustomerID INTEGER REFERENCES Customers(CustomerID),
    CardType VARCHAR,
    ExpiryDate DATE CHECK (ExpiryDate >= CURRENT_DATE),
    CardStatus VARCHAR,
    
    
    -- Business Rules and Constraints
    CONSTRAINT UniqueCardNumber UNIQUE (CardNumber),
    CONSTRAINT ValidExpiryDate CHECK (ExpiryDate >= CURRENT_DATE)
);


CREATE TABLE Transactions (
    TransactionID VARCHAR PRIMARY KEY,
    AccountNumber INTEGER REFERENCES Accounts(AccountNumber),
    TransactionType VARCHAR,
    Amount DECIMAL CHECK (Amount >= 0),
    DateTime TIMESTAMP,
    
    -- Business Rules and Constraints
    CONSTRAINT UniqueTransactionID UNIQUE (TransactionID)
);

CREATE TABLE TransactionDetails (
    TransactionID VARCHAR PRIMARY KEY REFERENCES Transactions(TransactionID),
    Description VARCHAR,
    MerchantPayee VARCHAR,
    TransactionCategory VARCHAR,
    Currency VARCHAR,
    Notes VARCHAR,
    
    
    -- Business Rules and Constraints
    CONSTRAINT UniqueTransactionDetails UNIQUE (TransactionID),
    CONSTRAINT ValidTransactionCategory CHECK (
        TransactionCategory IN (
            'Transfer', 'Deposit', 'Payment', 'Withdraw', 'Cash transactions', 'ATM', 'Overdraft payment', 'Top up account',
            'Interest', 'Check', 'Loan agreement', 'Authorization', 'Sales', 'Share',
            'Bill payment', 'Charge', 'Disbursement', 'Refund', 'Repayment', 'Reschedule debt',
            'Transaction', 'Accruals and provisions', 'POS (Point of Sale)'
        )
    )
);

CREATE TABLE TransactionStatus (
    StatusID VARCHAR PRIMARY KEY,
    TransactionID INTEGER REFERENCES Transactions(TransactionID),
    StatusType VARCHAR CHECK (StatusType IN (
        'Pending', 'Completed', 'Failed', 'Cancelled', 'In Progress', 'Authorized',
        'Declined', 'Refunded', 'Reversed', 'Hold', 'Expired', 'Settled'
    )),
    Description VARCHAR,
    Timestamp TIMESTAMP,
    


    -- Business Rules and Constraints
    CONSTRAINT UniqueStatusID UNIQUE (StatusID)
);
