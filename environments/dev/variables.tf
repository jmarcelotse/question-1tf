# Variável para a região da AWS
variable "aws_region" {
  description = "A região da AWS onde os recursos serão criados"
  type        = string
}

# Variável para o nome do bucket
variable "bucket_name" {
  description = "Nome do bucket S3"
  type        = string
}

# Variável para o ambiente (dev, staging, prod)
variable "environment" {
  description = "Nome do ambiente (dev, staging, prod)"
  type        = string
}
