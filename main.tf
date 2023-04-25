######
# Resource groups
######

resource "ibm_resource_instance" "cos_instance" {
  name              = var.name
  resource_group_id = "eb8abe4482534833bd6e2a3b1c9222f5"
  service           = "cloud-object-storage"
  plan              = "standard"
  location          = "global"
  parameters        = null
  service_endpoints = "private"

  
}


resource "ibm_cos_bucket" "bucket" {
  bucket_name           = "ib-eugb-lond1-bucket01-poc"
  resource_instance_id  = ibm_resource_instance.cos_instance.id
  region_location       = "eu-gb"
  storage_class         = "standard"
  endpoint_type    =  "direct"
  key_protect           = "crn:v1:bluemix:public:hs-crypto:eu-de:a/375fbdec51d5440c8a88fac2c7845f34:aa8582fe-9172-428e-89c2-ad0f5e534d4d:key:1849f02a-169f-4c51-b79c-db7ba9d8feec"
}
