provider "aws" {
  region = "us-east-1"  
}

resource "aws_iam_group" "student_group" {
  name = "student"
}

resource "aws_iam_user" "evans_user" {
  name = "evans"
}

resource "aws_iam_user_group_membership" "evans_group_membership" {
  user    = aws_iam_user.evans_user.name
  groups  = [aws_iam_group.student_group.name]
}
