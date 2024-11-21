-- Update contact information for a student
UPDATE Students
SET contact_info = 'alice.johnson@example.com'
WHERE student_id = 1;

-- Change enrollment status of a student
UPDATE Students
SET enrollment_status = 'Inactive'
WHERE student_id = 5;
-- Update credit hours for a course
UPDATE Courses
SET credit_hours = 4
WHERE course_id = 4;

-- Change the title of a course
UPDATE Courses
SET title = 'Advanced Operating Systems'
WHERE course_id = 4;
-- Update the term for a specific enrollment
UPDATE Enrollments
SET term = 'Winter 2023'
WHERE enrollment_id = 4;

-- Change the course for an enrollment
UPDATE Enrollments
SET course_id = 3
WHERE enrollment_id = 5;
-- Update a student's grade
UPDATE Grades
SET grade = 'A+'
WHERE grade_id = 2;

-- Add a comment for a grade
UPDATE Grades
SET comments = 'Excellent'
WHERE grade_id = 1;
-- Change the instructor for a course
UPDATE Courses_Instructors
SET instructor_id = 5
WHERE course_instructor_id = 3;

-- Update course assignment for an instructor
UPDATE Courses_Instructors
SET course_id = 2
WHERE course_instructor_id = 4;
-- Update the department name
UPDATE Department
SET department_name = 'Modern literature'
WHERE department_id = 5;

-- Correct a typo in the department name
UPDATE Department
SET department_name = 'Computer and Information Science'
WHERE department_id = 1;
