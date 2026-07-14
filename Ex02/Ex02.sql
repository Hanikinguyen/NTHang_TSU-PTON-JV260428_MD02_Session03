-- Bài tập: Quản lý thư viện
USE session03;
CREATE TABLE books (
    book_id VARCHAR(10) PRIMARY KEY,
    book_name VARCHAR(100) NOT NULL,
    author VARCHAR(100) NOT NULL
);
CREATE TABLE readers (
    reader_id VARCHAR(10) PRIMARY KEY,
    reader_name VARCHAR(100) NOT NULL,
    phone VARCHAR(20)
);
CREATE TABLE borrowings (
    reader_id VARCHAR(10),
    book_id VARCHAR(10),
    borrow_date DATE,
    return_date DATE,

    PRIMARY KEY (reader_id, book_id),

    FOREIGN KEY (reader_id)
        REFERENCES readers(reader_id),

    FOREIGN KEY (book_id)
        REFERENCES books(book_id)
);
ALTER TABLE borrowings
MODIFY borrow_date DATE NOT NULL;
SHOW TABLES;
DESC books;
DESC readers;
DESC borrowings;