SELECT * FROM comments where created_at >= CURRENT_DATE - INTERVAL 10 hour;
