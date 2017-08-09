SELECT * FROM tweets as t
WHERE t.user_id = 1 or t.user_id IN(
SELECT ufm.follower_id FROM user_followers_map as ufm where ufm.user_id = 1)
ORDER BY created_at DESC;
