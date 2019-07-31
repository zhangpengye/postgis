SELECT DISTINCT dkbh FROM lsyldt_1 WHERE dkbh in (
SELECT DISTINCT
	dkbh
FROM
	lsylgkjbxxdtl1
WHERE
	fid IN (
		SELECT DISTINCT
			oid
		FROM
			lsylgkjbxx
	) 
)
