SELECT chatroom_name, count(message) AS 投稿数
FROM chatrooms AS CR
LEFT JOIN chats AS C
ON CR.chatroom_id = C.chatroom_id
LEFT JOIN users AS U
ON C.author_id = U.user_id
WHERE U.is_deleted = 0 AND CR. is_deleted = 0
GROUP BY chatroom_name
ORDER BY 投稿数 DESC
