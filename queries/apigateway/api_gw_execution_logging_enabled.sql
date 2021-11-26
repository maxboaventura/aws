SELECT
    rest_api_cq_id
FROM
    (
        SELECT
            *
        FROM
            api_gateway_method_settings
        WHERE
            logging_level NOT IN ('ERROR', 'INFO')
    ) as t
UNION
SELECT
    api_cq_id
FROM
    aws_apigatewayv2_api_stages
WHERE
    route_settings_logging_level IN (NULL, 'OFF')