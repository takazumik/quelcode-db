CREATE TABLE user (
    user_id INTEGER(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(100) NOT NULL,
    mailaddress VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL,
    introduction VARCHAR(1000),
    mobile_phone CHAR(13),
    business_phone CHAR(13),
    is_deleted TINYINT(1) DEFAULT 0,
    created_at DATETIME NOT NULL,
    modified_at DATETIME NOT NULL
)

CREATE TABLE chatroom (
    chatroom_id INTEGER(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    chatroom_name VARCHAR(100) NOT NULL,
    overview VARCHAR(1000),
    file_flag TINYINT(1) DEFAULT 0,
    dilect_flag TINYINT(1) DEFAULT 0,
    is_deleted TINYINT(1) DEFAULT 0,
    created_at DATETIME NOT NULL,
    modified_at DATETIME NOT NULL,
    author_id INTEGER(11) NOT NULL REFERENCES user(user_id),
    changer_id INTEGER(11) NOT NULL REFERENCES user(user_id)
)

CREATE TABLE participant (
    chatroom_id INTEGER(11) NOT NULL PRIMARY KEY AUTO_INCREMENT REFERENCES chatroom(chatroom_id),
    user_id INTEGER(11) NOT NULL PRIMARY KEY AUTO_INCREMENT REFERENCES user(user_id),
    participate_at DATETIME NOT NULL
)

CREATE TABLE chat (
    chat_id INTEGER(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    chatroom_id INTEGER(11) NOT NULL REFERENCES chatroom(chatroom_id),
    message VARCHAR(1000),
    file_name VARCHAR(100),
    is_deleted TINYINT(1) DEFAULT 0,
    created_at DATETIME NOT NULL,
    modified_at DATETIME NOT NULL,
    author_id INTEGER(11) NOT NULL REFERENCES user(user_id),
    changer_id INTEGER(11) NOT NULL REFERENCES user(user_id)
)

CREATE TABLE task (
    task_id INTEGER(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    chatroom_id INTEGER(11) NOT NULL REFERENCES chatroom(chatroom_id),
    message VARCHAR(1000),
    deadline DATETIME,
    staff INTEGER(11) NOT NULL REFERENCES user(user_id),
    finished_at DATETIME,
    is_deleted TINYINT(1) DEFAULT 0,
    created_at DATETIME NOT NULL,
    modified_at DATETIME NOT NULL,
    author_id INTEGER(11) NOT NULL REFERENCES user(user_id),
    changer_id INTEGER(11) NOT NULL REFERENCES user(user_id)
)