UPDATE lsyldt_1_copy
SET ssfq = '02'
WHERE
lx = '新增项目' AND
	lsyldt_1_copy.objectid = ANY ( 
		SELECT
			t1.objectid
		FROM
			lsyldt_1_copy AS t1
		INNER JOIN ziranbaohuqu AS t2 ON st_intersects (
			st_setsrid(t1.shape, 4490),
			t2.shape
		) = TRUE
	)
