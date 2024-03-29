SELECT
    *
FROM
    (
        SELECT
            CITY,
            LENGTH (CITY)
        FROM
            STATION
        ORDER BY
            LENGTH (CITY),
            CITY
    )
WHERE
    ROWNUM = 1;

SELECT
    *
FROM
    (
        SELECT
            CITY,
            LENGTH (CITY)
        FROM
            STATION
        ORDER BY
            LENGTH (CITY) DESC
    )
WHERE
    ROWNUM = 1;