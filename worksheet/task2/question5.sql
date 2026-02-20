-- For each student, calculate the total number of credits from courses they passed. Assume a passing grade is 40 or higher.
-- Expected Columns:
-- StudentId, FirstName, LastName, TotalCreditsPassed

SELECT s.StudentId,
       s.FirstName,
       s.LastName,
       SUM(m.Credits) AS TotalCreditsPassed
FROM student s
JOIN enrolments e ON s.StudentId = e.StudentId
JOIN modules m ON e.ModuleId = m.ModuleId
WHERE e.Grade >= 40
GROUP BY s.StudentId, s.FirstName, s.LastName;
