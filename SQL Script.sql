SELECT
    strftime('%Y', date) AS year,
    strftime('%m', date) AS month,
    SUM(total_revenue) AS total_revenue,
    COUNT(DISTINCT transaction_id) AS order_volume
FROM
    OnlineSalesData
GROUP BY
    year, month
ORDER BY
    year, month;

