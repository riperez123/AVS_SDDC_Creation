variable "RG" {
  type = string 
  default = "Resource Group used for AVS Deployment"
}

variable "SDDC_Name" {
    type = string
    default = "AVS SDDC Name"
}

# MGMT CIDR range must be a /22

variable "MGMT_CIDR" {
    type = string
    default = "IP CIDR range for AVS MGMT components"
  
}