-- Problem: Find Customer Referee
-- Source: LeetCode #584 | Easy
-- Topics: WHERE, NULL Handling, OR condition

-- Business Context:
-- Referral programs are core to growth analytics in e-commerce 
-- and fintech. This query identifies customers NOT referred by 
-- a specific source — critical for segmenting organic vs 
-- referred acquisition channels.

-- Solution:
SELECT name
FROM Customer
WHERE referee_id != 2 OR referee_id IS NULL;

-- Insight:
-- 4 out of 6 customers were either self-acquired or referred 
-- by someone other than customer #2 — the majority of this 
-- customer base came through organic or alternative channels.
