resource "aws_ecr_repository" "serverless-charleywong-master" {
  name                 = "serverless-charleywong-master"
  image_tag_mutability = "MUTABLE"
}

resource "aws_ecr_repository" "serverless-charleywong-production" {
  name                 = "serverless-charleywong-production"
  image_tag_mutability = "MUTABLE"
}

resource "aws_ecr_lifecycle_policy" "serverless-charleywong-master" {
  repository = aws_ecr_repository.serverless-charleywong-master.name

  policy = jsonencode({
    "rules" : [
      {
        "rulePriority" : 1,
        "description" : "Keep last 5 images",
        "selection" : {
          "tagStatus" : "any",
          "countType" : "imageCountMoreThan",
          "countNumber" : 5
        },
        "action" : {
          "type" : "expire"
        }
      }
    ]
  })
}

resource "aws_ecr_lifecycle_policy" "serverless-charleywong-production" {
  repository = aws_ecr_repository.serverless-charleywong-production.name

  policy = jsonencode({
    "rules" : [
      {
        "rulePriority" : 1,
        "description" : "Keep last 10 images",
        "selection" : {
          "tagStatus" : "any",
          "countType" : "imageCountMoreThan",
          "countNumber" : 10
        },
        "action" : {
          "type" : "expire"
        }
      }
    ]
  })
}
