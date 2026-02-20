-- For each department, calculate the number of enrolments in its courses.
-- Expected Columns:
-- DepartmentName, TotalEnrolments

SELECT d.DepartmentName, COUNT(e.EnrolmentId) AS TotalEnrolments
FROM department d
JOIN course c ON d.DepartmentId = c.DepartmentId
JOIN enrolment e ON c.CourseId = e.CourseId
GROUP BY d.DepartmentName;

