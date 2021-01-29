resource "aws_s3_bucket_policy" "bucket_policy" {
  bucket = aws_s3_bucket.app_bucket.id

  policy = <<POLICY
  {
    "Version": "2012-10-17",
  "Statement": [
      {
          "Sid": "1",
          "Effect": "Allow",
          "Principal": {
              "AWS": "${aws_cloudfront_distribution.s3_distribution.iam_arn}"
          },
          "Action": "s3:GetObject",
          "Resource": "${aws_s3_bucket.app_bucket.arn}/*"
      }
  ]
  }
}
POLICY
}
