# PBS TF cloudfront cache policy module

## Installation

### Using the Repo Source

```hcl
module "cloudfront-cache-policy" {
    source = "github.com/pbs/terraform-aws-cloudfront-cache-policy-module?ref=x.y.z"
}
```

### Alternative Installation Methods

More information can be found on these install methods and more in [the documentation here](./docs/general/install).

## Usage

This module provisions a Cloudfront cache policy. By default, all cookies and query strings are sent through, but no headers are sent.

Integrate this module like so:

```hcl
module "cloudfront-cache-policy" {
  source = "github.com/pbs/terraform-aws-cloudfront-cache-policy-module?ref=x.y.z"

  # Optional Parameters
  # name = "custom-name"
  # comment = "Custom cloudfront cache policy"

  # min_ttl = 5
  # default_ttl = 10
  # max_ttl = 300

  # enable_accept_encoding_brotli = false
  # enable_accept_encoding_gzip = false

  # cookie_behavior = "whitelist"
  # cookies         = ["example", "example2"]

  # header_behavior = "whitelist"
  # headers         = ["example", "example2"]

  # query_string_behavior = "whitelist"
  # query_strings         = ["example", "example2"]

  # Tagging Parameters
  product = var.product

  # Optional Parameters
}
```

## Adding This Version of the Module

If this repo is added as a subtree, then the version of the module should be close to the version shown here:

`x.y.z`

Note, however that subtrees can be altered as desired within repositories.

Further documentation on usage can be found [here](./docs).

Below is automatically generated documentation on this Terraform module using [terraform-docs][terraform-docs]

---

[terraform-docs]: https://github.com/terraform-docs/terraform-docs

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.7 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudfront_cache_policy.cache_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_cache_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_product"></a> [product](#input\_product) | Tag used to group resources according to product | `string` | n/a | yes |
| <a name="input_comment"></a> [comment](#input\_comment) | A comment to describe the cache policy. | `string` | `null` | no |
| <a name="input_cookie_behavior"></a> [cookie\_behavior](#input\_cookie\_behavior) | Determines whether any cookies in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are none, whitelist, allExcept, all. | `string` | `"all"` | no |
| <a name="input_cookies"></a> [cookies](#input\_cookies) | List of cookie names. See Items for more information. | `list(string)` | `[]` | no |
| <a name="input_default_ttl"></a> [default\_ttl](#input\_default\_ttl) | The default amount of time, in seconds, that you want objects to stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated. | `number` | `null` | no |
| <a name="input_enable_accept_encoding_brotli"></a> [enable\_accept\_encoding\_brotli](#input\_enable\_accept\_encoding\_brotli) | A flag that can affect whether the Accept-Encoding HTTP header is included in the cache key and included in requests that CloudFront sends to the origin. | `bool` | `true` | no |
| <a name="input_enable_accept_encoding_gzip"></a> [enable\_accept\_encoding\_gzip](#input\_enable\_accept\_encoding\_gzip) | A flag that can affect whether the Accept-Encoding HTTP header is included in the cache key and included in requests that CloudFront sends to the origin. | `bool` | `true` | no |
| <a name="input_header_behavior"></a> [header\_behavior](#input\_header\_behavior) | Determines whether any HTTP headers are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are none, whitelist. | `string` | `"none"` | no |
| <a name="input_headers"></a> [headers](#input\_headers) | List of header names. See Items for more information. | `list(string)` | `[]` | no |
| <a name="input_max_ttl"></a> [max\_ttl](#input\_max\_ttl) | The maximum amount of time, in seconds, that objects stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated. | `number` | `null` | no |
| <a name="input_min_ttl"></a> [min\_ttl](#input\_min\_ttl) | The minimum amount of time, in seconds, that you want objects to stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated. | `number` | `0` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the Cloudfront Cache Policy Module. If null, will default to product. | `string` | `null` | no |
| <a name="input_query_string_behavior"></a> [query\_string\_behavior](#input\_query\_string\_behavior) | Determines whether any URL query strings in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are none, whitelist, allExcept, all. | `string` | `"all"` | no |
| <a name="input_query_strings"></a> [query\_strings](#input\_query\_strings) | List of query string names. See Items for more information. | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | ID of the CloudFront Cache Policy |
| <a name="output_name"></a> [name](#output\_name) | Name of the CloudFront Cache Policy |
