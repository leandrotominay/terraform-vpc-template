# terraform apply -var-file=myvars.tfvars

# Region
variable "region" {
  type    = list(string)
  default = ["sa-chile-1"]
}