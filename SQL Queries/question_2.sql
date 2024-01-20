SELECT month_name, SUM(sale_price) AS total_revenue
FROM forview
WHERE order_date BETWEEN '2022-01-01' AND '2022-12-31'
GROUP BY month_name 
ORDER BY total_revenue DESC 
LIMIT 1;
