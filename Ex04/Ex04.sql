-- [Bài tập] Quản lý tài khoản người dùng
USE session03;
CREATE TABLE users (
    user_id VARCHAR(10) PRIMARY KEY,
    username VARCHAR(50) UNIQUE,
    password VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    status VARCHAR(20) DEFAULT 'ACTIVE'
);
ALTER TABLE users
ADD CONSTRAINT chk_status
CHECK (status IN ('ACTIVE', 'INACTIVE'));
DROP TABLE users;