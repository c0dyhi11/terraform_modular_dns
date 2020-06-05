variable "project_id" {
  description = "The project to create the server in"
}

variable "hostname" {
  description = "Hostname for server"
  default = "server-name"
}

variable "size" {
  description = "The server plan to use"
  default = "c2.medium.x86"
}

variable "facility" {
  description = "Where to create the server"
  default = "sjc1"
}

variable "os" {
  description = "The operating system to put on the server"
  default = "ubuntu_20_04"
}

variable "billing_cycle" {
  description = "How are you paying for this server?"
  default = "hourly"
}

