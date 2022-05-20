output "id" {
  description = "ID of the CloudFront Cache Policy"
  value       = aws_cloudfront_cache_policy.cache_policy.id
}

output "name" {
  description = "Name of the CloudFront Cache Policy"
  value       = aws_cloudfront_cache_policy.cache_policy.name
}
