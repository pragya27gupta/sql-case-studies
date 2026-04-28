-- Problem: Big Countries
-- Source: LeetCode #595 | Easy
-- Topics: SELECT, WHERE, OR condition

-- Business Context:
-- Geographic segmentation is fundamental in market expansion 
-- analysis. This query identifies "big" countries by either 
-- land mass or population — the kind of filter used in 
-- international business strategy and regional analytics.

-- Solution:
SELECT name, population, area
FROM world
WHERE area >= 3000000 OR population >= 25000000;

-- Insight:
-- Countries can qualify as "big" by two different metrics —
-- a sparsely populated large country (like Australia) and a 
-- densely populated smaller country (like Bangladesh) both 
-- qualify. This dual-filter logic is common in real-world 
-- segmentation where either condition alone would miss key markets.
