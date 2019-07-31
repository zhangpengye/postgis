SELECT t0.oid
FROM
"public"."lsylgkjbxx" t0
LEFT JOIN "public"."lsylgkjbxxdtl1" t1 ON t0.oid = t1.fid
JOIN lsyldt_1 t2 ON t2.dkbh = t1.dkbh
WHERE
t1.oid = (
SELECT
MAX (t2.oid)
FROM
lsylgkjbxxdtl1 t2
WHERE
t2.fid = t0.oid
)

ORDER BY oid ASC