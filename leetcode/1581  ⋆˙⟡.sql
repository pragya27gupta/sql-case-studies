-- Problem: 1581. Customer Who Visited but Did Not Transact
-- Source: LeetCode - Easy
-- Topics: LEFT JOIN, NULL filtering, GROUP BY, COUNT
-- Business Context: Identifying window-shoppers (visits with no purchase)
--                   is critical for conversion rate analysis and targeted
--                   re-engagement campaigns in retail analytics.

-- Solution:
SELECT
    v.customer_id,
    COUNT(v.visit_id) AS count_no_trans
FROM Visits AS v
LEFT JOIN Transactions AS t
    ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id;

-- Insight:
-- Customers with high no-transaction visit counts are prime targets for
-- discount nudges or UX research to understand purchase blockers.
