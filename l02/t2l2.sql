
/*

Suppliers (Постачальники)
SupplierID	INT	Унікальний ідентифікатор
SupplierName	VARCHAR(255)	Назва постачальника
ContactName	VARCHAR(255)	Ім’я контактної особи
ContactPhone	VARCHAR(20)	Телефон контактної особи
Address	VARCHAR(255)	Адреса
Email	VARCHAR(255)	Електронна пошта

Products (Товари)
ProductID	INT	Унікальний ідентифікатор
ProductName	VARCHAR(255)	Назва товару
SupplierID	INT	Ідентифікатор постачальника
Category	VARCHAR(255)	Категорія товару
QuantityPerUnit	VARCHAR(50)	Кількість в упаковці
UnitPrice	DECIMAL(10, 2)	Ціна за одиницю
UnitsInStock	INT	Кількість на складі

Staff (Персонал)
StaffID	INT	Унікальний ідентифікатор
FirstName	VARCHAR(255)	Ім’я
LastName	VARCHAR(255)	Прізвище
Position	VARCHAR(255)	Посада
HireDate	DATE	Дата прийому на роботу
Phone	VARCHAR(20)	Телефон
Email	VARCHAR(255)	Електронна пошта

Customers (Постійні замовники)
CustomerID	INT	Унікальний ідентифікатор
CustomerName	VARCHAR(255)	Назва замовника
ContactName	VARCHAR(255)	Ім’я контактної особи
ContactPhone	VARCHAR(20)	Телефон контактної особи
Address	VARCHAR(255)	Адреса
Email	VARCHAR(255)	Електронна пошта

Orders (Замовлення)
OrderID	INT	Унікальний ідентифікатор
CustomerID	INT	Ідентифікатор замовника
OrderDate	DATE	Дата замовлення
ShipDate	DATE	Дата відправлення
TotalAmount	DECIMAL(10, 2)	Загальна сума

OrderDetails (Деталі замовлення)
OrderDetailID	INT	Унікальний ідентифікатор
OrderID	INT	Ідентифікатор замовлення
ProductID	INT	Ідентифікатор товару
Quantity	INT	Кількість
UnitPrice	DECIMAL(10, 2)	Ціна за одиницю

 */

CREATE DATABASE warehouse;
USE warehouse;

CREATE TABLE Suppliers (
    SupplierID INT AUTO_INCREMENT PRIMARY KEY,
    SupplierName VARCHAR(255) NOT NULL,
    ContactName VARCHAR(255),
    ContactPhone VARCHAR(20),
    Address VARCHAR(255),
    Email VARCHAR(255)
);

CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(255) NOT NULL,
    SupplierID INT,
    Category VARCHAR(255),
    QuantityPerUnit VARCHAR(50),
    UnitPrice DECIMAL(10, 2),
    UnitsInStock INT,
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);

CREATE TABLE Staff (
    StaffID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    Position VARCHAR(255),
    HireDate DATE,
    Phone VARCHAR(20),
    Email VARCHAR(255)
);

CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerName VARCHAR(255) NOT NULL,
    ContactName VARCHAR(255),
    ContactPhone VARCHAR(20),
    Address VARCHAR(255),
    Email VARCHAR(255)
);

CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    ShipDate DATE,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE OrderDetails (
    OrderDetailID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);



