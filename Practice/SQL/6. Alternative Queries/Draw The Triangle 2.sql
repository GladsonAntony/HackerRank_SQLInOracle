-- Not My Solution
-- Need to calculate the width of a row, which is not only stars, but also spaces. Each level adds one more star-space pair, so each level grows by 2 in width. See also docs of rpad function
SELECT
    RPAD('*', LEVEL * 2, ' *')
FROM
    DUAl CONNECT BY LEVEL <= 20
ORDER BY
    LEVEL ASC;