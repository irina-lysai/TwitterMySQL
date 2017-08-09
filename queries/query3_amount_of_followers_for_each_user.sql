SELECT u.id, u.username, u.email, u.first_name, u.middle_name, u.last_name, COUNT(fm.follower_id) as amount_of_followers
FROM users as u
LEFT JOIN user_followers_map as fm ON u.id = fm.user_id
GROUP BY u.id;
