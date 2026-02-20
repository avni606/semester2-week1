-- For each student, calculate the total number of credits from courses they passed. Assume a passing grade is 40 or higher.
-- Expected Columns:
-- StudentId, FirstName, LastName, TotalCreditsPassed

SELECT s.StudentId,
       s.FirstName,
       s.LastName,
       COALESCE(SUM(pc.Credits), 0) AS TotalCreditsPassed
FROM student s
LEFT JOIN (
    SELECT e.StudentId, e.CourseId
    FROM enrolment e
    GROUP BY e.StudentId, e.CourseId
    HAVING MAX(e.Grade) >= 40
) passed ON s.StudentId = passed.StudentId
LEFT JOIN course pc ON passed.CourseId = pc.CourseId
GROUP BY s.StudentId, s.FirstName, s.LastName;