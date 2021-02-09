variable "user_pool_id" {
  type        = string
  description = "(Required) The Id of the user pool where the resource server is applied for."
}


variable "resource_servers" {
  description = "A container with the user_groups definitions"
  type        = list(any)
  default     = []
}
