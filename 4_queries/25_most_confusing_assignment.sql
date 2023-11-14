-- List each assignment with the total number of assistance requests with it.

SELECT assignments.id as id, name, day, chapter, count(assistance_requests.id) as total_requests
FROM assistance_requests
JOIN assignments ON assignments.id = assignment_id
GROUP by assignments.id
ORDER BY total_requests DESC;
