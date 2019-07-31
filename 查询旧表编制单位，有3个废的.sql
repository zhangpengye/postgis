WITH cr AS (
	SELECT
		*
	FROM
		port_emp
	WHERE
		dept_no = '105'
) 
SELECT
	*
FROM
	cr
WHERE
	NOT EXISTS (
		SELECT
			1
		FROM
			fabzdw
		WHERE
			EXISTS (
				SELECT
					1
				FROM
					cr
				WHERE
					fabzdw. LOGIN = cr. NO
			) AND fabzdw.login = cr.no
	)