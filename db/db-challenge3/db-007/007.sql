SELECT chatroom_id, chatroom_name,overview,
CASE file_is_valid
WHEN 0 THEN '禁止'
WHEN 1 THEN '許可' 
END AS file_is_valid,
is_direct, author_id, changer_id, created_at, modified_at
FROM chatrooms
WHERE is_deleted = 0
AND overview LIKE '%ダイレクトチャット'
ORDER BY chatroom_id