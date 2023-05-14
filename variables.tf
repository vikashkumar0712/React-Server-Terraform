variable "names" {
  description = "Please Enter Instance name you want in list format"
  type        = list(string)
}
variable "image" {
  type = string
}
variable "machine_type" {
  type = string
}
variable "zone" {
  type = string
}
variable "fw_enable" {
  type = bool
}
  