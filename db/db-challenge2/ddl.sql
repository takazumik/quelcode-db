BEGIN;

CREATE TABLE users (
    user_id INTEGER(11) PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL,
    introduction VARCHAR(1000),
    mobile_phone VARCHAR(13) UNIQUE,
    business_phone VARCHAR(13),
    is_deleted TINYINT(1) DEFAULT 0 NOT NULL,
    created_at DATETIME NOT NULL,
    modified_at DATETIME NOT NULL
);

CREATE TABLE chatrooms (
    chatroom_id INTEGER(11) PRIMARY KEY AUTO_INCREMENT,
    chatroom_name VARCHAR(100) NOT NULL,
    overview VARCHAR(1000),
    file_is_valid TINYINT(1) DEFAULT 1 NOT NULL,
    is_direct TINYINT(1) DEFAULT 0 NOT NULL,
    is_deleted TINYINT(1) DEFAULT 0 NOT NULL,
    author_id INTEGER(11) NOT NULL REFERENCES user(user_id),
    changer_id INTEGER(11) NOT NULL REFERENCES user(user_id),
    created_at DATETIME NOT NULL,
    modified_at DATETIME NOT NULL
);

CREATE TABLE users_chatrooms (
    chatroom_id INTEGER(11) REFERENCES chatroom(chatroom_id),
    user_id INTEGER(11) REFERENCES user(user_id),
    participate_at DATETIME NOT NULL,
    PRIMARY KEY (chatroom_id, user_id)
);

CREATE TABLE chats (
    chat_id INTEGER(11) PRIMARY KEY AUTO_INCREMENT,
    chatroom_id INTEGER(11) NOT NULL REFERENCES chatroom(chatroom_id),
    message VARCHAR(1000),
    file_name VARCHAR(100),
    is_deleted TINYINT(1) DEFAULT 0 NOT NULL,
    author_id INTEGER(11) NOT NULL REFERENCES user(user_id),
    changer_id INTEGER(11) NOT NULL REFERENCES user(user_id),
    created_at DATETIME NOT NULL,
    modified_at DATETIME NOT NULL
);

CREATE TABLE tasks (
    task_id INTEGER(11) PRIMARY KEY AUTO_INCREMENT,
    chatroom_id INTEGER(11) NOT NULL REFERENCES chatroom(chatroom_id),
    content VARCHAR(1000),
    deadline DATETIME,
    staff INTEGER(11) NOT NULL REFERENCES user(user_id),
    is_finished TINYINT(1) DEFAULT 0 NOT NULL,
    is_deleted TINYINT(1) DEFAULT 0 NOT NULL,
    author_id INTEGER(11) NOT NULL REFERENCES user(user_id),
    changer_id INTEGER(11) NOT NULL REFERENCES user(user_id),
    created_at DATETIME NOT NULL,
    modified_at DATETIME NOT NULL
);

COMMIT;