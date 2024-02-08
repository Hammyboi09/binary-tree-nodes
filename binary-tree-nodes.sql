SELECT 
    BST.N, 
    CASE 
        WHEN BST.P IS NULL THEN 'Root' 
        WHEN INNER_TABLE.P IS NOT NULL THEN 'Inner' 
        ELSE 'Leaf' 
    END AS NodeType
FROM 
    BST
LEFT JOIN 
    (SELECT DISTINCT P FROM BST) AS INNER_TABLE
ON 
    BST.N = INNER_TABLE.P
ORDER BY 
    BST.N;
