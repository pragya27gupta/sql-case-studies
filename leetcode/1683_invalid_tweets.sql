-- Problem: Invalid Tweets
-- Source: LeetCode #1683 | Easy
-- Topics: SELECT, WHERE, LENGTH() function

-- Business Context:
-- Social media platforms enforce character limits to maintain
-- content quality and user experience. This query replicates 
-- the backend validation logic used by platforms like Twitter/X
-- to flag policy-violating content for moderation teams.

-- Solution:
SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;

-- Insight:
-- Content moderation at scale relies on automated rule-based 
-- filters like this before human review — reducing moderation 
-- workload by flagging only posts that breach defined thresholds.

-- Note:
-- LENGTH() counts characters including spaces and special 
-- characters. Some databases use LEN() instead of LENGTH() 
-- (e.g. SQL Server uses LEN, MySQL uses LENGTH) — always check 
-- the dialect you're working in.
