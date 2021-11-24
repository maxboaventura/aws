SELECT DISTINCT account_id, region, arn, name
FROM aws_codebuild_projects
WHERE (environment_variables -> 'AWS_ACCESS_KEY_ID' IS NOT NULL
	OR environment_variables -> 'AWS_SECRET_ACCESS_KEY' IS NOT NULL)
--This control is not supported in the regions below
AND region NOT IN ('us-gov-east-1', 'us-gov-west-1', 'eu-south-1', 'ap-northeast-3', 'af-south-1'); 