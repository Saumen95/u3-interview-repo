

CREATE PROCEDURE CalculateAverageBorrowDuration(IN bookID INT, OUT avgDuration DECIMAL(10,2))
BEGIN
    SELECT AVG(DATEDIFF(return_date, borrow_date)) INTO avgDuration
    FROM borrowed_books
    WHERE book_id = bookID;
END //

DELIMITER ;
