-- Problem: 1068. Product Sales Analysis I
-- Source: LeetCode - Easy
-- Topics: JOIN, Foreign Key Lookup
-- Business Context: Sales records store product_id for normalization, but
--                   reports always need human-readable names. Joining a
--                   fact table (Sales) to a dimension table (Product) is
--                   the most fundamental pattern in business reporting.

-- Solution:
SELECT
    p.product_name,
    s.year,
    s.price
FROM Sales AS s
JOIN Product AS p
    ON s.product_id = p.product_id;

-- Insight:
-- Reveals which products were sold, in which year, and at what price --
-- foundation for pricing trend and product performance analysis.
