variable "asg" {
    type = map(object({
      asg_name = string
    asg_rg_name = string
    asg_location = string
    }))
  
}