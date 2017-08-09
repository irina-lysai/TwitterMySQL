SELECT t.id, t.description, COUNT(c.id) as amount_of_comments
FROM tweets as t
LEFT JOIN comments as c ON t.id = c.tweet_id
GROUP BY t.id;
