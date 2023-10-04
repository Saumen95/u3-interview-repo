SELECT u.user_id, u.first_name, u.last_name, COUNT(bb.borrow_id) AS borrow_count
FROM users AS u
JOIN borrowed_books AS bb ON u.user_id = bb.user_id
GROUP BY u.user_id, u.first_name, u.last_name
ORDER BY borrow_count DESC
LIMIT 1;
