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
