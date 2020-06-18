SELECT C.chatroom_name, U.user_name, CAST(P.participated_at AS DATE)
FROM participation AS P
LEFT JOIN users AS U
ON P.user_id = U.user_id
LEFT JOIN chatrooms AS C
ON P.chatroom_id = C.chatroom_id
WHERE U.is_deleted = 0 AND C.is_deleted = 0 
ORDER BY participated_at ASC