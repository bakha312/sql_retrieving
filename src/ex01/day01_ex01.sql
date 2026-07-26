SELECT object_name
FROM (
         SELECT 1 AS sort_key, name AS object_name FROM person
         UNION ALL
         SELECT 2 AS sort_key, pizza_name AS object_name FROM menu
     ) AS sub
ORDER BY sort_key, object_name;