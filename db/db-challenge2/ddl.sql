BEGIN;

CREATE TABLE users (
    user_id INTEGER(11) PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    introduction VARCHAR(1000),
    mobile_phone VARCHAR(13),
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
    author_id INTEGER(11) NOT NULL,
    changer_id INTEGER(11) NOT NULL,
    created_at DATETIME NOT NULL,
    modified_at DATETIME NOT NULL,
    FOREIGN KEY(author_id) REFERENCES users(user_id),
    FOREIGN KEY(changer_id) REFERENCES users(user_id)
);

CREATE TABLE participation (
    chatroom_id INTEGER(11),
    user_id INTEGER(11),
    participated_at DATETIME NOT NULL,
    PRIMARY KEY (chatroom_id, user_id),
    FOREIGN KEY(chatroom_id) REFERENCES chatrooms(chatroom_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id)
);

CREATE TABLE chats (
    chat_id INTEGER(11) PRIMARY KEY AUTO_INCREMENT,
    chatroom_id INTEGER(11) NOT NULL,
    message VARCHAR(1000),
    file_name VARCHAR(100),
    is_deleted TINYINT(1) DEFAULT 0 NOT NULL,
    author_id INTEGER(11) NOT NULL,
    changer_id INTEGER(11) NOT NULL,
    created_at DATETIME NOT NULL,
    modified_at DATETIME NOT NULL,
    FOREIGN KEY(chatroom_id) REFERENCES chatrooms(chatroom_id),
    FOREIGN KEY(author_id) REFERENCES users(user_id),
    FOREIGN KEY(changer_id) REFERENCES users(user_id)
);

CREATE TABLE tasks (
    task_id INTEGER(11) PRIMARY KEY AUTO_INCREMENT,
    chatroom_id INTEGER(11) NOT NULL REFERENCES chatrooms(chatroom_id),
    content VARCHAR(1000),
    deadline DATETIME,
    staff_id INTEGER(11) NOT NULL,
    is_finished TINYINT(1) DEFAULT 0 NOT NULL,
    is_deleted TINYINT(1) DEFAULT 0 NOT NULL,
    author_id INTEGER(11) NOT NULL,
    changer_id INTEGER(11) NOT NULL,
    created_at DATETIME NOT NULL,
    modified_at DATETIME NOT NULL,
    FOREIGN KEY(chatroom_id) REFERENCES chatrooms(chatroom_id),
    FOREIGN KEY(staff_id) REFERENCES users(user_id),
    FOREIGN KEY(author_id) REFERENCES users(user_id),
    FOREIGN KEY(changer_id) REFERENCES users(user_id)
);

COMMIT;