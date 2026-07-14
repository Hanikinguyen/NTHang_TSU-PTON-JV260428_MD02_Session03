CREATE DATABASE session03;
USE session03;
CREATE TABLE classes (
    class_id VARCHAR(10) PRIMARY KEY,
    class_name VARCHAR(100) NOT NULL,
    school_year VARCHAR(20) NOT NULL
);
CREATE TABLE students (
    student_id VARCHAR(10) PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender VARCHAR(10) NOT NULL,
    class_id VARCHAR(10) NOT NULL,
    FOREIGN KEY (class_id)
        REFERENCES classes(class_id)
);