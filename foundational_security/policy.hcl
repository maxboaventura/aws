policy "pci-dss-v3.2.1" {
    description = "PCI DSS V3.2.1"
    configuration {
        provider "aws" {
            version = ">= v0.5.0"
        }
    }
    
    policy "acm" {
        description = "acm controls"
        query "1" {
            description = "Imported ACM certificates should be renewed after a specified time period"
            query =<<EOF
            EOF
        }
    }

    policy "apigateway" {
        description = "apigateway controls"
        query "1" {
            description = "API Gateway REST and WebSocket API logging should be enabled"
            query =<<EOF
            EOF
        }

        query "2" {
            description = "API Gateway REST API stages should be configured to use SSL certificates for backend authentication"
            query =<<EOF
            EOF
        }

        query "3" {
            description = "API Gateway REST API stages should have AWS X-Ray tracing enabled"
            query =<<EOF
            EOF
        }

        query "4" {
            description = "API Gateway should be associated with an AWS WAF web ACL"
            query =<<EOF
            EOF
        }

        query "5" {
            description = "API Gateway REST API cache data should be encrypted at rest"
            query =<<EOF
            EOF
        }
    }

    policy "autoscaling" {
        description = "autoscaling controls"
        query "1" {
            description = "Auto Scaling groups associated with a load balancer should use load balancer health checks"
            query =<<EOF
            EOF
        }
    }

    policy "cloudfront" {
        description = "cloudfront controls"
        query "1" {
            description = "CloudFront distributions should have a default root object configured"
            query =<<EOF
            EOF
        }

        query "2" {
            description = "CloudFront distributions should have origin access identity enabled"
            query =<<EOF
            EOF
        }

        query "3" {
            description = "CloudFront distributions should require encryption in transit"
            query =<<EOF
            EOF
        }

        query "4" {
            description = "CloudFront distributions should have origin failover configured"
            query =<<EOF
            EOF
        }

        query "5" {
            description = "CloudFront distributions should have logging enabled"
            query =<<EOF
            EOF
        }

        query "6" {
            description = "CloudFront distributions should have AWS WAF enabled"
            query =<<EOF
            EOF
        }
    }

    policy "cloudtrail" {
        description = "cloudtrail controls"
        query "1" {
            description = "CloudTrail should be enabled and configured with at least one multi-Region trail and not have management events excluded"
            query =<<EOF
            EOF
        }

        query "2" {
            description = "CloudTrail should have encryption at rest enabled"
            query =<<EOF
            EOF
        }

        query "4" {
            description = "Ensure CloudTrail log file validation is enabled"
            query =<<EOF
            EOF
        }

        query "5" {
            description = "Ensure CloudTrail trails are integrated with Amazon CloudWatch Logs"
            query =<<EOF
            EOF
        }
    }

    policy "codebuild" {
        description = "codebuild controls"
        query "1" {
            description = "CodeBuild GitHub or Bitbucket source repository URLs should use OAuth"
            query =<<EOF
            EOF
        }

        query "2" {
            description = "CodeBuild project environment variables should not contain clear text credentials"
            query =<<EOF
            EOF
        }
    }

    policy "config" {
        description = "AWS config controls"
        query "1" {
            description = "AWS Config should be enabled"
            query =<<EOF
            EOF
        }
    }

    policy "dms" {
        description = "AWS config controls"
        query "1" {
            description = "AWS Config should be enabled"
            query =<<EOF
            EOF
        }
    }

    policy "dynamodb" {
        description = "DynamoDB controls"
        query "1" {
            description = "DynamoDB tables should automatically scale capacity with demand"
            query =<<EOF
            EOF
        }

        query "2" {
            description = "DynamoDB tables should have point-in-time recovery enabled"
            query =<<EOF
            EOF
        }

        query "3" {
            description = "DynamoDB Accelerator (DAX) clusters should be encrypted at rest"
            query =<<EOF
            EOF
        }
    }

    policy "ec2" {
        description = "EC2 controls"
        query "1" {
            description = "Amazon EBS snapshots should not be public, determined by the ability to be restorable by anyone"
            query =<<EOF
            EOF
        }

        query "2" {
            description = "The VPC default security group should not allow inbound and outbound traffic"
            query =<<EOF
            EOF
        }

        query "3" {
            description = "Attached EBS volumes should be encrypted at rest"
            query =<<EOF
            EOF
        }

        query "4" {
            description = "Stopped EC2 instances should be removed after a specified time period"
            query =<<EOF
            EOF
        }


        query "6" {
            description = "VPC flow logging should be enabled in all VPCs"
            query =<<EOF
            EOF
        }

        query "7" {
            description = "EBS default encryption should be enabled"
            query =<<EOF
            EOF
        }

        query "8" {
            description = "EC2 instances should use IMDSv2"
            query =<<EOF
            EOF
        }

        query "9" {
            description = "EC2 instances should not have a public IP address"
            query =<<EOF
            EOF
        }

        query "10" {
            description = "Amazon EC2 should be configured to use VPC endpoints that are created for the Amazon EC2 service"
            query =<<EOF
            EOF
        }

        query "15" {
            description = "EC2 subnets should not automatically assign public IP addresses"
            query =<<EOF
            EOF
        }

        query "16" {
            description = "Unused network access control lists should be removed"
            query =<<EOF
            EOF
        }

        query "17" {
            description = "EC2 instances should not use multiple ENIs"
            query =<<EOF
            EOF
        }

        query "18" {
            description = "Security groups should only allow unrestricted incoming traffic for authorized ports"
            query =<<EOF
            EOF
        }

        query "19" {
            description = "Security groups should not allow unrestricted access to ports with high risk"
            query =<<EOF
            EOF
        }
    }

    policy "ecs" {
        description = "ECS controls"
        query "1" {
            description = "Amazon ECS task definitions should have secure networking modes and user definitions"
            query =<<EOF
            EOF
        }

        query "2" {
            description = "Amazon ECS services should not have public IP addresses assigned to them automatically"
            query =<<EOF
            EOF
        }
    }

    policy "efs" {
        description = "EFS controls"
        query "1" {
            description = "Amazon EFS should be configured to encrypt file data at rest using AWS KMS"
            query =<<EOF
            EOF
        }

        query "2" {
            description = "Amazon EFS volumes should be in backup plans"
            query =<<EOF
            EOF
        }
    }

    policy "elastic_beanstalk" {
        description = "ElasticBeanstalk controls"
        query "1" {
            description = "Elastic Beanstalk environments should have enhanced health reporting enabled"
            query =<<EOF
            EOF
        }

        query "2" {
            description = "Elastic Beanstalk managed platform updates should be enabled"
            query =<<EOF
            EOF
        }
    }

    policy "elb" {
        description = "ELB controls"
        query "2" {
            description = "Classic Load Balancers with SSL/HTTPS listeners should use a certificate provided by AWS Certificate Manager"
            query =<<EOF
            EOF
        }

        query "3" {
            description = "Classic Load Balancer listeners should be configured with HTTPS or TLS termination"
            query =<<EOF
            EOF
        }

        query "4" {
            description = "Application load balancers should be configured to drop HTTP headers"
            query =<<EOF
            EOF
        }

        query "5" {
            description = "Application and Classic Load Balancers logging should be enabled"
            query =<<EOF
            EOF
        }

        query "6" {
            description = "Application Load Balancer deletion protection should be enabled"
            query =<<EOF
            EOF
        }

        query "7" {
            description = "Classic Load Balancers should have connection draining enabled"
            query =<<EOF
            EOF
        }

        query "8" {
            description = "Classic Load Balancers with HTTPS/SSL listeners should use a predefined security policy that has strong configuration"
            query =<<EOF
            EOF
        }
    }

    policy "elbv2" {
        description = "ELBv2 controls"
        query "1" {
            description = "Application Load Balancer should be configured to redirect all HTTP requests to HTTPS"
            query =<<EOF
            EOF
        }
    }

    policy "emr" {
        description = "EMR controls"
        query "1" {
            description = "Amazon EMR cluster master nodes should not have public IP addresses"
            query =<<EOF
            EOF
        }
    }

    policy "elasticsearch" {
        description = "Elasticsearch controls"
        query "1" {
            description = "Elasticsearch domains should have encryption at rest enabled"
            query =<<EOF
            EOF
        }

        query "2" {
            description = "Elasticsearch domains should be in a VPC"
            query =<<EOF
            EOF
        }

        query "3" {
            description = "Elasticsearch domains should encrypt data sent between nodes"
            query =<<EOF
            EOF
        }

        query "4" {
            description = "Elasticsearch domain error logging to CloudWatch Logs should be enabled"
            query =<<EOF
            EOF
        }

        query "5" {
            description = "Elasticsearch domains should have audit logging enabled"
            query =<<EOF
            EOF
        }

        query "6" {
            description = "Elasticsearch domains should have at least three data nodes"
            query =<<EOF
            EOF
        }

        query "7" {
            description = "Elasticsearch domains should be configured with at least three dedicated master nodes"
            query =<<EOF
            EOF
        }

        query "8" {
            description = "Connections to Elasticsearch domains should be encrypted using TLS 1.2"
            query =<<EOF
            EOF
        }
    }

    policy "guard_duty" {
        description = "GuardDuty controls"
        query "1" {
            description = "GuardDuty should be enabled"
            query =<<EOF
            EOF
        }
    }

    policy "iam" {
        description = "IAM controls"
        query "1" {
            description = "IAM policies should not allow full '*' administrative privileges"
            query =<<EOF
            EOF
        }

        query "2" {
            description = "IAM users should not have IAM policies attached"
            query =<<EOF
            EOF
        }

        query "3" {
            description = "IAM users' access keys should be rotated every 90 days or less"
            query =<<EOF
            EOF
        }

        query "4" {
            description = "IAM root user access key should not exist"
            query =<<EOF
            EOF
        }

        query "5" {
            description = "MFA should be enabled for all IAM users that have a console password"
            query =<<EOF
            EOF
        }

        query "6" {
            description = "Hardware MFA should be enabled for the root user"
            query =<<EOF
            EOF
        }

        query "7" {
            description = "Password policies for IAM users should have strong configurations"
            query =<<EOF
            EOF
        }

        query "8" {
            description = "Unused IAM user credentials should be removed"
            query =<<EOF
            EOF
        }

        query "21" {
            description = "IAM customer managed policies that you create should not allow wildcard actions for services"
            query =<<EOF
            EOF
        }
    }

    policy "kms" {
        description = "KMS controls"
        query "1" {
            description = "IAM customer managed policies should not allow decryption and re-encryption actions on all KMS keys"
            query =<<EOF
            EOF
        }

        query "2" {
            description = "IAM principals should not have IAM inline policies that allow decryption and re-encryption actions on all KMS keys"
            query =<<EOF
            EOF
        }

        query "3" {
            description = "AWS KMS keys should not be unintentionally deleted"
            query =<<EOF
            EOF
        }
    }

    policy "lambda" {
        description = "Lambda controls"
        query "1" {
            description = "Lambda function policies should prohibit public access"
            query =<<EOF
            EOF
        }

        query "2" {
            description = "Lambda functions should use supported runtimes"
            query =<<EOF
            EOF
        }

        query "4" {
            description = "Lambda functions should have a dead-letter queue configured (Retired)"
            query =<<EOF
            EOF
        }
    }

    policy "rds" {
        description = "RDS controls"
        query "1" {
            description = "RDS snapshots should be private"
            query =<<EOF
            EOF
        }

        query "2" {
            description = "RDS DB instances should prohibit public access, determined by the PubliclyAccessible configuration"
            query =<<EOF
            EOF
        }

        query "3" {
            description = "RDS DB instances should have encryption at rest enabled"
            query =<<EOF
            EOF
        }

        query "4" {
            description = "RDS DB instances should have encryption at rest enabled"
            query =<<EOF
            EOF
        }

        query "5" {
            description = "RDS DB instances should be configured with multiple Availability Zones"
            query =<<EOF
            EOF
        }
    }
}