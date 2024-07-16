create database bookstore_DBMS;

use bookstore_DBMS;

create table Customers(
CustomerID INT PRIMARY key,
FirstName VARCHAR(100),
LastName VARCHAR(100),
Email VARCHAR(60),
PhoneNumber VARCHAR(10),
BirthDate DATE
);

create table Books(
BookID INT PRIMARY KEY,
Title VARCHAR(100),
Author VARCHAR(100),
Genre VARCHAR(50),
Price DECIMAL(5, 2),
StockQuantity INT
);

create table Sales(
SaleID INT PRIMARY KEY,
CustomerID INT,
BookID INT,
SaleDate DATE,
Quantity INT,
TotalAmount DECIMAL(5, 2)
);

INSERT INTO Customers (CustomerID, FirstName, LastName, Email, PhoneNumber, BirthDate) VALUES
(1, 'Alice', 'Johnson', 'alice.johnson@example.com', '555-1234', '1990-01-15'),
(2, 'Bob', 'Smith', 'bob.smith@example.com', '555-5678', '1985-02-20'),
(3, 'Carol', 'Williams', 'carol.williams@example.com', '555-8765', '1992-03-25'),
(4, 'Dave', 'Brown', 'dave.brown@example.com', '555-4321', '1988-04-30'),
(5, 'Eve', 'Davis', 'eve.davis@example.com', '555-3456', '1995-05-10');


INSERT INTO Books (BookID, Title, Author, Genre, Price, StockQuantity) VALUES
(1, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', 10.99, 50),
(2, '1984', 'George Orwell', 'Dystopian', 8.99, 30),
(3, 'Harry Potter and the Sorcerers Stone', 'J.K. Rowling', 'Fantasy', 12.99, 40),
(4, 'To Kill a Mockingbird', 'Harper Lee', 'Classic', 9.99, 25),
(5, 'The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 11.99, 35),
(6, 'Pride and Prejudice', 'Jane Austen', 'Romance', 7.99, 45),
(7, 'The Catcher in the Rye', 'J.D. Salinger', 'Classic', 9.99, 20),
(8, 'Brave New World', 'Aldous Huxley', 'Dystopian', 8.99, 30),
(9, 'The Lord of the Rings', 'J.R.R. Tolkien', 'Fantasy', 13.99, 15),
(10, 'The Chronicles of Narnia', 'C.S. Lewis', 'Fantasy', 10.99, 20);

INSERT INTO Sales (SaleID, CustomerID, BookID, SaleDate, Quantity, TotalAmount) VALUES
(1, 1, 3, '2023-06-15', 2, 25.98),
(2, 2, 1, '2023-06-16', 1, 10.99),
(3, 3, 2, '2023-06-17', 3, 26.97),
(4, 4, 5, '2023-06-18', 1, 11.99),
(5, 5, 7, '2023-06-19', 2, 19.98),
(6, 1, 8, '2023-06-20', 1, 8.99),
(7, 2, 6, '2023-06-21', 1, 7.99),
(8, 3, 9, '2023-06-22', 1, 13.99),
(9, 4, 10, '2023-06-23', 2, 21.98),
(10, 5, 4, '2023-06-24', 1, 9.99);



select * from Customers;
select * from Books;
select * from Sales;

-- Write a query to retrieve all customer records.
select * from Customers;

-- Write a query to find all books in the "Fantasy" genre.
select Title from Books
WHERE genre = "fantasy";

-- Write a query to list sales made in the last month.
select * from sales
WHERE SaleDate >= "2023-06-01";

-- Write a query to find the total sales amount for each customer.
select CustomerID, sum(TotalAmount) from sales GROUP BY CustomerID;

-- Write a query to update the stock quantity of a specific book.
update books SET StockQuantity = 70 
WHERE Title = "The Great Gatsby";

select * from Books;

-- Write a query to delete a sale record based on the sale ID.
delete from Sales WHERE SaleID = 7;
select * from Sales;
