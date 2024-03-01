
Table "Customers" {
  "CustomerID" INTEGER [pk]
  "FirstName" VARCHAR
  "LastName" VARCHAR
  "Address" VARCHAR
  "City" VARCHAR
  "Gender" "CHAR (1)"
  "State" VARCHAR
  "Country" VARCHAR
  "Phone" INTEGER
  "Email" VARCHAR
  "DateOfBirth" DATE
  "SSN" VARCHAR [unique]
  "BranchID" INTEGER

Indexes {
  CustomerID [unique, name: "UniqueCustomerID"]
  SSN [unique, name: "UniqueSSN"]
  CustomerID [name: "idx_customers_customer_id"]
  SSN [name: "idx_customers_ssn"]
  Phone [name: "idx_customers_phone"]
  Email [name: "idx_customers_email"]
}
}

Table "Branches" {
  "BranchID" INTEGER [pk]
  "BranchName" VARCHAR
  "Location" VARCHAR
  "BranchPhone" VARCHAR
  "BranchEmail" VARCHAR
  "ManagerID" INTEGER
  "OperatingHours" VARCHAR [not null]

Indexes {
  BranchID [unique, name: "UniqueBranchID"]
  BranchID [name: "idx_branches_branch_id"]
}
}

Table "Employees" {
  "EmployeeID" INTEGER [pk]
  "BranchID" INTEGER
  "Name" VARCHAR
  "Position" VARCHAR
  "EmpPhone" VARCHAR
  "EmpEmail" VARCHAR
  "Gender" VARCHAR
  "HireDate" DATE
  "Qualification" VARCHAR

Indexes {
  EmployeeID [unique, name: "UniqueEmployeeID"]
  EmployeeID [name: "idx_employees_employee_id"]
  BranchID [name: "idx_employees_branch_id"]
}
}

Table "Accounts" {
  "AccountNumber" INTEGER [pk]
  "CustomerID" INTEGER
  "AccountType" VARCHAR
  "Balance" DECIMAL
  "AccountStatus" VARCHAR
  "RegistrationDate" DATE
  "OpenDate" DATE
  "ClosedDate" DATE

Indexes {
  AccountNumber [unique, name: "UniqueAccountNumber"]
  AccountNumber [name: "idx_accounts_account_number"]
  CustomerID [name: "idx_accounts_customer_id"]
}
}

Table "ATM" {
  "ATMid" INTEGER [pk]
  "Location" VARCHAR
  "Status" VARCHAR
  "OperatingHours" VARCHAR
  "SupportedTransactions" VARCHAR
  "BranchID" INTEGER

Indexes {
  ATMid [unique, name: "UniqueATMid"]
  ATMid [name: "idx_atm_atm_id"]
  BranchID [name: "idx_atm_branch_id"]
}
}

Table "Cards" {
  "CardNumber" INTEGER [pk]
  "CustomerID" INTEGER
  "CardType" VARCHAR
  "ExpiryDate" DATE
  "CardStatus" VARCHAR

Indexes {
  CardNumber [unique, name: "UniqueCardNumber"]
  CardNumber [name: "idx_cards_card_number"]
  CustomerID [name: "idx_cards_customer_id"]
}
}

Table "Transactions" {
  "TransactionID" INTEGER [pk]
  "AccountNumber" INTEGER
  "TransactionType" VARCHAR
  "Amount" DECIMAL
  "DateTime" TIMESTAMP

Indexes {
  TransactionID [unique, name: "UniqueTransactionID"]
  TransactionID [name: "idx_transactions_transaction_id"]
  AccountNumber [name: "idx_transactions_account_number"]
  DateTime [name: "idx_transactions_datetime"]
}
}

Table "TransactionDetails" {
  "TransactionID" INTEGER [pk]
  "Description" VARCHAR
  "MerchantPayee" VARCHAR
  "TransactionCategory" VARCHAR
  "Currency" VARCHAR
  "Notes" VARCHAR

Indexes {
  TransactionID [unique, name: "UniqueTransactionDetails"]
  TransactionID [name: "idx_transaction_details_transaction_id"]
}
}

Table "TransactionStatus" {
  "StatusID" INTEGER [pk]
  "TransactionID" INTEGER
  "StatusType" VARCHAR
  "Description" VARCHAR
  "Timestamp" TIMESTAMP

Indexes {
  StatusID [unique, name: "UniqueStatusID"]
  StatusID [name: "idx_transaction_status_status_id"]
  TransactionID [name: "idx_transaction_status_transaction_id"]
  Timestamp [name: "idx_transaction_status_timestamp"]
}
}

Ref:"Branches"."BranchID" < "Customers"."BranchID"

Ref:"Branches"."BranchID" < "Employees"."BranchID"

Ref:"Customers"."CustomerID" < "Accounts"."CustomerID"

Ref:"Branches"."BranchID" < "ATM"."BranchID"

Ref:"Customers"."CustomerID" < "Cards"."CustomerID"

Ref:"Accounts"."AccountNumber" < "Transactions"."AccountNumber"

Ref:"Transactions"."TransactionID" < "TransactionDetails"."TransactionID"

Ref:"Transactions"."TransactionID" < "TransactionStatus"."TransactionID"
