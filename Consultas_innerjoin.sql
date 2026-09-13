-- =============================================
-- ESQUEMA COMPLETO - CLASE SQL JOIN
-- =============================================
CREATE DATABASE IF NOT EXISTS clase_joins;
USE clase_joins;

INSERT INTO student_course (student_id, course_id, enrolled_at, grade) VALUES
  (1, 1, '2024-01-15', 4.5),
  (1, 2, '2024-01-15', 3.8),
  (1, 4, '2024-01-15', 4.2),
  (2, 1, '2024-01-15', 3.5),
  (2, 3, '2024-01-15', 4.0),
  (2, 5, '2024-01-15', 4.7),
  (3, 2, '2024-01-15', 3.2),
  (3, 6, '2024-01-15', 4.1),
  (4, 1, '2024-01-15', 4.8),
  (4, 4, '2024-01-15', 3.9),
  (4, 7, '2024-01-15', 4.3),
  (5, 3, '2024-01-15', 3.7),
  (5, 5, '2024-01-15', 4.0),
  (6, 2, '2024-01-15', 4.5),
  (6, 6, '2024-01-15', 3.6),
  (6, 8, '2024-01-15', 4.4),
  (7, 1, '2024-01-15', 3.0),
  (7, 7, '2024-01-15', 3.8),
  (8, 4, '2024-01-15', 4.6),
  (8, 8, '2024-01-15', 4.1),
  (9, 5, '2024-01-15', 3.9),
  (9, 6, '2024-01-15', 4.2),
  (10,1, '2024-01-15', 4.9),
  (10,3, '2024-01-15', 4.7),
  (10,5, '2024-01-15', 4.8);


SELECT
  s.name        AS estudiante,
  co.title      AS curso,
  co.instructor,
  sc.enrolled_at AS inscripción,
  sc.grade       AS nota
FROM students s
INNER JOIN student_course sc ON s.id = sc.student_id
INNER JOIN courses co  ON co.id = sc.course_id

ORDER BY s.name, co.title;


select 
  s.id,
  s.name,
  c.title,
  c.credits,
  sc.grade
from students s
inner join student_course sc on sc.student_id = s.id
inner join courses c on c.id = sc.course_id
where sc.grade >= 4.0
order by sc.grade desc;

   









select * from courses;
select * from student_course;
