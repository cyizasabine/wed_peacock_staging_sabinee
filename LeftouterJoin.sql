SELECT 
    Students.name AS student_name,
    Enrollments.course_id AS enrolled_course_id
FROM 
    Students
LEFT OUTER JOIN Enrollments ON Students.student_id = Enrollments.student_id;
