SELECT country, full_region, SUM(sale_price) AS total_revenue
FROM forview
WHERE order_date BETWEEN '2022-01-01' AND '2022-12-31'
GROUP BY country, full_region
HAVING country ='Germany'
ORDER BY total_revenue DESC
LIMIT 1;