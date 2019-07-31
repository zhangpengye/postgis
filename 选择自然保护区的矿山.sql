WITH cr AS (
	SELECT
		* from lsyldt_1_copy where lx = '新增项目'
)
select * from cr as t1
INNER JOIN ziranbaohuqu AS t2 ON st_intersects (
	st_setsrid(t1.shape, 4490),
t2.shape
) = TRUE