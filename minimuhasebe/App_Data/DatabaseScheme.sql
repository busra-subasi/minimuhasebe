CREATE TABLE Users (
    Id int PRIMARY KEY identity(1,1),
	Email varchar(128),
	Password varchar(128),
	Fullname varchar(128),
	Created_At date,
)
CREATE TABLE Customer (
  Id int PRIMARY KEY identity(1,1),
  Firstname varchar(50),
  Lastname varchar(50),
  Companyname varchar(100),
  Addres text ,
  Email varchar(50),
  Phone varchar(50),
  Tax_Number int,
  Tax_Office varchar(500),
  Create_At date
) 

CREATE TABLE  PaymentTransaction (
  Id int PRIMARY KEY identity(1,1),
  Id_Customer int FOREIGN KEY REFERENCES Customer(Id) ,
  Id_User_Create int FOREIGN KEY REFERENCES Users(Id),
  Payment_Type int,
  Amount decimal(15,4),
  Description varchar(max),
  Create_At date,
)


CREATE TABLE  Product (
  Id int PRIMARY KEY identity(1,1),
  Name varchar(50),
  Price decimal(15,4) ,
  Tax_Rate decimal(4,4),
  Create_At date,
  Quantity int ,
  Decription varchar(max),
)


CREATE TABLE  SalesInvoice (
  Id int PRIMARY KEY identity(1,1),
  Id_Customer int FOREIGN KEY REFERENCES Customer(Id) ,
  Id_User_Create int FOREIGN KEY REFERENCES Users(Id),
  Total decimal(15,4) ,
  Tax_Office varchar(500),
  Tax_Total decimal(15,4),
  Grand_Total decimal(15,4),
  Tax_Number int,
  Description varchar(max),
  Create_At date,  
)

CREATE TABLE  SalesInvoiceItem (
  Id int PRIMARY KEY identity(1,1),
  Id_Sales_Invoice int FOREIGN KEY REFERENCES SalesInvoice(Id) ,
  Id_Product int FOREIGN KEY REFERENCES Product(Id) ,
  Quantity int ,
  Price decimal(15,4) ,
  Tax_Rate decimal(4,4) ,
)



 