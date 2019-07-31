UPDATE dbsj_ksxf_zrbhq
SET zhsq_yscoords = st_x (
	(st_centroid(wkb_geometry))
)  || ','  || st_y (
	(st_centroid(wkb_geometry))
)