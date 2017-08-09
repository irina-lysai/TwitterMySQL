SELECT u.id, u.username FROM users as u
where not exists (select user_id from tweets as t where t.user_id = u.id);
