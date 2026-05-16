-- Create students table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    email VARCHAR(100)
);

-- Insert data into students
INSERT INTO students VALUES
(1, 'Alice Johnson', 'alice@email.com'),
(2, 'Bob Smith', 'bob@email.com'),
(3, 'Charlie Brown', 'charlie@email.com'),
(4, 'Diana Prince', 'diana@email.com'),
(5, 'Ethan Hunt', 'ethan@email.com');


-- Create instructors table
CREATE TABLE instructors (
    instructor_id INT PRIMARY KEY,
    instructor_name VARCHAR(100)
);

-- Insert data into instructors
INSERT INTO instructors VALUES
(1, 'John Williams'),
(2, 'Sarah Miller'),
(3, 'David Anderson'),
(4, 'Emily Clark');


-- Create courses table
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    instructor_id INT,
    FOREIGN KEY (instructor_id)
        REFERENCES instructors(instructor_id)
);

-- Insert data into courses
INSERT INTO courses VALUES
(101, 'SQL Basics', 1),
(102, 'Python Fundamentals', 2),
(103, 'Data Analytics', 3),
(104, 'Cloud Computing', NULL),
(105, 'Machine Learning', NULL);


-- Create enrollments table
CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id)
        REFERENCES students(student_id),
    FOREIGN KEY (course_id)
        REFERENCES courses(course_id)
);

-- Insert data into enrollments
INSERT INTO enrollments VALUES
(1, 1, 101, '2026-01-10'),
(2, 1, 102, '2026-01-12'),
(3, 2, 101, '2026-01-15'),
(4, 3, 103, '2026-01-18'),
(5, 4, 102, '2026-01-20');
