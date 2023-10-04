DELIMITER //

CREATE TRIGGER UpdateReturnDate
AFTER UPDATE ON borrowed_books
FOR EACH ROW
BEGIN
    IF NEW.return_date IS NOT NULL AND OLD.return_date IS NULL THEN
        SET NEW.return_date = CURRENT_DATE;
    END IF;
END;

DELIMITER ;
