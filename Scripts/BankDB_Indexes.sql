-- Indexes for Customers table
CREATE INDEX idx_customers_customer_id ON Customers(CustomerID);
CREATE INDEX idx_customers_ssn ON Customers(SSN);
CREATE INDEX idx_customers_phone ON Customers(Phone);
CREATE INDEX idx_customers_email ON Customers(Email);

-- Indexes for Branches table
CREATE INDEX idx_branches_branch_id ON Branches(BranchID);

-- Indexes for Employees table
CREATE INDEX idx_employees_employee_id ON Employees(EmployeeID);
CREATE INDEX idx_employees_branch_id ON Employees(BranchID);

-- Indexes for Accounts table
CREATE INDEX idx_accounts_account_number ON Accounts(AccountNumber);
CREATE INDEX idx_accounts_customer_id ON Accounts(CustomerID);

-- Indexes for ATM table
CREATE INDEX idx_atm_atm_id ON ATM(ATMid);
CREATE INDEX idx_atm_branch_id ON ATM(BranchID);

-- Indexes for Cards table
CREATE INDEX idx_cards_card_number ON Cards(CardNumber);
CREATE INDEX idx_cards_customer_id ON Cards(CustomerID);

-- Indexes for Transactions table
CREATE INDEX idx_transactions_transaction_id ON Transactions(TransactionID);
CREATE INDEX idx_transactions_account_number ON Transactions(AccountNumber);
CREATE INDEX idx_transactions_datetime ON Transactions(DateTime);

-- Indexes for TransactionDetails table
CREATE INDEX idx_transaction_details_transaction_id ON TransactionDetails(TransactionID);

-- Indexes for TransactionStatus table
CREATE INDEX idx_transaction_status_status_id ON TransactionStatus(StatusID);
CREATE INDEX idx_transaction_status_transaction_id ON TransactionStatus(TransactionID);
CREATE INDEX idx_transaction_status_timestamp ON TransactionStatus(Timestamp);
