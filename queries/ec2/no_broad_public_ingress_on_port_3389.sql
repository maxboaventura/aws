-- uses view which uses aws_security_group_ingress_rules.sql query
SELECT account_id,
       region,
       group_name,
       arn,
       id,
       from_port,
       to_port,
       ip_protocol,
       ip,
       'instance should not allow access to port 3389 from the entire internet' as cq_reason
FROM aws_security_group_ingress_rules
WHERE (ip = '0.0.0.0/0' OR ip = '::/0')
    AND (
       (from_port IS NULL AND to_port IS NULL) -- all ports
       OR 3389 BETWEEN from_port AND to_port
    )
