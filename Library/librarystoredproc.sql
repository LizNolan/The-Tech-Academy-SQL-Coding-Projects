USE db_library;

SELECT Number_of_Copies FROM tbl_book_copies
INNER JOIN tbl_Books ON tbl_Books.BookID = tbl_book_copies.BookID
INNER JOIN tbl_branch ON tbl_branch.BranchID = tbl_book_copies.BranchID
WHERE Title = 'The Lost Tribe'
AND BranchName = 'Sharpstown'
;

SELECT Number_of_Copies, BranchName FROM tbl_book_copies
INNER JOIN tbl_Books ON tbl_Books.BookID = tbl_book_copies.BookID
INNER JOIN tbl_branch ON tbl_branch.BranchID = tbl_book_copies.BranchID
WHERE Title= 'The Lost Tribe'
;

-- The db schema does NOT capture weather a loaned-out book has actually
-- been returned. Therefor, the assumption we are going to make is that
-- when a book is returned, its book_loan row is removed.
SELECT * FROM tbl_borrower, tbl_book_loans
where tbl_borrower.CardNo in (
  select tbl_book_loans.CardNo from tbl_book_loans
  -- 1001, 1001, 1001, 1002, 1002, 1003
)
;

select tbl_book_loans.CardNo from tbl_book_loans
where CardNo = 1001
or CardNo = 1002;


select * from tbl_book_loan INNER tbl_borrower ON tbl_borrower.CardNo = tbl_book_loan.CarN0;