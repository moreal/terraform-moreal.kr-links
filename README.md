# Terraform Redirection L1nks with CloudFlare

- Redirect urls to another host by path-rule
- Simple terraform implementation with cloudflare

## Usage

1. Update terraform.tfvars to suit you
2. Run `terraform apply` with the command below

```bash
terraform init  # to initialize providers, cloudflare
terraform apply -var-file <your-tfvars-file-path>
```
