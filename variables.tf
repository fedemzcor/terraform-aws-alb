variable "namespace" {
  
  description = "Namespace, which could be your organization name, e.g. `cp` or `cloudposse`"
}

variable "stage" {
  
  description = "Stage, e.g. `prod`, `staging`, `dev`, or `test`"
}

variable "name" {
  
  description = "Solution name, e.g. `app`"
}

variable "delimiter" {
  
  default     = "-"
  description = "Delimiter to be used between `namespace`, `name`, `stage` and `attributes`"
}

variable "attributes" {
  
  default     = []
  description = "Additional attributes, e.g. `1`"
}

variable "tags" {
  
  default     = {}
  description = "Additional tags (e.g. `map(`BusinessUnit`,`XYZ`)"
}

variable "vpc_id" {
  
  description = "VPC ID to associate with ALB"
}

variable "subnet_ids" {
  
  description = "A list of subnet IDs to associate with ALB"
}

variable "security_group_ids" {
  
  default     = []
  description = "A list of additional security group IDs to allow access to ALB"
}

variable "internal" {
  
  default     = false
  description = "A boolean flag to determine whether the ALB should be internal"
}

variable "http_port" {
  
  default     = 80
  description = "The port for the HTTP listener"
}

variable "http_enabled" {
  
  default     = true
  description = "A boolean flag to enable/disable HTTP listener"
}

variable "http_ingress_cidr_blocks" {
  
  default     = ["0.0.0.0/0"]
  description = "List of CIDR blocks to allow in HTTP security group"
}

variable "http_ingress_prefix_list_ids" {
  
  default     = []
  description = "List of prefix list IDs for allowing access to HTTP ingress security group"
}

variable "certificate_arn" {
  
  default     = ""
  description = "The ARN of the default SSL certificate for HTTPS listener"
}

variable "https_port" {
  
  default     = 443
  description = "The port for the HTTPS listener"
}

variable "https_enabled" {
  
  default     = false
  description = "A boolean flag to enable/disable HTTPS listener"
}

variable "https_ingress_cidr_blocks" {
  
  default     = ["0.0.0.0/0"]
  description = "List of CIDR blocks to allow in HTTPS security group"
}

variable "https_ingress_prefix_list_ids" {
  
  default     = []
  description = "List of prefix list IDs for allowing access to HTTPS ingress security group"
}

variable "https_ssl_policy" {
  description = "The name of the SSL Policy for the listener."
  default     = "ELBSecurityPolicy-2015-05"
}

variable "access_logs_prefix" {
  
  default     = ""
  description = "The S3 bucket prefix"
}

variable "access_logs_enabled" {
  
  default     = true
  description = "A boolean flag to enable/disable access_logs"
}

variable "access_logs_region" {
  
  default     = "us-east-1"
  description = "The region for the access_logs S3 bucket"
}

variable "cross_zone_load_balancing_enabled" {
  
  default     = true
  description = "A boolean flag to enable/disable cross zone load balancing"
}

variable "http2_enabled" {
  
  default     = true
  description = "A boolean flag to enable/disable HTTP/2"
}

variable "idle_timeout" {
  
  default     = 60
  description = "The time in seconds that the connection is allowed to be idle"
}

variable "ip_address_type" {
  
  default     = "ipv4"
  description = "The type of IP addresses used by the subnets for your load balancer. The possible values are `ipv4` and `dualstack`."
}

variable "deletion_protection_enabled" {
  
  default     = false
  description = "A boolean flag to enable/disable deletion protection for ALB"
}

variable "deregistration_delay" {
  
  default     = 15
  description = "The amount of time to wait in seconds before changing the state of a deregistering target to unused"
}

variable "health_check_path" {
  
  default     = "/"
  description = "The destination for the health check request"
}

variable "health_check_timeout" {
  
  default     = 10
  description = "The amount of time to wait in seconds before failing a health check request"
}

variable "health_check_healthy_threshold" {
  
  default     = 2
  description = "The number of consecutive health checks successes required before considering an unhealthy target healthy"
}

variable "health_check_unhealthy_threshold" {
  
  default     = 2
  description = "The number of consecutive health check failures required before considering the target unhealthy"
}

variable "health_check_interval" {
  
  default     = 15
  description = "The duration in seconds in between health checks"
}

variable "health_check_matcher" {
  
  default     = "200-399"
  description = "The HTTP response codes to indicate a healthy check"
}

variable "alb_access_logs_s3_bucket_force_destroy" {
  description = "A boolean that indicates all objects should be deleted from the ALB access logs S3 bucket so that the bucket can be destroyed without error"
  default     = false
}

variable "target_group_port" {
  description = "The port for the default target group"
  default     = 80
}

variable "target_type" {
  default = "instance"
}

variable "access_logs_bucket" {

  default = "logs"
  
}
