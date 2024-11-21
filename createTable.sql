
-- Create Students table
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    contact_info VARCHAR(255),
    enrollment_status VARCHAR(20) CHECK (enrollment_status IN ('Active', 'Inactive', 'Graduated')),
    enrollment_date DATE
);

-- Create Courses table
CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    credit_hours INT CHECK (credit_hours > 0),
    prerequisites VARCHAR(255)
);

-- Create Instructors table
CREATE TABLE Instructors (
    instructor_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department VARCHAR(100)
);

-- Create Enrollments table to represent many-to-many relationship between Students and Courses
CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    enrollment_date DATE,
    term VARCHAR(20),
    FOREIGN KEY (student_id) REFERENCES Students(student_id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES Courses(course_id) ON DELETE CASCADE,
    UNIQUE (student_id, course_id) 
);

-- Create Grades table to store student grades for each course
CREATE TABLE Grades (
    grade_id INT PRIMARY KEY,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    grade CHAR(2) CHECK (grade IN ('A', 'B', 'C', 'D', 'F', 'P')), 
    term VARCHAR(20),
    comments TEXT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES Courses(course_id) ON DELETE CASCADE,
    UNIQUE (student_id, course_id, term) -- Ensures unique grade per student, course, and term
);

-- Create Courses_Instructors table to represent many-to-many relationship between Instructors and Courses
CREATE TABLE Courses_Instructors (
    course_instructor_id INT PRIMARY KEY,
    course_id INT NOT NULL,
    instructor_id INT NOT NULL,
    FOREIGN KEY (course_id) REFERENCES Courses(course_id) ON DELETE CASCADE,
    FOREIGN KEY (instructor_id) REFERENCES Instructors(instructor_id) ON DELETE CASCADE,
    UNIQUE (course_id, instructor_id) 
);
