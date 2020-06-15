SELECT user_name, MAX(C.created_at), chatroom_name
FROM chatrooms AS CR
GROUP BY chatroom_name
LEFT JOIN chats AS C
ON CR.chatroom_id =C.chatroom_id 
LEFT JOIN users AS U
ON C.author_id = U.user_id
WHERE U.is_deleted = 0 AND CR. is_deleted = 0
ORDER BY 