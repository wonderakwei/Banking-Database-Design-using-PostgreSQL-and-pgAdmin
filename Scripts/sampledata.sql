-- Insert data into Customers table
INSERT INTO Customers (CustomerID, FirstName, LastName, Address, City, Gender, State, Country, Phone, Email, DateOfBirth, SSN, BranchID)
VALUES
(1001, 'John', 'Acheampong', '123 Main Street', 'Accra', 'M', 'Greater Accra', 'Ghana', 123456789, 'john.acheampong@example.com', '1990-05-15', '123-45-6789', 40001),
(1002, 'Jane', 'Osei', '456 Oak Avenue', 'Kumasi', 'F', 'Ashanti', 'Ghana', 987654321, 'jane.osei@example.com', '1985-08-20', '987-65-4321', 40002),
(1003, 'Michael', 'Addo', '789 Pine Road', 'Takoradi', 'M', 'Western', 'Ghana', 456789012, 'michael.addo@example.com', '1982-02-10', '456-78-9012', 40003),
(1004, 'Grace', 'Boakye', '101 Elm Lane', 'Tamale', 'F', 'Northern', 'Ghana', 789012345, 'grace.boakye@example.com', '1995-11-25', '789-01-2345', 40004),
(1005, 'Daniel', 'Yeboah', '202 Cedar Street', 'Cape Coast', 'M', 'Central', 'Ghana', 234567890, 'daniel.yeboah@example.com', '1988-07-03', '234-56-7890', 40005),
(1006, 'Abigail', 'Ansah', '303 Maple Drive', 'Sunyani', 'F', 'Bono', 'Ghana', 345678901, 'abigail.ansah@example.com', '1993-04-18', '345-67-8901', 40006),
(1007, 'David', 'Amponsah', '404 Birch Court', 'Ho', 'M', 'Volta', 'Ghana', 567890123, 'david.amponsang@example.com', '1980-09-05', '567-89-0123', 40007),
(1008, 'Eva', 'Agyemang', '505 Walnut Place', 'Bolgatanga', 'F', 'Upper East', 'Ghana', 678901234, 'eva.agyemang@example.com', '1998-12-30', '678-90-1234', 40008),
(1009, 'Patrick', 'Asare', '606 Pine Lane', 'Techiman', 'M', 'Bono East', 'Ghana', 789012345, 'patrick.asare@example.com', '1997-06-12', '789-01-2344', 40009),
(1010, 'Sophia', 'Amoako', '707 Oak Road', 'Koforidua', 'F', 'Eastern', 'Ghana', 890123456, 'sophia.amoako@example.com', '1991-03-28', '890-12-3456', 40010);



-- Insert data into Branches table
INSERT INTO Branches (BranchID, BranchName, Location, BranchPhone, ManagerID, OperatingHours)
VALUES
(40001, 'Accra Main Branch', '123 Main Street, Accra', '123456789', 2001, '9:00 AM - 5:00 PM'),
(40002, 'Kumasi Branch', '456 Oak Avenue, Kumasi', '987654321', 2006, '9:00 AM - 5:00 PM'),
(40003, 'Takoradi Branch', '789 Pine Road, Takoradi', '456789012', 2011, '9:00 AM - 5:00 PM'),
(40004, 'Tamale Branch', '101 Elm Lane, Tamale', '789012345', 2016, '9:00 AM - 5:00 PM'),
(40005, 'Cape Coast Branch', '202 Cedar Street, Cape Coast', '234567890', 2021, '9:00 AM - 5:00 PM'),
(40006, 'Sunyani Branch', '303 Maple Drive, Sunyani', '345678901', 2026, '9:00 AM - 5:00 PM'),
(40007, 'Ho Branch', '404 Birch Court, Ho', '567890123', 2031, '9:00 AM - 5:00 PM'),
(40008, 'Bolgatanga Branch', '505 Walnut Place, Bolgatanga', '678901234', 2036, '9:00 AM - 5:00 PM'),
(40009, 'Techiman Branch', '606 Pine Lane, Techiman', '789012345', 2041, '9:00 AM - 5:00 PM'),
(40010, 'Koforidua Branch', '707 Oak Road, Koforidua', '890123456', 2046, '9:00 AM - 5:00 PM');



-- Insert data into Employees table
INSERT INTO Employees (EmployeeID, BranchID, Name, Position, EmpPhone, EmpEmail, Gender, HireDate, Qualification)
VALUES
(2001, 40001, 'Kwame Agyei', 'Manager', 241234567, 'kwame.agyei@example.com', 'Male', '2020-01-15', 'BSc. Banking and Finance'),
(2002, 40001, 'Akua Boateng', 'Teller', 209876543, 'akua.boateng@example.com', 'Female', '2021-02-20', 'HND in Accounting'),
(2003, 40001, 'Yaw Owusu', 'Customer Service Representative', 273456789, 'yaw.owusu@example.com', 'Male', '2019-05-10', 'BBA in Marketing'),
(2004, 40001, 'Abena Darko', 'Loan Officer', 268765432, 'abena.darko@example.com', 'Female', '2022-03-25', 'MSc. Finance'),
(2005, 40001, 'Kwesi Annan', 'Financial Advisor', 234567890, 'kwesi.annan@example.com', 'Male', '2020-11-20', 'BSc. Economics'),
(2006, 40002, 'Ama Mensah', 'Manager', 245678901, 'ama.mensah@example.com', 'Female', '2018-12-01', 'MBA in Business Administration'),
(2007, 40002, 'Kofi Owusu', 'Teller', 267890123, 'kofi.owusu@example.com', 'Male', '2019-06-15', 'HND in Banking and Finance'),
(2008, 40002, 'Akosua Amoah', 'Customer Service Representative', 201234567, 'akosua.amoah@example.com', 'Female', '2020-09-30', 'BSc. Marketing'),
(2009, 40002, 'Kwabena Boateng', 'Loan Officer', 272345678, 'kwabena.boateng@example.com', 'Male', '2022-04-10', 'MSc. Finance'),
(2010, 40002, 'Esi Acheampong', 'Financial Advisor', 238765432, 'esi.acheampong@example.com', 'Female', '2021-07-03', 'BSc. Economics'),
(2011, 40003, 'Kwaku Osei', 'Manager', 253456789, 'kwaku.osei@example.com', 'Male', '2019-03-15', 'MBA in Business Administration'),
(2012, 40003, 'Adwoa Addo', 'Teller', 210987654, 'adwoa.addo@example.com', 'Female', '2020-04-20', 'HND in Banking and Finance'),
(2013, 40003, 'Yaw Boakye', 'Customer Service Representative', 264567890, 'yaw.boakye@example.com', 'Male', '2021-11-10', 'BSc. Marketing'),
(2014, 40003, 'Akua Yeboah', 'Loan Officer', 245678901, 'akua.yeboah@example.com', 'Female', '2018-08-25', 'MSc. Finance'),
(2015, 40003, 'Kwame Ansah', 'Financial Advisor', 223456789, 'kwame.ansah@example.com', 'Male', '2022-05-30', 'BSc. Economics'),
(2016, 40004, 'Afia Amponsah', 'Manager', 209876543, 'afia.amponsah@example.com', 'Female', '2020-07-01', 'MBA in Business Administration'),
(2017, 40004, 'Kwabena Agyemang', 'Teller', 234567890, 'kwabena.agyemang@example.com', 'Male', '2021-08-15', 'HND in Banking and Finance'),
(2018, 40004, 'Ama Asare', 'Customer Service Representative', 256789012, 'ama.asare@example.com', 'Female', '2019-12-30', 'BSc. Marketing'),
(2019, 40004, 'Kofi Amoako', 'Loan Officer', 283456789, 'kofi.amoako@example.com', 'Male', '2022-02-10', 'MSc. Finance'),
(2020, 40004, 'Akosua Antwi', 'Financial Advisor', 245678901, 'akosua.antwi@example.com', 'Female', '2018-05-25', 'BSc. Economics'),
(2021, 40005, 'Kwadwo Amoako', 'Manager', 241234567, 'kwadwo.amoako@example.com', 'Male', '2020-01-15', 'BSc. Banking and Finance'),
(2022, 40005, 'Ama Osei', 'Teller', 209876543, 'ama.osei@example.com', 'Female', '2021-02-20', 'HND in Accounting'),
(2023, 40005, 'Yaw Ankomah', 'Customer Service Representative', 273456789, 'yaw.ankomah@example.com', 'Male', '2019-05-10', 'BBA in Marketing'),
(2024, 40005, 'Afia Boateng', 'Loan Officer', 268765432, 'afia.boateng@example.com', 'Female', '2022-03-25', 'MSc. Finance'),
(2025, 40005, 'Kwesi Adu', 'Financial Advisor', 234567890, 'kwesi.adu@example.com', 'Male', '2020-11-20', 'BSc. Economics'),
(2026, 40006, 'Kwame Ansah', 'Manager', 242345678, 'kwame.ansah@example.com', 'Male', '2019-02-10', 'MBA in Finance'),
(2027, 40006, 'Amina Abubakar', 'Teller', 278765432, 'amina.abubakar@example.com', 'Female', '2020-03-15', 'HND in Accounting'),
(2028, 40006, 'Kwesi Owusu', 'Customer Service Representative', 231234567, 'kwesi.owusu@example.com', 'Male', '2021-06-20', 'BBA in Marketing'),
(2029, 40006, 'Esi Anokye', 'Loan Officer', 263456789, 'esi.anokye@example.com', 'Female', '2018-09-05', 'MSc. Finance'),
(2030, 40006, 'Yaw Boateng', 'Financial Advisor', 209876543, 'yaw.boateng@example.com', 'Male', '2022-04-30', 'BSc. Economics'),
(2031, 40007, 'Adwoa Agyeiwaa', 'Manager', 232345678, 'adwoa.agyeiwaa@example.com', 'Female', '2019-01-15', 'MBA in Business Administration'),
(2032, 40007, 'Kwabena Owusu', 'Teller', 268765432, 'kwabena.owusu@example.com', 'Male', '2020-02-20', 'HND in Banking and Finance'),
(2033, 40007, 'Abena Akoto', 'Customer Service Representative', 241234567, 'abena.akoto@example.com', 'Female', '2021-05-10', 'BSc. Marketing'),
(2034, 40007, 'Kwaku Ansah', 'Loan Officer', 273456789, 'kwaku.ansah@example.com', 'Male', '2018-08-25', 'MSc. Finance'),
(2035, 40007, 'Ama Darko', 'Financial Advisor', 235678901, 'ama.darko@example.com', 'Female', '2022-03-10', 'BSc. Economics'),
(2036, 40008, 'Kwadwo Agyeman', 'Manager', 243456789, 'kwadwo.agyeman@example.com', 'Male', '2021-02-15', 'MBA in Finance'),
(2037, 40008, 'Akosua Adjei', 'Teller', 271234567, 'akosua.adjei@example.com', 'Female', '2018-03-20', 'HND in Accounting'),
(2038, 40008, 'Kwesi Ansah', 'Customer Service Representative', 238765432, 'kwesi.ansah@example.com', 'Male', '2019-06-10', 'BBA in Marketing'),
(2039, 40008, 'Esi Mensah', 'Loan Officer', 262345678, 'esi.mensah@example.com', 'Female', '2020-09-25', 'MSc. Finance'),
(2040, 40008, 'Yaw Boateng', 'Financial Advisor', 205678901, 'yaw.boateng@example.com', 'Male', '2022-04-10', 'BSc. Economics'),
(2041, 40009, 'Adwoa Agyeiwaa', 'Manager', 233456789, 'adwoa.agyeiwaa@example.com', 'Female', '2020-01-15', 'MBA in Business Administration'),
(2042, 40009, 'Kwabena Owusu', 'Teller', 269876543, 'kwabena.owusu@example.com', 'Male', '2021-02-20', 'HND in Banking and Finance'),
(2043, 40009, 'Abena Akoto', 'Customer Service Representative', 242345678, 'abena.akoto@example.com', 'Female', '2019-05-10', 'BSc. Marketing'),
(2044, 40009, 'Kwaku Ansah', 'Loan Officer', 278765432, 'kwaku.ansah@example.com', 'Male', '2022-03-25', 'MSc. Finance'),
(2045, 40009, 'Ama Darko', 'Financial Advisor', 231234567, 'ama.darko@example.com', 'Female', '2018-09-05', 'BSc. Economics'),
(2046, 40010, 'Ama Antwi', 'Manager', 209876543, 'ama.antwi@example.com', 'Female', '2018-12-01', 'MBA in Business Administration'),
(2047, 40010, 'Kofi Ofori', 'Teller', 267890123, 'kofi.ofori@example.com', 'Male', '2019-06-15', 'HND in Banking and Finance'),
(2048, 40010, 'Akosua Anane', 'Customer Service Representative', 201234567, 'akosua.anane@example.com', 'Female', '2020-09-30', 'BSc. Marketing'),
(2049, 40010, 'Kwabena Osei', 'Loan Officer', 272345678, 'kwabena.osei@example.com', 'Male', '2022-04-10', 'MSc. Finance'),
(2050, 40010, 'Esi Ampofo', 'Financial Advisor', 238765432, 'esi.ampofo@example.com', 'Female', '2021-07-03', 'BSc. Economics');



-- Insert data into Accounts table
INSERT INTO Accounts (AccountNumber, CustomerID, AccountType, Balance, AccountStatus, RegistrationDate, OpenDate, ClosedDate)
VALUES
(987654321098765, 1001, 'Checking Account', 1500.25, 'Active', '2022-01-01', '2022-01-05', NULL),
(876543210987654, 1002, 'Savings Account', 5000.75, 'Active', '2022-01-02', '2022-01-10', NULL),
(765432109876543, 1003, 'Money Market Account', 10000.5, 'Active', '2022-01-03', '2022-01-15', NULL),
(654321098765432, 1004, 'Certificate of Deposit (CD)', 7500, 'Active', '2022-01-04', '2022-01-20', NULL),
(543210987654321, 1005, 'Checking Account', 2000, 'Active', '2022-01-05', '2022-01-25', NULL),
(432109876543210, 1006, 'Savings Account', 8000.5, 'Active', '2022-01-06', '2022-01-30', NULL),
(321098765432109, 1007, 'Money Market Account', 12000.75, 'Active', '2022-01-07', '2022-02-01', NULL),
(210987654321098, 1008, 'Certificate of Deposit (CD)', 10000, 'Active', '2022-01-08', '2022-02-05', NULL),
(109876543210987, 1009, 'Checking Account', 3000.25, 'Active', '2022-01-09', '2022-02-10', NULL),
(987654321012345, 1010, 'Savings Account', 6000.75, 'Active', '2022-01-10', '2022-02-15', NULL);


-- Insert data into ATM table
INSERT INTO ATM (ATMid, Location, Status, OperatingHours, SupportedTransactions)
VALUES
(1, 'Main Street Branch, Accra', 'Operational', '9:00 AM - 5:00 PM', 'Cash Withdrawal, Cash Deposit, Balance Inquiry, Mini-Statement, Transfer Funds'),
(2, 'Oak Avenue Branch, Kumasi', 'Operational', '8:00 AM - 6:00 PM', 'Cash Withdrawal, Cash Deposit, Balance Inquiry, Mini-Statement, Change PIN, Cardless Transactions'),
(3, 'Pine Road Branch, Takoradi', 'Non-operational', 'Closed', NULL),
(4, 'Elm Lane Branch, Tamale', 'Operational', '24/7', 'Cash Withdrawal, Cash Deposit, Balance Inquiry, Mini-Statement, Transfer Funds, Check Deposits'),
(5, 'Cedar Street Branch, Cape Coast', 'Non-operational', 'Closed', NULL),
(6, 'Maple Drive Branch, Sunyani', 'Operational', '10:00 AM - 8:00 PM', 'Cash Withdrawal, Balance Inquiry, Mini-Statement, Cardless Transactions'),
(7, 'Birch Court Branch, Ho', 'Operational', '8:00 AM - 6:00 PM', 'Cash Withdrawal, Cash Deposit, Balance Inquiry, Mini-Statement, Transfer Funds, Change PIN'),
(8, 'Walnut Place Branch, Bolgatanga', 'Non-operational', 'Closed', NULL),
(9, 'Pine Lane Branch, Techiman', 'Operational', '9:00 AM - 5:00 PM', 'Cash Withdrawal, Cash Deposit, Balance Inquiry, Mini-Statement, Cardless Transactions'),
(10, 'Oak Road Branch, Koforidua', 'Operational', '10:00 AM - 7:00 PM', 'Cash Withdrawal, Cash Deposit, Balance Inquiry, Mini-Statement, Transfer Funds, Cardless Transactions');


-- Insert data into cards table
INSERT INTO cards (CardNumber, CustomerID, CardType, ExpiryDate, CardStatus)
VALUES
('1111222233334440', 1001, 'Debit', '2024-12-31', 'Active'),
('2222333344445550', 1002, 'Credit', '2023-12-31', 'Active'),
('3333444455556660', 1003, 'Debit', '2025-03-31', 'Active'),
('4444555566667770', 1004, 'Debit', '2025-08-31', 'Active'),
('5555666677778880', 1005, 'Credit', '2025-01-31', 'Active'),
('6666777788889990', 1006, 'Debit', '2024-09-30', 'Active'),
('7777888899990000', 1007, 'Credit', '2024-02-28', 'Active'),
('8888999900001110', 1008, 'Debit', '2023-10-31', 'Active'),
('9999000011112220', 1009, 'Credit', '2023-08-31', 'Active'),
('1234123412341230', 1010, 'Credit', '2024-10-31', 'Active');


-- Insert data into transactions table
INSERT INTO Transactions (TransactionID, AccountNumber, TransactionType, Amount, DateTime)
VALUES
('A7B2K9P4Q1', '987654321098765', 'Fund Movements', 500, '2022-02-01 08:30:00'),
('R5X8L3M2N7', '876543210987654', 'Financial Instruments', 1200.5, '2022-02-02 12:45:00'),
('S1F6G2H9J4', '765432109876543', 'Expense and Payments', 300.75, '2022-02-03 14:20:00'),
('Y3U7I2O8P5', '654321098765432', 'Generic Transactions', 1000, '2022-02-04 16:10:00'),
('C9V4W1X6Z3', '543210987654321', 'Fund Movements', 700.25, '2022-02-05 09:45:00'),
('L2A7B9C4D1', '432109876543210', 'Financial Instruments', 1500.75, '2022-02-06 11:30:00'),
('H5E8F3G6I2', '321098765432109', 'Expense and Payments', 400.5, '2022-02-07 13:15:00'),
('P9K4L1M7N2', '210987654321098', 'Generic Transactions', 800, '2022-02-08 15:00:00'),
('Q3R8S5T2U7', '109876543210987', 'Fund Movements', 600.25, '2022-02-09 10:00:00'),
('W1X6Y9Z4A2', '987654321012345', 'Financial Instruments', 1800.5, '2022-02-10 12:30:00'),
('D5E8F2G7H1', '987654321098765', 'Expense and Payments', 200.75, '2022-02-11 14:45:00'),
('U9I4O1P6Q3', '876543210987654', 'Generic Transactions', 1200, '2022-02-12 16:20:00'),
('B2K7L9M4N1', '765432109876543', 'Fund Movements', 800.25, '2022-02-13 09:30:00'),
('V3W8X5Y2Z7', '654321098765432', 'Financial Instruments', 1600.75, '2022-02-14 11:15:00'),
('J1R6S9T4U2', '543210987654321', 'Expense and Payments', 500.5, '2022-02-15 13:00:00'),
('M5N8O3P6Q2', '432109876543210', 'Generic Transactions', 900, '2022-02-16 15:45:00'),
('C7D2E9F4G1', '321098765432109', 'Fund Movements', 400.25, '2022-02-17 10:20:00'),
('H6I1J8K3L7', '210987654321098', 'Financial Instruments', 1400.5, '2022-02-18 12:00:00'),
('T9U4V1W6X2', '109876543210987', 'Expense and Payments', 300.75, '2022-02-19 14:30:00'),
('Y7Z2A9B4C1', '987654321012345', 'Generic Transactions', 700, '2022-02-20 16:15:00');


-- Insert data into TransactionDetails table
INSERT INTO TransactionDetails (TransactionID, Description, MerchantPayee, TransactionCategory, Currency, Notes)
VALUES
('A7B2K9P4Q1', 'Fund Transfer to Savings', 'XYZ Bank', 'Transfer', 'GHS', 'Transfer to personal savings account'),
('R5X8L3M2N7', 'Stock Purchase', 'Stock Broker Inc.', 'Sales', 'USD', 'Purchase of stock shares'),
('S1F6G2H9J4', 'Grocery Shopping', 'Local Mart', 'Payment', 'GHS', 'Payment for groceries'),
('Y3U7I2O8P5', 'Generic Expense', 'Various Vendors', 'Expense and Payments', 'USD', 'Miscellaneous expenses'),
('C9V4W1X6Z3', 'Loan Payment', 'XYZ Bank Loans', 'Repayment', 'GHS', 'Monthly installment for loan'),
('L2A7B9C4D1', 'Investment in Bonds', 'Investment Firm Ltd.', 'Sales', 'USD', 'Purchase of government bonds'),
('H5E8F3G6I2', 'Utility Bill Payment', 'Utility Co.', 'Bill payment', 'GHS', 'Payment for electricity and water bills'),
('P9K4L1M7N2', 'POS Transaction', 'Retail Store', 'POS (Point of Sale)', 'GHS', 'Purchase at local store'),
('Q3R8S5T2U7', 'Transfer to Family', 'Family Member', 'Transfer', 'GHS', 'Transfer to family member'),
('W1X6Y9Z4A2', 'Stock Dividend', 'Stock Broker Inc.', 'Dividend', 'USD', 'Dividend payout from stock investment'),
('D5E8F2G7H1', 'Dining Out', 'Restaurant XYZ', 'Payment', 'GHS', 'Payment for dining out'),
('U9I4O1P6Q3', 'Generic Expense', 'Various Vendors', 'Expense and Payments', 'USD', 'Miscellaneous expenses'),
('B2K7L9M4N1', 'Loan Payment', 'XYZ Bank Loans', 'Repayment', 'GHS', 'Monthly installment for loan'),
('V3W8X5Y2Z7', 'Stock Sale', 'Stock Broker Inc.', 'Sales', 'USD', 'Sale of stock shares'),
('J1R6S9T4U2', 'Online Shopping', 'Online Retailer', 'Payment', 'GHS', 'Payment for online purchases'),
('M5N8O3P6Q2', 'POS Transaction', 'Retail Store', 'POS (Point of Sale)', 'GHS', 'Purchase at local store'),
('C7D2E9F4G1', 'Cash Withdrawal', 'XYZ Bank ATM', 'Cash transactions', 'GHS', 'ATM cash withdrawal'),
('H6I1J8K3L7', 'Stock Purchase', 'Stock Broker Inc.', 'Sales', 'USD', 'Purchase of stock shares'),
('T9U4V1W6X2', 'Utility Bill Payment', 'Utility Co.', 'Bill payment', 'GHS', 'Payment for electricity and water bills'),
('Y7Z2A9B4C1', 'Generic Expense', 'Various Vendors', 'Expense and Payments', 'USD', 'Miscellaneous expenses');


-- Insert data into TransactionStatus table
INSERT INTO TransactionStatus (StatusID, TransactionID, StatusType, Description, Timestamp)
VALUES
('A3B9K2P', 'A7B2K9P4Q1', 'Completed', 'Transaction successfully completed', '2022-02-01 09:00:00'),
('R5X8L1M', 'R5X8L3M2N7', 'Completed', 'Transaction successfully completed', '2022-02-02 13:00:00'),
('S2F6G7H', 'S1F6G2H9J4', 'Failed', 'Transaction failed due to insufficient funds', '2022-02-03 15:30:00'),
('Y3U7I8O', 'Y3U7I2O8P5', 'Cancelled', 'Transaction intentionally cancelled by user', '2022-02-04 17:15:00'),
('C9V4W1X', 'C9V4W1X6Z3', 'Authorized', 'Transaction authorized for processing', '2022-02-05 10:00:00'),
('L2A7B9C', 'L2A7B9C4D1', 'Declined', 'Transaction declined by the bank', '2022-02-06 12:45:00'),
('H5E8F3G', 'H5E8F3G6I2', 'Refunded', 'Transaction funds refunded to the account', '2022-02-07 14:30:00'),
('P9K4L7M', 'P9K4L1M7N2', 'Reversed', 'Transaction successfully reversed', '2022-02-08 16:15:00'),
('Q3R8S5T', 'Q3R8S5T2U7', 'Hold', 'Transaction temporarily on hold for review', '2022-02-09 11:30:00'),
('W1X6Y9Z', 'W1X6Y9Z4A2', 'Expired', 'Transaction authorization or timeframe has expired', '2022-02-10 13:45:00'),
('D5E8F2G', 'D5E8F2G7H1', 'Settled', 'Transaction successfully settled', '2022-02-11 15:00:00'),
('U9I4O1P', 'U9I4O1P6Q3', 'Failed', 'Transaction failed due to technical issues', '2022-02-12 17:30:00'),
('B2K7L9M', 'B2K7L9M4N1', 'Completed', 'Transaction successfully completed', '2022-02-13 10:45:00'),
('V3W8X5Y', 'V3W8X5Y2Z7', 'Authorized', 'Transaction authorized for processing', '2022-02-14 12:00:00'),
('J1R6S9T', 'J1R6S9T4U2', 'Declined', 'Transaction declined by the bank', '2022-02-15 14:15:00'),
('M5N8O3P', 'M5N8O3P6Q2', 'Refunded', 'Transaction funds refunded to the account', '2022-02-16 16:30:00'),
('C7D2E9F', 'C7D2E9F4G1', 'Reversed', 'Transaction successfully reversed', '2022-02-17 11:00:00'),
('H6I1J8K', 'H6I1J8K3L7', 'Hold', 'Transaction temporarily on hold for review', '2022-02-18 13:15:00'),
('T9U4V1W', 'T9U4V1W6X2', 'Expired', 'Transaction authorization or timeframe has expired', '2022-02-19 15:30:00'),
('Y7Z2A9B', 'Y7Z2A9B4C1', 'Settled', 'Transaction successfully settled', '2022-02-20 17:45:00');
