SELECT DISTINCT u.user_id, u.first_name, u.last_name
FROM users AS u
JOIN borrowed_books AS bb ON u.user_id = bb.user_id
JOIN books AS b ON bb.book_id = b.book_id
WHERE b.author = 'J.K. Rowling';
