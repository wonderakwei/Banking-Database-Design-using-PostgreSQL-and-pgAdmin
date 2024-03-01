-- View for Customers
CREATE VIEW vw_customers AS
SELECT 
    CustomerID,
    FirstName,
    LastName,
    Address,
    City,
    Gender,
    State,
    Country,
    Phone,
    Email,
    DateOfBirth,
    SSN,
    BranchID
FROM Customers;

-- View for Branches
CREATE VIEW vw_branches AS
SELECT 
    BranchID,
    BranchName,
    Location,
    BranchPhone,
    BranchEmail,
    ManagerID,
    OperatingHours
FROM Branches;

-- View for Employees
CREATE VIEW vw_employees AS
SELECT 
    EmployeeID,
    BranchID,
    Name,
    Position,
    EmpPhone,
    EmpEmail,
    Gender,
    HireDate,
    Qualification
FROM Employees;

-- View for Accounts
CREATE VIEW vw_accounts AS
SELECT 
    AccountNumber,
    CustomerID,
    AccountType,
    Balance,
    AccountStatus,
    RegistrationDate,
    OpenDate,
    ClosedDate
FROM Accounts;

-- View for ATM
CREATE VIEW vw_atm AS
SELECT 
    ATMid,
    Location,
    Status,
    OperatingHours,
    SupportedTransactions,
    BranchID
FROM ATM;

-- View for Cards
CREATE VIEW vw_cards AS
SELECT 
    CardNumber,
    CustomerID,
    CardType,
    ExpiryDate,
    CardStatus
FROM Cards;

-- View for Transactions
CREATE VIEW vw_transactions AS
SELECT 
    TransactionID,
    AccountNumber,
    TransactionType,
    Amount,
    DateTime
FROM Transactions;

-- View for TransactionDetails
CREATE VIEW vw_transaction_details AS
SELECT 
    TransactionID,
    Description,
    MerchantPayee,
    TransactionCategory,
    Currency,
    Notes
FROM TransactionDetails;

-- View for TransactionStatus
CREATE VIEW vw_transaction_status AS
SELECT 
    StatusID,
    TransactionID,
    StatusType,
    Description,
    Timestamp
FROM TransactionStatus;
