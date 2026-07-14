-- [Bài tập] Quản lý khóa học trực tuyến
USE session03;
CREATE TABLE teachers (
    teacher_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    description VARCHAR(255),
    price DECIMAL(10,2) NOT NULL,
    teacher_id INT NOT NULL,

    FOREIGN KEY (teacher_id)
        REFERENCES teachers(teacher_id)
);
CREATE TABLE students5 (
    student_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE enrollments (
    student_id INT,
    course_id INT,

    PRIMARY KEY (student_id, course_id),

    FOREIGN KEY (student_id)
        REFERENCES students5(student_id),

    FOREIGN KEY (course_id)
        REFERENCES courses(course_id)
);
ALTER TABLE courses
ADD CONSTRAINT chk_price
CHECK (price > 0);
DROP TABLE enrollments;