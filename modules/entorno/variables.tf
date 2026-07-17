// empezamos por los inputs xq es como la interfaz del module, define qué necesita recibir para funcar 

variable "nombre_entorno" {
  description = "Nombre del entorno (ej: sandbox, prod)"
  type = string
}
