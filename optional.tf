variable "name" {
  description = "Name of the Cloudfront Cache Policy Module. If null, will default to product."
  default     = null
  type        = string
}

variable "comment" {
  description = "A comment to describe the cache policy."
  default     = null
  type        = string
}

variable "min_ttl" {
  description = "The minimum amount of time, in seconds, that you want objects to stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated."
  default     = 0
  type        = number
}

variable "default_ttl" {
  description = "The default amount of time, in seconds, that you want objects to stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated."
  default     = null
  type        = number
}

variable "max_ttl" {
  description = "The maximum amount of time, in seconds, that objects stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated."
  default     = null
  type        = number
}

variable "enable_accept_encoding_brotli" {
  description = "A flag that can affect whether the Accept-Encoding HTTP header is included in the cache key and included in requests that CloudFront sends to the origin."
  default     = true
  type        = bool
}

variable "enable_accept_encoding_gzip" {
  description = "A flag that can affect whether the Accept-Encoding HTTP header is included in the cache key and included in requests that CloudFront sends to the origin."
  default     = true
  type        = bool
}

variable "cookie_behavior" {
  description = "Determines whether any cookies in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are none, whitelist, allExcept, all."
  default     = "all"
  type        = string
}

variable "cookies" {
  description = "List of cookie names. See Items for more information."
  default     = []
  type        = list(string)
}

variable "header_behavior" {
  description = "Determines whether any HTTP headers are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are none, whitelist."
  default     = "none"
  type        = string
}

variable "headers" {
  description = "List of header names. See Items for more information."
  default     = []
  type        = list(string)
}

variable "query_string_behavior" {
  description = "Determines whether any URL query strings in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are none, whitelist, allExcept, all."
  default     = "all"
  type        = string
}

variable "query_strings" {
  description = "List of query string names. See Items for more information."
  default     = []
  type        = list(string)
}
