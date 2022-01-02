resource "aws_ecr_repository" "serverless-charleywong-master" {
  name                 = "serverless-charleywong-master"
  image_tag_mutability = "MUTABLE"
}

resource "aws_ecr_repository" "serverless-charleywong-production" {
  name                 = "serverless-charleywong-production"
  image_tag_mutability = "MUTABLE"
}
