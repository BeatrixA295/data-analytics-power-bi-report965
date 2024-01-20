SELECT table_name
FROM information_schema.tables
WHERE table_type = 'BASE TABLE'
AND table_name LIKE 'dim%'
OR table_name = 'orders'
