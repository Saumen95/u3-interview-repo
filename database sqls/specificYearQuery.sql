SELECT b.title, b.author, b.publication_year
FROM books AS b
WHERE b.publication_year = 2020
AND b.book_id NOT IN (
    SELECT DISTINCT book_id
    FROM borrowed_books
);
