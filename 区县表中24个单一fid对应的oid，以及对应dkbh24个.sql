WITH cr AS (
	SELECT
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
			COUNT (fid) = 1
	)
)
select * from lsylgkjbxxdtl1 A INNER JOIN cr on A.fid = cr.fid