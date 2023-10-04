SELECT b.title AS book_title, COUNT(bb.book_id) AS borrow_count
FROM books AS b
JOIN borrowed_books AS bb ON b.book_id = bb.book_id
GROUP BY b.title
ORDER BY borrow_count DESC
LIMIT 10;
