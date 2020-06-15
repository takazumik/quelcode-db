SELECT user_name, chatroom_name, participate_at
FROM users AS U
LEFT JOIN participation AS UC
ON U.user_id = UC.user_id
LEFT JOIN chatrooms AS C
ON UC.chatroom_id = C.chatroom_id
WHERE U.is_deleted = 0 AND C.is_deleted = 0 
ORDER BY participated_atASC