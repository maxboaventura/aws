SELECT DISTINCT p.account_id, p.region, p.name
FROM aws_codebuild_projects p
JOIN aws_codebuild_project_environment_variables e ON
p.cq_id = e.project_cq_id
WHERE (e."name" = 'AWS_ACCESS_KEY_ID'
	OR e."name" = 'AWS_SECRET_ACCESS_KEY');