-- Problem: Article Views I
-- Source: LeetCode #1148 | Easy
-- Topics: SELECT, DISTINCT, WHERE, ORDER BY

-- Business Context:
-- Content platforms (Medium, Substack, LinkedIn) track whether 
-- authors view their own articles — a signal used in engagement 
-- analytics to separate creator activity from audience activity.
-- Filtering self-views is essential for accurate reach metrics.

-- Solution:
SELECT DISTINCT author_id AS id
FROM views
WHERE author_id = viewer_id
ORDER BY author_id ASC;

-- Insight:
-- Authors who view their own content are common in small 
-- creator ecosystems — platforms use this data to clean 
-- engagement metrics and report true audience reach separately 
-- from creator self-activity.

-- Note:
-- DISTINCT is critical here — without it, an author who viewed
-- their own article multiple times would appear multiple times
-- in results. We only need to know IF they did it, not HOW MANY times.
