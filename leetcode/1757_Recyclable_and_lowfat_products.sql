-- Problem: Recyclable and Low-Fat Products
-- Source: LeetCode #1757 | Easy
-- Topics: SELECT, WHERE, AND condition

-- Business Context:
-- Retailers and e-commerce platforms use product attribute filters
-- to surface eco-friendly inventory — this query simulates that 
-- filtering logic for a health & sustainability product catalog.

-- Solution:
SELECT product_id
FROM Products
WHERE low_fats = 'Y' 
AND recyclable = 'Y';

-- Insight:
-- Only 2 out of 5 products meet both criteria — useful signal 
-- for a business looking to expand its sustainable product range.
