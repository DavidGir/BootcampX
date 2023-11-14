-- Get the total number of assistance_requests for a teacher.

SELECT name, count(completed_at) as total_assistances
FROM assistance_requests
JOIN teachers ON teacher_id = teachers.id
WHERE name = 'Waylon Boehm'
GROUP BY name;