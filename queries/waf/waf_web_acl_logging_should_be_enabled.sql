-- WAF Classic
SELECT ac.account_id,
       ac.arn
FROM aws_waf_web_acls ac
LEFT JOIN aws_waf_web_acl_logging_configuration lg ON ac.cq_id = lg.web_acl_cq_id
WHERE lg.web_acl_cq_id IS NULL;
