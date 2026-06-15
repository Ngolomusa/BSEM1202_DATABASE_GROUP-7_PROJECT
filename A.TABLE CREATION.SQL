

CREATE TABLE trader(
    TRADER_ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    Gender VARCHAR(10),
    Date_Of_Birth VARCHAR(50),
    Address VARCHAR(25),
    Phone VARCHAR(50),
    Category VARCHAR(50),
    Service_Type VARCHAR(50),
    Product_Sold VARCHAR(25),
	Email VARCHAR(100)
    );

CREATE TABLE MARKET (
   Market_ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
   Market_Name VARCHAR(25),
   Market_Location VARCHAR(30)
);

CREATE TABLE MARKET_STALL(
    MARKET_STALL_ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Market_ID INT,
    FOREIGN KEY (Market_ID) REFERENCES MARKET( Market_ID ),
    Stall_Code VARCHAR(50),
    Stall_Status VARCHAR(20),
    Category VARCHAR(50),
    trader_ID INT,
    FOREIGN KEY (trader_ID)REFERENCES trader(trader_ID),
    Stall_Size INT
);

CREATE TABLE LOCAL_COUNCIL_STAFF(
    STAFF_ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(20),
    Role VARCHAR(50),
    Phone VARCHAR(25),
    Email VARCHAR(50),
	gender VARCHAR(10),
	Address VARCHAR(20)
);

CREATE TABLE STALL_ALLOCATION(
    STALL_ALLOCATION_ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    trader_ID INT,
    FOREIGN KEY (trader_ID)REFERENCES trader(trader_ID),
    market_stall_ID INT,
    FOREIGN KEY (market_stall_ID) REFERENCES market_stall(market_stall_ID ),
    staff_ID INT,
    FOREIGN KEY (staff_ID) REFERENCES local_council_staff( staff_ID ),
    Start_Date DATETIME,
    Expiry_Date DATETIME,
    Allocation_Status VARCHAR(50)
);

CREATE TABLE REGISTRATION_RECORDS(
    REGISTRATION_ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    stall_allocation_ID INT,
    FOREIGN KEY (stall_allocation_ID)REFERENCES stall_allocation(stall_allocation_ID),
    Registration_Date DATETIME,
    Registration_Status VARCHAR(50)
);

CREATE TABLE PAYMENT_RECORDS(
    PAYMENT_ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    stall_allocation_ID INT,
    FOREIGN KEY (stall_allocation_ID)REFERENCES stall_allocation(stall_allocation_ID),
    Paid_Amount DECIMAL(10,2),
    Method_of_Payment VARCHAR(50),
    Payment_Status VARCHAR(50),
    Payment_Date DATETIME,
    Reciept_Code VARCHAR(200)
);

CREATE TABLE SALES_RECORDS(
    SALES_ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    market_stall_ID INT,
    FOREIGN KEY (market_stall_ID)REFERENCES market_stall(market_stall_ID),
    Amount_PAID DECIMAL(10,2),
    SALES_Status VARCHAR(50),
    SALES_Date DATETIME,
    Reciept_Code VARCHAR(200)
);

CREATE TABLE COMPLAINT(
   COMPLAINT_ID INT  PRIMARY KEY AUTO_INCREMENT NOT NULL,
   TYPE VARCHAR(50),
   STATUS VARCHAR(50),
   DATE_REPORTED VARCHAR(50),
   DATE_SOLVED VARCHAR(50),
   TRADER_ID INT ,
   FOREIGN KEY (TRADER_ID)REFERENCES TRADER (TRADER_ID ),
   STAFF_ID INT,
   FOREIGN KEY (STAFF_ID )REFERENCES LOCAL_COUNCIL_STAFF (STAFF_ID )
);
