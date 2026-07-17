output "nombre_bucket" {
  description = "Nombre real del bucket S3 creado por el module"
  value = aws_s3_bucket.bucket_entorno.bucket
}

output "arn_bucket" {
  description = "ARN del bucket (identificador unico de AWS)."
  value = aws_s3_bucket.bucket_entorno.arn
}
