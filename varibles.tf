variable "instance_type" {
  default = "t2.micro"

}

variable "region" {
  default = "us-east-1"
}


variable "ami" {
  type = map(any)
  default = {
    "projectA" = "ami-0022f774911c1d690",
    "projectB" = "ami-06eecef118bbf9259"
  }


}
