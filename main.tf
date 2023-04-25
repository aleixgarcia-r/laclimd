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
  key_protect           = "crn:v1:bluemix:public:hs-crypto:eu-de:a/375fbdec51d5440c8a88fac2c7845f34:aa8582fe-9172-428e-89c2-ad0f5e534d4d:key:ae098827-cede-4f94-8906-7d89ccb36103"
}
resource "ibm_cos_bucket" "bucket1" {
  bucket_name           = "ib-eude-fra01-bucket01-poc"
  resource_instance_id  = "crn:v1:bluemix:public:cloud-object-storage:global:a/135998c33e9848e98013fd33b0164cb8:6e134ae8-7d7c-4ce2-8d51-acd01b467bcf::"
  region_location       = "eu-de"
  storage_class         = "standard"
  endpoint_type    =  "direct"
  key_protect           = "crn:v1:bluemix:public:hs-crypto:eu-de:a/375fbdec51d5440c8a88fac2c7845f34:aa8582fe-9172-428e-89c2-ad0f5e534d4d:key:ae098827-cede-4f94-8906-7d89ccb36103"
}
