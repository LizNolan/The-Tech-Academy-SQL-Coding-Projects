
USE MASTER;
go
DROP DATABASE db_library;
go
CREATE DATABASE db_library;
go
USE db_library;

	CREATE TABLE tbl_branch (
		BranchID INT PRIMARY KEY NOT NULL, 
		BranchName VARCHAR(50) NOT NULL,
		Address VARCHAR (50) NOT NULL
	);
	CREATE TABLE tbl_Publisher (
		PublisherName VARCHAR (50) PRIMARY KEY NOT NULL,
		Address VARCHAR (50) NOT NULL,
		PHONE VARCHAR (20)  NOT NULL
	);
	CREATE TABLE tbl_Books (
		BookID INT PRIMARY KEY, 
		Title VARCHAR (50) NOT NULL,
		PublisherName VARCHAR (50) NOT NULL CONSTRAINT fk_publisher_name FOREIGN KEY REFERENCES tbl_Publisher(PublisherName) ON UPDATE CASCADE ON DELETE CASCADE,
	);
	CREATE TABLE tbl_borrower (
		CardNo INT PRIMARY KEY NOT NULL, 
		Name VARCHAR (50) NOT NULL,
		Address VARCHAR (50) NOT NULL,
		Phone VARCHAR (50) NOT NULL
	);

	CREATE TABLE tbl_book_copies (
		BookID INT NOT NULL CONSTRAINT fk_book_id2 FOREIGN KEY REFERENCES tbl_Books(BookID)ON UPDATE CASCADE ON DELETE CASCADE,
		BranchID INT NOT NULL CONSTRAINT fk_branch_id FOREIGN KEY REFERENCES tbl_branch(BranchID)ON UPDATE CASCADE ON DELETE CASCADE,
		Number_of_Copies INT NOT NULL
	);

	CREATE TABLE tbl_book_loans (
		BookID INT NOT NULL CONSTRAINT fk_book_id3 FOREIGN KEY REFERENCES tbl_Books(BookID)ON UPDATE CASCADE ON DELETE CASCADE,
		BranchID INT NOT NULL CONSTRAINT fk_branch_id2 FOREIGN KEY REFERENCES tbl_branch(BranchID)ON UPDATE CASCADE ON DELETE CASCADE,
		CardNo INT NOT NULL CONSTRAINT fk_card_no FOREIGN KEY REFERENCES tbl_borrower(CardNo)ON UPDATE CASCADE ON DELETE CASCADE,
		DateOut VARCHAR (30),
		DateDue VARCHAR (30)
	);
	CREATE TABLE tbl_book_authors (
		BookID INT NOT NULL CONSTRAINT fk_book_id FOREIGN KEY REFERENCES tbl_Books(BookID)ON UPDATE CASCADE ON DELETE CASCADE,
		AuthorName VARCHAR (30)
	);


