policy "pci-dss-v3.2.1" {
    description = "PCI DSS V3.2.1"
    configuration {
        provider "aws" {
            version = ">= v0.5.0"
        }
    }

    policy "autoscaling" {
        description = "checks for autoscaling"
        query "1" {
            // aws_ec2_autoscaling_group is not implemented yet
            description = "Auto Scaling groups associated with a load balancer should use health checks"            
        }
    }

    policy "cloudtrail" {
        description = "checks for autoscaling"
        query "1" {
            description = "CloudTrail logs should be encrypted at rest using AWS KMS keys"
            query =<<EOF
                select account_id, region, arn from aws_cloudtrail_trails where kms_key_id is null
            EOF
        }
    }
}