SELECT dkbh,fid from lsylgkjbxxdtl1 where fid in (SELECT fid from(
SELECT
	A.*,row_number() OVER (partition by  FID ORDER BY oid DESC) RN
FROM
	lsylgkjbxxdtl1 A
WHERE
	dkbh IN (
		SELECT DISTINCT
			dkbh
		FROM
			lsyldt_1
		WHERE
			dkbh IN (
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
	)

AND fid IN (
	SELECT

		fid
	FROM
		lsylgkjbxxdtl1
	GROUP BY
		fid
	HAVING
		COUNT (fid) > 1
)) as A where rn=1
) 
ORDER BY fid
