resource "aws_lb_target_group" "general" {
  name = var.name
  port = var.port
  protocol = var.protocol
  target_type = var.target_type
  deregistration_delay = var.deregistration_delay
  slow_start = var.slow_start
  proxy_protocol_v2 = var.proxy_protocol_v2
  //vpc_id = "${aws_vpc.main.id}"
  vpc_id = var.vpc_id

  dynamic health_check {
    for_each = var.health_check == null ? [] : tolist([var.health_check])
    content {
      enabled = health_check.value.health_check_enabled
      interval = health_check.value.health_check_interval
      path = health_check.value.health_check_path
      port = health_check.value.health_check_port
      protocol = health_check.value.health_check_protocol
      timeout = health_check.value.health_check_timeout
      healthy_threshold = health_check.value.health_check_healthy_threshold
      unhealthy_threshold = health_check.value.health_check_unhealthy_threshold
      matcher = health_check.value.health_check_matcher
    }
  }

  dynamic stickiness {
    for_each = var.stickiness == null ? [] : tolist([var.stickiness])
    content {
      type = var.stickiness_type
      cookie_duration = var.stickiness_cookie_duration
      enabled = var.stickiness_enabled
    }
  }

  tags = var.tags
}
