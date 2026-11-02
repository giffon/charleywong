# The giffon.io certificate moved to ../giffon/terraform/aws-acm.tf.
# Forget it here without destroying it. Delete this file once applied.
removed {
  from = aws_acm_certificate.giffon-io

  lifecycle {
    destroy = false
  }
}
