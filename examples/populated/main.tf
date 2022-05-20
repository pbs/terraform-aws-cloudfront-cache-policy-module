module "cloudfront_cache_policy" {
  source = "../.."

  cookie_behavior = "whitelist"
  cookies         = ["example", "example2"]

  header_behavior = "whitelist"
  headers         = ["example", "example2"]

  query_string_behavior = "whitelist"
  query_strings         = ["example", "example2"]

  product = var.product
}
