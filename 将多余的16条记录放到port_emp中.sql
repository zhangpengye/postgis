INSERT into port_emp (name,no,pass) 
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
	fabzdw
WHERE
	NOT EXISTS (
		SELECT
			1
		FROM
			cr
		WHERE
			fabzdw. LOGIN = cr. NO
	)
