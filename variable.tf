variable "akey" {
  default = "AKIA6GBMEB6YTxxxxxx"
}

variable "skey" {
        default = "EhA9q9CIIZva+KWGPkCIZR38ofQn9xxxxxxxxx"
      
}

variable "instance_ami" {
  description = "AMI ID for instance1"
  default     = "(Your OS Ami-ID)"
}

variable "instance_type" {
  description = "Instance type for instance1"
  default     = "t2.micro"
}


variable "count" {
  description = "Number of instances"
  default     = 1
}

variable "instance_name" {
  description = "Name for instance1"
  default     = "(Your Instance Name)"
}


variable "key_name" {
  description = "Name of the SSH key pair"
  default     = "vaibhav" 
}

variable "pub_key" {
  description = "Public SSH key"
  default     = "(ssh-rsa YOUR PUBLIC-KEY CONTENT)"
}



variable "availability_zone" {
  default = "ap-south-1a"
  
}
