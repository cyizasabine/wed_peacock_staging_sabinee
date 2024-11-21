SELECT 
    Students.name AS student_name,
    Courses.title AS course_title
FROM 
    Enrollments
INNER JOIN Students ON Enrollments.student_id = Students.student_id
INNER JOIN Courses ON Enrollments.course_id = Courses.course_id;
