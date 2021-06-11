-- You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent of N.

--      Column      |       Type
-- --------------------------------
--      N           |     Integer
--      P           |     Integer

-- Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:

-- * Root: If node is root node.
-- * Leaf: If node is leaf node.
-- * Inner: If node is neither root nor leaf node.


-- Sample Input

--      Column      |     Type
-- --------------------------------
--      1           |     2
--      3           |     2
--      6           |     8
--      9           |     8
--      2           |     5
--      8           |     5
--      5           |     null


-- Sample Output

-- 1 Leaf
-- 2 Inner
-- 3 Leaf
-- 5 Root
-- 6 Leaf
-- 8 Inner
-- 9 Leaf

-- Explanation

-- The Binary Tree below illustrates the sample:

--             (5)
--           /    \
--         /        \
--        /          \
--      (2)          (8)
--     /   \        /   \
--  (1)    (3)    (6)   (9)


-- 'Root' no parent (null)
-- If N is in P then 'Inner'
-- Remaining N then 'Leaf'

SELECT N, IF(P IS NULL, 'Root', IF(BST.N IN (SELECT P FROM BST), 'Inner', 'Leaf')) FROM BST ORDER BY N;


-- Your Output (stdout) / Expected Output
-- 1 Leaf
-- 2 Inner
-- 3 Leaf
-- 4 Inner
-- 5 Leaf
-- 6 Inner
-- 7 Leaf
-- 8 Leaf
-- 9 Inner
-- 10 Leaf
-- 11 Inner
-- 12 Leaf
-- 13 Inner
-- 14 Leaf
-- 15 Root