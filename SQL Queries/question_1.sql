SELECT SUM(staff_numbers)  as "Number of Staff in UK"
FROM dim_store
WHERE country = 'UK';