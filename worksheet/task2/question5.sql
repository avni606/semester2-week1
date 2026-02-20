-- For each student, calculate the total number of credits from courses they passed. Assume a passing grade is 40 or higher.
-- Expected Columns:
-- StudentId, FirstName, LastName, TotalCreditsPassed

SELECT s.StudentId, s.FirstName, s.LastName, 
       COALESCE(SUM(c.Credits), 0) AS TotalCreditsPassed
FROM student s
LEFT JOIN enrolment e ON s.StudentId = e.StudentId AND e.Grade >= 40
LEFT JOIN course c ON e.CourseId = c.CourseId
GROUP BY s.StudentId, s.FirstName, s.LastName;