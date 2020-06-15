BEGIN;
INSERT INTO tasks (
    task_id, chatroom_id, content, staff_id, deadline, is_finished, is_deleted, created_at, author_id, modified_at, changer_id
)
VALUES (
    1, 1, '利用規約をアップロードする', 1, '2020/04/21 14:00:00', 1, 0, '2020/04/21 11:30:55', 1, '2020/04/21 13:13:20', 1
);

INSERT INTO tasks (
    task_id, chatroom_id, content, staff_id, is_finished, is_deleted, created_at, author_id, modified_at, changer_id
)
VALUES (
2, 1, '利用規約の確認', 5, 0, 0, '2020/04/21 14:02:21', 1, '2020/04/22 18:52:20', 4
);

INSERT INTO tasks (
    task_id, chatroom_id, content, staff_id, deadline, is_finished, is_deleted, created_at, author_id, modified_at, changer_id
)
VALUES (
3, 2, 'sqlの画像をアップロードする', 2, '2020/04/24 12:30:00', 1, 0, '2020/04/23 18:25:24', 2, '2020/04/24 13:43:12', 2
);

INSERT INTO tasks (
    task_id, chatroom_id, content, staff_id, deadline, is_finished, is_deleted, created_at, author_id, modified_at, changer_id
)
VALUES (
4, 3, 'プログラミングに関する画像アップロードする', 10, '2020/04/25 08:45:00', 1, 0, '2020/04/24 19:16:34', 10, '2020/04/25 08:08:29', 10
);

INSERT INTO tasks (
    task_id, chatroom_id, content, staff_id, is_finished, is_deleted, created_at, author_id, modified_at, changer_id
)
VALUES (
5, 4, '投稿が見えるかチェック', 6, 0, 0, '2020/04/24 12:01:15', 5, '2020/04/26 01:06:43', 7
);

INSERT INTO tasks (
    task_id, chatroom_id, content, staff_id, is_finished, is_deleted, created_at, author_id, modified_at, changer_id
)
VALUES (
6, 5, '投稿が見えるかチェック', 2	, 0, 0, '2020/04/26 09:21:58', 1, '2020/04/26 09:21:58', 1
);

INSERT INTO tasks (
    task_id, chatroom_id, content, staff_id, is_finished, is_deleted, created_at, author_id, modified_at, changer_id
)
VALUES (
7, 6, '投稿が見えるかチェック', 3, 0, 0, '2020/04/26 11:22:44', 1, '2020/04/26 11:22:44', 1
);

INSERT INTO tasks (
    task_id, chatroom_id, content, staff_id, is_finished, is_deleted, created_at, author_id, modified_at, changer_id
)
VALUES (
8, 7, '投稿が見えるかチェック', 10, 0, 0, '2020/04/26 13:23:50', 1, '2020/04/26 13:23:50', 1
);

COMMIT;