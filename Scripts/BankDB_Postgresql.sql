CREATE TABLE "Customers" (
  "CustomerID" INTEGER PRIMARY KEY,
  "FirstName" VARCHAR,
  "LastName" VARCHAR,
  "Address" VARCHAR,
  "City" VARCHAR,
  "Gender" "CHAR (1)",
  "State" VARCHAR,
  "Country" VARCHAR,
  "Phone" INTEGER,
  "Email" VARCHAR,
  "DateOfBirth" DATE,
  "SSN" VARCHAR UNIQUE,
  "BranchID" INTEGER
);

CREATE TABLE "Branches" (
  "BranchID" INTEGER PRIMARY KEY,
  "BranchName" VARCHAR,
  "Location" VARCHAR,
  "BranchPhone" VARCHAR,
  "BranchEmail" VARCHAR,
  "ManagerID" INTEGER,
  "OperatingHours" VARCHAR NOT NULL
);

CREATE TABLE "Employees" (
  "EmployeeID" INTEGER PRIMARY KEY,
  "BranchID" INTEGER,
  "Name" VARCHAR,
  "Position" VARCHAR,
  "EmpPhone" VARCHAR,
  "EmpEmail" VARCHAR,
  "Gender" VARCHAR,
  "HireDate" DATE,
  "Qualification" VARCHAR
);

CREATE TABLE "Accounts" (
  "AccountNumber" INTEGER PRIMARY KEY,
  "CustomerID" INTEGER,
  "AccountType" VARCHAR,
  "Balance" DECIMAL,
  "AccountStatus" VARCHAR,
  "RegistrationDate" DATE,
  "OpenDate" DATE,
  "ClosedDate" DATE
);

CREATE TABLE "ATM" (
  "ATMid" INTEGER PRIMARY KEY,
  "Location" VARCHAR,
  "Status" VARCHAR,
  "OperatingHours" VARCHAR,
  "SupportedTransactions" VARCHAR,
  "BranchID" INTEGER
);

CREATE TABLE "Cards" (
  "CardNumber" INTEGER PRIMARY KEY,
  "CustomerID" INTEGER,
  "CardType" VARCHAR,
  "ExpiryDate" DATE,
  "CardStatus" VARCHAR
);

CREATE TABLE "Transactions" (
  "TransactionID" INTEGER PRIMARY KEY,
  "AccountNumber" INTEGER,
  "TransactionType" VARCHAR,
  "Amount" DECIMAL,
  "DateTime" TIMESTAMP
);

CREATE TABLE "TransactionDetails" (
  "TransactionID" INTEGER PRIMARY KEY,
  "Description" VARCHAR,
  "MerchantPayee" VARCHAR,
  "TransactionCategory" VARCHAR,
  "Currency" VARCHAR,
  "Notes" VARCHAR
);

CREATE TABLE "TransactionStatus" (
  "StatusID" INTEGER PRIMARY KEY,
  "TransactionID" INTEGER,
  "StatusType" VARCHAR,
  "Description" VARCHAR,
  "Timestamp" TIMESTAMP
);

CREATE UNIQUE INDEX "UniqueCustomerID" ON "Customers" ("CustomerID");

CREATE UNIQUE INDEX "UniqueSSN" ON "Customers" ("SSN");

CREATE INDEX "idx_customers_customer_id" ON "Customers" ("CustomerID");

CREATE INDEX "idx_customers_ssn" ON "Customers" ("SSN");

CREATE INDEX "idx_customers_phone" ON "Customers" ("Phone");

CREATE INDEX "idx_customers_email" ON "Customers" ("Email");

CREATE UNIQUE INDEX "UniqueBranchID" ON "Branches" ("BranchID");

CREATE INDEX "idx_branches_branch_id" ON "Branches" ("BranchID");

CREATE UNIQUE INDEX "UniqueEmployeeID" ON "Employees" ("EmployeeID");

CREATE INDEX "idx_employees_employee_id" ON "Employees" ("EmployeeID");

CREATE INDEX "idx_employees_branch_id" ON "Employees" ("BranchID");

CREATE UNIQUE INDEX "UniqueAccountNumber" ON "Accounts" ("AccountNumber");

CREATE INDEX "idx_accounts_account_number" ON "Accounts" ("AccountNumber");

CREATE INDEX "idx_accounts_customer_id" ON "Accounts" ("CustomerID");

CREATE UNIQUE INDEX "UniqueATMid" ON "ATM" ("ATMid");

CREATE INDEX "idx_atm_atm_id" ON "ATM" ("ATMid");

CREATE INDEX "idx_atm_branch_id" ON "ATM" ("BranchID");

CREATE UNIQUE INDEX "UniqueCardNumber" ON "Cards" ("CardNumber");

CREATE INDEX "idx_cards_card_number" ON "Cards" ("CardNumber");

CREATE INDEX "idx_cards_customer_id" ON "Cards" ("CustomerID");

CREATE UNIQUE INDEX "UniqueTransactionID" ON "Transactions" ("TransactionID");

CREATE INDEX "idx_transactions_transaction_id" ON "Transactions" ("TransactionID");

CREATE INDEX "idx_transactions_account_number" ON "Transactions" ("AccountNumber");

CREATE INDEX "idx_transactions_datetime" ON "Transactions" ("DateTime");

CREATE UNIQUE INDEX "UniqueTransactionDetails" ON "TransactionDetails" ("TransactionID");

CREATE INDEX "idx_transaction_details_transaction_id" ON "TransactionDetails" ("TransactionID");

CREATE UNIQUE INDEX "UniqueStatusID" ON "TransactionStatus" ("StatusID");

CREATE INDEX "idx_transaction_status_status_id" ON "TransactionStatus" ("StatusID");

CREATE INDEX "idx_transaction_status_transaction_id" ON "TransactionStatus" ("TransactionID");

CREATE INDEX "idx_transaction_status_timestamp" ON "TransactionStatus" ("Timestamp");

ALTER TABLE "Customers" ADD FOREIGN KEY ("BranchID") REFERENCES "Branches" ("BranchID");

ALTER TABLE "Employees" ADD FOREIGN KEY ("BranchID") REFERENCES "Branches" ("BranchID");

ALTER TABLE "Accounts" ADD FOREIGN KEY ("CustomerID") REFERENCES "Customers" ("CustomerID");

ALTER TABLE "ATM" ADD FOREIGN KEY ("BranchID") REFERENCES "Branches" ("BranchID");

ALTER TABLE "Cards" ADD FOREIGN KEY ("CustomerID") REFERENCES "Customers" ("CustomerID");

ALTER TABLE "Transactions" ADD FOREIGN KEY ("AccountNumber") REFERENCES "Accounts" ("AccountNumber");

ALTER TABLE "TransactionDetails" ADD FOREIGN KEY ("TransactionID") REFERENCES "Transactions" ("TransactionID");

ALTER TABLE "TransactionStatus" ADD FOREIGN KEY ("TransactionID") REFERENCES "Transactions" ("TransactionID");
