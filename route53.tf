resource "aws_route53_zone" "kakurenbo_club_zone" {
  name = "kakurenbo.club"
}

resource "aws_route53_record" "kakurenbo_club" {
  allow_overwrite = true
  name            = var.SUB_DOMAIN[terraform.workspace]
  type            = "A"
  zone_id         = aws_route53_zone.kakurenbo_club_zone.zone_id

  alias {
    name                   = aws_cloudfront_distribution.s3_distribution.domain_name
    zone_id                = aws_cloudfront_distribution.s3_distribution.hosted_zone_id
    evaluate_target_health = false
  }
}
