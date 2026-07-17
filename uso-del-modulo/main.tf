module "mi_entorno" {
  source = "../modules/entorno"
  nombre_entorno  = "dev"
}

output "bucket_creado" {
  value = module.mi_entorno.nombre_bucket
}

output "arn_creado" {
  value = module.mi_entorno.arn_bucket
}