--Camila Aseret Rodriiguez Baldovino 4;J

SELECT
    ip,
    COUNT(*) AS invalid_count
FROM logs
WHERE
    -- Condition 1: IP does not have exactly 4 parts
    LENGTH(ip) - LENGTH(REPLACE(ip, '.', '')) != 3
    OR
    -- Condition 2 and 3: Split octets and check for >255 or leading zero
    EXISTS (
        SELECT 1
        FROM (
            SELECT 
                SUBSTRING_INDEX(SUBSTRING_INDEX(ip, '.', 1), '.', -1) AS octet1,
                SUBSTRING_INDEX(SUBSTRING_INDEX(ip, '.', 2), '.', -1) AS octet2,
                SUBSTRING_INDEX(SUBSTRING_INDEX(ip, '.', 3), '.', -1) AS octet3,
                SUBSTRING_INDEX(SUBSTRING_INDEX(ip, '.', 4), '.', -1) AS octet4
        ) AS t
        WHERE
            -- Any octet is not numeric or out of range
            (octet1 NOT REGEXP '^[0-9]+$' OR octet2 NOT REGEXP '^[0-9]+$' OR
             octet3 NOT REGEXP '^[0-9]+$' OR octet4 NOT REGEXP '^[0-9]+$')
            OR
            (CAST(octet1 AS UNSIGNED) > 255 OR CAST(octet2 AS UNSIGNED) > 255 OR
             CAST(octet3 AS UNSIGNED) > 255 OR CAST(octet4 AS UNSIGNED) > 255)
            OR
            -- Leading zeros in any octet
            (LENGTH(octet1) > 1 AND LEFT(octet1,1) = '0') OR
            (LENGTH(octet2) > 1 AND LEFT(octet2,1) = '0') OR
            (LENGTH(octet3) > 1 AND LEFT(octet3,1) = '0') OR
            (LENGTH(octet4) > 1 AND LEFT(octet4,1) = '0')
    )
GROUP BY ip
ORDER BY invalid_count DESC, ip DESC;