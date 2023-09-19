# Region
variable "region" {
  type    = list(string)
  default = ["sa-brazil-1"]
}

# Authentication
variable "access_key" {
  type    = string
  default = "TLRQU2JVRUVJWJYEGSQT"
}

variable "secret_key" {
  type    = string
  default = "e28m9Kwl1STwQshTa16R0bjdYqyhCicALeIl1bph"
}

variable "project_id" {
  type    = string
  default = "1eb3b5d05ebd451ea420a551ffd5de5e"
}


# availability zones
variable "availability_zones" {
  type    = list(string)
  default = ["sa-brazil-1a"]
}
