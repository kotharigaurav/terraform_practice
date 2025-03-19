resource "aws_iam_role" "this" {
  name = var.role_name

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = "nostatement"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })

  #   managed_policy_arns = aws_iam_policy.policy_one.arn
}

resource "aws_iam_policy" "policy_one" {
  name = var.policy_name

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action   = ["ec2:Describe*", "s3:*"]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}