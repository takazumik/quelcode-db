SELECT chatroom_id, chatroom_name,overview, CASE file_is_valid WHEN 0 THEN '禁止' WHEN 1 THEN '許可', is_direct, is_deleted,author_id, changer_id, created_at,modified_at
FROM chatrooms AS CR
LEFT JOIN tasks AS T
ON CR.chatroom_id = T.chatroom_id
LEFT JOIN chats AS C
ON CR.chatroom_id = C.chatroom_id
WHERE is_deleted = 1 AND
MAX(T.created_at) > MAX(C.created_at)
ORDER BY chatroom_id