-- Not My Answer
-- For a specified measure, LISTAGG orders data within each group specified in the ORDER BY clause and then concatenates the values of the measure column.
--     As a single-set aggregate function, LISTAGG operates on all rows and returns a single output row.
--     As a group-set aggregate, the function operates on and returns an output row for each group defined by the GROUP BY clause.
--     As an analytic function, LISTAGG partitions the query result set into groups based on one or more expression in the query_partition_clause.
WITH NRS AS (
    SELECT
        LEVEL N
    FROM
        DUAL
    WHERE
        LEVEL > 1 CONNECT BY LEVEL <= 1000
)
SELECT
    LISTAGG(TO_CHAR(N.N), '&') WITHIN GROUP (
        ORDER BY
            N.N
    )
FROM
    NRS N
WHERE
    NOT EXISTS (
        SELECT
            D.N
        FROM
            NRS D
        WHERE
            D.N <= FLOOR(SQRT(N.N))
            AND MOD(N.N, D.N) = 0
    )
ORDER BY
    N.N;