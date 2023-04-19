######
# ibm_resource_group
######

output "resource_group_ids" {
  description = "IDs of resource groups"
  value       = ibm_resource_group.rg.id
}

output "resource_group_names" {
  description = "Names of resource groups"
  value       = ibm_resource_group.rg.name
}
