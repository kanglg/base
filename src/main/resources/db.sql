CREATE TABLE
    'USER'
    (
        USER_ID INT NOT NULL,
        USER_NAME VARCHAR(24),
        USER_PASSWORD VARCHAR(40),
        CONSTRAINT PRIMARY KEY (USER_ID)
    )
    ENGINE=InnoDB DEFAULT CHARSET=utf8;