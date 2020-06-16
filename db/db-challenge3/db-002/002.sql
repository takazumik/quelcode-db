BEGIN;

INSERT INTO chatrooms (
    chatroom_id, chatroom_name,overview, file_is_valid, is_direct, is_deleted,author_id, created_at, changer_id, modified_at
)
VALUES
(
    1, 'りんご', '利用者の集まり', 1, 0, 0, 1, '2020/04/21 11:26:32', 1, '2020/04/21 11:26:32'
);

INSERT INTO chatrooms (
    chatroom_id, chatroom_name,overview, file_is_valid, is_direct, is_deleted,author_id, created_at, changer_id, modified_at
)
VALUES
(
    2, 'ごりら', 'sqlの集まり', 1, 0, 0, 2, '2020/04/23 15:42:05', 2, '2020/04/23 15:42:05'
);

INSERT INTO chatrooms (
    chatroom_id, chatroom_name,overview, file_is_valid, is_direct, is_deleted,author_id, created_at, changer_id, modified_at
)
VALUES
(
    3, 'らっぱ', '言語の集まり', 1, 0, 0, 8, '2020/04/24 11:03:16', 9, '2020/04/25 10:33:55'
);

INSERT INTO chatrooms (
    chatroom_id, chatroom_name,overview, file_is_valid, is_direct, is_deleted,author_id, created_at, changer_id, modified_at
)
VALUES
(
    4, 'ぱんだ', 'フレームワークの集まり', 0, 0, 0, 5, '2020/04/23 18:14:28', 7, '2020/04/24 20:33:06'
);

INSERT INTO chatrooms (
    chatroom_id, chatroom_name,overview, file_is_valid, is_direct, is_deleted,author_id, created_at, changer_id, modified_at
)
VALUES
(
    5, 'ごま', 'adminとmysqlのダイレクトチャット', 1, 1, 0, 1, '2020/04/23 14:34:58', 1, '2020/04/23 14:34:58'
);

INSERT INTO chatrooms (
    chatroom_id, chatroom_name,overview, file_is_valid, is_direct, is_deleted,author_id, created_at, changer_id, modified_at
)
VALUES
(
    6, 'まり', 'adminとsqlserverのダイレクトチャット', 0, 1, 0, 1, '2020/04/23 14:45:22', 1, '2020/04/23 14:45:22'
);

INSERT INTO chatrooms (
    chatroom_id, chatroom_name,overview, file_is_valid, is_direct, is_deleted,author_id, created_at, changer_id, modified_at
)
VALUES
(
    7, 'りす', 'adminとjsのダイレクトチャット', 1, 1, 0, 1, '2020/04/24 10:55:21', 1, '2020/04/24 10:55:21'
);

INSERT INTO chatrooms (
    chatroom_id, chatroom_name,overview, file_is_valid, is_direct, is_deleted,author_id, created_at, changer_id, modified_at
)
VALUES
(
    8, 'かめ', 'adminとamazonのダイレクトチャット', 1, 1, 1, 1, '2020/04/24 11:02:20', 1, '2020/04/27 15:41:33'
);

COMMIT;