WITH cr AS (
	SELECT
		dkbh,
		fid
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
	)
) 
SELECT
	stage,
	A.dkbh,
	cr.fid
FROM
	lsyldt_1 A
INNER JOIN cr  ON A .dkbh = cr.dkbh ORDER BY fid