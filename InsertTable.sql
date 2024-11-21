-- Insert students using subqueries from another table or calculated values
INSERT INTO Students (student_id, name, contact_info, enrollment_status, enrollment_date)
SELECT 
    1, 'Alice Johnson', 'alice@example.com', 'Active', '2022-08-15'
UNION ALL
SELECT 
    2, 'Bob Smith', 'bob@example.com', 'Active', '2021-09-12'
UNION ALL
SELECT 
    3, 'Charlie Davis', 'charlie@example.com', 'Graduated', '2020-05-20'
UNION ALL
SELECT 
    4, 'Diana Clark', 'diana@example.com', 'Active', '2023-01-10'
UNION ALL
SELECT 
    5, 'Ethan Wright', 'ethan@example.com', 'Inactive', '2022-03-01';
-- Insert courses using UNION to add multiple rows
INSERT INTO Courses (course_id, title, credit_hours, prerequisites)
SELECT 
    1, 'Database Management Systems', 3, 'Introduction to Programming'
UNION ALL
SELECT 
    2, 'Data Structures and Algorithms', 4, 'Programming Fundamentals'
UNION ALL
SELECT 
    3, 'Artificial Intelligence', 3, 'Data Structures and Algorithms'
UNION ALL
SELECT 
    4, 'Operating Systems', 3, 'Introduction to Programming'
UNION ALL
SELECT 
    5, 'Computer Networks', 3, 'Operating Systems';
-- Inserting multiple records separately for better readability
INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date, term)
VALUES (1, 1, 1, '2022-08-15', 'Fall 2022');

INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date, term)
VALUES (2, 2, 2, '2021-09-12', 'Spring 2021');

INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date, term)
VALUES (3, 3, 3, '2020-05-20', 'Fall 2019');

INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date, term)
VALUES (4, 4, 4, '2023-01-10', 'Spring 2023');

INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date, term)
VALUES (5, 5, 5, '2022-03-01', 'Summer 2022');
-- Omitting the `comments` field if it allows NULL (assuming the column allows it to be null)
INSERT INTO Grades (grade_id, student_id, course_id, grade, term)
VALUES 
    (1, 1, 1, 'A', 'Fall 2022'),
    (2, 2, 2, 'B', 'Spring 2021'),
    (3, 3, 3, 'A', 'Fall 2019'),
    (4, 4, 4, 'C', 'Spring 2023'),
    (5, 5, 5, 'B', 'Summer 2022');
INSERT INTO Courses_Instructors (course_instructor_id, course_id, instructor_id)
VALUES (1, 1, 1);

INSERT INTO Courses_Instructors (course_instructor_id, course_id, instructor_id)
VALUES (2, 2, 2);

INSERT INTO Courses_Instructors (course_instructor_id, course_id, instructor_id)
VALUES (3, 3, 3);

INSERT INTO Courses_Instructors (course_instructor_id, course_id, instructor_id)
VALUES (4, 4, 4);

INSERT INTO Courses_Instructors (course_instructor_id, course_id, instructor_id)
VALUES (5, 5, 5);
-- Insert record for Computer Science Department
INSERT INTO Department (department_id, department_name)
VALUES (1, 'Computer Science');

-- Insert record for Mathematics Department
INSERT INTO Department (department_id, department_name)
VALUES (2, 'Mathematics');

-- Insert record for History Department
INSERT INTO Department (department_id, department_name)
VALUES (3, 'History');

-- Insert record for Physics Department
INSERT INTO Department (department_id, department_name)
VALUES (4, 'Physics');

-- Insert record for Literature Department
INSERT INTO Department (department_id, department_name)
VALUES (5, 'Literature');

