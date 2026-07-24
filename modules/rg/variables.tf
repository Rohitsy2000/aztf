variable "rg" {
  type = map(object({
    name = string
    location = string
    tags = list(string) 
  }))
}