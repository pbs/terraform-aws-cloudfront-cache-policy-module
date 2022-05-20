resource "aws_cloudfront_cache_policy" "cache_policy" {
  name        = local.name
  comment     = local.comment
  min_ttl     = var.min_ttl
  default_ttl = var.default_ttl
  max_ttl     = var.max_ttl
  parameters_in_cache_key_and_forwarded_to_origin {
    enable_accept_encoding_brotli = var.enable_accept_encoding_brotli
    enable_accept_encoding_gzip   = var.enable_accept_encoding_gzip
    cookies_config {
      cookie_behavior = var.cookie_behavior
      cookies {
        items = var.cookies
      }
    }
    headers_config {
      header_behavior = var.header_behavior
      headers {
        items = var.headers
      }
    }
    query_strings_config {
      query_string_behavior = var.query_string_behavior
      query_strings {
        items = var.query_strings
      }
    }
  }
}
