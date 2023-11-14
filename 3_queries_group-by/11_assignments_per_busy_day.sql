-- The same query /10_assignments_per_day.sql, but only return rows where total assignments is greater than or equal to 10.

SELECT day, count(*) as total_assignments
FROM assignments
GROUP BY day
HAVING count(*) >= 10
ORDER BY day;