SELECT 
    Students.name AS student_name,
    Courses.title AS course_title
FROM 
    Students
CROSS JOIN Courses;
