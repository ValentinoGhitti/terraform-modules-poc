//  en proyectos serios el provider va en el root no adentro del module
//  Un module idealmente hereda el provider de quien lo llama

provider "aws" {
  region = "sa-east-1"
}

// los nombres de bucket S3 tienen que ser únicos en todo el mundo. Si intentas crear syncebits-poc-dev seco, 

resource "random_id" "sufijo" {
  byte_length = 4
}

// resource => la palabra clave para crear algo posta en aws
// "aws_s3_bucket" => el tipo de recurso, el nombre lo define el provider de AWS
// "bucket_entorno" => un nombre interno de terraform para referirse a este recurso adentro del codigo. nmo lo ve AWS.

resource "aws_s3_bucket" "bucket_entorno" {
  bucket = "tf-modules-poc-${var.nombre_entorno}-${random_id.sufijo.hex}"
}

