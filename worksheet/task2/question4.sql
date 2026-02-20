-- List all students along with the names of the courses they are enrolled in.
-- Expected Columns:
-- StudentId, FirstName, LastName, CourseName

SELECT s.StudentId, s.FirstName, s.LastName, c.CourseName
FROM student s
JOIN enrolment e ON s.StudentId = e.StudentId
JOIN course c ON e.CourseId = c.CourseId;
