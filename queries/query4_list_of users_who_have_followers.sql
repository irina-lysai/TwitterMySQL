SELECT u.username, u.email, u.first_name, u.middle_name, u.last_name FROM users as u 
INNER JOIN user_followers_map as fm ON u.id = fm.user_id
GROUP BY u.id;
