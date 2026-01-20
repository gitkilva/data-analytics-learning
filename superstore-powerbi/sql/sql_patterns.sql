-- Pattern A: Top N
SELECT category, SUM(sales) AS total_revenue
FROM orders
GROUP BY category
ORDER BY total_revenue DESC;

-- Pattern B: Top N per group (Top 2 products per category)
SELECT category, product_name, total_revenue
FROM (
  SELECT
    category,
    product_name,
    SUM(sales) AS total_revenue,
    DENSE_RANK() OVER (
      PARTITION BY category
      ORDER BY SUM(sales) DESC
    ) AS rnk
  FROM orders
  GROUP BY category, product_name
) t
WHERE rnk <= 2
ORDER BY category, total_revenue DESC;

-- Pattern C: Running total
SELECT
  order_date,
  daily_revenue,
  SUM(daily_revenue) OVER (ORDER BY order_date) AS running_total
FROM (
  SELECT
    order_date,
    SUM(sales) AS daily_revenue
  FROM orders
  GROUP BY order_date
) t
ORDER BY order_date;
