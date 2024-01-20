SELECT category, full_region, SUM(sale_price - cost_price) AS total_profit
FROM forview
WHERE order_date BETWEEN '2021-01-01' AND '2021-12-31'
GROUP BY category, full_region
HAVING full_region = 'Wiltshire, UK'
ORDER BY total_profit DESC
LIMIT 1;