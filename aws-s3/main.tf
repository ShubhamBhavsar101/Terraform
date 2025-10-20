resource "aws_s3_bucket" "finance" {
  bucket = "shubh-finance-2025"
  tags = {
    Description = "Finance and Payroll"
  }
}

resource "aws_s3_bucket_object" "finance-2025" {
  content = "./finance-2025.txt"
  key = "finance-2025.txt"
  bucket = aws_s3_bucket.finance.id
}

data "aws_iam_group" "finance-data" {
  group_name = "finance-analysts"
}

resource "aws_s3_bucket_policy" "finance-policy" {
  bucket = aws_s3_bucket.finance.id
  policy = <<EOF
    {
    "Version": "2012-10-17",
    "Statement": [
        {
        "Effect": "Allow",
        "Principal": {
            "AWS": "arn:aws:iam::${data.aws_iam_group.finance-data.arn}"
        },
        "Action": "s3:*",
        "Resource": "${aws_s3_bucket.finance.id}/*" 
    }
    EOF
}