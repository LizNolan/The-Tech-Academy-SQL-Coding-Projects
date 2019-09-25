
USE db_library;
	INSERT INTO tbl_branch
	(BranchID,BranchName, Address)
	VALUES
	(1,'Central', '123 Main St.'),
	(2,'Sharpstown', '456 Salmon St.'),
	(3,'Albina', '678 Brazee St.'),
	(4,'Hollywood', '123 Thompson St.')
;

	INSERT INTO tbl_Publisher
	(PublisherName, Address, Phone)
	VALUES
	('Smith', '298 Main St.', '555-666-7777'),
	('Hood', '989 Knott St.', '555-444-3333')
;
	INSERT INTO tbl_Books
	(BookID, title, PublisherName)
	VALUES
	(101,'Fight Club', 'Smith'),
	(102,'Choke', 'Hood'),
	(103,'Snakes', 'Smith'),
	(104,'A New Earth', 'Smith'),
	(105,'Rocket Science', 'Hood'),
	(106,'Razorblade', 'Smith'),
	(107,'Rocketman', 'Hood'),
	(108,'Cavemen', 'Hood'),
	(109,'Science', 'Hood'),
	(110,'Rebel', 'Smith'),
	(111,'Pinata Party', 'Smith'),
	(112,'Scream', 'Hood'),
	(113,'Bears', 'Smith'),
	(114,'Joni Mitchell', 'Smith'),
	(115,'Cooking', 'Hood'),
	(116,'Sea Creatures', 'Smith'),
	(117,'Planes and Trains', 'Hood'),
	(118,'Fear and Loathing', 'Hood'),
	(119,'Lobsters', 'Hood'),
	(120,'The Lost Tribe', 'Smith')
;
	INSERT INTO tbl_book_authors
	(BookID, AuthorName)
	VALUES
	(101, 'Stephen King'),
	(102, 'Stephen King'),
	(103, 'Jack Black'),
	(104, 'Jack Black'),
	(105, 'Jack Black'),
	(106, 'Jane Doe'),
	(107, 'Jane Doe'),
	(108, 'Liz Nolan'),
	(109, 'Liz Nolan'),
	(110, 'Tyler Durden'),	
	(111, 'Tyler Durden'),
	(112, 'Amy Anderson'),	
	(113, 'Amy Anderson'),
	(114, 'Ciara Holden'),
	(115, 'Ciara Holden'),
	(116, 'Ciara Holden'),
	(117, 'Rob Knocks'),
	(118, 'Tommy Hicks'),
	(119, 'Ron Wilson'),
	(120, 'Steve Jones')
;
INSERT INTO tbl_book_copies
(BookID, BranchID, Number_of_Copies)
VALUES
(101, 1,2),
(102, 1,2),
(103, 1,3),
(104, 1, 3),
(105, 1, 2),
(106, 1, 2),
(107, 1, 2),
(108, 1, 2),
(109, 1, 2),
(110, 1, 2),
(101, 2,2),
(102, 2,2),
(103, 2,3),
(104, 2, 3),
(105, 2, 2),
(106, 2, 2),
(107, 2, 2),
(108, 2, 2),
(109, 2, 2),
(110, 2, 2),
(101, 3,2),
(102, 3,2),
(103, 3,3),
(104, 3, 3),
(105, 3, 2),
(106, 3, 2),
(107, 3, 2),
(108, 3, 2),
(109, 3, 2),
(110, 3, 2),
(101, 4,2),
(102, 4,2),
(103, 4,3),
(104, 4, 3),
(105, 4, 2),
(106, 4, 2),
(107, 4, 2),
(108, 4, 2),
(109, 4, 2),
(110, 4, 2),
(120, 2, 2),
(120, 3, 3)
;
INSERT INTO tbl_borrower
(CardNo, Name, Address, Phone)
VALUES
(1001, 'Liz Nolan', '2214 Brazee St.', '555-666-7777'),
(1002, 'Bill White', '455 Jefferson St.', '555-777-9999'),
(1003, 'Roger Stone', '389 Moreland Ave.', '777-888-1111'),
(1004, 'Elan Walsky', '45 E Burnside', '123-456-7899'),
(1005, 'Wilma Reed','46 Couch St.', '123-567-8888'),
(1006, 'Kassia Smith', '1212 Thompson St.', '908-666-8976'),
(1007,'Willy Nolan','123 Mission St.','876-987-9876'),
(1008, 'Frank Eddy', '1986 Salmon St.', '765-987-8888')
;
INSERT INTO tbl_book_loans
(BookID, BranchID, CardNo, DateOut, DateDue)
VALUES
(101, 1, 1001, '9-10-2019', '9-30-2019'), 
(102, 1, 1001, '9-10-2019', '9-30-2019'), 
(103, 1, 1001, '9-10-2019', '9-30-2019'), 
(104, 1, 1001, '9-10-2019', '9-30-2019'), 
(105, 1, 1001, '9-10-2019', '9-30-2019'), 
(106, 1, 1001, '9-10-2019', '9-30-2019'), 
(107, 1, 1001, '9-10-2019', '9-30-2019'), 
(108, 1, 1001, '9-10-2019', '9-30-2019'), 
(109, 1, 1001, '9-10-2019', '9-30-2019'), 
(110, 1, 1001, '9-10-2019', '9-30-2019'), 
(101, 1, 1002, '9-11-2019', '9-31-2019'),
(102, 1, 1002, '9-11-2019', '9-31-2019'),
(103, 1, 1002, '9-11-2019', '9-31-2019'),
(104, 1, 1002, '9-11-2019', '9-31-2019'),
(105, 1, 1002, '9-11-2019', '9-31-2019'),
(106, 1, 1002, '9-11-2019', '9-31-2019'),
(107, 1, 1002, '9-11-2019', '9-31-2019'),
(108, 1, 1002, '9-11-2019', '9-31-2019'),
(109, 1, 1002, '9-11-2019', '9-31-2019'),
(110, 1, 1002, '9-11-2019', '9-31-2019'),
(101, 2, 1003, '9-08-2019', '9-29-2019'),
(102, 2, 1003, '9-08-2019', '9-29-2019'),
(103, 2, 1003, '9-08-2019', '9-29-2019'),
(104, 2, 1003, '9-08-2019', '9-29-2019'),
(105, 2, 1003, '9-08-2019', '9-29-2019'),
(106, 2, 1003, '9-08-2019', '9-29-2019'),
(107, 2, 1003, '9-08-2019', '9-29-2019'),
(108, 2, 1003, '9-08-2019', '9-29-2019'),
(109, 2, 1003, '9-08-2019', '9-29-2019'),
(110, 2, 1003, '9-08-2019', '9-29-2019'),
(101, 3, 1004, '9-06-2019', '9-27-2019'),
(102, 3, 1004, '9-06-2019', '9-27-2019'),
(103, 3, 1004, '9-06-2019', '9-27-2019'),
(104, 3, 1004, '9-06-2019', '9-27-2019'),
(105, 3, 1004, '9-06-2019', '9-27-2019'),
(106, 3, 1004, '9-06-2019', '9-27-2019'),
(107, 3, 1004, '9-06-2019', '9-27-2019'),
(108, 3, 1004, '9-06-2019', '9-27-2019'),
(109, 3, 1004, '9-06-2019', '9-27-2019'),
(110, 3, 1004, '9-06-2019', '9-27-2019'),
(101, 4, 1005, '9-04-2019', '9-25-2019'),
(102, 4, 1005, '9-04-2019', '9-25-2019'),
(103, 4, 1005, '9-04-2019', '9-25-2019'),
(104, 4, 1005, '9-04-2019', '9-25-2019'),
(105, 4, 1005, '9-04-2019', '9-25-2019'),
(106, 4, 1005, '9-04-2019', '9-25-2019'),
(107, 4, 1005, '9-04-2019', '9-25-2019'),
(108, 4, 1005, '9-04-2019', '9-25-2019'),
(109, 4, 1005, '9-04-2019', '9-25-2019'),
(110, 4, 1005, '9-04-2019', '9-25-2019')
;