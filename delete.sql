-- Remove a student record
DELETE FROM Students
WHERE student_id = 5;
-- Remove a course record
DELETE FROM Courses
WHERE course_id = 5;
-- Delete an enrollment record
DELETE FROM Enrollments
WHERE enrollment_id = 3;
-- Delete a grade record
DELETE FROM Grades
WHERE grade_id = 4;
-- Remove a course-instructor relationship
DELETE FROM Courses_Instructors
WHERE course_instructor_id = 2;
-- Remove a department
DELETE FROM Department
WHERE department_id = 5;
