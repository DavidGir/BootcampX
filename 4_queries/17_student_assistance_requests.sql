-- Get the total number of assistance_requests for a student.

SELECT name, count(completed_at) as total_assistances
FROM assistance_requests
JOIN students ON student_id = students.id 
WHERE name = 'Elliot Dickinson'
GROUP BY name;
