# Criação do bucket S3
resource "aws_s3_bucket" "terraform_state_bucket" {
  bucket = var.bucket_name

  # Ativar o bloqueio de objeto de nível superior
  object_lock_enabled = true

  tags = {
    Name        = "Terraform State Bucket teste"
    Environment = var.environment
  }
}

# Configuração do bloqueio de objetos
resource "aws_s3_bucket_object_lock_configuration" "terraform_state_lock_config" {
  bucket = aws_s3_bucket.terraform_state_bucket.id

  rule {
    default_retention {
      mode = "GOVERNANCE" # Pode ser "GOVERNANCE" ou "COMPLIANCE"
      days = 30           # Retenção de 30 dias (ajustável conforme necessidade)
    }
  }
}
