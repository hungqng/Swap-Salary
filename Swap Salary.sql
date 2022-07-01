-- 627. Swap Salary

-- SQL Schema
-- Table: Salary

-- +-------------+----------+
-- | Column Name | Type     |
-- +-------------+----------+
-- | id          | int      |
-- | name        | varchar  |
-- | sex         | ENUM     |
-- | salary      | int      |
-- +-------------+----------+
-- id is the primary key for this table.
-- The sex column is ENUM value of type ('m', 'f').
-- The table contains information about an employee.
 

-- Write an SQL query to swap all 'f' and 'm' values (i.e., change all 'f' values to 'm' and vice versa) with a single update statement and no intermediate temporary tables.

-- Note that you must write a single update statement, do not write any select statement for this problem.

-- The query result format is in the following example.

-- # Write your MySQL query statement below
UPDATE Salary
SET sex = (CASE WHEN sex = 'm'
          THEN 'f'
          ELSE 'm'
          END);

-- Solution 2
UPDATE Salary SET sex = IF(sex='f', 'm', 'f');

-- Solution 3
UPDATE Salary
SET sex = REPLACE ('fm', sex, '');