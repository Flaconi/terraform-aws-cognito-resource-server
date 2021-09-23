# Terraform AWS Cognito Resource Server

This module will create Cognito Resource Server

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.26 |
| aws | >= 3 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 3 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| user\_pool\_id | (Required) The Id of the user pool where the resource server is applied for. | `string` | n/a | yes |
| resource\_servers | A container with the user\_groups definitions | `list(any)` | `[]` | no |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
