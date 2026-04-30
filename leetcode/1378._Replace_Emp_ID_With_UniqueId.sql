-- Problem: 1378. Replace Employee ID With The Unique Identifier
-- Source: LeetCode - Easy
-- Topics: LEFT JOIN, NULL handling
-- Business Context: In large organizations, systems often use different IDs
--                   (HR system vs. SSO/directory system). Mapping or surfacing
--                   gaps in that mapping is a common data quality/audit task.

-- Solution:
SELECT
    UNI.unique_id,
    emp.name
FROM Employees AS emp
LEFT JOIN EmployeeUNI AS UNI
    ON emp.id = UNI.id;

-- Insight:
-- Employees showing NULL unique_id need to be flagged for IT provisioning
-- or onboarding completion — directly actionable for HR/IT ops teams.
