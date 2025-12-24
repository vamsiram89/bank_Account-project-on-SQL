CREATE DATABASE BankAccount;

USE BankAccount;
CREATE TABLE BANK_CUSTOMER ( customer_id INT ,
             	customer_name VARCHAR(20),
             	Address 	VARCHAR(20),
             	state_code  VARCHAR(3) ,    	 
             	Telephone   VARCHAR(10)	);
INSERT INTO BANK_CUSTOMER VALUES (123001,"Oliver", "225-5, Emeryville", "CA" , "1897614500");
INSERT INTO BANK_CUSTOMER VALUES (123002,"George", "194-6,New brighton","MN" , "1897617000");
INSERT INTO BANK_CUSTOMER VALUES (123003,"Harry", "2909-5,walnut creek","CA" , "1897617866");
INSERT INTO BANK_CUSTOMER VALUES (123004,"Jack", "229-5, Concord",  	"CA" , "1897627999");
INSERT INTO BANK_CUSTOMER VALUES (123005,"Jacob", "325-7, Mission Dist","SFO", "1897637000");
INSERT INTO BANK_CUSTOMER VALUES (123006,"Noah", "275-9, saint-paul" ,  "MN" , "1897613200");
INSERT INTO BANK_CUSTOMER VALUES (123007,"Charlie","125-1,Richfield",   "MN" , "1897617666");
INSERT INTO BANK_CUSTOMER VALUES (123008,"Robin","3005-1,Heathrow", 	"NY" , "1897614000");

-- Bank_Customer_export

CREATE TABLE BANK_CUSTOMER_EXPORT ( customer_id CHAR(10),
customer_name CHAR(20),
Address CHAR(20),
state_code  CHAR(3) ,    	 
Telephone  CHAR(10));
    
INSERT INTO BANK_CUSTOMER_EXPORT VALUES ("123001 ","Oliver", "225-5, Emeryville", "CA" , "1897614500");
INSERT INTO BANK_CUSTOMER_EXPORT VALUES ("123002 ","George", "194-6,New brighton","MN" , "189761700");

CREATE TABLE Bank_Account_Details(Customer_id INT,           	 
                             	Account_Number VARCHAR(19),
                              	Account_type VARCHAR(25),
                           	    Balance_amount INT,
                               	Account_status VARCHAR(10),             	 
                               	Relationship_type varchar(1) ) ;
                                
INSERT INTO Bank_Account_Details  VALUES (123001, "4000-1956-3456",  "SAVINGS" , 200000 ,"ACTIVE","P");
INSERT INTO Bank_Account_Details  VALUES (123001, "5000-1700-3456", "RECURRING DEPOSITS" ,9400000 ,"ACTIVE","S");  
INSERT INTO Bank_Account_Details  VALUES (123002, "4000-1956-2001",  "SAVINGS", 400000 ,"ACTIVE","P");
INSERT INTO Bank_Account_Details  VALUES (123002, "5000-1700-5001",  "RECURRING DEPOSITS" ,7500000 ,"ACTIVE","S");
INSERT INTO Bank_Account_Details  VALUES (123003, "4000-1956-2900",  "SAVINGS" ,750000,"INACTIVE","P");
INSERT INTO Bank_Account_Details  VALUES (123004, "5000-1700-6091", "RECURRING DEPOSITS" ,7500000 ,"ACTIVE","S");
INSERT INTO Bank_Account_Details  VALUES (123004, "4000-1956-3401",  "SAVINGS" , 655000 ,"ACTIVE","P");
INSERT INTO Bank_Account_Details  VALUES (123005, "4000-1956-5102",  "SAVINGS" , 300000 ,"ACTIVE","P");
INSERT INTO Bank_Account_Details  VALUES (123006, "4000-1956-5698",  "SAVINGS" , 455000 ,"ACTIVE" ,"P");
INSERT INTO Bank_Account_Details  VALUES (123007, "5000-1700-9800",  "SAVINGS" , 355000 ,"ACTIVE" ,"P");
INSERT INTO Bank_Account_Details  VALUES (123007, "4000-1956-9977",  "RECURRING DEPOSITS" , 7025000,"ACTIVE" ,"S");
INSERT INTO Bank_Account_Details  VALUES (123007, "9000-1700-7777-4321",  "Credit Card"	,0  ,"INACTIVE", "P");
INSERT INTO Bank_Account_Details  VALUES (123007, '5900-1900-9877-5543', "Add-on Credit Card" ,   0   ,"ACTIVE", "S");
INSERT INTO Bank_Account_Details  VALUES (123008, "5000-1700-7755",  "SAVINGS"   	,0   	,"INACTIVE","P");
INSERT INTO Bank_Account_Details  VALUES (123006, '5800-1700-9800-7755', "Credit Card"   ,0   	,"ACTIVE", "P");
INSERT INTO Bank_Account_Details  VALUES (123006, '5890-1970-7706-8912', "Add-on Credit Card"   ,0   	,"ACTIVE", "S");

-- Bank Account Table
# CREATE Bank_Account Table:
# Create Table
CREATE TABLE BANK_ACCOUNT ( Customer_id INT, 		   			  
	                Account_Number VARCHAR(19),
		     Account_type VARCHAR(25),
		     Balance_amount INT ,
			Account_status VARCHAR(10), Relation_ship varchar(1) ) ;
            
# Insert records:
INSERT INTO BANK_ACCOUNT  VALUES (123001, "4000-1956-3456",  "SAVINGS"            , 200000 ,"ACTIVE","P"); 
INSERT INTO BANK_ACCOUNT  VALUES (123001, "5000-1700-3456",  "RECURRING DEPOSITS" ,9400000 ,"ACTIVE","S");  
INSERT INTO BANK_ACCOUNT  VALUES (123002, "4000-1956-2001",  "SAVINGS"            , 400000 ,"ACTIVE","P"); 
INSERT INTO BANK_ACCOUNT  VALUES (123002, "5000-1700-5001",  "RECURRING DEPOSITS" ,7500000 ,"ACTIVE","S"); 
INSERT INTO BANK_ACCOUNT  VALUES (123003, "4000-1956-2900",  "SAVINGS"            ,750000,"INACTIVE","P"); 
INSERT INTO BANK_ACCOUNT  VALUES (123004, "5000-1700-6091",  "RECURRING DEPOSITS" ,7500000 ,"ACTIVE","S"); 
INSERT INTO BANK_ACCOUNT  VALUES (123004, "4000-1956-3401",  "SAVINGS"            , 655000 ,"ACTIVE","P"); 
INSERT INTO BANK_ACCOUNT  VALUES (123005, "4000-1956-5102",  "SAVINGS"            , 300000 ,"ACTIVE","P"); 
INSERT INTO BANK_ACCOUNT  VALUES (123006, "4000-1956-5698",  "SAVINGS"            , 455000 ,"ACTIVE" ,"P"); 
INSERT INTO BANK_ACCOUNT  VALUES (123007, "5000-1700-9800",  "SAVINGS"            , 355000 ,"ACTIVE" ,"P"); 
INSERT INTO BANK_ACCOUNT  VALUES (123007, "4000-1956-9977",  "RECURRING DEPOSITS" , 7025000,"ACTIVE" ,"S"); 
INSERT INTO BANK_ACCOUNT  VALUES (123007, "9000-1700-7777-4321",  "CREDITCARD"    ,0      ,"INACTIVE","P"); 
INSERT INTO BANK_ACCOUNT  VALUES (123008, "5000-1700-7755",  "SAVINGS"            ,NULL   ,"INACTIVE","P"); 


# Bank_Account_Relationship_Details

# CREATE TABLE Bank_Account_Relationship_Details

CREATE TABLE Bank_Account_Relationship_Details
                             	( Customer_id INT,
								Account_Number VARCHAR(19),
                            	Account_type VARCHAR(25),
                             	Linking_Account_Number VARCHAR(19));
INSERT INTO Bank_Account_Relationship_Details  VALUES (123001, "4000-1956-3456",  "SAVINGS" , "");
INSERT INTO Bank_Account_Relationship_Details  VALUES (123001, "5000-1700-3456",  "RECURRING DEPOSITS" , "4000-1956-3456");  
INSERT INTO Bank_Account_Relationship_Details  VALUES (123002, "4000-1956-2001",  "SAVINGS" , "" );
INSERT INTO Bank_Account_Relationship_Details  VALUES (123002, "5000-1700-5001",  "RECURRING DEPOSITS" , "4000-1956-2001" );
INSERT INTO Bank_Account_Relationship_Details  VALUES (123003, "4000-1956-2900",  "SAVINGS" , "" );
INSERT INTO Bank_Account_Relationship_Details  VALUES (123004, "5000-1700-6091",  "RECURRING DEPOSITS" , "4000-1956-2900" );
INSERT INTO Bank_Account_Relationship_Details  VALUES (123004, "5000-1700-7791",  "RECURRING DEPOSITS" , "4000-1956-2900" );
INSERT INTO Bank_Account_Relationship_Details  VALUES (123007, "5000-1700-9800",  "SAVINGS" , "" );
INSERT INTO Bank_Account_Relationship_Details  VALUES (123007, "4000-1956-9977",  "RECURRING DEPOSITS" , "5000-1700-9800" );
INSERT INTO Bank_Account_Relationship_Details  VALUES (NULL, "9000-1700-7777-4321",  "Credit Card" , "5000-1700-9800" );
INSERT INTO Bank_Account_Relationship_Details  VALUES (NULL, '5900-1900-9877-5543', 'Add-on Credit Card', '9000-1700-7777-4321' );
INSERT INTO Bank_Account_Relationship_Details  VALUES (NULL, '5800-1700-9800-7755', 'Credit Card', '4000-1956-5698' );
INSERT INTO Bank_Account_Relationship_Details  VALUES (NULL, '5890-1970-7706-8912', 'Add-on Credit Card', '5800-1700-9800-7755' );

# BANK_ACCOUNT_TRANSACTION

# CREATE TABLE BANK_ACCOUNT_TRANSACTION

CREATE TABLE BANK_ACCOUNT_TRANSACTION (  
              	Account_Number VARCHAR(19),
              	Transaction_amount Decimal(18,2) ,
              	Transcation_channel VARCHAR(18) ,
             	Province varchar(3) ,
             	Transaction_Date Date) ;


INSERT INTO BANK_ACCOUNT_TRANSACTION VALUES ( "4000-1956-3456",  -2000, "ATM withdrawl" , "CA", "2020-01-13");
INSERT INTO BANK_ACCOUNT_TRANSACTION VALUES ( "4000-1956-2001",  -4000, "POS-Walmart"   , "MN", "2020-02-14");
INSERT INTO BANK_ACCOUNT_TRANSACTION VALUES ( "4000-1956-2001",  -1600, "UPI transfer"  , "MN", "2020-01-19");
INSERT INTO BANK_ACCOUNT_TRANSACTION VALUES ( "4000-1956-2001",  -6000, "Bankers cheque", "CA", "2020-03-23");
INSERT INTO BANK_ACCOUNT_TRANSACTION VALUES ( "4000-1956-2001",  -3000, "Net banking"   , "CA", "2020-04-24");
INSERT INTO BANK_ACCOUNT_TRANSACTION VALUES ( "4000-1956-2001",  23000, "cheque deposit", "MN", "2020-03-15");
INSERT INTO BANK_ACCOUNT_TRANSACTION VALUES ( "5000-1700-6091",  40000, "ECS transfer"  , "NY", "2020-02-19");
INSERT INTO BANK_ACCOUNT_TRANSACTION VALUES ( "5000-1700-7791",  40000, "ECS transfer"  , "NY", "2020-02-19");
INSERT INTO BANK_ACCOUNT_TRANSACTION VALUES ( "4000-1956-3401",   8000, "Cash Deposit"  , "NY", "2020-01-19");
INSERT INTO BANK_ACCOUNT_TRANSACTION VALUES ( "4000-1956-5102",  -6500, "ATM withdrawal" , "NY", "2020-03-14");
INSERT INTO BANK_ACCOUNT_TRANSACTION VALUES ( "4000-1956-5698",  -9000, "Cash Deposit"  , "NY", "2020-03-27");
INSERT INTO BANK_ACCOUNT_TRANSACTION VALUES ( "4000-1956-9977",  50000, "ECS transfer"  , "NY", "2020-01-16");
INSERT INTO BANK_ACCOUNT_TRANSACTION VALUES ( "9000-1700-7777-4321",  -5000, "POS-Walmart", "NY", "2020-02-17");
INSERT INTO BANK_ACCOUNT_TRANSACTION VALUES ( "9000-1700-7777-4321",  -8000, "Shopping Cart", "MN", "2020-03-13");
INSERT INTO BANK_ACCOUNT_TRANSACTION VALUES ( "9000-1700-7777-4321",  -2500, "Shopping Cart", "MN", "2020-04-21");
INSERT INTO BANK_ACCOUNT_TRANSACTION VALUES ( "5800-1700-9800-7755", -9000, "POS-Walmart","MN", "2020-04-13");
INSERT INTO BANK_ACCOUNT_TRANSACTION VALUES ( '5890-1970-7706-8912', -11000, "Shopping Cart" , "NY" , "2020-03-12") ;


# BANK_CUSTOMER_MESSAGES

CREATE TABLE BANK_CUSTOMER_MESSAGES (  
              	Event VARCHAR(24),
              	Customer_message VARCHAR(75),
              	Notice_delivery_mode VARCHAR(15));


INSERT INTO BANK_CUSTOMER_MESSAGES VALUES ( "Adhoc", "All Banks are closed due to announcement of National strike", "mobile" ) ;
INSERT INTO BANK_CUSTOMER_MESSAGES VALUES ( "Transaction Limit", "Only limited withdrawals per card are allowed from ATM machines", "mobile" );
INSERT INTO `bank_account_transaction`(`Account_Number`, `Transaction_amount`, `Transcation_channel`, `Province`, `Transaction_Date`) VALUES
('4000-1956-9977' ,    10000.00     ,'ECS transfer',     'MN' ,    '2020-02-16' ) ;

-- inserted for queries after 17th  
INSERT INTO `bank_account_transaction`(`Account_Number`, `Transaction_amount`, `Transcation_channel`, `Province`, `Transaction_Date`) VALUES
('4000-1956-9977' ,    40000.00     ,'ECS transfer',     'MN' ,    '2020-03-18' ) ;

INSERT INTO `bank_account_transaction`(`Account_Number`, `Transaction_amount`, `Transcation_channel`, `Province`, `Transaction_Date`) VALUES
('4000-1956-9977' ,    60000.00     ,'ECS transfer',     'MN' ,    '2020-04-18' ) ;

INSERT INTO `bank_account_transaction`(`Account_Number`, `Transaction_amount`, `Transcation_channel`, `Province`, `Transaction_Date`) VALUES
('4000-1956-9977' ,    20000.00     ,'ECS transfer',     'MN' ,    '2020-03-20' ) ;

-- inserted for queries after 24th 

INSERT INTO `bank_account_transaction`(`Account_Number`, `Transaction_amount`, `Transcation_channel`, `Province`, `Transaction_Date`) VALUES
('4000-1956-9977' ,    49000.00     ,'ECS transfer',     'MN' ,    '2020-06-18' ) ;


# BANK_INTEREST_RATE

CREATE TABLE BANK_INTEREST_RATE(  
            	account_type varchar(24),
              	interest_rate decimal(4,2),
            	month varchar(2),
            	year  varchar(4)
             	);

INSERT  INTO BANK_INTEREST_RATE VALUES ( "SAVINGS" , 0.04 , '02' , '2020' );
INSERT  INTO BANK_INTEREST_RATE VALUES ( "RECURRING DEPOSITS" , 0.07, '02' , '2020' );
INSERT  INTO BANK_INTEREST_RATE VALUES   ( "PRIVILEGED_INTEREST_RATE" , 0.08 , '02' , '2020' );




# Question 1: 
-- 1) Print customer Id, customer name and average account_balance maintained by each customer 
-- for all  of his/her accounts in the bank.(8 Rows) 

select bc.customer_id, bc.customer_name, avg(bac.balance_amount) as avg_amount
from bank_customer bc
inner join Bank_account_details  bac
on 
bc.customer_id = bac.customer_id 
group by 
bc.customer_id, bc.customer_name;



# Question 2: 
-- 2) Print customer_id , account_number and balance_amount , condition that if balance_amount is 
-- nil then assign transaction_amount  for account_type = "Credit Card"(4 Rows) 


SELECT 
    bac.customer_id,
    bac.account_number,
    bat.transaction_amount AS balance_amount
FROM 
    bank_account_details bac
INNER JOIN 
    bank_account_transaction bat
ON 
    bac.account_number = bat.account_number
WHERE 
    bac.account_type = 'Credit Card'
    AND bac.balance_amount = 0;



-- 3) Print account_number and balance_amount , transaction_amount,Transaction_Date from 
-- Bank_Account_Details and bank_account_transaction for all the transactions occurred during 
-- march,2020 and april, 2020(12 Rows) 

-- select count(*) as total_count 
-- from(
explain select 
	bac.account_number ,
    bac.balance_amount,
    bat.transaction_amount,
    bat.transaction_date 
from bank_account_details bac
inner join bank_account_transaction bat
ON 
    bac.account_number = bat.account_number
where 
	Transaction_Date between '2020-03-01' and  '2020-04-30';
-- ) as result;



--  4) Print all of the customer id, account number,  balance_amount, transaction_amount , 
-- Transaction_Date  from bank_customer, Bank_Account_Details and bank_account_transaction tables 
-- where excluding all of their transactions in march, 2020  month (22 Rows) 

# here why we use left join means even if there is an no transaction aslo we should have to dispaly them 

    SELECT 
        bc.customer_id,
        bac.account_number,
        bac.balance_amount,
        bat.transaction_amount,
        bat.transaction_date
    FROM 
        bank_customer bc
    LEFT JOIN 
        bank_account_details bac
        ON bc.customer_id = bac.customer_id
    LEFT JOIN 
        bank_account_transaction bat
        ON bac.account_number = bat.account_number
           AND bat.transaction_date NOT BETWEEN '2020-03-01' AND '2020-03-31';
           
           
-- 5) Print only the customer id, account_number, balance_amount,transaction_amount 
-- ,transaction_date who did transactions during the first quarter. Do not display the accounts if they 
-- have not done any transactions in the first quarter.(16 Rows) 

# here why we are using the inner join means we want to dispaly only transaction person only, don't have done any transactions
select 
	bc.customer_id,
    bac.account_number,
    bac.balance_amount,
    bat.transaction_amount,
    bat.transaction_date
from 
	bank_customer bc
inner join 
	bank_account_details bac
	ON bc.customer_id = bac.customer_id
inner join
        bank_account_transaction bat
        ON bac.account_number = bat.account_number
where bat.transaction_date between '2020-01-01' and '2020-03-31';


-- # 6) Print account_number, Event and Customer_message from BANK_CUSTOMER_MESSAGES and 
-- Bank_Account_Details to display an “Adhoc" Event for all customers who have  “SAVINGS" 
-- account_type account.(8 Rows) 

# why we are cross join  means each row from the first table is combined with every row from the second table.

SELECT 
    bac.account_number,
    bcm.event,
    bcm.customer_message
FROM 
    Bank_Account_Details bac
CROSS JOIN 
    BANK_CUSTOMER_MESSAGES bcm
WHERE 
    bac.account_type = 'SAVINGS'
    AND bcm.event = 'Adhoc';

-- *** 7) Print all Customer_id, Account_Number, Account_type, and display deducted balance_amount 
-- by  subtracting only negative transaction_amounts for Relationship_type ="P" ( P - means  Primary , S 
-- - means Secondary ) .(27 Rows) 

SELECT 
    bad.Customer_id,
    bad.Account_Number,
    bad.Account_type,
    bad.Balance_amount + bat.Transaction_amount AS deducted_balance_amount
FROM Bank_Account_Details bad
JOIN BANK_ACCOUNT_TRANSACTION bat
    ON bad.Account_Number = bat.Account_Number
WHERE bad.Relationship_type = 'P'
  AND bat.Transaction_amount < 0;
  
-- *** Question 8: 
-- # a) Display records of All Accounts , their Account_types, the transaction amount. 

select 
	bad.account_number,
    bad.account_type,
    bat.transaction_amount
from bank_account_details bad
left join 
	bank_account_transaction bat
    on bad.account_number = bat.account_number;
    
-- b) Along with first step, Display other columns with corresponding linking account number, account 
-- types (15 Rows) 

SELECT 
    bad.Account_Number,
    bad.Account_type,
    SUM(bat.Transaction_amount) AS transaction_amount,
    bard.Linking_Account_Number,
    bard.Account_type AS linking_account_type
FROM Bank_Account_Details bad
LEFT JOIN BANK_ACCOUNT_TRANSACTION bat
    ON bad.Account_Number = bat.Account_Number
LEFT JOIN Bank_Account_Relationship_Details bard
    ON bad.Account_Number = bard.Account_Number
GROUP BY
    bad.Account_Number,
    bad.Account_type,
    bard.Linking_Account_Number,
    bard.Account_type;
    
    
-- Question 9: 
-- # a) Display records of All Accounts , their Account_types, the transaction amount. 

-- a)
SELECT
    bad.Account_Number,
    bad.Account_type,
    bat.Transaction_amount
FROM Bank_Account_Details bad
LEFT JOIN BANK_ACCOUNT_TRANSACTION bat
    ON bad.Account_Number = bat.Account_Number;
    
    
-- b) Along with first step, Display other columns with corresponding linking account number, account 
-- types 

SELECT
    bad.Account_Number,
    bad.Account_type,
    bat.Transaction_amount,
    bar.Linking_Account_Number,
    lad.Account_type AS Linking_Account_Type
FROM Bank_Account_Details bad
LEFT JOIN BANK_ACCOUNT_TRANSACTION bat
    ON bad.Account_Number = bat.Account_Number
LEFT JOIN Bank_Account_Relationship_Details bar
    ON bad.Account_Number = bar.Account_Number
LEFT JOIN Bank_Account_Details lad
    ON bar.Linking_Account_Number = lad.Account_Number;
    
-- # c) After retrieving all records of accounts and their linked accounts, display the   transaction 
-- amount of accounts appeared  in another column.(26 Rows) 


SELECT
    bad.Account_Number,
    bad.Account_type,
    bat.Transaction_amount AS Main_Account_Transaction_Amount,
    bar.Linking_Account_Number,
    lad.Account_type AS Linking_Account_Type,
    bat2.Transaction_amount AS Linked_Account_Transaction_Amount
FROM Bank_Account_Details bad
LEFT JOIN BANK_ACCOUNT_TRANSACTION bat
    ON bad.Account_Number = bat.Account_Number
LEFT JOIN Bank_Account_Relationship_Details bar
    ON bad.Account_Number = bar.Account_Number
LEFT JOIN Bank_Account_Details lad
    ON bar.Linking_Account_Number = lad.Account_Number
LEFT JOIN BANK_ACCOUNT_TRANSACTION bat2
    ON bar.Linking_Account_Number = bat2.Account_Number;
    

-- Question 10: 
# 10) Display all saving account holders have “Add-on Credit Cards" and “Credit cards" 

-- Savings linked directly to Credit Cards
SELECT 
    s.customer_id,
    s.account_number AS savings_account,
    r.account_number AS linked_account,
    r.account_type AS linked_account_type
FROM Bank_Account_Details s
JOIN Bank_Account_Relationship_Details r
     ON s.account_number = r.linking_account_number
WHERE s.account_type = 'SAVINGS'
  AND r.account_type = 'Credit Card'

UNION ALL

-- Savings linked indirectly to Add-on Credit Cards (via Credit Card)
SELECT distinct
    s.customer_id,
    s.account_number AS savings_account,
    r2.account_number AS linked_account,
    r2.account_type AS linked_account_type
FROM Bank_Account_Details s
JOIN Bank_Account_Relationship_Details r1
     ON s.account_number = r1.linking_account_number
JOIN Bank_Account_Relationship_Details r2
     ON r1.account_number = r2.linking_account_number
WHERE s.account_type = 'SAVINGS'
  AND r2.account_type = 'Add-on Credit Card';


INSERT INTO Bank_Account_Relationship_Details  
VALUES (NULL, "9000-1700-7777-4321",  "Credit Card" , "5000-1700-9800"); 

INSERT INTO Bank_Account_Relationship_Details  
VALUES (NULL, '5900-1900-9877-5543', 'Add-on Credit Card', '9000-1700-7777-4321'); 

INSERT INTO Bank_Account_Relationship_Details  
VALUES (NULL, '5800-1700-9800-7755', 'Credit Card', '4000-1956-5698'); 

INSERT INTO Bank_Account_Relationship_Details  
VALUES (NULL, '5890-1970-7706-8912', 'Add-on Credit Card', '5800-1700-9800-7755'); 
	
# 11)  Display  records of “SAVINGS” account linked with “Credit cards" account_type and its credit 
# aggregate sum of transaction amount. (1 Row) 
# Ref: Check linking relationship in bank_transaction_relationship_details. 
        # Check transaction_amount in bank_account_transaction.
        
SELECT 
    s.customer_id,
    s.account_number AS savings_account,
    SUM(bat.transaction_amount) AS total_credit_transactions
FROM Bank_Account_Details s
JOIN Bank_Account_Relationship_Details r
     ON s.account_number = r.linking_account_number
JOIN Bank_Account_Transaction bat
     ON r.account_number = bat.account_number
WHERE s.account_type = 'SAVINGS'
  AND r.account_type = 'Credit Card'
GROUP BY s.customer_id, s.account_number;



    
