-- Get the cohort with the longest average duration of assistance requests.

SELECT cohorts.name as name, avg(started_at - completed_at) as average_assistance_time
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time
LIMIT 1;