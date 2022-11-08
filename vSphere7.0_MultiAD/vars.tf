# Example design for OCVS - vSphere 7.0
variable region { default = "eu-frankfurt-1" }
variable AD { default = "" }
variable compartment_ocid { default = "" }
variable ssh_public_key { default = "" }
variable SDDC_name { default = "OCVS-MultiAD"}
variable SDDC_shape {
  type    = list(any)
  default = ["BM.DenseIO2.52", "BM.DenseIO.E4.32", "BM.DenseIO.E4.64", "BM.DenseIO.E4.128"]
}
variable SDDC_billing {
    type    = list(any)
  default = ["HOUR", "MONTH", "ONE_YEAR", "THREE_YEARS"]
}
variable SDDC_Host_Count {
  type = list(any)
  default = ["3","4","5","6","7","8","9","10","11","12","13","14","15","16"]
}