# digitalocean-k8s

## About

allows easy creation of an unmanaged kubernetes architecture in digitalocean

## Dependencies

- terraform
- ansible

## Configure DigitalOcean

1. Create a new API key on DigitalOcean
2. Create a new SSH key on DigitalOcean

## Creating infrastructure

0 - Open infra folder
```bash
$ cd infra/
```

1 - Create a new terraform workspace
```bash
$ terraform workspace new development
```
**Important:** Available workspaces names: development, staging and production

2 - Rename `vars.tfvars.example` to `vars.tfvars` and fill you API and SSH keys

3 - Run your execution plan
```bash
$ terraform plan -var-file=vars.tfvars -out=plan.tfplan
```

4 - Apply your execution plan
```bash
$ terraform apply "plan.tfplan"
```