variable "name" {
  default = ""
}

variable "tags" {
  default = {}
}

variable "port" {
  default = 443
}

variable "protocol" {
  default = "HTTP"
}

variable "deregistration_delay" {
  default = 300
}

variable "slow_start" {
  default = 0
}

variable "proxy_protocol_v2" {
  description = "(Optional) Boolean to enable / disable support for proxy protocol v2 on Network Load Balancers."
  default = false
}

variable "health_check" {
  //default = {}
  default = null
}

variable "health_check_enabled" {
  //default = {}
  default = null
}

variable "health_check_interval" {
  //default = {}
  default = null
}

variable "health_check_path" {
  //default = {}
  default = null
}

variable "health_check_port" {
  default = null
}

variable "health_check_protocol" {
  //default = {}
  default = null
}

variable "health_check_timeout" {
  //default = {}
  default = null
}

variable "health_check_healthy_threshold" {
  //default = {}
  default = null
}

variable "health_check_unhealthy_threshold" {
  //default = {}
  default = null
}

variable "health_check_matcher" {
  //default = {}
  default = null
}

variable "stickiness" {
  default = null
  //default = null
}

variable "stickiness_type" {
  //default = "lb_cookie"
  default = null
  //default = ""
}

variable "stickiness_cookie_duration" {
  description = "(Optional) The time period, in seconds, during which requests from a client should be routed to the same target. After this time period expires, the load balancer-generated cookie is considered stale. The range is 1 second to 1 week (604800 seconds). The default value is 1 day (86400 seconds)."
  //default = 86400
  default = null
}

variable "stickiness_enabled" {
  description = "(Optional) Boolean to enable / disable stickiness. Default is true"
  //default = false
  //default = true
  default = null
}

variable "target_type" {
  description = "(Optional, Forces new resource) The type of target that you must specify when registering targets with this target group. The possible values are instance (targets are specified by instance ID) or ip (targets are specified by IP address) or lambda (targets are specified by lambda arn). The default is instance. Note that you can't specify targets for a target group using both instance IDs and IP addresses. If the target type is ip, specify IP addresses from the subnets of the virtual private cloud (VPC) for the target group, the RFC 1918 range (10.0.0.0/8, 172.16.0.0/12, and 192.168.0.0/16), and the RFC 6598 range (100.64.0.0/10). You can't specify publicly routable IP addresses."
  default = null
}

variable "vpc_id" {
  default = ""
}

/*
Visit https://www.terraform.io/docs/providers/aws/r/lb_target_group.html
to see what parameters to use in the health_check block & stickiness block
*/
