SELECT 
    Courses.title AS course_title,
    Enrollments.student_id AS student_enrolled
FROM 
    Courses
RIGHT OUTER JOIN Enrollments ON Courses.course_id = Enrollments.course_id;
