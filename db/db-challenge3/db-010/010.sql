
SELECT U.user_name, C.created_at, CR.chatroom_name
FROM users AS U
JOIN chats AS C
    ON U.user_id = C.author_id
JOIN chatrooms AS CR
    ON C.chatroom_id = CR.chatroom_id
JOIN (
    SELECT C2.chatroom_id, MAX(C2.created_at) AS ca
    FROM chats AS C2
    JOIN users AS U2
        ON C2.author_id = U2.user_id
    WHERE U2.is_deleted = 0 AND C2.is_deleted = 0
    GROUP BY C2.chatroom_id
) AS NEW
ON CR.chatroom_id = NEW.chatroom_id AND C.created_at = NEW.ca
WHERE C. is_deleted = 0 


--最新の投稿かどうかを、最終行のWHEREで判定
SELECT U.user_name, C.created_at, CR.chatroom_name
FROM users AS U
JOIN chats AS C
    ON U.user_id = C.author_id
JOIN chatrooms AS CR
    ON C.chatroom_id = CR.chatroom_id
JOIN (
    SELECT C2.chatroom_id, MAX(C2.created_at) AS ca
    FROM chats AS C2
    JOIN users AS U2
        ON C2.author_id = U2.user_id
    WHERE U2.is_deleted = 0 AND C2.is_deleted = 0
    GROUP BY C2.chatroom_id
) AS NEW
ON CR.chatroom_id = NEW.chatroom_id 
WHERE C. is_deleted = 0 AND C.created_at = NEW.ca