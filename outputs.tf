######
# ibm_resource_group
######

output "id" {
  description = "The ID of the cos instance"
  value       = ibm_resource_instance.cos_instance.id
}
output "cos_service_name" {
  description = "The ID of the cos instance"
  value       = ibm_resource_instance.cos_instance.name
}
output "cos_bucket_id" {
  description = "The ID of the bucket"
  value       =  ibm_cos_bucket.bucket.id
}

output "cos_bucket_name" {
  description = "The name of the bucket"
  value       = ibm_cos_bucket.bucket.bucket_name
}

output "cos_bucket_crn" {
  description = "The crn of the bucket"
  value       = ibm_cos_bucket.bucket.crn
}
