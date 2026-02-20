-- For each student, calculate the total number of credits from courses they passed. Assume a passing grade is 40 or higher.
-- Expected Columns:
-- StudentId, FirstName, LastName, TotalCreditsPassed

SELECT 
    s.StudentId, 
    s.FirstName, 
    s.LastName, 
    COALESCE(SUM(c.Credits), 0) AS TotalCreditsPassed
FROM 
    student s
LEFT JOIN 
    Enrollments e ON s.StudentId = e.StudentId
LEFT JOIN   Courses c ON e.CourseId = c.CourseId
WHERE 
    e.Grade >= 40 
GROUP BY 
    s.StudentId, s.FirstName, s.LastName
ORDER BY 
    s.StudentId;
