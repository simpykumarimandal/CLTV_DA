drop table if exists cltv_data
CREATE TABLE cltv_data (
    id INT,
    gender TEXT,
    area TEXT,
    qualification TEXT,
    income INT,
    marital_status INT,
    vintage INT,
    claim_amount INT,
    num_policies INT,
    policy TEXT,
    type_of_policy TEXT,
    cltv INT,
    income_category TEXT,
    income_scaled BIGINT,
    claim_ratio NUMERIC(10,6),
    claim_percentage NUMERIC(10,4),
    policies_per_year NUMERIC(10,4),
    customer_value BIGINT,
    high_value_flag INT,
    customer_segment TEXT
);
SELECT * FROM cltv_data LIMIT 10;

-- rows count
SELECT COUNT(*) FROM cltv_data;


-- Overall Business KPIs
SELECT 
    COUNT(*) AS total_customers,
    ROUND(AVG(cltv), 2) AS avg_customer_lifetime_value,
    SUM(cltv) AS total_portfolio_value,
    ROUND(AVG(claim_percentage), 4) AS portfolio_risk_avg
FROM cltv_data;

-- 6. Segmentation Analysis
SELECT 
    customer_segment,
    COUNT(*) AS customer_count,
    ROUND(AVG(cltv), 2) AS avg_cltv,
    SUM(cltv) AS total_segment_revenue
FROM cltv_data
GROUP BY customer_segment
ORDER BY total_segment_revenue DESC;

-- 7. Risk Analysis: High-Risk vs. High-Value

SELECT 
    id, 
    customer_segment, 
    claim_percentage, 
    cltv
FROM cltv_data
WHERE claim_percentage > 1.0
ORDER BY claim_percentage DESC
LIMIT 20;

-- Top 10% of Customers by Value

SELECT * FROM (
    SELECT 
        *,
        PERCENT_RANK() OVER (ORDER BY cltv DESC) as value_percentile
    FROM cltv_data
) sub
WHERE value_percentile <= 0.10;

--  Product Performance: Policy Type vs Area
SELECT 
    area,
    type_of_policy,
    COUNT(*) AS total_policies,
    ROUND(AVG(cltv), 2) AS avg_cltv
FROM cltv_data
GROUP BY area, type_of_policy
ORDER BY area, avg_cltv DESC;

