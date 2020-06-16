SELECT U.user_name, MAX(C.created_at), CR.chatroom_name
FROM users AS U
LEFT JOIN chats AS C
ON U.user_id = C.author_id
LEFT JOIN chatrooms AS CR
ON C.chatroom_id = CR.chatroom_id
WHERE U.is_deleted = 0 AND CR. is_deleted = 0
GROUP BY CR.chatroom_name
ORDER BY CR.chatroom_id