select
    cq_id,
    stage_name,
    rest_api_cq_id,
    tracing_enabled as stage_data_trace_enabled,
    cache_cluster_enabled as stage_caching_enabled,
    web_acl_arn as waf
    
from
    aws_apigateway_rest_api_stages
    where web_acl_arn is NULL
order by cq_id, stage_name;
